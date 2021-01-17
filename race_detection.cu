#include "build_switches.cuh"
#include "race_detection.cuh"
#include "simple_set.cuh"
#include "lock.cuh"
#include "counters.cuh"

#include <inttypes.h>
#include <iostream>
#include <helper_string.h>    // helper for string parsing
#include <helper_image.h>     // helper for image and data comparison
#include <helper_cuda.h>      // helper for cuda error checking functions

#include "debug_utils.cuh"
#include "curd_memory.cuh"
#include "memory_region.cuh"
#include "coalesced_sets.cuh"
#include "prefix_sum.cuh"
#include "race_buffer.cuh"
#include "config.h"
#include "utils.cuh"

using std::string;
using util::binary_search;
using util::check_order;
using util::Bitmap;

namespace curd{

typedef GlobalMemorySizeType Timestamp;
typedef SimpleArray<Timestamp> VectorClock;
typedef Simple2DArray<Timestamp> VectorClock2D;

typedef util::ConcurrentHashMap<uint64_t, CapabilitySet *, true > AtomicCSMap;
typedef util::ConcurrentHashMap<int, CapabilitySet *, true> BlockCSMap;
// here the key is the globally-linearized tid
typedef util::ConcurrentHashMap<uint64_t, CapabilitySet *, true> ThreadCSMap;
//typedef util::ConcurrentHashMap<int, ThreadCSMap *, true> BlockThreadCSMap;
typedef util::ConcurrentHashMap<uint64_t, TSPartitionsBuffer *, true> TSPBMap;

__constant__ size_t sharedMemorySizePerBlock;
__constant__ size_t totalGlobalMemory;


DEFINE_MAPPED_MEMORY_HANDLES( __constant__, CoalescedSetsShmem, shmemReadSets )
DEFINE_MAPPED_MEMORY_HANDLES( __constant__, CoalescedSetsShmem, shmemWriteSets )
DEFINE_MAPPED_MEMORY_HANDLES( __constant__, CoalescedSetsGlmem, glmemReadSets )
DEFINE_MAPPED_MEMORY_HANDLES( __constant__, CoalescedSetsGlmem, glmemWriteSets )

DEFINE_MAPPED_MEMORY_HANDLES( __constant__, BlockSets, blockReadSets )
DEFINE_MAPPED_MEMORY_HANDLES( __constant__, BlockSets, blockWriteSets )

DEFINE_MAPPED_MEMORY_HANDLES( __constant__, LocksDirectory, blockReadSetsLocksDir );
DEFINE_MAPPED_MEMORY_HANDLES( __constant__, LocksDirectory, blockWriteSetsLocksDir );
DEFINE_MAPPED_MEMORY_HANDLES( __constant__, VectorClock2D, blockVectorClocksDirectory );

__device__ GlobalMemorySizeType * _gmSizesBuffer;
GlobalMemorySizeType * _host_gmSizesBuffer;

DEFINE_MAPPED_MEMORY_HANDLES( __device__, int *, scanBuffer);
DEFINE_MAPPED_MEMORY_HANDLES( __device__, Bitmap<4>::HolderType *, bitmapBuffer);


__device__ Counters_shmemRd shmemRds;
__device__ Counters_shmemWr shmemWrs;
__device__ Counters_glmemRd glmemRds;
__device__ Counters_glmemWr glmemWrs;
__device__ Counters_barriers barriers;
__device__ Counters_interGWWRaces interGWWRaces;
__device__ Counters_interGRWRaces interGRWRaces;
__device__ Counters_interGWRRaces interGWRRaces;
__device__ Counters_smTSMerges smTSMerges;
__device__ Counters_gmTSMerges gmTSMerges;
__device__ Counters_brsWorstCount brsWorstCount;
__device__ Counters_bwsWorstCount bwsWorstCount;
__device__ Counters_brsActualCount brsActualCount;
__device__ Counters_bwsActualCount bwsActualCount;
__device__ Counters_maxSMTRSSize maxSMTRSSize;
__device__ Counters_maxGMTRSSize maxGMTRSSize;
__device__ Counters_maxBRSSize maxBRSSize;
__device__ Counters_maxSMTWSSize maxSMTWSSize;
__device__ Counters_maxGMTWSSize maxGMTWSSize;
__device__ Counters_maxBWSSize maxBWSSize;
__device__ Counters_intraBlockRaces intraBlockRaces;
__device__ Counters_entriesRemovedTRS entriesRemovedTRS;
__device__ Counters_initCycles initCycles;
__device__ Counters_SMChecksCycles SMChecksCycles;
__device__ Counters_dedupCycles dedupCycles;
__device__ Counters_BRSCompressCycles BRSCompressCycles;
__device__ Counters_BWSCompressCycles BWSCompressCycles;
__device__ Counters_GMIntraBChecksCycles GMIntraBChecksCycles;
__device__ Counters_GMCommitBufferCycles GMCommitBufferCycles;
__device__ Counters_sortTWSCycles sortTWSCycles;
__device__ Counters_sortTRSCycles sortTRSCycles;
__device__ Counters_intraBWWChecksCycles intraBWWChecksCycles;
__device__ Counters_intraBRWChecksCycles intraBRWChecksCycles;
__device__ Counters_ascendingInTWSS ascendingInTWSS;
__device__ Counters_descendingInTWSS descendingInTWSS;
__device__ Counters_ascendingInTS ascendingInTS;
__device__ Counters_descendingInTS descendingInTS;
__device__ Counters_maxReadSections maxReadSections;
__device__ Counters_maxWriteSections maxWriteSections;
__device__ Counters_allInOrder allInOrder;
__device__ Counters_allChecks allChecks;
__device__ Counters_irrelevantAccesses irrelevantAccesses;


DEFINE_MAPPED_MEMORY_HANDLES( __device__, RaceBuffer, racesDetected );
DEFINE_MAPPED_MEMORY_HANDLES( __constant__, Config, configParams );

size_t lastNThreads = 0;

__device__ inline SharedMemoryAddr toShmemAddr(uint64_t uintValue) {
  // TODO: what validation do we need here?
  //CURD_ASSERT_lt(uintValue, sharedMemorySizePerBlock, "shmem-uint", "SharedMemoryPerBlock");
  return (SharedMemoryAddr)uintValue;
}


#ifdef EAGER_INTERBLOCK_CHECK
//TODO: cannot be enabled together with eager-column-merge
//check for potential WAR races that would otherwise be missed silently (oldR vs. deltaRemoteW)
static __device__ inline size_t checkInterBlockWARs(
  int blockId, int localTid, int nthreads, int blocksNum,
  GlobalMemorySizeType oldRsSize, BlockSet * _localReadSet,
  GlobalMemorySizeType * remoteBlockWriteSetSizes ) {
  int iterations = ceil_div( blocksNum, nthreads );
  for(int j = 0; j < iterations; j++) {
    int remoteBlockId = j * nthreads + localTid;
    if (remoteBlockId < blocksNum && remoteBlockId != blockId) {
      Timestamp * _syncTime = blockVectorClocksDirectory.get(blockId, remoteBlockId);
      Timestamp lastSyncTime = *_syncTime;
      BlockSet * _remoteWriteSet = blockWriteSets.get( remoteBlockId );
      GlobalMemorySizeType remoteSize = remoteBlockWriteSetSizes[remoteBlockId];
      CURD_ASSERT_lt(lastSyncTime, remoteSize+1, "lastSync", "remoteSize+1");
      for( GlobalMemorySizeType i = 0 ; i < oldRsSize; i ++) {
        GlobalMemoryRegion & region = * _localReadSet -> get( i);
        int conflictsDetected = 0;
        for(Timestamp k = lastSyncTime ; k < remoteSize; k++) {
          auto _r = _remoteWriteSet -> get(k ) ;
          if( _r -> overlapsWith(region ) ){
            GlobalMemoryRegion intersection;
            intersection = _r -> intersect( region ) ;
            #ifdef WITH_SOURCE_INFO
            reportRace( conflictsDetected, RaceKind::InterBlock, RaceType::WR,
                                remoteBlockId, blockId, region.srcLoc, _r -> srcLoc, intersection );
            #else
            reportRace( conflictsDetected, RaceKind::InterBlock, RaceType::WR,
                                remoteBlockId, blockId,  intersection );

            #endif
           
            break;
          }
        }
      }
      *_syncTime = remoteBlockWriteSetSizes[remoteBlockId];
    }

  }
  return 0;
}
#endif

/* check intra-block races in a memory space ( shared / global )
  [write|read]SetsDirectory store pointers to the shadow memory
*/
template<typename RegionType, typename SizeType>
static __device__ inline size_t checkIntraBlockRaces(
  RaceKind kind,
  const CoalescedSets<RegionType, SizeType> & writeSetsDir,
  const CoalescedSets<RegionType, SizeType> & readSetsDir,
  int blockId, int localTid, int nthreads ) {
  using namespace util;
  // before doing inter-thread checks, each thread 
  // sorts its own set first
  // TODO: more efficient sorting here
  #ifdef ENABLE_SAMPLE_TIME
  auto lastClock = clock64();
  auto curClock = lastClock;
  #endif
  auto _setHead = writeSetsDir.getSetHead( blockId, localTid );
  auto wSetSize = *writeSetsDir.getPtrToSize( blockId, localTid );

  #ifdef BINARY_SEARCH
  int nAscending = 0;
  int allInOrderCount = 0;
  check_order(_setHead, wSetSize * nthreads, nthreads, nAscending);
  if (nAscending <= 1 || nAscending + 1>= wSetSize) {
    allInOrderCount++;
  } else {
    #ifdef SORT_TS
    bubble_sort( _setHead, wSetSize* nthreads, nthreads );
    #endif
  }
  ADD_COUNTER(ascendingInTS, nAscending);
  ADD_COUNTER(descendingInTS, wSetSize - nAscending);
  nAscending = 0;
  #endif
 
  SAMPLE_TIME(sortTWSCycles, curClock, lastClock); 

  _setHead = readSetsDir.getSetHead( blockId, localTid );
  auto rSetSize = *readSetsDir.getPtrToSize( blockId, localTid ); 
  #ifdef BINARY_SEARCH
  check_order(_setHead, rSetSize * nthreads, nthreads, nAscending);
  if (nAscending <= 1 || nAscending + 1>= rSetSize) {
    allInOrderCount++;
  } else {
    #ifdef SORT_TS
    bubble_sort( _setHead, rSetSize* nthreads, nthreads );
    #endif
  }
  ADD_COUNTER(ascendingInTS, nAscending);
  ADD_COUNTER(descendingInTS, rSetSize - nAscending);
  ADD_COUNTER(allInOrder, allInOrderCount);
  ADD_COUNTER(allChecks, 2);
  #endif
  SAMPLE_TIME( sortTRSCycles, curClock, lastClock); 
  __syncthreads();
  //  each thread reads WriteSets of all other threads
  //  (within the same block),  to check for conflicts ( WW/ RW)
  size_t nraces = 0;
  #ifdef INTRABLOCK_CHECKOVERLAPS
  nraces += writeSetsDir.checkIntraBlockOverlaps( kind, RaceType::WW, blockId, localTid );
  SAMPLE_TIME(intraBWWChecksCycles, curClock, lastClock); 
  if( wSetSize > rSetSize ){
    nraces += readSetsDir.checkIntraBlockOverlaps( kind, RaceType::RW, blockId, localTid, writeSetsDir ); 
  }else{
    nraces += writeSetsDir.checkIntraBlockOverlaps( kind, RaceType::WR, blockId, localTid, readSetsDir );
  }
  SAMPLE_TIME(intraBRWChecksCycles, curClock, lastClock); 
  #endif
  return nraces;
}

#ifdef EAGER_INTERBLOCK_CHECK
static __device__ inline void eagerInterBlockCheck(int oldWsSize, int oldRsSize,
    int deltaWsSize, int deltaRsSize ) {
  using namespace util;

  if( oldRsSize + deltaWsSize + deltaRsSize == 0) {
    return ;
  }
  int blockId = linearizedBlockId();
  if( blockId >= configParams.blocksTrackedGM ) {
    return;
  }
  int localTid= linearizedThreadId();
  int nthreads = blockDim.x * blockDim.y * blockDim.z;
  //int blocksNum = gridDim.x * gridDim.y * gridDim.z;
  int blocksNum = configParams.blocksTrackedGM;



  // we need to ensure that the sizes of all remote BlockWriteSets don't change
  // during these checks
  GlobalMemorySizeType * blockWriteSetsSizes =
    newArrayForBlock<GlobalMemorySizeType>( localTid, blocksNum);
  blockWriteSets.loadAllBlockSetSizes( blockId, localTid,
                                       blockWriteSetsLocksDir, blockWriteSetsSizes );
  // barrier shouldn't be necessary here, as there's a barrier in unlockForBlock
  //TODO: repetitive checks may happen here
  // delta( local Ws) vs. remote Ws
  __shared__ CapabilitySet * _bcs;
  if( localTid == 0 ){
    _bcs = getBlockCapabilitySet( blockId );  
  }
  __syncthreads();

  size_t WWChecks = blockWriteSets.checkInterBlockOverlaps(RaceType::WW, blockId, localTid,
                    nthreads, oldWsSize, deltaWsSize, blockWriteSetsSizes );
  // delta( local Rs) vs. remote Ws
  size_t RWChecks = blockReadSets.checkInterBlockOverlaps(RaceType::RW, blockId, localTid,
                    nthreads, oldRsSize, deltaRsSize, blockWriteSets, blockWriteSetsSizes);

  /*  barriers.print();
    interGWWRaces.print();
    interGRWRaces.print();
    printf("b%dt%d oldRsSize = %d, deltaRs = %d, oldWsSize= %d, deltaWsSize = %d\n",
      blockId, localTid, oldRsSize, deltaRsSize, oldWsSize, deltaWsSize );*/
  ADD_COUNTER( interGWWRaces, WWChecks );
  ADD_COUNTER( interGRWRaces, RWChecks );

  // delta( remote Ws') vs. local Rs
  //TODO: refactor this
  size_t WRChecks = checkInterBlockWARs( blockId, localTid, nthreads, blocksNum,
                                         oldRsSize, blockReadSets.get( blockId), blockWriteSetsSizes );
  ADD_COUNTER( interGWRRaces, WRChecks );

  deleteArrayForBlock( localTid, blockWriteSetsSizes );
}
#endif

}//end namespace curd

