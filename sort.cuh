#pragma once
#include <cstdio>
#include <cassert>
#include "utils.cuh"

namespace util{


template<typename T> 
__host__ __device__ void check_order(T * array, size_t n, int stride,
  int & nAscending) {
  for (int i = 1; i < n; i += stride) {
    nAscending += array[i] > array[i-1]; 
  }
}

template<typename T>
__host__ __device__ void bubble_sort(T * array, size_t n, int stride ){
  for( int i = 0; i < n; i +=stride ){
    for( int j = i + stride; j < n ; j +=stride ){
      if( array[i] > array[j] ){
        swap( array+i, array+j ); 
      }
    }
  }
}

// sort the closed interval [left*stride, right*stride] of arr; 
template<typename T>
__host__ __device__ void quick_sort(T arr[], int stride, 
  int left, int right) {
  int i = left, j = right;
  T pivot = arr[(left + right) / 2 * stride];
 
  /* partition */
  while (i <= j) {
    while (arr[i*stride] < pivot)
      i++;
    while (arr[j*stride] > pivot)
      j--;
    if (i <= j) {
      swap( arr + i * stride, arr + j * stride );
      i++;
      j--;
    }
  };

  /* recursion */
  if (left < j)
    quick_sort(arr, stride, left, j);
  if (i < right)
    quick_sort(arr, stride, i, right);
}

 
template<typename T>
__host__ __device__ int partition (T arr[], int stride, int l, int h){
    T x = arr[h * stride];
    int i = (l - 1);
 
    for (int j = l; j <= h- 1; j++){
        if (arr[j * stride] < x){
            i++;
            swap (&arr[i * stride], &arr[j * stride]);
        }
    }
    swap (&arr[(i + 1)* stride], &arr[h * stride]);
    return (i + 1);
}
 
/* A[] --> Array to be sorted, 
   l  --> Starting index, 
   h  --> Ending index */
template<typename T>
__device__ __host__ void quick_sort_iterative (T arr[], int stride, int l, int h){
    // Create an auxiliary stack
    int * stack = new int[h - l + 1 ];
    // initialize top of stack
    int top = -1;
    // push initial values of l and h to stack
    stack[ ++top ] = l;
    stack[ ++top ] = h;
    // Keep popping from stack while is not empty
    while ( top >= 0 ){
        // Pop h and l
        h = stack[ top-- ];
        l = stack[ top-- ];
        // Set pivot element at its correct position
        // in sorted array
        int p = partition( arr, stride, l, h );
 
        // If there are elements on left side of pivot,
        // then push left side to stack
        if ( p-1 > l )
        {
            stack[ ++top ] = l;
            stack[ ++top ] = p - 1;
        }
 
        // If there are elements on right side of pivot,
        // then push right side to stack
        if ( p+1 < h )
        {
            stack[ ++top ] = p + 1;
            stack[ ++top ] = h;
        }
    }
    delete[] stack;
}


/* Iterative mergesort function to sort arr[0...n-1] */
template<typename T>
__host__ __device__ void merge_sort_iterative(T arr[], int n, int stride){
   int curr_size;  // For current size of subarrays to be merged
                   // curr_size varies from 1 to n/2
   int left_start; // For picking starting index of left subarray
                   // to be merged
    T * buffer = n > 0 ? new T[n]: nullptr;
   // Merge subarrays in bottom up manner.  First merge subarrays of
   // size 1 to create sorted subarrays of size 2, then merge subarrays
   // of size 2 to create sorted subarrays of size 4, and so on.
   for (curr_size=1; curr_size<=n-1; curr_size = 2*curr_size)
   {
       // Pick starting point of different subarrays of current size
       for (left_start=0; left_start<n-1; left_start += 2*curr_size)
       {
           // Find ending point of left subarray. mid+1 is starting 
           // point of right
           int mid = left_start + curr_size - 1;
 
           int right_end = min(left_start + 2*curr_size - 1, n-1);
 
           // Merge Subarrays arr[left_start...mid] & arr[mid+1...right_end]
           merge(arr, buffer, stride, left_start, mid, right_end);
       }
   }
   if( buffer){
    delete[] buffer;
   }
}
 
/* Function to merge the two haves arr[l..m] and arr[m+1..r] of array arr[] */
template<typename T>
__host__ __device__ void merge(T arr[], T buffer[], int stride, int l, int m, int r){
    int i, j, k;
    int n1 = m - l + 1;
    int n2 =  r - m;
 
    /* create temp arrays */
    T * L = buffer;//n1 > 0 ? new T[n1] : nullptr;
    T * R = buffer + n1;//n2 > 0 ? new T[n2] : nullptr;
 
    /* Copy data to temp arrays L[] and R[] */
    for (i = 0; i < n1; i++)
        L[i] = arr[(l + i)*stride];
    for (j = 0; j < n2; j++)
        R[j] = arr[(m + 1+ j)*stride];
 
    /* Merge the temp arrays back into arr[l..r]*/
    i = 0;
    j = 0;
    k = l;
    while (i < n1 && j < n2){
        if (L[i] < R[j]){
            arr[k*stride] = L[i];
            i++;
        }
        else{
            arr[k*stride] = R[j];
            j++;
        }
        k++;
    }
 
    /* Copy the remaining elements of L[], if there are any */
    while (i < n1){
        arr[k*stride] = L[i];
        i++;
        k++;
    }
 
    /* Copy the remaining elements of R[], if there are any */
    while (j < n2)
    {
        arr[k*stride] = R[j];
        j++;
        k++;
    }
  /*  if( L ){
      delete[] L;
    }
    if( R ){
      delete[] R;
    }*/
}
 
__host__ __device__ inline int key(int i){
  return i;
}

template<typename T, typename K>
__host__ __device__ void radix_sort(T * array, int n, int stride ){
  T * bucket0 = new T[n];
  T * bucket1 = new T[n];
  auto bits = sizeof(K)*8;
   
  for(int b = 0; b < bits; b++){
    int cnt0 = 0, cnt1 = 0;
    K mask = 1 << b; 
    for( int i = 0; i < n ; i++){
      bool isSet = mask & key(array[i]);
      if( isSet ){
        //TODO: avoid 1 copy by storing indices in the buckets
        bucket1[cnt1++]= array[i];
      }else{
        bucket0[cnt0++]= array[i];
      }
    }
    assert( cnt0 + cnt1 == n );
    printf("\nb:%d; bucket 0:", b);
    //re-arrange elements 
    for(int i = 0; i < cnt0; i++){
      array[i] = bucket0[i];
      printf("%d ", bucket0[i]);
    }
    printf("\nbucket 1:");
    for(int i = cnt0; i < n; i++){
      array[i] = bucket1[i - cnt0];
      printf("%d ", bucket1[i - cnt0 ]);
    }
    
  }
  delete[] bucket0;
  delete[] bucket1;
}



template<typename T, typename P>
__host__ __device__ T * binary_search(T * array, int n, 
  int stride, T elem){
  int high = n - 1, low = 0;
  while( high >= low ){
    int mid = low + (high - low )/2;
    if( P()(elem, array[mid * stride]) ){
      return array + mid * stride;
    }else if( elem < array[mid * stride] ){
      high = mid - 1;
    }else{ 
      low  = mid + 1;
    }
    //printf("h=%d,l=%d,m=%d\n", high, low, mid);
  }
  return nullptr;
}

template<typename T, typename P>
__host__ __device__ T * binary_search(T * array, int n, 
  int stride, T elem, /*int &l,*/ int & nextIdx){
  int high = n - 1, low = nextIdx;
  while( high >= low ){
    int mid = low + (high - low )/2;
    if( P()(elem, array[mid * stride]) ){
      nextIdx = mid + 1;
      return array + mid * stride;
    }else if( elem < array[mid * stride] ){
      high = mid - 1;
    }else{ 
      low  = mid + 1;
    }
    //printf("h=%d,l=%d,m=%d\n", high, low, mid);
  }
  // now high < low
  //l = high; 
  nextIdx = low;
  return nullptr;
}

}


