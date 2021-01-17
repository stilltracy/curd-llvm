#pragma once
#include "debug_utils.cuh"

using curd::CURD_ASSERT_lt;

namespace util{

template<int U> 
class Bitmap{
public:
  typedef unsigned int HolderType;
private:
  int size;
  HolderType * _holders;
public:
  __device__ Bitmap(int length, HolderType * _h) {
    CURD_ASSERT(U <= sizeof(HolderType));
    CURD_ASSERT(sizeof(HolderType) % U == 0);
    auto nHolders = ceil_div(U * length, sizeof(HolderType));
    //_holders = new HolderType[nHolders]();
    _holders = _h;
    size = length;
  }
  
  __device__ ~Bitmap() {
//    delete[] _holders;
  }
  __device__ void set(int index, HolderType val) {
    CURD_ASSERT_lt(index, size, "index", "size");
    int hIndex = index * U / sizeof(HolderType);
    int offset = index * U % sizeof(HolderType);
    // NB: fields are arranged from LSB to MSB inside each holder
    HolderType maxVal = (1 << U) - 1; 
    HolderType resetMask = ~(maxVal << offset);
    atomicAnd(_holders + hIndex, resetMask);
    HolderType valueMask = val << offset;
    //_holders[hIndex] |= valueMask;   
    atomicOr(_holders + hIndex, valueMask);
  }

  __device__ HolderType get(int index) {
    CURD_ASSERT(index < size);
    int hIndex = index * U / sizeof(HolderType);
    int offset = index * U % sizeof(HolderType);
    // NB: fields are arranged from LSB to MSB inside each holder
    HolderType maxVal = (1 << U) - 1;
    HolderType filterMask = maxVal << offset;
    return (_holders[hIndex] & filterMask) >> offset;  
  }

  __device__ void print(const char * symbols, int rLimit, int width = 32, int start = 0) {
    auto nRows = ceil_div(size, width);
    if (rLimit < nRows) {
      nRows = rLimit;
    } 
    printf("r\\c");
    for (int c = 0; c < width; c++) {
      printf(" %2d", c);
    }
    printf("\n");
    for (int r = 0; r < nRows; r++) {
      auto rStart = start + r * width;
      printf("%2d:", r);
      for (int c = 0; c < width && rStart + c < size; c++) {
        auto val = get(rStart + c);
        printf("  %c", symbols[val]);
        //printf(" %2d", val);
      }
      printf("\n");   
    }
  }

  __device__ int getSize() {
    return size;
  }

};

}
