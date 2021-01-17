#pragma once
#include "build_switches.cuh"
#include "prefix_sum.cuh"
#include "memory_region.cuh"
#include "block_set.cuh"
#include "bitmap.cuh"
#include "config.h"
#include "sort.cuh"
#include "utils.cuh"
#include "counters.cuh"

using util::Bitmap;
using util::bubble_sort;
using util::binary_search;
using util::linear_search;
using util::parallelMax;
using util::treeSum;
using util::set_append;
using util::set_merge_append;
using util::set_merge_append_forwards;
using util::scan;
using util::newArrayForBlock;
using util::deleteArrayForBlock;
namespace curd{
  extern __device__ Counters_descendingInTWSS descendingInTWSS;
  extern __device__ Counters_ascendingInTWSS ascendingInTWSS;
  extern __device__ Bitmap<4>::HolderType * bitmapBuffer;

  enum OverlapAttr {
    overlapped = 0,
    adjacent = 1,
    disjoint = 2,
    leftmost = 3,
  };
  enum OrderAttr {
    ascending = 0,
    descending = 1,
  };
/* sets for all threads, organized in a striped fashion,
  s.t. accesses by threads from the same block are likely to
  be coalesced. */
template<typename ElementType, typename SizeType>
class CoalescedSets {
 private:
  ElementType * setsHead;
  SizeType * sizesHead;
  /* configuration parameters: */
  int nthreads;
  int blocksNum;
  SizeType setCapacityPerThread;
  /*
    NB: internal helper function; shouldn't be called from outside
    iterations should be either nthreads - 1 (with different dirs)
      or ceil( (nthreads -1) /2 ) ( with the same dir)
  */

#ifdef MERGELIKE_SEARCH
  __device__ inline size_t checkIntraBlockOverlaps(
    RaceKind kind, RaceType type, int blockId, int localTid,
    const CoalescedSets<ElementType, SizeType> & otherDir, int iterations) const {
    ElementType * localSetHead = getSetHead( blockId, localTid);
    SizeType localSetSize = *getPtrToSize( blockId, localTid);
    size_t conflicts = 0;
    for(size_t j = 1; j <= iterations; j++ ) {
      int tid = (localTid + j )% nthreads;
      CURD_ASSERT(tid != localTid );
      ElementType * remoteSetHead = otherDir.getSetHead(blockId, tid);
      SizeType remoteSetSize = *otherDir.getPtrToSize(blockId, tid);
        
      #ifdef OPTIMISTIC_SETCHECKS
      if (localSetSize && remoteSetSize) {
        auto & s1Min = localSetHead[0];
        auto & s1Max = localSetHead[(localSetSize - 1) * nthreads];
        auto & s2Min = remoteSetHead[0];
        auto & s2Max = remoteSetHead[(remoteSetSize - 1) * nthreads];
        if (s1Min.addr > s2Max.addr + s2Max.size ||
            s2Min.addr > s1Max.addr + s1Max.size) {
          return 0;
        }
      }
      #endif      

      SizeType p1 = 0, p2 = 0;
      // assumes that the local set is always the smaller one 
      while (p1 < localSetSize && p2 < remoteSetSize) {
        auto & r1 = localSetHead[p1 * nthreads];
        auto & r2 = remoteSetHead[p2 * nthreads];
        if (r1.addr >= r2.addr + r2.size) { // r1 <= r2
          p1++;
        } else if (r1.addr + r1.size <= r2.addr) { // r2 <= r1
          p2++;
        } else {
          ElementType intersection = r1.intersect( r2 ); 
          CURD_ASSERT( intersection.valid() );
          reportRace( 1, kind, type, localTid,
                    tid, r1.srcLoc, r2.srcLoc, intersection );
          #ifdef STOP_AT_FIRST_RACE
          break;
          #endif
        }    
      }
    }
    return conflicts;
  }

#else
  __device__ inline size_t checkIntraBlockOverlaps(
    RaceKind kind, RaceType type, int blockId, int localTid,
    const CoalescedSets<ElementType, SizeType> & otherDir, int iterations) const {
    ElementType * localSetHead = getSetHead( blockId, localTid);
    SizeType localSetSize = *getPtrToSize( blockId, localTid);
    size_t conflicts = 0;
    //TODO: try different parameters here?
#pragma unroll
    for(size_t j = 1; j <= iterations; j++ ) {
      int tid = (localTid + j )% nthreads;
      CURD_ASSERT(tid != localTid );

      int nextIdx = 0;
      for(SizeType i = 0; i < localSetSize; i++) {
        ElementType & region = localSetHead[i * nthreads];
        auto _r = checkOverlaps( region, blockId, tid, otherDir, nextIdx );
  #ifdef WITH_SOURCE_INFO
        if( _r ){
          ElementType intersection = _r -> intersect( region ); 
          CURD_ASSERT( intersection.valid() );
          reportRace( 1, kind, type, localTid,
                    tid, region.srcLoc, _r -> srcLoc, intersection );
          break;
        }
  #else
        reportRace( _r != nullptr, kind, type, localTid,
                    tid, intersection );
  #endif
      }
    }
    return conflicts;
  }

#endif

