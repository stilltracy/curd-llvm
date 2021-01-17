#pragma once
#include "simple_array.cuh"
#include <map>
#include <unordered_map>
#include <iostream>
#include "debug_utils.cuh"
namespace util{

template<typename ElementType, typename SizeType = size_t>
class AtomicArray: public SimpleArray<ElementType, SizeType> {
 public:
  using SimpleArray<ElementType, SizeType>::SimpleArray;
 /* __device__ AtomicArray() {}
  AtomicArray(SizeType c, SizeType s ):
    SimpleArray<ElementType, SizeType>(c, s ) {
  }*/
  __device__ int put( const ElementType & elem ) {
    auto index = -1;
    if( this -> mSize < this -> mCapacity ) {
      index = atomicAdd( (unsigned int *)& this -> mSize, 1 );
      __threadfence();
      // NB: index may be out of bound because of concurrent updates
      if( index < this -> mCapacity ) {
        this -> underlyingArray[ index ] = elem;
      }
    }
    return index;
  }



};
}
