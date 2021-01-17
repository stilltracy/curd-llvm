#pragma once
#include <cassert>
#include "utils.cuh"

namespace util{
__device__ inline int prefixSumExclusive(int * array, int size, int threadsNumInBlock, int selfTid) {
  assert(threadsNumInBlock >= size);
  int reverseId = size - 1 - selfTid;
  for( int stride = 1; stride < size; stride <<= 1 ) {
    int leftChild = selfTid - stride;
    if( selfTid < size && leftChild >= 0 && reverseId % (2 * stride) == 0) {
      array[selfTid] += array[leftChild];
    }
    __syncthreads();
  }
  __shared__ int totalSum;
  if(selfTid == size - 1) {
    totalSum = array[size - 1];
    array[size - 1] = 0;
  }
  __syncthreads();
  for( int stride = size/2 ; stride > 0; stride >>= 1 ) {
    int leftChild = selfTid - stride;
    if( selfTid < size && leftChild >= 0 && reverseId % (2 * stride) == 0) {
      int t = array[selfTid];
      array[selfTid] += array[leftChild];
      array[leftChild] = t;
    }
    __syncthreads();
  }
  return totalSum;
}

__device__ inline void prefixSumInclusive( int * array, int size, int threadsNumInBlock, int selfTid) {
  int totalSum = prefixSumExclusive( array, size, threadsNumInBlock, selfTid);
  int tmp = totalSum;
  if(selfTid % 2 == 0 && selfTid + 1 < size ) {
    tmp = array[selfTid];
    array[selfTid] = array[selfTid + 1];
  }
  __syncthreads();
  if(selfTid % 2 == 0 && selfTid - 1 > 0 ) {
    array[selfTid -1] = tmp;
  } else if( selfTid == size -1 ) {
    array[selfTid] = tmp;
  }
  __syncthreads();
}

template<typename T>
__device__ inline T scan(int tid, T * array, int nthreads) {
  if (isPowerOf2(nthreads)) {
    return scan_parallel(tid, array, nthreads);
  } else {
    return scan_sequential(tid, array, nthreads);
  }
}


template <typename T>
__device__ inline T scan_sequential(int tid, T * array, int nthreads) {
  __shared__ T last;
  if (!tid) {
    last = 0;
    for(int i = 1; i < nthreads; i++) {
      auto t = array[i - 1] + last;
      last = array[i];
      array[i] = t;
    }
    array[0] = 0;
  }
  __syncthreads();
  return last + array[nthreads - 1];
}


// work-efficient scan
// TODO: this function is not optimized for coalesced global memory accesses  
template<typename T>
__device__ inline T scan_parallel(int tid, T * array, int nthreads) {
  // phase 1: reduction
  for (int stride = 1; stride < nthreads; stride <<= 1) {
    if (tid % (stride << 1) == (stride << 1) - 1) {
      array[tid] += array[tid - stride];
    }
    __syncthreads();
  }
  // NB: we need to make the result visible to all threads 
  T result = array[nthreads - 1];
  __syncthreads();
  // phase 2: down sweep
  if (!tid) {
    array[nthreads - 1] = 0;
  }
  __syncthreads();
  for (int stride = nthreads >> 1; stride > 0; stride >>= 1) {
    if (tid % (stride << 1) == (stride << 1) - 1) {
      T t = array[tid];
      array[tid] += array[tid - stride];
      array[tid - stride] = t;
    }
    __syncthreads();
  }

  return result;
  

}

// general version that supports  size = m * nthreads
template<typename T>
__device__ inline T scan(int tid, T * array, int size, int nthreads) {
  auto iterations = ceil_div(size, nthreads);
  T base = 0;
  for (int i = 0; i < iterations; i++) {
    auto start = i * nthreads;
    auto sum = scan(tid, array + start, nthreads);
    // TODO: this barrier may be unnecessary
    // NB: it may be a common mistake to overlook ordering across iterations 
    __syncthreads();
    array[start + tid] += base;
    __syncthreads();
    base += sum;

  }
  return base;
}

}// end namespace util