 public:
  __host__ __device__ CoalescedSets() {}
  /* allocate & initialize the memory region for the sets (called on host)*/
  CoalescedSets(int threadsPerBlock, int blocks,
                SizeType threadSetCapacity) {
    using namespace std;
    CURD_ASSERT( threadsPerBlock >= 1);
    CURD_ASSERT( blocks >= 1);
    CURD_ASSERT( threadSetCapacity >= 1);
    size_t bytesOfSetBodies = sizeof(ElementType) *
                              threadSetCapacity * threadsPerBlock * blocks;
    size_t bytesOfSizesArray = sizeof(SizeType) *
                               threadsPerBlock * blocks;
    checkCudaErrors( cudaMalloc(&setsHead, bytesOfSetBodies ));
    checkCudaErrors( cudaMalloc(&sizesHead, bytesOfSizesArray));
    checkCudaErrors( cudaMemset(setsHead, 0, bytesOfSetBodies));
    checkCudaErrors( cudaMemset(sizesHead, 0, bytesOfSizesArray));

    this -> nthreads = threadsPerBlock;
    this -> blocksNum = blocks;
    this -> setCapacityPerThread = threadSetCapacity;
  }
  // releases device memory
  void free() {
    using namespace std;
    checkCudaErrors( cudaFree(setsHead));
    checkCudaErrors( cudaFree(sizesHead));
    setsHead = nullptr;
    sizesHead = nullptr;
    nthreads = 0;
    blocksNum = 0;
    setCapacityPerThread = 0;
  }
  __device__ inline ElementType * getSetHead(int block, int thread) const {
    size_t setHeadIndex = block * nthreads * setCapacityPerThread + thread ;
    return setsHead + setHeadIndex;
  }

  __device__ inline SizeType * getPtrToSize(int block, int thread) const {
    size_t index = block * nthreads + thread;
    return sizesHead + index;
  }

  __device__ inline SizeType getSize( int block, int thread ) const{
    return *getPtrToSize(block, thread );
  }

  __device__ inline bool add(ElementType element) const {
    size_t block = linearizedBlockId();
    size_t thread = linearizedThreadId();
    SizeType * _size = getPtrToSize(block, thread);
    ElementType * _setHead = getSetHead(block, thread);
    if(*_size >= setCapacityPerThread) {
      printf("size = %ld, scp = %ld\n", (uint64_t)*_size, (uint64_t)setCapacityPerThread);
    }

    CURD_ASSERT(*_size < setCapacityPerThread);
#ifdef EAGER_LOG_MERGE
    bool inserted = set_merge_append(_setHead, _size, nthreads, element,
      static_cast<SizeType>(configParams.tsInsertSearchRange));
    //bool inserted = set_merge_append_forwards(_setHead, _size, /*(SizeType)*/nthreads, element, static_cast<SizeType>(configParams.tsInsertSearchRange));

#else
    bool inserted = set_append(_setHead, _size, nthreads, element);
#endif
    return inserted;
  }

