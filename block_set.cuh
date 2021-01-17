#pragma once
#include "memory_region.cuh"
#include "lock.cuh"
#include "simple_set.cuh"
#include "race.cuh"
#include "sort.cuh"
#include "utils.cuh"
#include "config.h"
#include "capability_set.cuh"
#include "hash_map.cuh"
#include "pair.cuh"
#include "sfr.cuh"
//#include "coalesced_sets.cuh"

using util::ceil_div;
using util::linear_search;
using util::swap;
using util::set_append;
using util::set_merge_append;
using util::set_merge_all_append;
using util::Pair;

namespace curd{
typedef CoalescedSets<SharedMemoryRegion, SharedMemorySizeType> CoalescedSetsShmem;
typedef CoalescedSets<GlobalMemoryRegion, GlobalMemorySizeType> CoalescedSetsGlmem;
typedef SimpleSet<GlobalMemoryRegion, GlobalMemorySizeType> GlobalMemoryRegionSet;
class BlockSets;

typedef util::ConcurrentHashMap< int, List<int>*, true > ThreadSFRsMap;



/* NB: these two typedefs need to be consistent*/
class BlockSet :public GlobalMemoryRegionSet {
  friend class BlockSets;
  AtomicArray< SFR, int > sfrs;
  // size of the block set at the last __syncthreads()
  GlobalMemorySizeType lastSyncedSize;
 public:
  //using GlobalMemoryRegionSet::GlobalMemoryRegionSet;
  BlockSet(){
  }
  // all pointers must have been returned by cudaMalloc
  BlockSet( GlobalMemoryRegion * elem, GlobalMemorySizeType s, 
    SFR * _s, int sc  ): 
    GlobalMemoryRegionSet(elem, s ), sfrs( _s, sc ){
  }
  void free( ){
    this -> cudaFreeUnderlyingArray();
    sfrs.cudaFreeUnderlyingArray();
  }
  __device__ inline GlobalMemorySizeType reserveSpace( unsigned int length ){
    CURD_ASSERT( sizeof( GlobalMemorySizeType ) == 4 );
    auto old = atomicAdd( static_cast<unsigned int *>(const_cast<GlobalMemorySizeType *>(&mSize)), length );
    return  old; 
  }
  __device__ inline int commitSFR( CoalescedSetsGlmem & tss, int tid, const CapabilitySet * _tcs ){
    auto self = linearizedThreadId();
    auto blockId = linearizedBlockId();
    int id = -1;
    if( self == tid){
      auto start = reserveSpace( tss.getSize( blockId, tid ) );
      auto _buffer = underlyingArray + start;
      // move tid's thread set in tss to the block set
      auto len = tss.moveSet( blockId, tid, _buffer );
      // TODO : take a snapshot of tid's capabilities
      SFR sfr( *_tcs, start, start + len );
      id = sfrs.put( sfr );
    }  
    return id;
  }
  __device__ inline void syncSize(){
    if( !linearizedThreadId()  ){
      lastSyncedSize = mSize;
    }
  }
  __device__ inline GlobalMemorySizeType getLastSyncedSize(){
    return lastSyncedSize;
  }