extern "C" {



  __device__ __inline__  void __curd__shmemReadHook(uint64_t uintValue, uint8_t width,
      uint32_t lineNo, char * filename) {
    using namespace curd;
    using namespace util;
    /*CURD_ASSERT( !isLocalPtr( uintValue) );
    CURD_ASSERT( !isConstantPtr( uintValue) );
    CURD_ASSERT( width );*/
#ifdef MONITOR_SHARED_MEMORY
    /*  printf("shmem read %ld, %d, %d, %p\n", uintValue, (uint32_t)width,
        lineNo, filename);*/
    INC_COUNTER( shmemRds );
    if( linearizedBlockId() >= configParams.blocksTrackedSM ) {
      return;
    }
    if(sharedMemorySizePerBlock == 0 ) {
      printf("[ warning ] curd not initialized yet.\n");
      return ;
    }
    SharedMemoryAddr shmemAddr = toShmemAddr( uintValue );
    auto merged = shmemReadSets.add(SharedMemoryRegion(shmemAddr, width
#ifdef WITH_SOURCE_INFO
                                    , filename, lineNo
#endif
                                                      ))/*shmemAddr*/;//to prevent being optimized out 
    //TODO: ensure the readSets & writeSets are disjoint to improve performance
    ADD_COUNTER( smTSMerges, merged );
#endif
  }

  __device__ __inline__  void __curd__shmemWriteHook(uint64_t uintValue, uint8_t width,
      uint32_t lineNo, char * filename) {
    using namespace curd;
    using namespace util;
/*CURD_ASSERT( !isLocalPtr( uintValue) );
    CURD_ASSERT( !isConstantPtr( uintValue) );*/
    CURD_ASSERT( width);
#ifdef MONITOR_SHARED_MEMORY
    /*  printf("shmem write %ld, %d, %d, %p\n", uintValue, (uint32_t)width,
        lineNo, filename);*/
    INC_COUNTER( shmemWrs );
    if( linearizedBlockId() >= configParams.blocksTrackedSM ) {
      return;
    }
    if(sharedMemorySizePerBlock == 0 ) {
      printf("[ warning ] curd not initialized yet.\n");
      return ;
    }
    SharedMemoryAddr shmemAddr = toShmemAddr( uintValue );
    auto merged = shmemWriteSets.add(SharedMemoryRegion(shmemAddr, width
#ifdef WITH_SOURCE_INFO
                                     , filename, lineNo
#endif
                                                       ))/*shmemAddr*/;//to prevent being optimized out 

    ADD_COUNTER( smTSMerges, merged );
#endif
  }

  __device__ __inline__ void __curd__glmemReadHook(uint64_t uintValue, uint8_t width,
      uint32_t lineNo, char * filename) {
    using namespace curd;
    using namespace util;
    /*CURD_ASSERT( !isLocalPtr( uintValue) );
    CURD_ASSERT( !isConstantPtr( uintValue) );*/
    CURD_ASSERT( width);
#ifdef MONITOR_GLOBAL_MEMORY
    /*  printf("glmem read %ld, %d, %d, %p\n", uintValue, (uint32_t)width,
        lineNo, filename);*/
    INC_COUNTER( glmemRds );
    if( linearizedBlockId() >= configParams.blocksTrackedGM ) {
      return;
    }
    if(totalGlobalMemory == 0 ) {
      printf("[ warning ] curd not initialized yet.\n");
      return ;
    }

    GlobalMemoryAddr glmemAddr =static_cast<GlobalMemoryAddr>( uintValue);
    auto merged =glmemReadSets.add(GlobalMemoryRegion(glmemAddr, width
#ifdef WITH_SOURCE_INFO
                                    , filename, lineNo
#endif
                                                      ))/*glmemAddr*/;//to prevent being optimized out ;

    ADD_COUNTER( gmTSMerges, merged );
#endif
  }

  __device__ __inline__  void __curd__glmemWriteHook(uint64_t uintValue, uint8_t width,
      uint32_t lineNo, char * filename) {
    using namespace curd;
    using namespace util;
    /*CURD_ASSERT( !isLocalPtr( uintValue) );
    CURD_ASSERT( !isConstantPtr( uintValue) );*/
    CURD_ASSERT( width);
#ifdef MONITOR_GLOBAL_MEMORY
    /*  printf("glmem write %ld, %d, %d, %p\n", uintValue, (uint32_t)width,
        lineNo, filename);*/

    INC_COUNTER( glmemWrs );
    if( linearizedBlockId() >= configParams.blocksTrackedGM ) {
      return;
    }
    if(totalGlobalMemory == 0 ) {
      printf("[ warning ] curd not initialized yet.\n");
      return ;
    }
    GlobalMemoryAddr glmemAddr =static_cast<GlobalMemoryAddr>( uintValue);
    auto merged = glmemWriteSets.add(GlobalMemoryRegion(glmemAddr, width
#ifdef WITH_SOURCE_INFO
                                     , filename, lineNo
#endif
                                                       ))/*glmemAddr*/;//to prevent being optimized out ;*/

    ADD_COUNTER( gmTSMerges, merged );
#endif
  }

  __device__ __inline__  void __curd__genericMemReadHook(uint64_t addr, uint8_t width, uint32_t lineNo, char * filename ) {
   /* uint32_t executed = 0;
    asm volatile ("\n\t"
                  "{.reg .pred p;\n\t"
                  "mov.u32 %0, 0U;\n\t"
                  "isspacep.global p, %1;\n\t"
                  "@p call __curd__glmemReadHook, (%1,%2,%3,%4);\n\t"
                  "@p mov.u32 %0, 1U;\n\t"
                  "isspacep.shared p, %1;\n\t"
                  "@p call __curd__shmemReadHook, (%1,%2,%3,%4);\n\t"
                  "@p mov.u32 %0, 2U;\n\t}"
                  : "=r"(executed) : "l"(addr), "r"((uint32_t)width), "r"(lineNo), "l"(filename) );
    printf("executed: %d\n", executed);*/
    using namespace util;
    using namespace curd;
    if( isGlobalPtr( addr ) ){
      __curd__glmemReadHook( addr, width, lineNo, filename );
    }else if( isSharedPtr( addr ) ){
      __curd__shmemReadHook( addr, width, lineNo, filename );
    } else {
      INC_COUNTER(irrelevantAccesses);
    }
  }




  __device__  __inline__  void __curd__genericMemWriteHook( uint64_t addr, uint8_t width, uint32_t lineNo, char * filename ) {
    /* uint32_t executed = 0;
    asm volatile ("\n\t"
                  "{.reg .pred %%p;\n\t"
                  "mov.u32 %0, 0U;\n\t"
                  "isspacep.global %%p, %1;\n\t"
                  "@%%p call __curd__glmemWriteHook, (%1,%2,%3,%4);\n\t"
                  "@%%p mov.u32 %0, 1U;\n\t"
                  "isspacep.shared %%p, %1;\n\t"
                  "@%%p call __curd__shmemWriteHook, (%1,%2,%3,%4);\n\t"
                  "@%%p mov.u32 %0, 2U;\n\t}"
                  : "=r"(executed) : "l"(addr), "r"((uint32_t)width), "r"(lineNo), "l"(filename) );
    printf("executed: %d\n", executed);*/
    using namespace util;
    using namespace curd;
    if( isGlobalPtr( addr ) ){
      __curd__glmemWriteHook( addr, width, lineNo, filename );
    }else if( isSharedPtr( addr ) ){
      __curd__shmemWriteHook( addr, width, lineNo, filename );
    }else {
      INC_COUNTER(irrelevantAccesses);   
    }
  }

  

  __device__ __inline__  void __curd__barrierHook2() {
 
    using namespace curd;
    using namespace util;
    #ifdef ENABLE_SAMPLE_TIME
    auto lastClock = clock64();
    auto curClock = lastClock;
    #endif
    int tid = linearizedThreadId();
    int blockId = linearizedBlockId();
    int nthreads = blockDim.x * blockDim.y * blockDim.z;
    if( linearizedBlockId() >= configParams.blocksTrackedGM ) {
      return;
    }
 #ifdef BARRIER_CHECKS   

    INC_COUNTER( barriers );
    SAMPLE_TIME(initCycles, curClock, lastClock); 
#ifdef MONITOR_SHARED_MEMORY
    if( linearizedBlockId() >= configParams.blocksTrackedSM ) {
      return;
    }
    if(sharedMemorySizePerBlock == 0 ) {
      printf("[ warning ] curd not initialized yet.\n");
      return ;
    }

    size_t nIntraRaces = checkIntraBlockRaces( RaceKind::IntraBlockSM,
                          shmemWriteSets, shmemReadSets,
                          blockId, tid, nthreads);
    ADD_COUNTER( intraBlockRaces, nIntraRaces );
    __syncthreads();
    
    SAMPLE_TIME(SMChecksCycles, curClock, lastClock); 
    
    MAX_COUNTER( maxSMTRSSize, *shmemReadSets.getPtrToSize( blockId, tid) );
    MAX_COUNTER( maxSMTWSSize, *shmemWriteSets.getPtrToSize( blockId, tid) );
    shmemWriteSets.clearSetForThread( blockId, tid);
    shmemReadSets.clearSetForThread( blockId, tid);
#endif
#ifdef MONITOR_GLOBAL_MEMORY
    
    if(totalGlobalMemory == 0 ) {
      printf("[ warning ] curd not initialized yet.\n");
      return ;
    }
    MAX_COUNTER( maxGMTRSSize, *glmemReadSets.getPtrToSize( blockId, tid) );
    MAX_COUNTER( maxGMTWSSize, *glmemWriteSets.getPtrToSize( blockId, tid) );

    #ifdef DEDUP_RWSETS
    auto nRemoved = glmemReadSets.dedup(blockId, tid, glmemWriteSets);
    ADD_COUNTER(entriesRemovedTRS, nRemoved);
    #endif
    auto blueBuff = _gmSizesBuffer + blockId * nthreads;
    BlockSet * _blockWriteSet = blockWriteSets.get(blockId); 
    BlockSet * _blockReadSet = blockReadSets.get(blockId);
    #ifdef EAGER_INTERBLOCK_CHECK
    //XXX: this should be ok, as the buffer has
    int oldWsSize = _blockWriteSet -> size();
    int oldRsSize = _blockReadSet-> size();
    __syncthreads();
    #endif
    int nReadSections = 0, nWriteSections = 0;
    auto _bitmap = glmemWriteSets.profileOrdering(blockId, tid, blueBuff );
   
    // the _bitmap may be null if the sets are empty
    if (_bitmap) {
      /*if (!localTid && blockId == 6) {
        _bitmap->print("xdxuxdxuxdxuxdxu", 16, 64);
        auto * _setHead = glmemWriteSets.getSetHead(blockId, 0);
        auto setSize = *glmemWriteSets.getPtrToSize(blockId, 0);
        for (auto i =  -64; i <= + 64; i++) {
          auto index = 64 + i;
          printf("setHead[%d]:(%p, %d)\n", index, _setHead[index].addr, _setHead[index].size );
        }
        for (auto i =  -64; i <= + 64; i++) {
          auto index = 512 + i;
          //printf("setHead[%d]:(%p, %d)\n", index - 1, _setHead[index - 1 ].addr, _setHead[index - 1].size );
          printf("setHead[%d]:(%p, %d)\n", index, _setHead[index].addr, _setHead[index].size );
          //printf("setHead[%d]:(%p, %d)\n", index + 1, _setHead[index + 1].addr, _setHead[index + 1].size );

        }
        _bitmap->print("xoxoxaxaxdxdxlxl", 16, 64);
        //_bitmap->print("0123456789ABCDEF", 64, 64);
        glmemWriteSets.print(blockId, 4, 64);
      } */
      auto allOrdered = glmemWriteSets.verifyOrder(blockId, tid, _bitmap, blueBuff);
      // TODO: also support !allOrdered cases 
      //CURD_ASSERT(allOrdered);
      #ifdef SYNCTHREADS_CNC
      int * redBuff = scanBuffer + static_cast<int>(blockId * configParams.initialTWSSizeGM * nthreads);
      nWriteSections = glmemWriteSets.checkAndCompressOrdered_syncthreads(blockId, tid, _bitmap, _blockWriteSet, blueBuff, redBuff);
      #else
      nWriteSections = glmemWriteSets.checkAndCompressOrdered_atomic(blockId, tid, _bitmap, _blockWriteSet, blueBuff);
      #endif
      if (!tid) {
        delete _bitmap;
      }
    }
    __syncthreads();
    _bitmap = glmemReadSets.profileOrdering(blockId, tid, blueBuff );
   
    // the _bitmap may be null if the sets are empty
    if (_bitmap) {
      auto allOrdered = glmemReadSets.verifyOrder(blockId, tid, _bitmap, blueBuff);
      // TODO: also support !allOrdered cases 
      //CURD_ASSERT(allOrdered);
      #ifdef SYNCTHREADS_CNC
      int * redBuff = scanBuffer + static_cast<int>(blockId * configParams.initialTWSSizeGM * nthreads);
      nReadSections = glmemReadSets.checkAndCompressOrdered_syncthreads<false>(blockId, tid, _bitmap, _blockReadSet, blueBuff, redBuff);
      #else
      nReadSections = glmemReadSets.checkAndCompressOrdered_atomic(blockId, tid, _bitmap, _blockReadSet, blueBuff);
      #endif

      // RW checks
      if (nWriteSections > 0 && nReadSections > 0) {
        auto * _brsBuffer = _blockReadSet -> getPtrToBufferEntry(0);
        auto * _bwsBuffer = _blockWriteSet -> getPtrToBufferEntry(0);
        // NB: assuming the bws is ordered, as it has checked for WW races
        auto iterations = ceil_div(nReadSections, nthreads);
        for (int i = 0; i < iterations; i++) {
          auto j = i * nthreads + tid;
          if (j >= nReadSections) {
            break;
          }
          auto & s = _brsBuffer[j];
          auto _s2 = binary_search<GlobalMemoryRegion, overlapping<GlobalMemoryRegion>>(
            _bwsBuffer, nWriteSections, 1, s);
          if (_s2) {
            auto si = _s2 -> intersect(s);
            //printf("[TODO]: RW race detected! on <%p,%d> \n", si.addr, si.size );
            SourceLocation c1, c2;
            auto writer = glmemWriteSets.findCulprit(blockId, si, c1);
            auto reader = glmemReadSets.findCulprit(blockId, si, c2, writer);
            if (writer >= 0 && reader >= 0) {
              reportRace(1, RaceKind::IntraBlockGM, RaceType::RW, reader, writer, c1, c2, si);
            }
          }
        }  
        
      }
      __syncthreads();
      if (!tid) {
        delete _bitmap;
      }
    }
    __syncthreads();
    // commit the merged sections 
    if (nReadSections > 0) {
      blockReadSets.updateSize(blockId, tid, nReadSections, blockReadSetsLocksDir);
    }
    if (nWriteSections > 0) {
      blockWriteSets.updateSize(blockId, tid, nWriteSections, blockWriteSetsLocksDir);
    } 
    if (!tid) {
      auto newBwsSize = blockWriteSets.get(blockId) -> size();
      auto newBrsSize = blockReadSets.get(blockId) -> size();
      MAX_COUNTER(maxReadSections, nReadSections);
      MAX_COUNTER(maxWriteSections, nWriteSections);
      MAX_COUNTER( maxBWSSize, newBwsSize );
      MAX_COUNTER( maxBRSSize, newBrsSize );
    }
    
    __syncthreads();
  
    #ifdef EAGER_INTERBLOCK_CHECK
    eagerInterBlockCheck(oldWsSize, oldRsSize, nWriteSections, nReadSections);
    __syncthreads();
    #endif
    glmemWriteSets.clearSetForThread( blockId, tid);
    glmemReadSets.clearSetForThread( blockId, tid);

#endif // end MONITOR_GLOBAL_MEMORY
#endif // end BARRIER_CHECKS
    

  }
  
    

  __device__ __inline__  void __curd__barrierHook() {
    __curd__barrierHook2();
    /*
    using namespace curd;
    using namespace util;
    #ifdef ENABLE_SAMPLE_TIME
    auto lastClock = clock64();
    auto curClock = lastClock;
    #endif
    int localTid = linearizedThreadId();
    int blockId = linearizedBlockId();
    int nthreads = blockDim.x * blockDim.y * blockDim.z;
    INC_COUNTER( barriers );
    SAMPLE_TIME(initCycles, curClock, lastClock);
    #ifdef MONITOR_SHARED_MEMORY
    if( linearizedBlockId() >= configParams.blocksTrackedSM ) {
      return;
    }
    if(sharedMemorySizePerBlock == 0 ) {
      printf("[ warning ] curd not initialized yet.\n");
      return ;
    }

    size_t nIntraRaces = checkIntraBlockRaces( RaceKind::IntraBlockSM,
                          shmemWriteSets, shmemReadSets,
                          blockId, localTid, nthreads);
    ADD_COUNTER( intraBlockRaces, nIntraRaces );
    __syncthreads();
    
    SAMPLE_TIME(SMChecksCycles, curClock, lastClock); 
    
    MAX_COUNTER( maxSMTRSSize, *shmemReadSets.getPtrToSize( blockId, localTid) );
    MAX_COUNTER( maxSMTWSSize, *shmemWriteSets.getPtrToSize( blockId, localTid) );
    shmemWriteSets.clearSetForThread( blockId, localTid);
    shmemReadSets.clearSetForThread( blockId, localTid);
#endif
#ifdef MONITOR_GLOBAL_MEMORY
    if( linearizedBlockId() >= configParams.blocksTrackedGM ) {
      return;
    }
    if(totalGlobalMemory == 0 ) {
      printf("[ warning ] curd not initialized yet.\n");
      return ;
    }
    
    #ifdef DEDUP_RWSETS
    auto nRemoved = glmemReadSets.dedup(blockId, localTid, glmemWriteSets);
    ADD_COUNTER(entriesRemovedTRS, nRemoved);
    #endif
    SAMPLE_TIME(dedupCycles, curClock, lastClock); 
    #ifdef ENABLE_BLOCKSETS
   
    int deltaSizeWSet = 0,  deltaSizeRSet = 0;
    deltaSizeWSet = glmemWriteSets.compressIntoBlockSet_par2( blockId, localTid,
                        nthreads, blockWriteSets, _gmSizesBuffer+ blockId * nthreads);
    SAMPLE_TIME(BWSCompressCycles, curClock, lastClock); 
    //__syncthreads();
    deltaSizeRSet = glmemReadSets.compressIntoBlockSet_par2( blockId, localTid,
                        nthreads, blockReadSets, _gmSizesBuffer + blockId * nthreads);
    SAMPLE_TIME(BRSCompressCycles, curClock, lastClock); 

    auto trsSize = *glmemReadSets.getPtrToSize( blockId, localTid);
    auto twsSize = *glmemWriteSets.getPtrToSize( blockId, localTid);
    MAX_COUNTER( maxGMTRSSize, trsSize );
    MAX_COUNTER( maxGMTWSSize, twsSize );
    ADD_COUNTER( brsWorstCount, trsSize );
    ADD_COUNTER( bwsWorstCount, twsSize );

    #ifdef EAGER_INTERBLOCK_CHECK
    //XXX: this should be ok, as the buffer has
    int oldWsSize = blockWriteSets.get(blockId) -> size();
    int oldRsSize = blockReadSets.get(blockId) -> size();
    __syncthreads();
    #endif
    #ifdef INTRABLOCK_GM_CHECKS
    checkIntraBlockRaces( RaceKind::IntraBlockGM,
      glmemWriteSets, glmemReadSets,
      blockId, localTid, nthreads);
    #endif
    SAMPLE_TIME( GMIntraBChecksCycles, curClock, lastClock); 
    // the actual deltaSizes may be shrinked after committing the buffer
    deltaSizeWSet = blockWriteSets.commitBuffer( blockId, localTid,
                    deltaSizeWSet, blockWriteSetsLocksDir);
    deltaSizeRSet = blockReadSets.commitBuffer( blockId, localTid,
                    deltaSizeRSet, blockWriteSetsLocksDir );
    SAMPLE_TIME( GMCommitBufferCycles, curClock, lastClock); 
    if( !localTid ) {
      ADD_COUNTER( brsActualCount, deltaSizeRSet );
      ADD_COUNTER( bwsActualCount, deltaSizeWSet );
    }
    auto newBwsSize = blockWriteSets.get(blockId) -> size();
    auto newBrsSize = blockReadSets.get(blockId) -> size();
    MAX_COUNTER( maxBWSSize, newBwsSize );
    MAX_COUNTER( maxBRSSize, newBrsSize );
    __syncthreads();

    #ifdef EAGER_INTERBLOCK_CHECK
    eagerInterBlockCheck( oldWsSize, oldRsSize, deltaSizeWSet, deltaSizeRSet );
    __syncthreads();
    blockWriteSets.get( blockId ) -> syncSize();
    blockReadSets.get( blockId ) -> syncSize();
    // merge the thread CapabilitySets into the block CS
    //mergeThreadCapabilitySets( blockId );
    #endif

#endif

    glmemWriteSets.clearSetForThread( blockId, localTid);
    glmemReadSets.clearSetForThread( blockId, localTid);
  

#endif*/
  }
  //TODO: differentiate releases from acquires
  __device__ void __curd__atomicHook( uint64_t addr ){
    using namespace curd;
    using namespace util;
    INC_COUNTER( atomicCalls );
    
    auto blockId = linearizedBlockId();
    auto _acs = getAtomicCapabilitySet( addr );
    if( blockId >= configParams.blocksTrackedGM ){
      return;
    }
    auto lTid = linearizedBlockId();
    auto gTid = globalTid();
    // acquire
    // the capabilities gained from addr is only visible to the current 
    // thread 
    auto _tcs = getThreadCapabilitySet<true>( gTid );
    
    auto _bws = blockWriteSets.get( blockId );
    auto _brs = blockReadSets.get( blockId );
    //TODO: this is also necessary if acq & rel are separate 
    auto wsSize = *glmemWriteSets.getPtrToSize( blockId, lTid );
    auto wSfrId = -1;
    auto rSfrId = -1;
    if( wsSize ){
      wSfrId = _bws -> commitSFR( glmemWriteSets, lTid, _tcs );
    }
    auto rsSize = *glmemReadSets.getPtrToSize( blockId, lTid );
    if( rsSize ){
      rSfrId = _brs -> commitSFR( glmemReadSets, lTid, _tcs );
    }
    _tcs -> addAll( _acs ); 

    // release 
    // propagate the capabilities this block got to others
    // TODO: avoid redundant insertions
    _acs -> addAll( _tcs );

    auto wSize = _bws -> getLastSyncedSize();
    auto rSize = _brs -> getLastSyncedSize();
    if( wSize || rSize ){ // capability of the current block
      Capability c( Capability::Mode::BC, blockId, rSize, wSize  );
      _acs -> add( c );
    }
    //TODO: this separate capability may be avoided if the subsets the sfrs
    // describes are adjacent to the last synced prefix of the block set
    if( wSfrId != -1 || rSfrId != -1 ){
      Capability c( Capability::Mode::TC, blockId, rSfrId, wSfrId );
      _acs -> add( c );
    }
    

  }
}// end extern "C"