  __device__ inline void clearSetForThread(int block, int thread) const {
    SizeType * _size = getPtrToSize( block, thread);
    *_size = 0;
  }
  /*
    remove elements of write sets from the read sets
  */
  __device__ inline int dedup(int block, int thread, 
    const CoalescedSets<ElementType, SizeType> & otherDir) {
    ElementType * setHead = getSetHead(block, thread);
    auto _setSize = getPtrToSize(block, thread);
    SizeType setSize = *_setSize;
    ElementType * otherSetHead = otherDir.getSetHead(block, thread);
    SizeType otherSetSize = *(otherDir.getPtrToSize(block, thread));
    SizeType i = 0, j = 0, p = 0;
    while (i < setSize && j < otherSetSize) {
      auto & r1 = setHead[i * nthreads];
      auto & r2 = otherSetHead[j * nthreads];
      if (r1.addr + r1.size < r2.addr) {
        if (p != i) {
          setHead[p * nthreads] = setHead[i * nthreads];
        }
        i++;
        p++;
      } else if (r2.addr + r2.size < r1.addr) {
        j++;
      } else if (
        r1.addr >= r2.addr &&
        r1.addr + r1.size <= r2.addr + r2.size
      ) {// r1 is inside r2, so we remove r1 from the set 
        i++;
      } else {
        // r1 overlaps with r2 
        #ifdef STRICT_DEDUP
        if (r1.addr < r2.addr) {
          setHead[p * nthreads].addr = r1.addr;
          setHead[p * nthreads].size = r2.addr - r1.addr;
          p++;
        } 
        auto r1End = r1.addr + r1.size;
        auto r2End = r2.addr + r2.size;
        if (r1End > r2End) {
          setHead[p * nthreads].addr = r2End;
          setHead[p * nthreads].size = r1End - r2End;
          p++;
        }
        #else
        //NB: for simplicity, we preserve overlapped regions 
        if (p != i) {
          setHead[p * nthreads] = setHead[i * nthreads];
        }
        p++;
        j++; 
        #endif
        i++;
      }
    }
    CURD_ASSERT(setSize >= p);
    *_setSize = p;
    auto nRemoved = setSize - p;
    __syncthreads();
    return nRemoved;
  }
  
  __device__ inline ElementType * checkOverlaps(const ElementType & region,
       int blockId, int tid,
                                         const CoalescedSets<ElementType, SizeType> & otherDir, 
  int &nextIdx ) const {
    using namespace util;
    ElementType * remoteSetHead = otherDir.getSetHead(blockId, tid);
    SizeType remoteSetSize = *(otherDir.getPtrToSize(blockId, tid));
    // binary-search any mergable region
    // NB: requires regions in the set are sorted & disjoint
    #ifdef BINARY_SEARCH
     //binary search 
    auto _r = binary_search<ElementType, overlapping<ElementType>>( 
      remoteSetHead, remoteSetSize, nthreads, region, nextIdx); 
    return _r;
    #else
    // linear search
    for(SizeType k = 0 ; k < remoteSetSize; k++) {
      if( remoteSetHead[k * nthreads].overlapsWith( region ) ){
        return remoteSetHead + k * nthreads ;
      }
    }
    return nullptr;
    #endif
  }

  /*
    check conflicts between set(blockId, localTid) and all sets in otherDir
    NB: otherDir should be different from *this; otherwise repetitive comparisons
    would be done
  */
  __device__ inline size_t checkIntraBlockOverlaps(
    RaceKind kind, RaceType type, int blockId, int localTid,
    const CoalescedSets<ElementType, SizeType> & otherDir) const {
    return checkIntraBlockOverlaps( kind, type, blockId, localTid,
                             otherDir, nthreads - 1);
  }
  /*
    check conflicts between set(blockId, localTid) and all sets within this dir
  */
  __device__ inline size_t checkIntraBlockOverlaps(
    RaceKind kind, RaceType type, int blockId, int localTid ) const {
    if( nthreads > 1 ) {
      return checkIntraBlockOverlaps( kind, type, blockId, localTid,
                               *this, ceil_div( nthreads - 1, 2 ) );
    }
    return 0;
  }
<<<<<<< HEAD
 
  __device__ inline int findCulprit(
    int blockId, 
    const ElementType & victim,
    SourceLocation & loc,
    int ignoredTid = -1
  ) {
    auto culprit = tryFindCulprit(blockId, victim, loc, ignoredTid);
    if (culprit < 0) {
      culprit = tryFindCulprit<false>(blockId, victim, loc, ignoredTid);
    }
    return culprit;
  }

  /* each thread scans all the sets
    TODO: improve this 
  */
  /* returns the tid that contains an overlapping region in its set*/
  template<bool sorted = true>
  __device__ inline int tryFindCulprit(
    int blockId,
    const ElementType & victim, 
    SourceLocation & loc,
    int ignoredTid = -1
  ) {
    int culprit = -1;
    for (int t = 0; t < nthreads; t++) {
      if (ignoredTid == t) {
        continue;
      }
      auto _setHead = getSetHead(blockId, t);
      auto setSize = *getPtrToSize(blockId, t); 
      ElementType * _r = nullptr;
      if (sorted) {
         _r = binary_search<ElementType, overlapping<ElementType>>(
          _setHead, setSize, nthreads, victim);
      } else {
         _r = linear_search<ElementType, overlapping<ElementType>>(
          _setHead, setSize, nthreads, victim);
      }
      if (_r) {
        loc = _r -> srcLoc;
        return t;
      }
    }
    return culprit;
  }

