#pragma once
#include <iostream>

namespace curd{

enum class RaceKind {
  Invalid,
  InterBlock,
  IntraBlockGM,
  IntraBlockSM
};

enum class RaceType {
  Invalid,
  RW,
  WW,
  WR
};

__device__ __host__ inline const char * c_str( RaceKind kind) {
  switch( kind) {
  case RaceKind::InterBlock:
    return "inter-block";
  case RaceKind::IntraBlockGM:
    return "intra-block(GMem)";
  case RaceKind::IntraBlockSM:
    return "intra-block(SMem)";
  default:
    assert(false);
  }
  return "";
}

__device__ __host__ inline const char * c_str( RaceType type) {
  switch( type ) {
  case RaceType::RW:
    return "(R,W)";
  case RaceType::WW:
    return "(W,W)";
  case RaceType::WR:
    return "(W,R)";
  default:
    assert(false);
  }
  return "";
}

struct Race {
  RaceKind kind;
  RaceType type;
  int racer1;
  int racer2;
  // TODO: make filename accessible on host
  SourceLocation srcLoc1;
  uint32_t fnameSize1;
  SourceLocation srcLoc2;
  uint32_t fnameSize2;
  uint64_t addrVal;
  uint32_t size;
//public:
  __host__ Race():kind(RaceKind::Invalid), type(RaceType::Invalid),
    racer1(0), racer2(0), srcLoc1(), fnameSize1(0), 
    srcLoc2(), fnameSize2(0), addrVal(0), size(0) {
  }
  __host__ __device__ Race( const Race & r ) {
    *this = r;
  }
  __device__ Race( RaceKind k, RaceType t, int r1, int r2,
   const SourceLocation & sl1, uint32_t fns1,
    const SourceLocation & sl2, uint32_t fns2,
   uint64_t addr, uint32_t s ):
    kind(k), type(t), racer1(r1), racer2(r2), srcLoc1(sl1), fnameSize1(fns1),
     srcLoc2(sl2), fnameSize2(fns2),
    addrVal(addr), size(s) {
  }
  bool operator<( const Race & r ) const {
    return addrVal < r.addrVal /*&& size < r.size && racer1 < r.racer1 &&
      racer2 < r.racer2 && srcLoc1.lineNo < srcLoc2.lineNo*/ ;
  }
  bool operator==( const Race & r ) const {
    return r.kind == kind && r.type == type && 
           // group races by source locations
           /*r.racer1 == racer1 &&
           r.racer2 == racer2 &&*/ 
           r.srcLoc1 == srcLoc1 && r.srcLoc2 == srcLoc2 &&
           r.addrVal == addrVal && r.size == size;
  }
/*  __host__ __device__ Race & operator=( const Race & r ) {
    kind = r.kind;
    type = r.type;
    racer1 = r.racer1;
    racer2 = r.racer2;
    srcLoc1 = r.srcLoc1;
    srcLoc2 = r.srcLoc2;
    addrVal = r.addrVal;
    size    = r.size;
    return *this;
  }*/
  friend std::ostream & operator<<( std::ostream & os, const Race & r );
};

__device__ unsigned long long int lastFnamePtr = 0;
__device__ uint32_t lastFnameSize = 0;

__device__ inline uint32_t curd_strlen( const char * s ){
  uint32_t i = 0;
  // TODO: here is an atomicity violation : we need the reads/updates on 
  // lastFnamePtr & lastFnameSize to be atomic
  __threadfence();
  auto oldLFPtr = lastFnamePtr;
  if( oldLFPtr == reinterpret_cast<decltype(lastFnamePtr)>( s )){
    return lastFnameSize;
  }
  if ( s == nullptr ) {
    return 0;
  }
  //printf("%s\n", s);
  while( s[i] != 0 ){
    i++;
  }
  oldLFPtr = lastFnamePtr;
  if( oldLFPtr != reinterpret_cast<decltype( lastFnamePtr)>(s ) ){
    
    atomicExch( &lastFnameSize, i );
    // if some other update has occured, abort
    atomicCAS( &lastFnamePtr, oldLFPtr, reinterpret_cast<decltype(lastFnamePtr)>(s ));
    // if two threads are trying to update (p1, s1) & (p2, s2) concurrently, 
    // this should be sufficient to avoid mismatched results (p1, s2) or (p2, s1)
    // TODO: how to formally prove that this actually works? 
    __threadfence();
  }
  
  return i; 
}


std::ostream & operator<<( std::ostream & os, const curd::Race & r ) {
  using namespace curd;
  os << c_str( r.kind ) << " " << c_str( r.type ) << " ";
  os << "race by "<< r.racer1 << " and " << r.racer2 << " on ";
  os << "< " << r.addrVal << ", " << r.size << ">, between ";
  os << r.srcLoc1  << " and " << r.srcLoc2;
  return os;
}

}

namespace std {
template<>
struct hash< curd::Race > {
  size_t operator()( curd::Race const & r) const {
    return r.addrVal * (r.racer1 + 1) + r.racer2;
  }
};
}




