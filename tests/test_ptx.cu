#include "race_detection.cuh"

__device__ int pint;
__device__ char msfdc[6]= "msfdc";
__constant__ int const_msfdc;
__global__ void test(){
  int wtf;
  __shared__ int shit; 
  __curd__genericMemReadHook(reinterpret_cast<uint64_t>(&pint), 8, 9527, msfdc);  
  __curd__genericMemReadHook(reinterpret_cast<uint64_t>(&const_msfdc), 9, 9528, msfdc);
  __curd__genericMemReadHook(reinterpret_cast<uint64_t>(&shit), 4, 9530, msfdc);
  __curd__genericMemWriteHook(reinterpret_cast<uint64_t>(&pint), 8, 9527, msfdc);  
  __curd__genericMemWriteHook(reinterpret_cast<uint64_t>(&const_msfdc), 9, 9528, msfdc);
  __curd__genericMemWriteHook(reinterpret_cast<uint64_t>(&shit), 4, 9530, msfdc);
  __curd__genericMemWriteHook(reinterpret_cast<uint64_t>(&wtf), 4, 9530, msfdc);
  __curd__genericMemReadHook(reinterpret_cast<uint64_t>(&wtf), 4, 9530, msfdc);



}

int main(){
  test<<<1,1>>>();
  checkCudaErrors( cudaDeviceSynchronize() );
}