  /* fast check & compress the coalesced set, implemented with syncthreads
    requires the coalesced set to be monotonically ordered 
  */
  template<bool checkOverlap = true>
  __device__ inline int checkAndCompressOrdered_syncthreads(
    int blockId, int tid,  Bitmap<4> * _bitmap, 
    BlockSet * _blockSet, GlobalMemorySizeType * blueBuff,
    int * redBuff ) {
    auto _setSizes = getPtrToSize(blockId, 0);
    auto nRows = parallelMax(_setSizes, nthreads, blockId, tid, blueBuff);
    __syncthreads(); 
    int size = nthreads * nRows;
    int * indices = redBuff;
    //int * indices = newArrayForBlock<int>(tid, size);
    // initialize the indices array from the bitmap
    for (int i = 0; i < nRows; i++) {
      auto index = i * nthreads + tid;
      auto profile = _bitmap -> get(index);
      OverlapAttr overlap;
      OrderAttr order;
      bool valid = false;
      decodeProfile(profile, valid, overlap, order);
      indices[i * nthreads + tid] = valid && (overlap == disjoint || overlap == leftmost);
    }
    __syncthreads();
    auto nDestRegions = scan(tid, indices, size, nthreads); 
    // write the left part of the destination regions
    auto * _bsBuffer = _blockSet -> getPtrToBufferEntry(0);
    auto _setHead = getSetHead(blockId, 0);
    for (int i = 0; i < nRows; i++) {
      auto index = i * nthreads + tid;
      // TODO: this decoding is redundant 
      auto profile = _bitmap -> get(index);
      OverlapAttr overlap;
      OrderAttr order;
      bool valid = false;
      decodeProfile(profile, valid, overlap, order);
      if (overlap == disjoint || overlap == leftmost) {
        CURD_ASSERT(valid);
        //CURD_ASSERT_lt( 0, indices[index], "0", "indices[index]" );
        _bsBuffer[indices[index]] = _setHead[index];    
      } else if (checkOverlap && overlap == overlapped) {
        // check for overlapping accesses
        //reportRace(1, RaceKind::IntraBlockGM, RaceType::WW, localTid, (localTid + nthreads - 1) % nthreads,...)
        //printf("[TODO]: race detected!, t = %d, profile = %d\n", tid, profile);
      }
    }
    __syncthreads();
    for (int i = 0; i < nRows; i++) {
      auto index = i * nthreads + tid ;
      if (index + 1> size) {
        break;
      }
      if ( index + 1 == size || 
           getProfileOverlap(_bitmap -> get(index + 1)) == disjoint
      ) {
        CURD_ASSERT(index + 1 == size || isProfileValid(_bitmap -> get(index + 1)));
        auto j = index;
        while( j > 0 && !isProfileValid(_bitmap -> get(j))) {
          j--;
        }
        //CURD_ASSERT(indices[j] == indices[index]);
        // the dest region only has one src region 
        auto attr = getProfileOverlap(_bitmap -> get(j));
        if ( attr == disjoint || attr == leftmost) { 
          continue;  
        }
        CURD_ASSERT(isProfileValid(_bitmap -> get(j)));
        if ( blockId == 13 && indices[j] <= 0) {
          printf("j=%d,index=%d,tid=%d\n", j, index, tid);
          for(int k = 0; k <= j + 2; k++) {
            printf(" [%d]=%d", k, indices[k]);
          }
          printf("\n");
          _bitmap->print("xoxoxaxaxdxdxlxl", 100, 64, 0);
          printf("\n");
          CURD_ASSERT_lt( 0, indices[j], "0", "indices[j]" );
        }
        //CURD_ASSERT(indices[j] >= 1);
        int destIndex  = indices[j] - 1;
        // should be fine even if the two regions are disjoint 
        _bsBuffer[destIndex].mergeWith(_setHead[j]);    
      }
    }  
    // publish the new entries written in the block set 
    __syncthreads();
    // check for intraB WW overlaps 
    // ensure this won't be done on read sets 
    if (checkOverlap) {
      if (!tid) {
        bubble_sort(_bsBuffer, nDestRegions, 1);
      } 
      __syncthreads();
      if (tid + 1< nDestRegions) {
        if (_bsBuffer[tid].overlapsWith(_bsBuffer[tid + 1])) {
          auto region = _bsBuffer[tid].intersect(_bsBuffer[tid + 1]);
          printf("[TODO]: race detected! on <%p,%d> \n", region.addr, region.size );
        }
      }  
      __syncthreads();
    }
    return nDestRegions;
  }