namespace curd{

  __global__ static void __curd__finalBarrierHookCall() {
    __curd__barrierHook2();
  }

#ifndef EAGER_INTERBLOCK_CHECK
  __global__ static void __curd__finalInterBlockCheck() {
    #ifdef INTERBLOCK_CHECKS
    int blockId = linearizedBlockId();
    if( blockId < configParams.blocksTrackedGM ) {
      int bwsSize = (int)blockWriteSets.get(blockId) -> size();
      int brsSize = (int)blockReadSets.get(blockId) -> size();

      int localTid= linearizedThreadId();
      int nthreads = blockDim.x * blockDim.y * blockDim.z;
      size_t WWChecks = 0;
      // XXX: we remove redundant checks at the block-level;
      // may also try to do it on the thread-level: i.e., all
      // blocks active, with each block doing half of the job
      if( blockId < ceil_div( configParams.blocksTrackedGM, 2 ) ) {
        WWChecks = blockWriteSets.checkInterBlockOverlaps(RaceType::WW, blockId, localTid,  nthreads);
        //printf("b%dt%d : WWChecks = %d, while brsSize = %d, bwsSize = %d\n", blockId, localTid, (int)WWChecks, brsSize, bwsSize);
      }
      //size_t RWChecks = blockReadSets.checkInterBlockOverlaps(RaceType::RW, blockId, localTid, nthreads, blockWriteSets);
      size_t RWChecks = blockWriteSets.checkInterBlockOverlaps(RaceType::WR, blockId, localTid, nthreads, blockReadSets);

      ADD_COUNTER( interGWWRaces, WWChecks  );
      ADD_COUNTER( interGRWRaces, RWChecks  );
      
    }
    #endif
  }
#endif


