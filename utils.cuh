#pragma once
#include <inttypes.h>
#include <cassert>
#include <cstdio>

namespace util{

template<typename IntT>
__device__ inline bool isPowerOf2(IntT x) {
  return ( x & (x - 1)) == 0;
}

__device__ inline int linearizedThreadId() {
  int threadIdInBlock = threadIdx.x  + threadIdx.y * blockDim.x + threadIdx.z * blockDim.x * blockDim.y;
  return threadIdInBlock;
}
__device__ inline int linearizedBlockId() {
  int blockId = blockIdx.x + blockIdx.y* gridDim.x + blockIdx.z * gridDim.x * gridDim.y;
  return blockId;
}

<<<<<<< HEAD
__device__ void print(int i, const char * prefix, const char * suffix) {
  printf("%s%d%s", prefix, i, suffix);    
}
=======
__device__ inline uint64_t globalTid(){
  return linearizedThreadId() + blockDim.x * blockDim.y * blockDim.z *
    static_cast<uint64_t>(linearizedBlockId());
}

>>>>>>> 0812110a738a6531e4551dd20ed6336881fc2726

template<typename T>
__device__ void printArray(const char * name, T * array, int size, int selfTid) {
  if( selfTid == 0) {
    printf("%s \t: [", name);
    for( int i = 0; i < size; i ++ ) {
      //array[i].print(""," ");
      print(array[i], "", " ");
    }
    printf(" ]\n");
  }
  __syncthreads();
}

__device__ inline bool implies( bool a, bool b ) {
  return !a || ( a && b );
}


__host__ __device__ inline int ceil_div( int a, int b ) {
  assert( b != 0);
  assert( a >= 1);
  return 1 + (a - 1) / b;
}

template<typename T>
__host__ __device__ inline T max(T a, T b) {
  return a > b ? a : b;
}

template<typename T>
__host__ __device__ inline T min(T a, T b) {
  return a < b ? a : b;
}

// gpucc doesn't support new/delete? 
template<typename T>
__device__ T * newArrayForBlock(int selfTid, int size ) {
  __shared__ T * ptr;
  //TODO: is this necessary?
  __syncthreads();
  if(selfTid == 0) {
    ptr = new T[size];
  }
  __syncthreads();
  assert(ptr);
  return ptr;
}

template<typename T>
__device__ void deleteArrayForBlock(int selfTid, volatile T * ptr) {
  __syncthreads();
  if(selfTid == 0) {
    delete[] ptr;
  }
}

// requires the buffer size >= nthreads 
// the final result is in buffer[0]
template<typename T>
__device__ inline T treeSum(volatile T * buffer, int nthreads, int tid) {
  for(int stride = nthreads >> 1; stride > 0; stride = stride >> 1) {
    if (tid < stride) {
      buffer[tid] += buffer[tid + stride];
    }
    __syncthreads();
  }
  return buffer[0];
}


//requires the size of array to be nthreads
template< typename T >
__device__ inline T parallelMax( volatile T * array, int nthreads, int blockId, int localTid, T * _buffer ) {
  volatile  T * values = _buffer ;//newArrayForBlock<T> ( localTid, nthreads);
  values[localTid] = array[localTid];
  __syncthreads();
  for(auto stride = nthreads/2; stride >= 1; stride >>=1) {
    if(localTid < stride) {
      if(values[localTid ] < values[localTid + stride]) {
        values[localTid] = values[localTid + stride];
      }
    }
    __syncthreads();
  }
  __syncthreads();
<<<<<<< HEAD
  //deleteArrayForBlock( localTid, values );
  return values[0];
=======
  auto r = values[0];
  deleteArrayForBlock( localTid, values );
  return r;
>>>>>>> 0812110a738a6531e4551dd20ed6336881fc2726
}

__device__ inline bool isLocalPtr( uint64_t addr) {
  uint32_t r = 0;
  asm volatile("\n\t"
               "{.reg .pred %%p;\n\t"
               "mov.u32 %0, 0U;\n\t"
               "isspacep.local %%p, %1;\n\t"
               "@%%p mov.u32 %0, 1U;\n\t}"
               : "=r"(r): "l"(addr));
  return r;
}

__device__ inline bool isGlobalPtr( uint64_t addr) {
  uint32_t r = 0;
  asm volatile("\n\t"
               "{.reg .pred %%p;\n\t"
               "mov.u32 %0, 0U;\n\t"
               "isspacep.global %%p, %1;\n\t"
               "@%%p mov.u32 %0, 1U;\n\t}"
               : "=r"(r): "l"(addr));
  return r;
}

__device__ inline bool isSharedPtr( uint64_t addr) {
  uint32_t r = 0;
  asm volatile("\n\t"
               "{.reg .pred %%p;\n\t"
               "mov.u32 %0, 0U;\n\t"
               "isspacep.shared %%p, %1;\n\t"
               "@%%p mov.u32 %0, 1U;\n\t}"
               : "=r"(r): "l"(addr));
  return r;
}

__device__ inline bool isConstantPtr( uint64_t addr) {
  uint32_t r = 0;
  asm volatile("\n\t"
               "{.reg .pred %%p;\n\t"
               "mov.u32 %0, 0U;\n\t"
               "isspacep.const %%p, %1;\n\t"
               "@%%p mov.u32 %0, 1U;\n\t}"
               : "=r"(r): "l"(addr));
  return r;
}

template<typename T>
__device__ inline bool isSet( T * profile, int profileSize,  int b ) {
  auto i = b / (sizeof(T) * 8 )  ;
  auto ib = b % (sizeof(T) * 8 );
  T mask = 1 << ib ;
  return (profile[i] & mask);
}

// strided backwards linear search
// if this function is called with a constant stride parameter, the compiler
// should be smart enough to do const propagation that removes the multiplication
// of index  
template<typename ElementType, typename P >
static __device__ inline ElementType * linear_search(ElementType * array, int size,
  size_t stride, const ElementType & entry) {
  for(int i = size - 1; i >= 0; i--) {
    if(P()(array[i * stride], entry)){
      return array + i * stride;
    }
  }
  return nullptr;
}

template<typename ElementType >
static __device__ inline ElementType * linear_search(ElementType * array, int size,
  size_t stride, const ElementType & entry, int steps) {
  for(int i = size - 1; i >= 0 && steps > 0; steps--, i--) {
    if(array[i * stride] == entry){
      return array + i * stride;
    }
  }
  return nullptr;
}

template<typename T>
__host__ __device__ inline void swap(T * _a, T * _b ){
  if( _a != _b ){
    T tmp = *_a;
    *_a = *_b;
    *_b = tmp;
  }
}

template<typename T>
__host__ __device__ inline void swap(T * array, int idx1, int idx2 ){
  swap( array + idx1, array + idx2 );
}

/* return true iff. a new element is inserted*/
template<typename ElementType, typename SizeType>
static __device__ inline bool set_append(ElementType * setArray, 
  SizeType * _setSize, size_t stride, ElementType & newEntry) {
  auto _r = linear_search(setArray, *_setSize, stride, newEntry);
  if( !_r ){ // not found, append 
    setArray[(*_setSize) * stride] = newEntry;
    (*_setSize)++;
  }
  return !_r;
}

// returns true iff. a new entry is inserted
// search for mergable elements for steps times
// if not found, append the new entry
template<typename ElementType, typename SizeType>
static __device__ bool set_merge_append(ElementType * setArray,
  SizeType * _setSize, size_t stride, ElementType & newEntry, SizeType steps) {
  int s = 0;
  // we use signed integer here, to avoid underflow
  int size = *_setSize;
  // search backwards, from the most recently inserted/merged
  for( int i = size -1 ; i >= 0 && s < steps; s++, i--) {
    if( setArray[ i * stride].mergableWith(&newEntry ) ) {
      setArray[i * stride].mergeWith( newEntry );
      // move the newly merged entry to the tail of the array
      swap( setArray, (i *  stride), ((size -1)* stride) );
      return false;
    }
  }
  setArray[(*_setSize) * stride ] = newEntry;
  (*_setSize)++;
  return true;

}

// returns true iff. a new entry is inserted
// search for mergable elements for steps times
// if not found, append the new entry
template<typename ElementType, typename SizeType>
static __device__ bool set_merge_append_forwards(ElementType * setArray,
  SizeType * _setSize, size_t stride, ElementType & newEntry, SizeType steps) {
  int s = 0;
  // search backwards, from the most recently inserted/merged
  for( int i = 0 ; i < *_setSize && s < steps; s++, i++) {
    if( setArray[ i * stride].mergableWith(&newEntry ) ) {
      setArray[i * stride].mergeWith( newEntry );
      return false;
    }
  }
  setArray[(*_setSize) * stride ] = newEntry;
  (*_setSize)++;
  return true;

}

template<typename ElementType, typename SizeType>
static __device__ int set_merge_all_append(ElementType * setArray,
  SizeType * _setSize, size_t stride, const ElementType & newEntry, SizeType steps) {
  int delta = 0;
  int s = 0;
  int size = *_setSize;
  // since the newEntry may be mergable with multiple elements,
  ElementType me = newEntry;
  // search backwards, from the most recently inserted/merged
  for( int i = size -1 ; i >= 0 && *_setSize > 0 && s < steps; s++, i--) {
    if( setArray[ i * stride].mergableWith( &me ) ) {
      me.mergeWith( setArray[i * stride] );
      // remove the merged element from the set
      swap(setArray, (i * stride), (*_setSize - 1) * stride);
      (*_setSize)--;
      delta--;
    }
  }
  setArray[*_setSize] = me;
  (*_setSize)++;
  delta++; 
  return delta;
}



}