  /* fast check & compress the coalesced set, implemented with atomic functions 
    requires the coalesced set to be monotonically ordered 
  */
  __device__ inline int checkAndCompressOrdered_atomic(
    int blockId, int tid,  Bitmap<4> * _bitmap, 
    BlockSet * _blockSet, GlobalMemorySizeType * blueBuff ) {
    // suppose no region is a superset of another region
    // then overlapping can only occur between neighboring regions 
    __shared__ unsigned int bsSize;
    if (!tid) {
      bsSize = 0;
    }
    auto _setSizes = getPtrToSize(blockId, 0);
    auto nRows = parallelMax(_setSizes, nthreads, blockId, tid, blueBuff);
    __syncthreads(); 
   
    auto twsSize = *getPtrToSize(blockId, tid);
    auto totalSize = nRows * nthreads;
    for (int i = 0; i < twsSize; i++) {
      // index within the linearized TWSs array
      auto index = i * nthreads + tid;
      if (index >= totalSize) {
        break;
      }
      auto profile = _bitmap -> get(index);
      OverlapAttr overlap;
      OrderAttr order;
      bool valid = false;
      decodeProfile(profile, valid, overlap, order);
      if (!valid) {
        // 
        CURD_ASSERT(valid);
      }
      // check for overlapping accesses
      if (overlap == overlapped) {
        //reportRace(1, RaceKind::IntraBlockGM, RaceType::WW, localTid, (localTid + nthreads - 1) % nthreads,...)
        printf("[TODO]: race detected!, t = %d, profile = %d\n", tid, profile);
      }
      // TODO: do we really need to differentiate leftmost from disjoint?  
      if (overlap == disjoint || overlap == leftmost) {
        __threadfence_block();
        auto idx = atomicAdd(&bsSize, 1);
        __threadfence_block();
        blueBuff[idx] = index;
      }
    }
    __syncthreads();
    auto * _setHead = getSetHead(blockId, 0);
    // do the compression
    if (!tid) {
      bubble_sort(blueBuff, bsSize, 1);
      if (nRows) {
        blueBuff[bsSize++] = nRows * nthreads; 
      }
    }
    __syncthreads();
    // write the merged regions into the block set  
    auto * _bsBuffer = _blockSet -> getPtrToBufferEntry(0);
    CURD_ASSERT( bsSize < nthreads);
    if (tid < bsSize - 1) {
      auto left = blueBuff[tid];
      auto right = blueBuff[tid + 1];
      CURD_ASSERT( left < right);
      right--;
      while (right > left && !isProfileValid(_bitmap -> get(right))) {
        right--;
      }
      _bsBuffer[tid] = _setHead[left];
      if (left != right  && isProfileValid(_bitmap -> get(right))) {
        auto end = _setHead[right].addr + _setHead[right].size;
        /*if (_setHead[left].addr >= end) {
          if (!tid) {
            printf("left:%d, right:%d; [%d]: <%p, %d>, [%d]: <%p, %d>\n", 
              left, right, left, _setHead[left].addr, _setHead[left].size, 
              right, _setHead[right].addr, _setHead[right].size);
            _bitmap->print("xdxuxdxuxdxuxdxu", 8, 64, left);
            _bitmap->print("xoxoxaxaxdxdxlxl", 8, 64, left);
            _bitmap->print("0123456789ABCDEF", 8, 64, left);
            printf("=======\nright - 1:\n");
            _bitmap->print("xdxuxdxuxdxuxdxu", 8, 64, right);
            _bitmap->print("xoxoxaxaxdxdxlxl", 8, 64, right);
            _bitmap->print("0123456789ABCDEF", 8, 64, right);

          }
        }*/
        //CURD_ASSERT_lt( _setHead[left].addr, end, "leftAddr","rightEnd");
        //_bsBuffer[tid].size = end - _setHead[left].addr;
        _bsBuffer[tid].mergeWith(_setHead[right]);
      }
    }
    __syncthreads();
    return bsSize - 1 > 0 ? bsSize -1: 0 ;
  }

=======
  __device__ inline void copyPartition( int blockId, int tid, int start,
    int end, ElementType * _dest ){
    auto _setHead = getSetHead( blockId, tid );
    CURD_ASSERT( end <= getSize( blockId, tid) );
    CURD_ASSERT( start <= end );
    
    for( int i = start ; i < end; i++ ){
      _dest[i] = _setHead[i * nthreads ];
    }
  }
  __device__ inline SizeType moveSet( int blockId, int tid, ElementType * _dest ){
    auto s = getSize( blockId, tid );
    copyPartition( blockId, tid, 0, s , _dest );
    clearSetForThread( blockId, tid );
    return s;
  }
>>>>>>> 0812110a738a6531e4551dd20ed6336881fc2726
  /* sequential compression: copy all elements to a buffer, which will be reduced later */
  __device__ inline int compressIntoBlockSet_seq( int blockId, int localTid,
      int nthreads, const BlockSets & blockSetsDir ) {
    __syncthreads();
    BlockSet * _blockSet = blockSetsDir.get( blockId );
    //  auto bs3 = compressIntoBlockSet_par3( blockId, localTid, nthreads, blockSetsDir );


    // when this function returns, bufferHead should be the number of elements inserted
    __shared__ int bufferHead;
    // let thread 0 do the reduction sequentially
    if( localTid == 0 ) {
      bufferHead = 0;
      auto nRows = 0;
      for( int t = 0; t < nthreads ; t ++ ) {
        auto ts_size = * getPtrToSize( blockId, t );
        nRows = ts_size > nRows? ts_size : nRows ;
        GlobalMemoryRegion * _setHead = getSetHead( blockId, t );
        for( int i = 0; i < ts_size; i++ ) {
          CURD_ASSERT( _setHead[i * nthreads ].valid() );
          _blockSet -> writeToTempBuffer(bufferHead++, _setHead[i * nthreads ]);
        }
      }
      bufferHead = _blockSet -> compressBuffer( bufferHead );
      /*  if( bs3 != bufferHead ){
          printf( "nColumns = %d, maxSSize = %d\n", nRows, nRows * nthreads );
      for( int i = 0; i < bufferHead; i++ ){
      _blockSet -> getUnsafe( _blockSet -> size() + i ) -> print("","\n");
      }
          CURD_ASSERT_eq( bs3, bufferHead, "bs3", "finalBsSize" );
        }*/
    }

    __syncthreads();
    return bufferHead;
  }