  static inline void initMetadataForShmem( size_t threadsNumPerBlock,
      size_t blocksNum, size_t smTRSCapacity, size_t smTWSCapacity) {
    using namespace std;
#ifdef MONITOR_SHARED_MEMORY
#ifdef VERBOSE_OUTPUT
    /*cout << "Allocating sets for SHMEM: " << threadsNumPerBlock <<
         " threads * " << blocksNum << " blocks * " << smTRSCapacity
         << "(R), " << smTWSCapacity << "(W)" << endl;*/
#endif
    INIT_MAPPED_COALESCED_SETS( CoalescedSetsShmem, shmemReadSets,  threadsNumPerBlock, blocksNum, smTRSCapacity);
    INIT_MAPPED_COALESCED_SETS( CoalescedSetsShmem, shmemWriteSets, threadsNumPerBlock, blocksNum, smTWSCapacity);

#endif

  }

  static inline void initMetadataForGlmem( size_t threadsNumPerBlock,
      size_t blocksNum, size_t gmTRSCapacity, size_t gmTWSCapacity,
      size_t brsCapacity, size_t bwsCapacity) {
    using namespace util;
#ifdef MONITOR_GLOBAL_MEMORY
    INIT_MAPPED_COALESCED_SETS( CoalescedSetsGlmem, glmemReadSets,  threadsNumPerBlock, blocksNum, gmTRSCapacity);
    INIT_MAPPED_COALESCED_SETS( CoalescedSetsGlmem, glmemWriteSets, threadsNumPerBlock, blocksNum, gmTWSCapacity);
    INIT_MAPPED_GRANDCENTRAL_SETS( BlockSets, blockReadSets, blocksNum, brsCapacity);
    INIT_MAPPED_GRANDCENTRAL_SETS( BlockSets, blockWriteSets, blocksNum, bwsCapacity);

    INIT_DIRECTORY( LocksDirectory, blockReadSetsLocksDir, blocksNum, blocksNum );
    INIT_DIRECTORY( LocksDirectory, blockWriteSetsLocksDir, blocksNum, blocksNum );
    INIT_DIRECTORY( VectorClock2D, blockVectorClocksDirectory, blocksNum, blocksNum );

    checkCudaErrors( cudaMemcpyToSymbol( blockReadSetsLocksDir,
                                         _host__blockReadSetsLocksDir, sizeof(LocksDirectory)));
    checkCudaErrors( cudaMemcpyToSymbol( blockWriteSetsLocksDir,
                                         _host__blockWriteSetsLocksDir, sizeof(LocksDirectory)));
    checkCudaErrors( cudaMemcpyToSymbol( blockVectorClocksDirectory,
                                         _host__blockVectorClocksDirectory, sizeof(VectorClock2D)));

    // allocate the global metadata map for atomics
    d_atomicCSMap = static_cast<AtomicCSMap *>( AtomicCSMap::makeDeviceHashMap( 4 ) );
    checkCudaErrors( cudaMemcpyToSymbol( _atomicCSMap, &d_atomicCSMap,
      sizeof( decltype( d_atomicCSMap) ) ) );
    // allocate the cs map for blocks
    d_blockCSMap = static_cast<BlockCSMap*>( BlockCSMap::makeDeviceHashMap( 4 ) );
    checkCudaErrors( cudaMemcpyToSymbol( _blockCSMap, &d_blockCSMap,
      sizeof( decltype( d_blockCSMap) ) ) );
    // allocate the cs map for threads
    d_threadCSMap = static_cast<ThreadCSMap*>( ThreadCSMap::makeDeviceHashMap( 4 ) );
    checkCudaErrors( cudaMemcpyToSymbol( _threadCSMap, &d_threadCSMap,
      sizeof( decltype( d_threadCSMap) ) ) );
    // allocate the tspb map for threads
    d_tspbMap = static_cast<TSPBMap*>( TSPBMap::makeDeviceHashMap( 4 ) );
    checkCudaErrors( cudaMemcpyToSymbol( _tspbMap, &d_tspbMap,
      sizeof( decltype( d_tspbMap) ) ) );




#endif

  }
  static inline cudaDeviceProp printDeviceInfo() {
    using namespace std;
    int device;
    cudaDeviceProp deviceProperties;
    checkCudaErrors( cudaGetDevice(&device) );
    checkCudaErrors( cudaGetDeviceProperties(&deviceProperties, device) );
    size_t freeDeviceMem = 0;
    checkCudaErrors( cudaMemGetInfo( &freeDeviceMem, nullptr ) );
    #ifdef VERBOSE_OUTPUT
    cout << curd_msg( "NAME:" ) << deviceProperties.name << endl;
    cout << curd_msg( "SHMEM:") << deviceProperties.sharedMemPerBlock << endl;
    cout << curd_msg( "GLMEM:") << deviceProperties.totalGlobalMem <<
         ",free: " << freeDeviceMem << endl;
    cout << curd_msg( "MULTIPROCESSORS:") <<
         deviceProperties.multiProcessorCount << endl;
    cout << curd_msg( "MAX RESIDENT BLOCKS/ SM:") <<
         MAX_RESIDENT_BLOCKS_PER_SM << endl;
    #endif
    return deviceProperties;
  }
  static inline size_t computeMetaMemorySize( size_t nthreads ){
    using namespace std;
    size_t bytesOfSetBodies = sizeof( SharedMemoryRegion ) *
      (_host__configParams -> initialTRSSizeSM + _host__configParams -> initialTWSSizeSM )
         * nthreads * _host__configParams -> blocksTrackedSM;
    size_t bytesOfSizesArray = sizeof(SharedMemorySizeType) * nthreads * _host__configParams -> blocksTrackedSM;
    bytesOfSetBodies += sizeof( GlobalMemoryRegion) *
      (_host__configParams -> initialTRSSizeGM + _host__configParams -> initialTWSSizeGM )
         * nthreads * _host__configParams -> blocksTrackedGM;
    bytesOfSizesArray += sizeof(GlobalMemorySizeType) * nthreads * _host__configParams -> blocksTrackedGM;
    #ifdef VERBOSE_OUTPUT
    cout << curd_msg(" Counter ShadowMemorySize = ") << bytesOfSetBodies + bytesOfSizesArray << endl;
    #endif
    return bytesOfSetBodies + bytesOfSizesArray;
  }

  

