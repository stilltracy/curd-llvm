#pragma once

#include <inttypes.h>
#include <iostream>
#include <helper_string.h>    // helper for string parsing
#include <helper_image.h>     // helper for image and data comparison
#include <helper_cuda.h>      // helper for cuda error checking functions

using std::string;

#define MAX_THREADS_NUM 1024
#define MAX_WRITE_SET_SIZE 8

/* the shared memory shouldn't exceed 64KB*/
typedef uint16_t SharedMemoryAddr;
typedef uint64_t GlobalMemoryAddr;


enum ACCESS_KIND {
  READ =0,
  WRITE,
};



extern "C" {
  __device__  void __curd__shmemReadHook(uint64_t addr, uint8_t width, uint32_t lineNo, char * filename);

  __device__ void __curd__shmemWriteHook(uint64_t addr, uint8_t width, uint32_t lineNo, char * filename);

  __device__ void __curd__glmemReadHook(uint64_t addr, uint8_t width, uint32_t lineNo, char * filename);

  __device__ void __curd__glmemWriteHook(uint64_t addr, uint8_t width, uint32_t lineNo, char * filename);

  __device__ void __curd__genericMemReadHook(uint64_t addr, uint8_t width, uint32_t lineNo, char * filename );

  __device__ void __curd__genericMemWriteHook( uint64_t addr, uint8_t width, uint32_t lineNo, char * filename );

  __device__ void __curd__atomicHook( uint64_t addr );  

  __device__ void __curd__barrierHook();


}