  /* parallel reduction level 2: each thread reduce a column*/
  __device__ inline int compressIntoBlockSet_par2( int blockId, int localTid,
      int nthreads, const BlockSets & blockSetsDir, 
      GlobalMemorySizeType * _sizesBuffer ) {
    #ifdef SEQ_COMPRESS_VERIFY
    auto bs_seq = compressIntoBlockSet_seq( blockId, localTid, nthreads, blockSetsDir );
    #endif

    BlockSet * _blockSet = blockSetsDir.get( blockId );
    // get the start ptr of the size fields for the current block
    auto setSizes = getPtrToSize( blockId, 0 );
    __shared__ int bsSize;
    if( !localTid ) {
      bsSize = 0;
    }
    __syncthreads();
    auto nRows = parallelMax( setSizes, nthreads, blockId, localTid, _sizesBuffer );
    if( nRows ) {
      if ( nthreads < nRows ){ // par2: each threads reduces N elements each time
        int iterations = ceil_div( nRows, nthreads );
        GlobalMemoryRegion * _setHead = getSetHead( blockId, 0 );
        for( int j = 0; j < iterations; j++ ) {

          auto c = localTid + j * nthreads;
          if( c >= nRows ){ //no row left
            break;
          }
          auto cHeadIdx =  c * nthreads ;
          int i = 0;
          while( i < nthreads ) {
            // skip non-existing entries
            while( i < nthreads &&
                   setSizes[i] <= c) {
              i++;
            }
            if( i >= nthreads ) { // no more entries in this column
              break;
            }
            // TODO: avoid 1 copy here
            __threadfence_block();
            auto idx = atomicAdd( &bsSize, 1 );
            __threadfence_block();
            
            auto * _r = _blockSet -> getPtrToBufferEntry( idx );
            *_r = _setHead[cHeadIdx + i];
            i++;
            while( i < nthreads  &&
                   setSizes[i] > c &&
                   _r -> mergableWith( &_setHead[ cHeadIdx + i] ) ) {
              _r -> mergeWith( _setHead[cHeadIdx + i] );
              i++;
            }
          }
        }
      }else{ // par4: each threads reduces M regions
        GlobalMemoryRegion * _setHead = getSetHead( blockId, 0 );
        auto myStart = localTid * nRows;
        #ifdef BUFFERED_COMPRESSION
        GlobalMemoryRegion regions[BUFFER_SIZE];
        int top = 0;
        for( int c = myStart; c < myStart + nRows; c++ ) {
          auto owner = c % nthreads;
          auto idx   = c / nthreads;
          if( setSizes[owner] < idx ){// skip empty slots
            continue;
          }
          auto & r = regions[top];
          if( r.weaklyMergableWith( _setHead + c ) ){
            r.mergeWith( _setHead[c] );
          }else{
            // save the current r
            CURD_ASSERT( r.valid() );
            top++;
            if (top >= BUFFER_SIZE) {
              __threadfence_block();
              auto outIdx = atomicAdd(&bsSize, BUFFER_SIZE);
              for (int i = 0; i < BUFFER_SIZE; i++) {
                _blockSet->writeToTempBuffer(outIdx + i, regions[i]);
              }
              top = 0;
            }
          }
           
        }
        auto nRemaining = top;
        if (top < BUFFER_SIZE && regions[top].valid()) {
          nRemaining = top + 1;  
        }   
        if (nRemaining) {
          __threadfence_block();
          auto outIdx = atomicAdd(&bsSize, nRemaining);
          __threadfence_block();
          for (int i = 0; i < nRemaining; i++) {
            _blockSet->writeToTempBuffer(outIdx + i, regions[i]);
          }
          top = 0;
        }
        #else
        GlobalMemoryRegion r;
        for( int c = myStart; c < myStart + nRows; c++ ) {
          auto owner = c % nthreads;
          auto idx   = c / nthreads;
          if( setSizes[owner] < idx ){// skip empty slots
            continue;
          }
          if( r.weaklyMergableWith( _setHead + c ) ){
            r.mergeWith( _setHead[c] );
          }else{
            // save the current r
            CURD_ASSERT( r.valid() );
            __threadfence_block();
            auto outIdx = atomicAdd( &bsSize, 1 );
            __threadfence_block();
            _blockSet -> writeToTempBuffer( outIdx, r );
            r.clear();
          }
          
        }
        if( r.valid()){
          __threadfence_block();
          auto outIdx = atomicAdd( &bsSize, 1 );
          __threadfence_block();
          _blockSet -> writeToTempBuffer( outIdx, r );
        }
        #endif
      }
    }
    __syncthreads();
    #ifdef SEQ_COMPRESS_VERIFY
      if( !localTid ) {
        auto oldBsSize = bsSize;
        bsSize = _blockSet -> compressBuffer( bsSize );
        CURD_ASSERT_eq( bs_seq, bsSize, "bs_seq", "bsSize" );
      }

    __syncthreads();
#endif    
    return bsSize;
  }  
  