  static inline void freeMetadataForShmem() {
#ifdef MONITOR_SHARED_MEMORY
    using namespace std;
    cout << "Freeing shmemReadSets" << endl;
    FREE_MAPPED_MEMORY( shmemReadSets );
    cout << "Freeing shmemWriteSets" << endl;
    FREE_MAPPED_MEMORY( shmemWriteSets );

#endif

  }
  __global__ void __curd__cleanUp(){
    _atomicCSMap -> clear();
    _blockCSMap -> clear();
    _threadCSMap -> clear();
    _tspbMap -> clear();
  }

  static inline void freeMetadataForGlmem() {
    using namespace std;
#ifdef MONITOR_GLOBAL_MEMORY
    cout << "Freeing glmemReadSets" << endl;

    FREE_MAPPED_MEMORY( glmemReadSets );
    cout << "Freeing glmemWriteSets" << endl;

    FREE_MAPPED_MEMORY( glmemWriteSets );
    FREE_MAPPED_MEMORY( blockReadSets );
    FREE_MAPPED_MEMORY( blockWriteSets );

    FREE_DIRECTORY( blockReadSetsLocksDir );
    FREE_DIRECTORY( blockWriteSetsLocksDir );
    FREE_DIRECTORY( blockVectorClocksDirectory );
#endif
    FREE_MAPPED_MEMORY( racesDetected );
    delete _host__configParams;

    __curd__cleanUp<<<1,1>>>();
    checkCudaErrors( cudaDeviceSynchronize() );
    AtomicCSMap::destroyDeviceHashMap( d_atomicCSMap );
    BlockCSMap::destroyDeviceHashMap( d_blockCSMap );
    ThreadCSMap::destroyDeviceHashMap( d_threadCSMap );
    TSPBMap::destroyDeviceHashMap( d_tspbMap );
    #ifdef VERBOSE_OUTPUT
    std::cout << "[CURD] exiting." << std::endl;
    #endif

  }

