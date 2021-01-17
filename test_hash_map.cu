#include "hash_map.cuh"

using namespace util;

__global__ void testHashMap( ConcurrentHashMap<int, int> * _hm, size_t nBuckets){
  for( auto i = 0; i < 32; i ++ ){
    _hm -> put( i, i * i ); 
  }
  for( auto i = 0; i < 32 ; i++ ){
    auto _v = _hm -> get( i );
    assert( *_v == i * i );
    printf("map[%d] : %d\n", i, *_v );
  }
  
}

int main(){
  size_t nBuckets = 16;
  typedef ConcurrentHashMap<int,int> map_type;
  auto _map = static_cast<map_type*>(map_type::makeDeviceHashMap( nBuckets ));
  testHashMap<<<4, 1 >>>( _map, nBuckets );
  checkCudaErrors( cudaDeviceSynchronize() );
  
}
