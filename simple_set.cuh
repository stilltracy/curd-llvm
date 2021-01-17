#pragma once

#include <inttypes.h>
#include <iostream>
#include <helper_string.h>    // helper for string parsing
#include <helper_image.h>     // helper for image and data comparison
#include <helper_cuda.h>      // helper for cuda error checking functions
#include "lock.cuh"
#include "simple_array.cuh"

using util::SimpleArray;
using util::SpinLock;
using util::swap;

namespace curd{

template<typename ElementType, typename SizeType = size_t>
class Simple2DArray: public SimpleArray<ElementType, SizeType> {
 protected:
  SizeType  mWidth;
 public:
  Simple2DArray() {}
  Simple2DArray(SizeType row, SizeType width):
    SimpleArray<ElementType, SizeType>(row * width, row * width), mWidth(width) {}
  __device__ inline ElementType * get(SizeType x, SizeType y) {
    if(y >= mWidth) {
      printf("y %ld, mWidth %ld\n", (uint64_t)y, (uint64_t)mWidth);
    }
    CURD_ASSERT( y < mWidth);
    SizeType index = x * mWidth + y;
    CURD_ASSERT( index < this -> mSize);
    return SimpleArray<ElementType, SizeType>::get( index );
  }
};

/* structure that stores a read/write set for a block */
template<typename ElementType, typename SizeType>
class SimpleSet : public SimpleArray<ElementType, SizeType> {
 public:
  SimpleSet() {}
  SimpleSet(ElementType * elem, SizeType s):
    SimpleArray<ElementType, SizeType>(elem, s) {}
  __device__ void add(ElementType element) {
    bool existed = false;
    for(SizeType i = 0 ; i < this -> mSize; i ++ ) {
      existed |= (this -> underlyingArray[i] == element);
    }
    if(!existed) {
      CURD_ASSERT(this -> mSize < this -> mCapacity);
      this -> underlyingArray[ this-> mSize++] = element;
    }
  }


};

typedef SimpleArray<SpinLock> LocksDirectory;

} // end namespace curd
