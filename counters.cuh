#pragma once

namespace curd{
#define DEFINE_COUNTER( name ) \
  struct Counters_##name{ \
    typedef unsigned long long int CounterType; \
    volatile CounterType value; \
    __device__ CounterType operator++(int){ \
      CounterType old = atomicAdd((CounterType *)&value, 1 ); \
      __threadfence();\
      return old; \
    } \
    __device__ CounterType add( CounterType x ){\
      CounterType old = atomicAdd((CounterType *)&value, x ); \
      __threadfence();\
      return old + x; \
    }\
    __device__ CounterType max( CounterType x ){\
      CounterType old = atomicMax((CounterType *)&value, x ); \
      __threadfence();\
      return old > x ? old : x; \
    }\
    __device__ void print(){ \
      printf("[CURD] Counter %s = %llu\n", #name, value); \
    } \
  }

// for debugging/profiling use: define counters here

DEFINE_COUNTER( shmemRd );
DEFINE_COUNTER( shmemWr );
DEFINE_COUNTER( glmemRd );
DEFINE_COUNTER( glmemWr );
DEFINE_COUNTER( barriers );
DEFINE_COUNTER( interGWWRaces );
DEFINE_COUNTER( interGRWRaces );
DEFINE_COUNTER( interGWRRaces );
DEFINE_COUNTER( smTSMerges );
DEFINE_COUNTER( gmTSMerges );
DEFINE_COUNTER( brsWorstCount );
DEFINE_COUNTER( bwsWorstCount );
DEFINE_COUNTER( brsActualCount );
DEFINE_COUNTER( bwsActualCount );
DEFINE_COUNTER( maxSMTRSSize );
DEFINE_COUNTER( maxGMTRSSize );
DEFINE_COUNTER( maxBRSSize );
DEFINE_COUNTER( maxSMTWSSize );
DEFINE_COUNTER( maxGMTWSSize );
DEFINE_COUNTER( maxBWSSize );
DEFINE_COUNTER( intraBlockRaces );
<<<<<<< HEAD
DEFINE_COUNTER( entriesRemovedTRS );
DEFINE_COUNTER( initCycles);
DEFINE_COUNTER( SMChecksCycles);
DEFINE_COUNTER( dedupCycles);
DEFINE_COUNTER( BRSCompressCycles);
DEFINE_COUNTER( BWSCompressCycles);
DEFINE_COUNTER( GMIntraBChecksCycles);
DEFINE_COUNTER( GMCommitBufferCycles);
DEFINE_COUNTER( sortTWSCycles);
DEFINE_COUNTER( sortTRSCycles);
DEFINE_COUNTER( intraBWWChecksCycles);
DEFINE_COUNTER( intraBRWChecksCycles);
DEFINE_COUNTER( ascendingInTWSS);
DEFINE_COUNTER( descendingInTWSS);
DEFINE_COUNTER( maxReadSections);
DEFINE_COUNTER( maxWriteSections);
DEFINE_COUNTER( ascendingInTS);
DEFINE_COUNTER( descendingInTS);
DEFINE_COUNTER( allInOrder);
DEFINE_COUNTER( allChecks);
DEFINE_COUNTER( irrelevantAccesses);
=======
DEFINE_COUNTER( atomicCalls );

>>>>>>> 0812110a738a6531e4551dd20ed6336881fc2726
#ifdef ENABLE_COUNTERS
#define INC_COUNTER( name ) name++
#define ADD_COUNTER( name, val ) do{ if( val ) name.add( val ); }while(0)
#define MAX_COUNTER( name, val ) do{ if( val ) name.max( val ); }while(0)
#else
#define INC_COUNTER( name )
#define ADD_COUNTER( name, val )
#define MAX_COUNTER( name, val )
#endif

}


