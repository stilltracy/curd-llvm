#pragma once
#include "memory_region.cuh"
#include "debug_utils.cuh"
#include "list.cuh"
#include "pair.cuh"


using util::List;
using util::Pair;

namespace curd{

class CapabilitySet;
class BlockSet;

class Capability{
  
  struct BlockCapability{
    unsigned int mode : 1;
    unsigned int bid : 31;
    unsigned int brs_index;
    unsigned int bws_index;
    __device__ BlockCapability(): mode(Mode::BC), bid( 0), 
      brs_index( 0 ), bws_index( 0 ){
    }
    __device__ BlockCapability( int b, int bri, int bwi ): mode(Mode::BC), 
      bid(b), brs_index(bri), bws_index( bwi ){
    }
  };
  struct ThreadCapability{
    unsigned int mode : 1;
   // unsigned int tid : 31;
    unsigned int bid : 31;
    // stores ids of an SFR in trs/tws : the sub-capability-set is described 
    // by the SFR object 
    unsigned int trs_sfrid;
    unsigned int tws_sfrid;
    __device__ ThreadCapability(): mode(Mode::TC), bid ( 0), 
      trs_sfrid( -1 ), tws_sfrid( -1 ){
    }
  };
  union{
    BlockCapability bc;
    ThreadCapability tc;
  };
  friend class CapabilitySet;
  friend class BlockSets;
public:
  enum Mode{
    TC = 0,
    BC = 1,
  };
  __device__ Capability():tc(){
  }
  __device__ Capability( Mode m, int bt, int r_idx, int w_idx ): 
    bc( bt, r_idx, w_idx ){
    bc.mode = m;
  } 
  __device__ bool isFor( Mode m, int bt ){
    return m == bc.mode ? bc.bid == bt : false; 
  }
  __device__ inline bool isBlockCapability(){
    return bc.mode == Mode::BC ;
  }
  
};



class CapabilitySet : public SimpleArray<Capability, int >{
  friend class CapabilitySetSnapshot;
public:
  using SimpleArray::SimpleArray;
  /*
  __device__ CapabilitySet( int capacity ){
    this -> underlyingArray = new Capability[ capacity ];
    this -> mCapacity       = capacity;
    this -> mSize           = 0;
  }*/
  __device__ ~CapabilitySet(){
    if( this -> underlyingArray && this -> mCapacity ){
      delete[] this -> underlyingArray;
    }
  }
  __device__ inline Capability * findCapabilityFor( Capability::Mode mode,  int btId ) const{
    int s = this -> size();
    for( auto i = s - 1; i>= 0; i--){
      if( this -> underlyingArray[i].isFor( mode, btId) ){
        return this -> underlyingArray + i;
      }
    }
    return nullptr;
  }
  __device__ inline size_t add( const Capability & c ){
     // TODO: avoid repetitive work here
    __threadfence();
    auto idx = atomicInc( (unsigned int *)&this -> mSize, this -> mCapacity << 1 );
    __threadfence();
    CURD_ASSERT_lt( idx , this -> mCapacity, "idx", "mCapacity" );
    this -> underlyingArray[ idx ] = c ;
    return idx;
    
  }
  __device__ inline void addAll( const CapabilitySet * _cs ){
    if( _cs ){
      for( auto i = 0; i < _cs -> size(); i++){
        this -> add( *_cs -> get( i ) );
      }
    }
  }
  
  /*
  __device__ inline CapabilitySetSnapshot snapshot( ){
    int s = this -> size();
    CapabilitySetSnapShot csss;
    for( auto i = s - 1; i >= 0 ; i-- ){
      if( this -> underlyingArray[ i ].isBlockCapability() ){// stop at the most recent bc
        csss.bs_index = i;
        break;
      }else{// tcss since the most recent bc
        csss.tcs_indices.push_front( i );
      }
    }
    return csss;
  }*/
};




}