  __global__ static void __curd__printSummary() {
    using namespace curd;
    using namespace util;

    if( linearizedThreadId() == 0 ) {
      printf("[CURD] Summary:\n");

      __threadfence();
#ifdef ENABLE_COUNTERS
      shmemRds.print();
      shmemWrs.print();
      glmemRds.print();
      glmemWrs.print();
      barriers.print();
      interGWWRaces.print();
      interGRWRaces.print();
      interGWRRaces.print();
      smTSMerges.print();
      gmTSMerges.print();
      brsWorstCount.print();
      bwsWorstCount.print();
      brsActualCount.print();
      bwsActualCount.print();
      maxSMTRSSize.print();
      maxGMTRSSize.print();
      maxBRSSize.print();
      maxSMTWSSize.print();
      maxGMTWSSize.print();
      maxBWSSize.print();
      intraBlockRaces.print();
<<<<<<< HEAD
      entriesRemovedTRS.print();  
      initCycles.print();
      SMChecksCycles.print();
      dedupCycles.print();
      BRSCompressCycles.print();
      BWSCompressCycles.print();
      GMIntraBChecksCycles.print();
      GMCommitBufferCycles.print(); 
      sortTWSCycles.print();
      sortTRSCycles.print();
      intraBWWChecksCycles.print();
      intraBRWChecksCycles.print();
      ascendingInTWSS.print();
      descendingInTWSS.print();
      maxReadSections.print();
      maxWriteSections.print();
      ascendingInTS.print();
      descendingInTS.print();
      allInOrder.print();
      allChecks.print();
      irrelevantAccesses.print();
      printf("#races: %lu\n", racesDetected.size() );
#endif
    }
    __syncthreads();
  }
  