  __device__ void print(int blockId, int rLimit, int width = 32) {
    auto size = setCapacityPerThread * nthreads;
    auto nRows = ceil_div(size, width);
    if (rLimit < nRows) {
      nRows = rLimit;
    } 
    printf("r\\c");
    for (int c = 0; c < width; c++) {
      printf(" %12d", c);
    }
    printf("\n");
    for (int r = 0; r < nRows; r++) {
      auto rStart = r * width;
      printf("%2d:", r);
      for (int c = 0; c < width && rStart + c < size; c++) {
        auto setHead = getSetHead(blockId, 0);
        auto val = setHead[rStart + c];
        printf(" (%p,%d)", val.addr, val.size );
      }
      printf("\n");   
    }
  }
  // TODO: try implement using __syncthreads_and() to avoid using shared memory
  __device__ __inline__ bool verifyOrder(
    int blockId, int tid, Bitmap<4> * _bitmap, GlobalMemorySizeType * buffer) {
    auto localSize = *getPtrToSize(blockId, tid);    
    int ascendingCount = 0;
    // count the ascending points in the local set
    for (int i = 0; i < localSize; i++) {
      bool valid = false;
      OverlapAttr overlap;
      OrderAttr order;
      auto idx = i * nthreads + tid;
      decodeProfile(_bitmap -> get(idx), valid, overlap, order);
      CURD_ASSERT(valid);
      ascendingCount += order == ascending;
    }
    // do a tree-reduction of the results
    buffer[tid] = ascendingCount;
    __syncthreads();
    auto totalCount = treeSum(buffer, nthreads, tid); 
    buffer[tid] = localSize;
    __syncthreads();
    auto totalSize = treeSum(buffer, nthreads, tid);
    // if declare as bool here, shared memory may become misaligned
    __shared__ int allOrdered;
    if (!tid) {
      // NB: the very first element with the bitmap may spuriously different ordering from others 
      allOrdered = totalCount >= totalSize - 1 || totalCount <= 1 ;
      ADD_COUNTER( ascendingInTWSS, totalCount);
      ADD_COUNTER( descendingInTWSS, totalSize - totalCount);
    }
    __syncthreads();
    return allOrdered;
  }
  __device__ inline static unsigned int makeProfile(
    bool valid, OverlapAttr overlap, OrderAttr order) {
    // LSB to MSB: valid order overlap
    unsigned int profile = valid;
    profile |= order << 1;
    profile |= overlap << 2;
    CURD_ASSERT( profile < 1 << 4);
    return profile;
  }

