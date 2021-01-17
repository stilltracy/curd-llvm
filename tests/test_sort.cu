#include "sort.cuh"
#include <cstdio>

template<typename T>
__host__ __device__ void print(T * array, size_t n, const char * prefix, const char * suffix  ){
  printf("%s[", prefix);
  for( int i = 0; i < n ; i ++ ){
    printf("%d ", array[i]);
  }
  printf("]%s", suffix);
}

template<typename T>
struct eq{
  __host__ __device__ bool operator()(const T & lhs, const T & rhs){
    return lhs == rhs ;
  }
};
#define size 12
__global__ void test(){
  int stride = 1;
  int a[size] = {3,2,6,1,7,9,12,4,5,8,11,10};
  
  for( int i = 0; i < stride; i++ ){
    //curd::bubble_sort(a + i, 12, 4 );
    //curd::quick_sort_iterative(a + i, stride, 0, size/stride -1 );
    //curd::merge_sort_iterative(a + i, size/stride , stride ); 
    curd::radix_sort<int,int>(a + i, size, stride );
    print(a, 12, "after sort:", "\n"); 
  }
  
  for( int i = -1; i < 14; i ++ ){
    for( int s = 1; s <=4; s ++ ){
      int * _r = curd::binary_search<int, eq<int>>(&a[0], 12/s, s , i ); 
      printf("%d (stride %d): %x\n", i, s, _r);
    }
  }
}

int main(){
  test<<<1,1>>>();
  cudaDeviceSynchronize();
}