  static void doFinalCheck(dim3 grid, dim3 threadDim ) {
    // FIXME: bug: barriers in different kernels are independent...
    __curd__finalBarrierHookCall <<<grid, threadDim>>>();
#ifdef MONITOR_GLOBAL_MEMORY
    checkCudaErrors( cudaDeviceSynchronize());
#ifndef EAGER_INTERBLOCK_CHECK
    __curd__finalInterBlockCheck<<<grid, threadDim>>>();
#endif
#endif

  }

  static void resolveSourceInfo( SourceLocation & sLoc, uint32_t fnameSize, 
    std::map< const char *, const char *> & resolved  ){
    const char * fn = sLoc.filename;
    if ( resolved.count( fn ) ){
      sLoc.filename = resolved[ fn ];
      //std::cout << "resolved: "<< sLoc.filename << std::endl;
    }else if( sLoc.filename ){
      char * fname = new char[ fnameSize + 1 ];
      //std::cout << (void *)sLoc.filename << ", " << fnameSize + 1 << std::endl;
      checkCudaErrors( cudaMemcpy( fname, sLoc.filename, fnameSize + 1, cudaMemcpyDeviceToHost ) );
      resolved[ sLoc.filename] = fname ;  
      sLoc.filename = fname;
    }// if sLoc.filename is nullptr, do nothing
  }
  static void printRaces(){
    // print the races detected
    checkCudaErrors( cudaMemcpyFromSymbol( _host__racesDetected,
                                           racesDetected, sizeof( decltype( racesDetected ))));
    auto _races = _host__racesDetected -> moveToHost();
    // resolve the filename field for SourceLocation objects
    // the filename field stores a device char *, so we need to 
    // copy the actual string from device to host, and then update 
    // filename to be a host char * 
    std::map< const char *, const char * > resolved ;
    for( auto i = 0; i < _races -> hSize(); i++ ){ 
      auto & r = _races -> at( i );
      resolveSourceInfo( r.srcLoc1, r.fnameSize1, resolved );
      resolveSourceInfo( r.srcLoc2, r.fnameSize2, resolved );
    }
    _races -> printHistogram();
    for( auto p : resolved ){
      delete[] p.second;
    }
    _races -> freeH();
    delete _races;
  }
  __global__ void __curd__resetMetadata() {
    using namespace util;
    auto tid = linearizedThreadId();
    auto blockId = linearizedBlockId();
    auto blocks = configParams.blocksTrackedGM;
    if (blockId >= blocks) {
      return;
    } 
    if (!tid) {
      #ifdef MONITOR_GLOBAL_MEMORY
      auto _blockSet = blockWriteSets.get(blockId);
      _blockSet -> reset();
      _blockSet = blockReadSets.get(blockId);
      _blockSet -> reset();
      #endif
      // reset the races buffer
      if (!blockId) {
        racesDetected.reset();
      }
    }
    #ifdef MONITOR_GLOBAL_MEMORY
    #ifdef EAGER_INTERBLOCK_CHECK
    int nthreads = blockDim.x * blockDim.y * blockDim.z;
    auto iterations = ceil_div(blocks, nthreads);
    // reset vector clocks for the eager scheme
    for (int i = 0; i < iterations; i++) {
      auto remoteBid = i * nthreads + tid;
      if (remoteBid < blocks) {
        Timestamp * _syncTime = blockVectorClocksDirectory.get(blockId, remoteBid);
        *_syncTime = 0;
      }
    }
    #endif
    glmemWriteSets.clearSetForThread( blockId, tid);
    glmemReadSets.clearSetForThread( blockId, tid);
    #endif

    #ifdef MONITOR_SHARED_MEMORY
    // TODO: these should be unnecessary, as each call to the barrier hook should have cleared them 
    shmemWriteSets.clearSetForThread( blockId, tid);
    shmemReadSets.clearSetForThread( blockId, tid);
    #endif
  }
}// end namespace curd


