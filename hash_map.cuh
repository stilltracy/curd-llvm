#pragma once
#include <cstdint>
#include <cassert>
#include <helper_cuda.h>

namespace util{

__host__ __device__ inline size_t hash( uint64_t i ){
  return i;
}

template<typename K, typename V>
struct Entry{
  K key;
  V value;
  Entry * _next;
  __host__ __device__ Entry( K k, V v ):key(k), value(v), _next(nullptr){
  }
  /* stack overflows
  __device__ ~Entry(){
    while( _next ){
      delete _next;
    }
  }*/
};

template<typename K, typename V, bool freesV =false >
class HashMap{
protected:

  Entry<K,V> ** _buckets;
  // number of elements within each bucket
  size_t * _bucketSize;
  // number of elements
  size_t elementsCount;
  size_t bucketsCount;
  __host__ __device__ inline Entry<K,V> * find( Entry<K,V> * head, K k ){
    auto ptr = head;
    while( ptr ){
      if( ptr -> key == k ){
        return ptr;
      }
      ptr = ptr -> _next;
    }
    return nullptr;
  }
  /* this recursive function may cause stack overflow 
  __host__ __device__ inline Entry<K,V> * find( Entry<K,V> * head, K k ){
    if( !head ){
      return nullptr;
    }else if( head -> key == k ){
      return head;
    }else{
      return find( head -> _next, k );
    }
  }*/
public:
  __host__ HashMap(): _buckets(nullptr), elementsCount(0), bucketsCount(0){
  }
  __host__ __device__ HashMap( size_t nBuckets ):
    _buckets(nullptr), elementsCount(0), bucketsCount(nBuckets){
    _buckets = new Entry<K,V> *[ nBuckets ];
    _bucketSize = new size_t[ nBuckets ]; 
    for( size_t i = 0; i < nBuckets ; i ++ ){
      _buckets[i] = nullptr;
      _bucketSize[i] = 0;
    }
  }
  __device__ void clear(){
    for( auto i = 0; i < bucketsCount; i++ ){
      Entry<K,V> * next = nullptr;
      for( auto ptr = _buckets[i]; ptr ; ptr = next ){
        next = ptr -> _next;
        if( freesV ){ // the map is responsible for freeing the values 
          delete ptr -> value;
        }
        delete ptr;     
      }
    }    
  }
  // _hm is a device HashMap object allcoated from the host 
  static void destroyDeviceHashMap( HashMap * _hm ){
    HashMap hhm;
    checkCudaErrors( cudaMemcpy( &hhm, _hm, sizeof( decltype(hhm) ), 
      cudaMemcpyDeviceToHost ) );
    checkCudaErrors( cudaFree( hhm._buckets) );
    checkCudaErrors( cudaFree( hhm._bucketSize ) );  
    checkCudaErrors( cudaFree( _hm ) );
  }
  // make a HashMap object on device from the host side
  static HashMap * makeDeviceHashMap( size_t nBuckets){
    HashMap * _devMap = nullptr;
    Entry<K,V> ** _entries  = nullptr;
    size_t * _bSize = nullptr;
    // TODO: is initializing in a kernel better than this ? 
    // allocate device memory for the buckets 
    checkCudaErrors( cudaMalloc( &_entries, sizeof( Entry<K,V> * ) * nBuckets ) );
    checkCudaErrors( cudaMalloc( &_bSize, sizeof( size_t ) * nBuckets ) );
    // allocate device memory for HashMap object 
    checkCudaErrors( cudaMalloc( &_devMap, sizeof( HashMap ) ) );
    // initialize the object
    checkCudaErrors( cudaMemset( _devMap, 0, sizeof( decltype(*_devMap) )));
    checkCudaErrors( cudaMemset( _entries, 0, sizeof( Entry<K,V> * ) * nBuckets ) );
    checkCudaErrors( cudaMemset( _bSize, 0, sizeof( decltype( *_bSize) ) * nBuckets ) );
    checkCudaErrors( cudaMemcpy( &(_devMap -> _buckets), &_entries, sizeof( 
      decltype( _devMap -> _buckets) ), cudaMemcpyHostToDevice ) );

    checkCudaErrors( cudaMemcpy( &(_devMap -> _bucketSize), &_bSize, 
      sizeof( decltype( _devMap -> _bucketSize ) ), cudaMemcpyHostToDevice ) );
    checkCudaErrors( cudaMemcpy( &(_devMap -> bucketsCount), &nBuckets, 
      sizeof( decltype( nBuckets ) ), cudaMemcpyHostToDevice ) ); 
    return _devMap;
  }

