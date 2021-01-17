#include <iostream>
#include <cstdlib>
#include <helper_cuda.h>

#define STRIDE 4
#define SIZE 256

// 0124589
// 0123 5678 10111213
__global__ void msfdc( int * g_data, int v){
 
  auto tid =threadIdx.x + blockIdx.x * blockDim.x;
  auto id = tid % (STRIDE - 1);
  auto idx = id + (tid / (STRIDE-1) ) * STRIDE ;
  for( int i = 0; i < v ; i++ ){
    if( idx < SIZE ){
      g_data[ idx  ] += id;
      printf("b%dt%d writes g_data[%d]\n", blockIdx.x , threadIdx.x, idx );
    }
    __syncthreads();
  }
  
}

int main(int argc, char ** argv){
  using namespace std;
  int blocks = 2, threads = 32, iterations = 1;
  if( argc >= 4 ){
    blocks = atoi( argv[1] );
    threads = atoi( argv[2] );
    iterations = atoi( argv[3] );
  }
  cout << " blocks = " << blocks << endl;
  cout << " threads = " << threads << endl;
  int * d_data = nullptr;
  checkCudaErrors( cudaMalloc( &d_data, sizeof(int) * SIZE ));
  msfdc<<< blocks, threads >>>( d_data, iterations);
  checkCudaErrors( cudaDeviceSynchronize() );

}