extern "C"{
  void allocateReadWriteSets(dim3 grid, dim3 threadDim) {
    using namespace std;
    using namespace util;
    using namespace curd;
    //assert(false && "WTF");
    size_t blocksNum  = grid.x * grid.y * grid.z;
    size_t threadsNumPerBlock = threadDim.x * threadDim.y * threadDim.z;

    cout << curd_msg("Checking last config:") << lastNThreads <<", " << threadsNumPerBlock << endl;
    if (lastNThreads == threadsNumPerBlock) { // reuse 
      cout << curd_msg("Reusing existing metadata") << endl;
      return;
    } else if (lastNThreads) { // free metadata allocated last time
      cout << curd_msg("Freeing old metadata:")  << endl;
      freeMetadataForShmem();
      freeMetadataForGlmem();
      checkCudaErrors( cudaFree( _host_gmSizesBuffer ) );
      checkCudaErrors(cudaFree(_host__scanBuffer));
      checkCudaErrors(cudaFree(_host__bitmapBuffer));
    }
    lastNThreads = threadsNumPerBlock;
    //CURD_ASSERT(blocksNum <= MAX_BLOCKS_NUM);
    //CURD_ASSERT(threadsNumPerBlock <= MAX_THREADS_NUM);

    _host__configParams = new Config();
    _host__configParams->load( blocksNum);

    cudaDeviceProp deviceProperties = printDeviceInfo();

    #ifdef VERBOSE_OUTPUT
    cout << curd_msg( "MODE:" ) << CURD_MODE << endl;
    cout << curd_msg( "BLOCKS:") << blocksNum << endl;
    cout << curd_msg( "THREADS:") << threadsNumPerBlock << endl;
    #endif
    checkCudaErrors( cudaDeviceSynchronize());

    checkCudaErrors( cudaMemcpyToSymbol(sharedMemorySizePerBlock,
                                        &(deviceProperties.sharedMemPerBlock), sizeof(size_t)));
    checkCudaErrors( cudaMemcpyToSymbol(totalGlobalMemory,
                                        &(deviceProperties.totalGlobalMem), sizeof(decltype(totalGlobalMemory ))));


    checkCudaErrors( cudaMemcpyToSymbol( configParams, _host__configParams,
      sizeof( decltype(configParams)) ));
    // allocate buffer for recording races
    _host__racesDetected = new RaceBuffer( GMEM_RACES_BUFFER_SIZE, 0 );
    checkCudaErrors( cudaMemcpyToSymbol( racesDetected,_host__racesDetected,
      sizeof(decltype(racesDetected ) )));

    initMetadataForShmem( threadsNumPerBlock, _host__configParams->blocksTrackedSM,
                          _host__configParams->initialTRSSizeSM, _host__configParams->initialTWSSizeSM );
    initMetadataForGlmem( threadsNumPerBlock, _host__configParams->blocksTrackedGM,
                          _host__configParams->initialTRSSizeGM, _host__configParams->initialTWSSizeGM,
                          _host__configParams->initialBRSSize, _host__configParams->initialBWSSize );
    
    computeMetaMemorySize( threadsNumPerBlock );
    // allocate block-wide size buffer 
    checkCudaErrors( cudaMalloc( &_host_gmSizesBuffer, 
      sizeof(decltype(*_host_gmSizesBuffer))* threadsNumPerBlock 
        * _host__configParams-> blocksTrackedGM ) );
    checkCudaErrors( cudaMemcpyToSymbol( _gmSizesBuffer, &_host_gmSizesBuffer,
      sizeof(decltype(_host_gmSizesBuffer)) ) );

    checkCudaErrors( cudaMalloc( &_host__scanBuffer, 
      sizeof(decltype(*_host__scanBuffer))* threadsNumPerBlock 
        * _host__configParams-> initialTWSSizeGM
        * _host__configParams-> blocksTrackedGM ) );
    checkCudaErrors( cudaMemcpyToSymbol( scanBuffer, &_host__scanBuffer,
      sizeof(decltype(_host__scanBuffer)) ) );

    checkCudaErrors( cudaMalloc( &_host__bitmapBuffer, 
      sizeof(decltype(*_host__bitmapBuffer))* threadsNumPerBlock 
        * _host__configParams-> initialTWSSizeGM
        * _host__configParams-> blocksTrackedGM ) );
    checkCudaErrors( cudaMemcpyToSymbol( bitmapBuffer, &_host__bitmapBuffer,
      sizeof(decltype(_host__bitmapBuffer)) ) );
    checkCudaErrors(cudaDeviceSynchronize());

  }
  void freeReadWriteSets(dim3 grid, dim3 threadDim) {
    using namespace util;
    using namespace curd;

    checkCudaErrors( cudaDeviceSynchronize());
    doFinalCheck(grid, threadDim);
    checkCudaErrors( cudaDeviceSynchronize());
    #ifdef PRINT_SUMMARY
    __curd__printSummary<<<1,1>>>();
    #endif 
    checkCudaErrors( cudaDeviceSynchronize());
    
    printRaces();
    __curd__resetMetadata<<<grid, threadDim>>>();
    checkCudaErrors(cudaDeviceSynchronize());
    #ifdef DIE_AFTER_SINGLE_RUN
    exit(0);
#endif

  }

}// end extern "C"




