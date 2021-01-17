#pragma once
#include "debug_utils.cuh"


namespace util{
template<typename ElementType, typename SizeType = uint32_t>
class SimpleArray {
 protected:
  /* the underlying container is a array, with length = mCapacity */
  ElementType * underlyingArray;
  SizeType mCapacity;
  volatile SizeType mSize;
 public:
  __host__ __device__ SimpleArray()/*: underlyingArray(nullptr), mCapacity(0), size(0)*/{}
  __device__ SimpleArray( SizeType c ): mSize(0){
    underlyingArray = new ElementType[c];
    mCapacity    = c;  
  }
  __device__ void freeUnderlyingArray(){
    delete[] underlyingArray;
  }
  SimpleArray(ElementType * array, SizeType c):
    underlyingArray(array),  mCapacity(c), mSize(0) {}
  SimpleArray(SizeType c, SizeType s): mCapacity(c), mSize(s) {
    size_t regionSizeInBytes = sizeof(ElementType) * c;
    checkCudaErrors( cudaMalloc( &underlyingArray, regionSizeInBytes ));
    checkCudaErrors( cudaMemset( underlyingArray, 0, regionSizeInBytes ));
  }
  __device__ inline ElementType * get(SizeType index) const {
    return underlyingArray + index;
  }
  inline ElementType & at( SizeType index ){
    return *(underlyingArray + index );
  }
  __device__ inline SizeType size() const {
    __threadfence();
    return this-> mSize;
  }
  __host__ inline SizeType hSize() const{
    return this -> mSize;
  }
  /* returns the index of the newly inserted element*/
  __device__ inline SizeType push_back( const ElementType & e ){
    underlyingArray[ mSize ++ ] = e;
    return mSize - 1;
    
  }
  __device__ inline ElementType & back( ) const{
    CURD_ASSERT( mSize );
    return underlyingArray[ mSize - 1];
  }
  /*NB: make sure mSize gets updated if new elements are directly added
        to the underlying array
    */
  __device__ inline ElementType * getArray() {
    return underlyingArray;
  }
<<<<<<< HEAD

  __device__ inline void reset() {
    this -> mSize = 0;
    __threadfence();
  }

=======
/*
>>>>>>> 0812110a738a6531e4551dd20ed6336881fc2726
  void operator=(const SimpleArray & ss) {
    this-> underlyingArray = ss.underlyingArray;
    this-> mSize     = ss.mSize;
    this-> mCapacity = ss.mCapacity;
  }*/
  void cudaFreeUnderlyingArray() {
    checkCudaErrors(cudaFree(underlyingArray));
  }
  __device__ void clear(){
    mSize = 0;
  }

};
template< typename T, typename S>
__global__ void freeDeviceArray( SimpleArray<T, S> & array ){
  if( !linearizedThreadId() ){
    array.freeUnderlyingArray();
  }
}

}// end namespace util
