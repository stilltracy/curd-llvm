#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

#include "scalarProd_kernel.cuh"
#include <helper_functions.h>
#include <helper_cuda.h>

const int VECTOR_N = 256;
//Number of elements per vector; arbitrary,
//but strongly preferred to be a multiple of warp size
//to meet memory coalescing constraints
const int ELEMENT_N = 4096;
//Total number of data elements
const int    DATA_N = VECTOR_N * ELEMENT_N;

const int   DATA_SZ = DATA_N * sizeof(float);
const int RESULT_SZ = VECTOR_N  * sizeof(float);

float RandFloat(float low, float high)
{
    float t = (float)rand() / (float)RAND_MAX;
    return (1.0f - t) * low + t * high;
}

__global__ void msfdc(){
  __shared__ int wtf[4];
  printf(" msfdc: %lp\n", wtf);
  __syncthreads();
}

int main(int argc, char **argv){
    float *h_A, *h_B, *h_C_CPU, *h_C_GPU;
    float *d_A, *d_B, *d_C;
    double delta, ref, sum_delta, sum_ref, L1norm;
    StopWatchInterface *hTimer = NULL;
    int i;
    msfdc<<<1,1>>>();
    cudaDeviceSynchronize();

    printf("%s Starting...\n\n", argv[0]);

    // use command-line specified CUDA device, otherwise use device with highest Gflops/s
   // findCudaDevice(argc, (const char **)argv);
    
    sdkCreateTimer(&hTimer);

    printf("Initializing data...\n");
    printf("...allocating CPU memory.\n");
    h_A     = (float *)malloc(DATA_SZ);
    h_B     = (float *)malloc(DATA_SZ);
    h_C_CPU = (float *)malloc(RESULT_SZ);
    h_C_GPU = (float *)malloc(RESULT_SZ);

    printf("...allocating GPU memory.\n");

	checkCudaErrors(cudaMalloc((void **)&d_C, RESULT_SZ ));
	checkCudaErrors(cudaMalloc((void **)&d_B, DATA_SZ ));
	checkCudaErrors(cudaMalloc((void **)&d_A, DATA_SZ ));    
	printf("...generating input data in CPU mem.\n");
    srand(123);

    //Generating input data on CPU
    for (i = 0; i < DATA_N; i++)
    {
	h_A[i] = RandFloat(0.0f, 1.0f);
	h_B[i] = RandFloat(0.0f, 1.0f);
    }

    printf("...copying input data to GPU mem.\n");
    //Copy options data to GPU memory for further processing
    checkCudaErrors(cudaMemcpy(d_A, h_A, DATA_SZ, cudaMemcpyHostToDevice));
    checkCudaErrors(cudaMemcpy(d_B, h_B, DATA_SZ, cudaMemcpyHostToDevice));
    printf("Data init done.\n");

	scalarProdGPU<<<128,256>>>( d_C, d_A, d_B, VECTOR_N , ELEMENT_N );
	checkCudaErrors(cudaDeviceSynchronize() );
}