  /* write region into the unused space in the set, w/o updating size (commit) */
  __device__ inline void writeToTempBuffer(int offset, GlobalMemoryRegion & region) {
    auto index = getBufferEntryIndex( offset );
    underlyingArray[ index ] = region;
  }
  __device__ inline GlobalMemoryRegion * getPtrToBufferEntry(int offset ){
    auto index = getBufferEntryIndex( offset );
    return underlyingArray + index;
  }
  __device__ inline int getBufferEntryIndex( int offset ){
    CURD_ASSERT( offset >= 0);
    GlobalMemorySizeType index = mSize + offset;
    CURD_ASSERT( index < mCapacity );
    return index;
  }
  /* commit count elements in the bufer */
  __device__ inline int compressBuffer(int count ) {  
    CURD_ASSERT( !linearizedThreadId() );
    int actualCount = 0;
    // merge elements in the buffer first
    for( int i = 0; i < count;  ) {
      auto & val = underlyingArray[ this -> mSize + i ];
      if( !val.valid() ) { // ignore invalid entries
        val.print("invalid: ", "\n");
        CURD_ASSERT( val.valid() );
        CURD_ASSERT( count >= 1 );
        swap( underlyingArray + this -> mSize, i, count - 1 );
        count--;
      } else {
        set_merge_all_append( underlyingArray + this -> mSize, &actualCount, 1, val, actualCount );
        CURD_ASSERT( actualCount > 0 );
        CURD_ASSERT( underlyingArray[ this -> mSize + actualCount -1 ].valid() );
        i++;
      }
    }
    return actualCount;
  }

#ifdef EAGER_COLUMN_MERGE
  __device__ inline int commitBuffer(int count) {
    int actualDeltaSize = 0;
    auto newSize = this -> mSize;
    int actualCount = compressBuffer( count );
    //ensure all regions within the set do not overlap
    for(int i = 0; i < actualCount; i ++) {
      auto val = underlyingArray[ this -> mSize + i];
      //TODO: optimize this
      bool inserted = set_merge_append( underlyingArray, &newSize, 1, val,
        static_cast<decltype(newSize)>( configParams.bsMergeSearchRange));
    }
    actualDeltaSize = newSize - this -> mSize;
    CURD_ASSERT(newSize <= this -> mCapacity);
    this -> mSize = newSize;
    return actualDeltaSize;
  }
#else
  __device__ inline int commitBuffer(int count) {
  #ifdef COMPRESS_BS_BUFFER
    CURD_ASSERT( count >= 0);
    auto actualCount = compressBuffer( count );
   
    // look each buffer entry in the set, to avoid identical elements
    for( int i = 0; i < actualCount; ) {
      auto val = underlyingArray[ this -> mSize + i ];
      // TODO: bound this search
      bool hit = linear_search( underlyingArray, this -> mSize + i, 1, val, 
        configParams.bsMergeSearchRange );
      if( hit ) { // shouldn't be included into the final set
        CURD_ASSERT( actualCount >= 1);
        // swap the current element with the last element
        swap( underlyingArray + this -> mSize, i, actualCount -1 );
        // discard the last element ( which was the ith element )
        actualCount--;
      } else {
        i++;
      }
    }
    CURD_ASSERT( actualCount >= 0 );
    int newSize = this -> mSize + actualCount;
    CURD_ASSERT(newSize >= 0);
    CURD_ASSERT(newSize <= this -> mCapacity);
    this -> mSize = newSize;
    __threadfence();
    return actualCount;
    #else
    return count;
    #endif
  }
#endif

  __device__ inline void updateSize(int count) {
    int newSize = this -> mSize + count;
    CURD_ASSERT(newSize <= this -> mCapacity);
    this -> mSize = newSize;
    __threadfence();
  }


  __device__ inline void reset() {
    this -> mSize = 0;
    __threadfence();
  }

