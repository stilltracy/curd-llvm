#include "bitmap.cuh"
#include <helper_cuda.h>

using util::Bitmap;

__global__ void testKernel() {
  const int size = 242;
  Bitmap<2> * _bitmap = new Bitmap<2>(size);
  char symbols[5] = "duxs";
  for (int i = 0; i < size; i++) {
    _bitmap -> set(i, i % 4);
  }
  _bitmap -> print(symbols, 64);
}

int main() {
  testKernel<<<1,1>>>();
  checkCudaErrors(cudaDeviceSynchronize());
}
