#include "race_detection.cu"

#define BUFFER_SIZE 1024
__device__ int buffer[BUFFER_SIZE];



__global__ void testPrefixSumInclusive()
{
  int size = blockDim.x;
  int selfTid = threadIdx.x;
  GlobalMemoryRegion * regions = newArrayForBlock<GlobalMemoryRegion>(selfTid, size) ;
  GlobalMemoryRegion * mergedRegions = newArrayForBlock<GlobalMemoryRegion>(selfTid, size);
  
  GlobalMemorySizeType setSizes[8] = {4, 3, 4, 4, 1, 4, 4, 4 }; 
  GlobalMemorySizeType columnsCount = parallelMax( setSizes, size, 0, selfTid );

  int width = 4;
  regions[ selfTid] = GlobalMemoryRegion(selfTid * width, width); 
  __syncthreads();
  if(selfTid == size -1)
  {
   regions[ selfTid] = GlobalMemoryRegion((selfTid + 1 )* width, width); 
   
  }
  __syncthreads();
  assert(columnsCount == 4);
  printf("columnsCount %ld\n", columnsCount);
  for(GlobalMemorySizeType i = 0; i < columnsCount; i++)
  {
    buffer[selfTid ] = 0;
    __syncthreads();
    printArray("regions", regions, size, selfTid);
    //prefixSumExclusive( buffer, size, size, selfTid);
    int * breaks = buffer;

    bool needsToWork = i < setSizes[selfTid];
    bool isLeft = isLeftBreak(regions, columnsCount, setSizes, 
                                size, selfTid, needsToWork);
    breaks[selfTid] = isLeft;    
    __syncthreads();

    printArray("before scan", buffer, size, selfTid);
    int totalSum = prefixSumExclusive(breaks, size, size, selfTid);
    printArray("after scan", buffer, size, selfTid); 
    //post-condition: breaks saves the exclusive prefix sum of each element in the original array 
    __syncthreads();
    if( isLeft )
    {
      reduceSubRegion( regions, breaks, selfTid, size );
      // post-condition: the merged region is saved in mergedColumn[selfTid]
      int breakId = breaks[selfTid];
      mergedRegions[0 + breakId ] = regions[selfTid];
    }
    __syncthreads();
    
    int maxBreakId = breaks[ size -1 ];
    printf("i %ld, thread %d, maxBreakId %d, totalSum : %d\n", (uint64_t)i, selfTid, maxBreakId, totalSum);
    printArray("mergedRegions", mergedRegions, totalSum, selfTid);
  }
}
int main()
{
  int blocks = 1;
  int threads = 8;
  allocateReadWriteSets(blocks, threads);
  testPrefixSumInclusive<<<blocks, threads>>>();
  freeReadWriteSets(blocks, threads);
  checkCudaErrors( cudaDeviceSynchronize() );
}
