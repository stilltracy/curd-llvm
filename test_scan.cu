#include "prefix_sum.cuh"
#include "utils.cuh"
#include <helper_cuda.h>
using util::scan;
using util::printArray;
using util::ceil_div;

__global__ void testKernel(int * array, int size) {
  auto tid = threadIdx.x;
  auto nthreads = blockDim.x * blockDim.y * blockDim.z;
  auto iterations = ceil_div(size, nthreads);
  for (int i = 0; i < iterations; i++) {
    array[i * nthreads + tid] = tid % 2;
  }
  __syncthreads();
  printArray("before", array, size, tid);
  int sum = scan(tid, array, size, nthreads);
  if (!tid) {
    printf("sum: %d\n", sum);
  } 
  printArray("after", array, size, tid);
}

int main() {
  int * array;
  int nthreads = 512;
  int size = 2048;
  checkCudaErrors(cudaMalloc(&array, sizeof(int) * size));
  testKernel<<<1, nthreads>>>(array, size);
  checkCudaErrors(cudaDeviceSynchronize());
}