  /* used to allow reading the uncommitted buffer*/
  __device__ inline GlobalMemoryRegion * getUnsafe(GlobalMemorySizeType index) {
    //return get( index );
    return underlyingArray + index;
  }


};

/* return a device pointer to an array of SimpleSet objects that describes sets on device */
BlockSet *  cudaMallocBlockSetArray(size_t n, GlobalMemorySizeType mCapacity) {
  BlockSet * sets = new BlockSet[n];
  BlockSet * dev_ptr;
  checkCudaErrors( cudaMalloc(&dev_ptr, sizeof(BlockSet) * n) );
  for(size_t i =0; i < n; i++) {
    GlobalMemoryRegion * array;
    size_t regionSizeInBytes = mCapacity * sizeof(GlobalMemoryRegion);
    // allocate the underlying array of GlobalMemoryRegions for each BlockSet
    checkCudaErrors( cudaMalloc(&array, regionSizeInBytes ) );
    checkCudaErrors( cudaMemset(array, 0, regionSizeInBytes ) );
    int nSFRs = 1024, nCapabilities = 1024;
    SFR * sfrs;
    checkCudaErrors( cudaMalloc(&sfrs, nSFRs * sizeof( SFR ) ) );
    checkCudaErrors( cudaMemset(&sfrs, 0, nSFRs * sizeof( SFR )));
    sets[i]=BlockSet(array, mCapacity, sfrs, nSFRs);
  }
  checkCudaErrors( cudaMemcpy(dev_ptr, sets, sizeof(BlockSet) * n,
                              cudaMemcpyHostToDevice));
  delete[] sets;
  return dev_ptr;
}

class BlockSets : public SimpleArray< BlockSet, GlobalMemorySizeType > {
 private:
  __device__ inline size_t checkInterBlockOverlaps(
    RaceType checkType, BlockSet *_localBlockSet, int blockId, int localTid,  int threadsCount,
    int oldSetSize, int deltaSetSize, const BlockSets & blockSetsDir ) {
    int blocksNum = mCapacity;
    size_t checksCount = 0;
    size_t conflictsDetected = 0;
    int iterations = ceil_div( blocksNum, threadsCount);
    //int iterations = 1 + ( blocksNum - 1) / threadsCount;
    //each thread is responsible for checking against a subset of all remote blocks
    for( int i = 0; i < deltaSetSize; i ++ ) {
      //TODO: all threads reads the same object; improve this ?
      auto r = _localBlockSet -> get(oldSetSize + i);
      GlobalMemoryRegion region = *r ;
      for(int j = 0; j < iterations; j++) {
        int remoteBlockId = j * threadsCount + localTid;
        GlobalMemoryRegion intersection;
        conflictsDetected += conflicts(checkType, region, blockSetsDir,
                                          blockId, remoteBlockId, blocksNum, &checksCount, intersection );
      }
    }
    return conflictsDetected;
    //return checksCount;
  }
  /* same as above, except for using pre-loaded sizes of blockSets */
  __device__ inline size_t checkInterBlockOverlaps(
    RaceType checkType, BlockSet *_localBlockSet, int blockId, int localTid,  int threadsCount,
    int oldSetSize, int deltaSetSize, const BlockSets & blockSetsDir,
    const GlobalMemorySizeType * sizes,
    const CapabilitySet * _bcs ) {
    int blocksNum = mCapacity;
    size_t checksCount = 0;
    int iterations = ceil_div( blocksNum, threadsCount);
    //int iterations = 1 + ( blocksNum - 1) / threadsCount;
    //each thread is responsible for checking against a subset of all remote blocks
    for( int i = 0; i < deltaSetSize; i ++ ) {
      //TODO: all threads reads the same object; improve this ?
      //NB: may read the uncommitted buffer
      GlobalMemoryRegion region = * _localBlockSet -> getUnsafe(oldSetSize + i);
      for(int j = 0; j < iterations; j++) {
        int remoteBlockId = j * threadsCount + localTid;
        GlobalMemoryRegion intersection;
        conflicts(checkType, region, blockSetsDir, sizes,
          blockId, remoteBlockId, blocksNum, &checksCount, intersection , _bcs);
      }
    }
    return checksCount;
  }


