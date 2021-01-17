#include <iostream>
#include <cstdlib>
#include <helper_cuda.h>

#define SIZE 16
__global__ void msfdc( int * g_data){
  auto id = threadIdx.x + blockIdx.x * blockDim.x;
  g_data[ id % SIZE] += id;
  __syncthreads();
}

int main(int argc, char ** argv){
  using namespace std;
  int blocks = 2, threads = 32;
  if( argc >= 3 ){
    blocks = atoi( argv[1] );
    threads = atoi( argv[2] );
  }
  cout << " blocks = " << blocks << endl;
  cout << " threads = " << threads << endl;
  int * d_data = nullptr;
  checkCudaErrors( cudaMalloc( &d_data, sizeof(int) * SIZE ));
  msfdc<<< blocks, threads >>>( d_data);
  checkCudaErrors( cudaDeviceSynchronize() );

}