  __device__ inline static void decodeProfile(
    unsigned int profile, bool & valid, OverlapAttr & overlap, OrderAttr & order) {
    valid = isProfileValid(profile);
    order = getProfileOrder(profile);
    overlap = getProfileOverlap(profile);
  }
  __device__ inline static bool isProfileValid(unsigned int profile) {
    return profile & 1; 
  }

  __device__ inline static OverlapAttr getProfileOverlap(unsigned int profile) {
    return static_cast<OverlapAttr>( profile >> 2);
  }
  __device__ inline static OrderAttr getProfileOrder(unsigned int profile) {
    return static_cast<OrderAttr>((profile >> 1 ) & 1);
  }

  __device__ inline Bitmap<4> * profileOrdering(
    int blockId, int tid, GlobalMemorySizeType * _sizesBuffer) {
    auto setHead = getSetHead(blockId, 0);
    auto setSizes = getPtrToSize(blockId, 0);
    __syncthreads();
    auto nRows = parallelMax( setSizes, nthreads, blockId, tid, _sizesBuffer );
    auto totalLength = nRows * nthreads;
    if (!totalLength) {
      return nullptr;
    }
    __shared__ Bitmap<4> * _bitmap; 
    __syncthreads();
    if (!tid) {
      auto bBuff = bitmapBuffer + static_cast<int>(blockId * configParams.initialTWSSizeGM * nthreads);
      _bitmap = new Bitmap<4>(totalLength, bBuff);

    }
    __syncthreads();
      // TODO: parallelize this 
    auto t = tid;
    for (int r = 0; r < nRows; r++) {
      int i = r * nthreads + t;
      if (i >= totalLength) {
        printf("i=%d, totalLength=%d, r = %d, t= %d\n", i, totalLength, r, t);
      }
      CURD_ASSERT_lt(i, totalLength, "i", "totalLength");
      bool exists = r < setSizes[t] && i < totalLength;
      OverlapAttr overlap = overlapped;
      OrderAttr order = ascending; 
      if (exists) {
        // find the non-empty left neighbor 
        int j = i - 1;
        while (j >=0 && j / nthreads >= setSizes[j % nthreads]) {
          j--;
        }
        if (j < 0) { // no such neighbor
          //_bitmap -> set(i, 3); // leftmost
          overlap = leftmost;
        } else {
          //_bitmap -> set(i, setHead[i] > setHead[j]); // greater / smaller 
          order = static_cast<OrderAttr>(setHead[i] > setHead[j]);
          if (setHead[i].overlapsWith(setHead[j])) {
            overlap = overlapped;
          } else if (!setHead[i].mergableWith(setHead + j)){
            overlap = disjoint;
          } else {
            overlap = adjacent;
          }
        }
      }
      auto profile = makeProfile(exists, overlap, order);
      auto s = _bitmap -> getSize();
      if (i >= s) {
        printf("i=%d, totalLength=%d, s =%d r = %d, t= %d\n", i, totalLength, s, r, t);
      }
      _bitmap -> set(i, profile);
    }
    __syncthreads();
    return _bitmap;
  }



  /*NB: currently, we use the compiler-generated copy constructor
   & assignment operator */
};

}