  __device__ inline int conflicts(RaceType checkType, 
    const GlobalMemoryRegion & region, const BlockSets & blockSetsDirectory,
    int blockId, int remoteBlockId, int blocksNum, size_t * _checksCount,
    GlobalMemoryRegion & intersection) {
    if( remoteBlockId < blocksNum && remoteBlockId != blockId) {
      BlockSet * _remoteSet = blockSetsDirectory.get( remoteBlockId );
      GlobalMemorySizeType remoteSize = _remoteSet -> size();
      /*// binary search
      auto _r = curd::binary_search<GlobalMemoryRegion, overlapping<GlobalMemoryRegion>>(
        _remoteSet -> underlyingArray, static_cast<int>(remoteSize), 1, region );
      if( _r ){
        intersection = _r -> intersect( region );
      }
      conflictsDetected += ( _r != nullptr);*/
      
      for(GlobalMemorySizeType k = 0; k < remoteSize; k++) {
        auto _r = _remoteSet -> get(k );
        if( _r -> overlapsWith( region )){
          auto intersection = _r -> intersect( region );
          #ifdef WITH_SOURCE_INFO
          reportRace( 1, RaceKind::InterBlock, checkType,
            blockId, remoteBlockId, region.srcLoc, _r -> srcLoc, intersection );
          #else
          reportRace( 1, RaceKind::InterBlock, checkType,
            blockId, remoteBlockId, intersection );
          #endif
          return 1;
        }
      }
    }
    return 0;
  }
  /* same as above, except that the sizes of blockSets have been pre-loaded */
  __device__ inline int conflicts(RaceType checkType, const GlobalMemoryRegion & region,
    const BlockSets & blockSetsDirectory, const GlobalMemorySizeType * sizes,
    int blockId, int remoteBlockId, int blocksNum, size_t * _checksCount,
    GlobalMemoryRegion & intersection, const CapabilitySet * _bcs) {
    if( remoteBlockId < blocksNum && remoteBlockId != blockId) {
      BlockSet * _remoteSet = blockSetsDirectory.get( remoteBlockId );
      GlobalMemorySizeType remoteSize = sizes[remoteBlockId ];//_remoteSet -> size();
      int start = 0;
      
      CURD_ASSERT( start >= 0 );
      for(GlobalMemorySizeType k = start; k < remoteSize; k++) {
        auto _r = _remoteSet -> get(k );
        if( _r -> overlapsWith( region )){
          auto intersection = _r -> intersect( region );
          #ifdef WITH_SOURCE_INFO
          reportRace( 1 , RaceKind::InterBlock, checkType,
            blockId, remoteBlockId, region.srcLoc, _r -> srcLoc, intersection );
          #else
          reportRace( 1 , RaceKind::InterBlock, checkType,
            blockId, remoteBlockId, intersection );
          #endif
          return 1;
        } 
      }
    }
    return 0;
  }
 public:
  /* NB: underlyingArray stores a device pointer */
  __host__ __device__ BlockSets()/*:underlyingArray(nullptr), mCapacity(0), size(0)*/ {}
  /*NB: if objects of this class needs to be used in device code,
    be aware that there's no constructor that initialized the objects,
    so we probably need to copy the contents of some host objects first.
  */
  BlockSets(GlobalMemorySizeType setsCount, GlobalMemorySizeType setCapacity) {
    this -> underlyingArray = cudaMallocBlockSetArray(setsCount, setCapacity);
    this -> mCapacity        = setsCount;
    this -> mSize            = setsCount;
    /*NB: all elements are considered occupied after creation */
  }
  // releases device memory
  /* cannot use destructor here; otherwise dynamic initialization would make nvcc complain...*/
  void free() {
    // since we allocated the underlying array in the constructor, we're responsible for it
    //SimpleSet<GlobalMemoryRegion, GlobalMemorySizeType> * sets = new SimpleSet<GlobalMemoryRegion, GlobalMemorySizeType>[this-> mSize];
    BlockSet * sets = new BlockSet[ this -> mSize ];
    checkCudaErrors( cudaMemcpy(sets, this -> underlyingArray,
                                sizeof(BlockSet) * this-> mSize,
                                cudaMemcpyDeviceToHost));

    for(GlobalMemorySizeType i = 0; i < this -> mSize ; i ++ ) {
  //    sets[i].cudaFreeUnderlyingArray();
      sets[i].free();
    }
    delete[] sets;
    checkCudaErrors( cudaFree(this-> underlyingArray));
  }

  /*
    load the sizes of all BlockSets into sizes
  */
  __device__ inline void loadAllBlockSetSizes(int blockId, int localTid,
      const LocksDirectory & locksDir, GlobalMemorySizeType * sizes) {
    int blocksNum = mCapacity;
    for( int i = 1; i < blocksNum; i++) {
      int remoteBlockId = (blockId + i) % blocksNum;
      SpinLock * _lock = locksDir.get( remoteBlockId);
      BlockSet * _blockSet = this -> get( remoteBlockId );
      lockForBlock( _lock, localTid);
      if(localTid == 0) {
        sizes[remoteBlockId] = _blockSet -> size();

        /*        printf("[ load ] block %d, remoteBlock %d, size %d\n",
                        blockId, remoteBlockId, sizes[remoteBlockId]);*/
      }
      unlockForBlock( _lock, localTid);
      //XXX: DEBUG
      /*if( localTid == 0 |
          localTid == 64){
        printf("tid %d: bs[%d].size = %d\n", localTid, remoteBlockId, sizes[remoteBlockId]);
      }*/
    }
  }

