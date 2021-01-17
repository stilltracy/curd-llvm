#include <iostream>
#include "race_detection.cu"
#define CURD_HOOK( func, ipoint, ... ) void __curd__##func##_##ipoint##Hook( __VA_ARGS__ )
#define CURD_DEVICE_HOOK( func, ipoint, ... ) __device__ CURD_HOOK( func, ipoint, __VA_ARGS__ )


extern "C"{

CURD_DEVICE_HOOK( GenericMemRead, before, uint64_t addr, uint8_t w, uint32_t lineNo, char * filename  ){
//  printf("memRead\n");
  __curd__genericMemReadHook( addr, w, lineNo, filename);
///  __curd__glmemReadHook( addr, w, lineNo, filename);

}

CURD_DEVICE_HOOK( GenericMemWrite, before , uint64_t addr, uint8_t w, uint32_t lineNo, char * filename ){
  //printf("memWrite\n");
  __curd__genericMemWriteHook( addr, w, lineNo, filename);
  //__curd__glmemWriteHook( addr, w, lineNo, filename);

}

CURD_DEVICE_HOOK( GlobalMemRead, before, uint64_t addr, uint8_t w, uint32_t lineNo, char * filename  ){
//  printf("memRead\n");
  __curd__glmemReadHook( addr, w, lineNo, filename);
///  __curd__glmemReadHook( addr, w, lineNo, filename);

}

CURD_DEVICE_HOOK( GlobalMemWrite, before , uint64_t addr, uint8_t w, uint32_t lineNo, char * filename ){
  //printf("memWrite\n");
  __curd__glmemWriteHook( addr, w, lineNo, filename);
  //__curd__glmemWriteHook( addr, w, lineNo, filename);

}
CURD_DEVICE_HOOK( SharedMemRead, before, uint64_t addr, uint8_t w, uint32_t lineNo, char * filename  ){
//  printf("memRead\n");
  __curd__shmemReadHook( addr, w, lineNo, filename);
///  __curd__glmemReadHook( addr, w, lineNo, filename);

}

CURD_DEVICE_HOOK( SharedMemWrite, before , uint64_t addr, uint8_t w, uint32_t lineNo, char * filename ){
  //printf("memWrite\n");
  __curd__shmemWriteHook( addr, w, lineNo, filename);
  //__curd__glmemWriteHook( addr, w, lineNo, filename);

}

CURD_DEVICE_HOOK( llvm_cuda_syncthreads, after ){
  __curd__barrierHook();
}



}