  __host__ __device__ size_t size( ) const{
    return elementsCount;
  }
   __host__ __device__ /*virtual*/ bool put( K k, V v ){
    size_t hc = hash( k );
    Entry<K,V> * _bucket = _buckets[ hc % bucketsCount ];
    V * _value = get( k );
    if( !_value ){ // allocate a new entry
      Entry<K,V> * _newEntry = new Entry<K,V>( k, v );
      _newEntry -> _next = _bucket;
      _buckets[ hc % bucketsCount]  = _newEntry;
      elementsCount++;
      _bucketSize[ hc % bucketsCount ]++;
    }else{ // modify the existing entry
      *_value = v;
    }
    return true;
  }
  __host__ __device__ /*virtual*/ V * get( K k ){
    size_t hc = hash( k);
    Entry<K,V> * _entry = find( _buckets[ hc % bucketsCount], k );
    V * _value = _entry ? &_entry -> value : nullptr;
    return _value;
  }
};

template<typename K, typename V, bool freesV >
__global__ void clearMap( HashMap<K, V, freesV> * _m ){
  _m -> clear();
}

// this class allows concurrent accesses of a hash map
// NB: 
// 1) if two parties try to update the same entry, only 
// one will succeed, the other attempt will just fail and won't retry
// 2) once an entry <k,v> is allocated, it becomes immutable   
template< typename K, typename V, bool freesV>
class ConcurrentHashMap : public HashMap<K, V, freesV>{
  typedef unsigned long long UInt64;
public:
  // if we declare these functions as virtual, the code would 
  // fail when we pass a HashMap object created on the host
  // as an argument to a kernel.  This is because that the virtual 
  // function table for a host object doesn't make sense to the device
  // returns true iff. a change to the map was made by this call
  __device__ /*virtual*/ bool put( K k, V v ){
    size_t hc = hash( k );
    auto _bucketHead = this -> _buckets + (hc % this -> bucketsCount);
    retry: 
    V * _value = get( k );
    __threadfence();
    //auto _bucket =  *_bucketHead;
    auto _bucket = readHead( hc % this -> bucketsCount );
    if( !_value ){ // allocate a new entry
      Entry<K,V> * _newEntry = new Entry<K,V>( k, v );
      _newEntry -> _next = _bucket;
      __threadfence();
      auto old = atomicCAS( reinterpret_cast<UInt64*>(_bucketHead),
        reinterpret_cast<UInt64>( _bucket), reinterpret_cast<UInt64>(_newEntry));
      if( old != reinterpret_cast<UInt64>(_bucket)){
        // the CAS may fail due to concurrent update of the same bucket head
        
       
        _newEntry -> _next = nullptr;
        delete _newEntry;
        CURD_ASSERT( reinterpret_cast<V>(old) );
        if( !get(k) ){ // failed due to updates of different entries
          goto retry;
        }
        CURD_ASSERT( get( k ) );
        return false;
      }
      return true;
    }
    CURD_ASSERT( _value ); 
    CURD_ASSERT( get( k ) );
    return false;
    // if a value already exists, return     
  }
  __device__ inline Entry<K,V> * readHead( int bucket ){
    auto val = atomicAdd( reinterpret_cast<UInt64 *>( this -> _buckets + bucket), 0 );
    return reinterpret_cast<Entry<K,V> *>( val );
  } 
  __device__ /*virtual*/ V * get( K k ){
    size_t hc = hash( k);
    Entry<K,V> * _entry = find( readHead( hc % this -> bucketsCount), k );
    V * _value = _entry ? &_entry -> value : nullptr;
    return _value;
  }
};

template< typename K, typename derefV, bool freesV, bool allocOnMiss, 
  typename allocator>
inline __device__ derefV * getHashMapValue( 
  ConcurrentHashMap<K, derefV *, freesV> * _map, K key ){
  auto __cs = _map -> get( key );
  if( allocOnMiss ){
    if( !__cs ){ // try initialize
      auto _cs = allocator()();
      bool success = _map -> put( key, _cs );
      if( !success ){ // the allocated object was not used : free it
        delete _cs;
        // read the map entry again
        __cs = _map -> get( key );
        CURD_ASSERT( __cs );
      }else{
        return _cs;
      }
    }
  }
  return __cs ? *__cs : nullptr;
}

};