  //TODO: better way of parallelization?
  /*
    incrementally check inter-block overlaps with another dir:
    only elements[oldSetSize: oldSetSize + deltaSetSize] are checked
   */
  __device__ inline size_t checkInterBlockOverlaps(
    RaceType checkType, int blockId, int localTid, /*int blocksNum,*/ int threadsCount,
    int oldSetSize, int deltaSetSize, const BlockSets & blockSetsDir ) {
    return checkInterBlockOverlaps( checkType, this-> get(blockId ), blockId,  localTid, threadsCount,
                                    oldSetSize, deltaSetSize, blockSetsDir );
  }
  /* variant of above, with sizes of blockSets pre-loaded */
  __device__ inline size_t checkInterBlockOverlaps(
    RaceType checkType, int blockId, int localTid, /*int blocksNum,*/ int threadsCount,
    int oldSetSize, int deltaSetSize, const BlockSets & blockSetsDir
    , const GlobalMemorySizeType * sizes, const CapabilitySet * _bcs ) {
    return checkInterBlockOverlaps( checkType, this-> get(blockId ), blockId,  localTid, threadsCount,
                                    oldSetSize, deltaSetSize, blockSetsDir, sizes , _bcs);
  }
  /* check all elements in blockId's blockSet against all other blockSets in blockSetsDir */
  __device__ inline size_t checkInterBlockOverlaps(
    RaceType checkType, int blockId, int localTid, /*int blocksNum,*/ int threadsCount,
    const BlockSets & blockSetsDir ) {
    BlockSet * _localBlockSet = this -> get(blockId );
    int localSetSize = _localBlockSet -> size();
    return checkInterBlockOverlaps( checkType, _localBlockSet, blockId, localTid, threadsCount, 0, localSetSize, blockSetsDir);
  }
  /* variant of above, with sizes of blockSets pre-loaded */
  /*  __device__ inline size_t checkInterBlockOverlaps(
      RaceType checkType, int blockId, int localTid, int threadsCount,
      const BlockSets & blockSetsDir , const GlobalMemorySizeType * sizes)
    {
      BlockSet * _localBlockSet = this -> get(blockId );
      int localSetSize = _localBlockSet -> size();
      return checkInterBlockOverlaps( checkType, _localBlockSet, blockId, localTid, threadsCount, 0, localSetSize, blockSetsDir, sizes);
    }*/
  /* check inter-block overlaps within the same dir*/
  __device__ inline size_t checkInterBlockOverlaps(
    RaceType checkType, int blockId, int localTid, int threadsCount,
    int oldSetSize, int deltaSetSize ) {
    return checkInterBlockOverlaps( checkType, blockId, localTid, threadsCount,
                                    oldSetSize, deltaSetSize, *this);
  }
  /* variant of above, with sizes of blockSets pre-loaded */
  __device__ inline size_t checkInterBlockOverlaps(
    RaceType checkType, int blockId, int localTid, int threadsCount,
    int oldSetSize, int deltaSetSize, const GlobalMemorySizeType * sizes ,
    const CapabilitySet * _bcs) {
    return checkInterBlockOverlaps( checkType, blockId, localTid, threadsCount,
                                    oldSetSize, deltaSetSize, *this, sizes, _bcs);
  }
  /* check all elements in blockId's blockSet against all other blockSets in this dir */
  __device__ inline size_t checkInterBlockOverlaps(
    RaceType checkType, int blockId, int localTid, /*int blocksNum,*/ int threadsCount ) {
    return checkInterBlockOverlaps( checkType, blockId, localTid, threadsCount, *this);
  }
  /* variant of above, with sizes of blockSets pre-loaded */
  /*  __device__ inline size_t checkInterBlockOverlaps(
      RaceType checkType, int blockId, int localTid,  int threadsCount,
      const GlobalMemorySizeType * sizes )
    {
      return checkInterBlockOverlaps( checkType, blockId, localTid,
        threadsCount, *this, sizes);
    }*/
  __device__ inline int commitBuffer( int blockId, int localTid,
                                      int deltaSize, const LocksDirectory & locksDir) {
    if (!deltaSize) {
      return deltaSize;
    }
    __shared__ int finalDelta;
    //TODO: parallelize this?
    SpinLock * _lock = locksDir.get( blockId );
    lockForBlock( _lock, localTid);
    if(localTid == 0) {
      BlockSet * _blockSet = this -> get( blockId );
      finalDelta = _blockSet -> commitBuffer(deltaSize );
    }
    // __syncthreads inside unlocks in both mode
    unlockForBlock( _lock, localTid);
    //printf("b%dt%d after commitBuffer: finalDelta = %d\n", blockId, localTid, finalDelta);
    return finalDelta;
  }
  
  __device__ inline void updateSize(int blockId, int tid, int count, const LocksDirectory &locks) {
    SpinLock * _lock = locks.get(blockId);
    lockForBlock(_lock, tid);
    if (!tid) {
      auto _blockSet = this -> get(blockId);
      _blockSet -> updateSize(count);
    }
    unlockForBlock(_lock, tid);
  }

};

}
