#pragma once
#include "build_switches.cuh"

namespace util{

class SpinLock {
  volatile int mutex;
 public:
  /* NB: before using a SpinLock object, we need to ensure that mutex = 0 */
  __device__ void lock() {
    while(atomicCAS( (int *)&mutex, 0, 1) != 0);
    __threadfence();
  }

  __device__ void unlock() {
    __threadfence();
    atomicExch( (int *)&mutex, 0);
  }
};

__device__ inline void lockForBlock(SpinLock * _mutex, size_t selfTid) {
#ifdef USE_LOCKS
  if(selfTid == 0) {
    _mutex -> lock();
  }
#endif
  __syncthreads();
}

/* if multiple threads of the same block release the same mutex (after a single acquire ),
  acquirers from other blocks may not get mutual exclusion.
*/
__device__ inline void unlockForBlock(SpinLock * _mutex, size_t selfTid) {
  __syncthreads();
#ifdef USE_LOCKS
  if(selfTid == 0) {
    _mutex -> unlock();
  }
#endif
}

}// end namespace util
