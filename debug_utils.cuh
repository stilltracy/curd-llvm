#pragma once
#include "utils.cuh"
#include <helper_cuda.h>
#include <helper_string.h>
#include <inttypes.h>
#include <string>
#include <iostream>

#ifdef ASSERTS_ON
#define CURD_ASSERT( a ) assert( a )
#else
#define CURD_ASSERT( a ) do{}while(0)
#endif  
using util::linearizedThreadId;
using util::linearizedBlockId;
using std::string;

namespace curd{

inline string curd_msg( string  s ) {
  return "[CURD] " + s ;
}


__device__ inline void CURD_ASSERT_lt(uint64_t a, uint64_t b, const char * name_a, const char * name_b, const char * caption = "holy crap") {
  if(! (a < b) ) {
    printf("![ %s ] block %d, thread %d : %s = %ld, %s = %ld\n",
           caption, linearizedBlockId(), linearizedThreadId(), name_a, a, name_b, b);
  }
  CURD_ASSERT( a < b );

}
__device__ inline void CURD_ASSERT_eq(uint64_t a, uint64_t b, const char * name_a, const char * name_b, const char * caption = "holy crap") {
  if(! (a == b) ) {
    printf("![ %s ] block %d, thread %d : %s = %ld, %s = %ld\n",
           caption, linearizedBlockId(), linearizedThreadId(), name_a, a, name_b, b);
  }
  CURD_ASSERT( a == b );

}
__device__ inline void iff(bool b1, bool b2) {
  CURD_ASSERT( b1 == b2 );
}

__device__ inline void curd_println(const char * tag, const char * msg) {
  printf("[ %s ] block %d, thread %d: %s\n",
         tag, linearizedBlockId(), linearizedThreadId(), msg);
}

#ifdef ENABLE_SAMPLE_TIME 
#define SAMPLE_TIME(counter, curClock, lastClock) do {\
    curClock = clock64(); \
    ADD_COUNTER( initCycles, curClock - lastClock); \
    lastClock = clock64();\
  } while(0)
#else
#define SAMPLE_TIME(counter, curClock, lastClock) 
#endif

}
