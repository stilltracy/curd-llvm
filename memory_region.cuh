#pragma once
#include "debug_utils.cuh"
#include "simple_set.cuh"
#include "source_location.cuh"
#include "build_switches.cuh"
#include <iostream>
#include "race.cuh"
#include "race_buffer.cuh"
#include "utils.cuh"

namespace curd{
enum class RegionsCmpResult{
  Right, 
  Left,
  Overlapping
};

template<typename AddrType, typename SizeType>
class MemoryRegion {
 public:
  AddrType addr;
  SizeType size;
  typedef SizeType size_type;
#ifdef WITH_SOURCE_INFO
  /* source info*/
  SourceLocation srcLoc;
  __host__ __device__ MemoryRegion(): addr(0), size(0), srcLoc() {}
  __device__ MemoryRegion(AddrType a, SizeType s, const char * f,
                          uint32_t ln  ): addr(a), size(s), srcLoc(f, ln) {}
  __device__ MemoryRegion(AddrType a, SizeType s, const SourceLocation & sl ):
    addr(a), size(s), srcLoc(sl ) {}
#else
  __host__ __device__ MemoryRegion(): addr(0), size(0) {}
  __device__ MemoryRegion(AddrType a, SizeType s ): addr(a), size(s) {}
#endif
  __host__ __device__ inline AddrType end() const{
    return this -> addr + this -> size ;
  }
  __device__ bool valid() const {
    // we allow addr to be 0, as shared memory can have 0 address
    return /*this -> addr != 0 &&*/ this -> size != 0;
  }
  __host__ __device__ bool operator==(const MemoryRegion<AddrType, SizeType> & mr) const {
    return (addr == mr.addr) && (size == mr.size);
  }
  __device__ inline bool weaklyMergableWith(const MemoryRegion<AddrType, SizeType> * _mr) const {
    if( !valid() || !_mr -> valid() ){
      return true;
    }
    AddrType end = addr + size;
    AddrType mrEnd = _mr->addr + _mr->size;
    return !( end < _mr-> addr || mrEnd < addr);
  }
  __device__ inline bool mergableWith(const MemoryRegion<AddrType, SizeType> * _mr) const {
    AddrType end = addr + size;
    AddrType mrEnd = _mr->addr + _mr->size;
    return !( end < _mr-> addr || mrEnd < addr);
  }
  __device__ inline bool overlapsWith(const MemoryRegion<AddrType, SizeType> & mr ) const {
    AddrType end = addr + size;
    AddrType mrEnd = mr.addr + mr.size;
    return !( end <= mr.addr || mrEnd <= addr );
  }
  __device__ inline MemoryRegion intersect( 
    const MemoryRegion & r) const{
    auto e = min( addr + size, r.addr + r.size);
    auto a = max( addr, r.addr );
    assert( e > a );
    return MemoryRegion(a, static_cast<SizeType>(e -a)
      #ifdef WITH_SOURCE_INFO
      ,srcLoc
      #endif
     );
    
  }

  __device__ inline RegionsCmpResult compare(
    const MemoryRegion & r) const{
    if (addr >= r.addr + r.size) {
      return RegionsCmpResult::Right;
    } else if (addr + size <= r.addr) {
      return RegionsCmpResult::Left;
    } else {
      return RegionsCmpResult::Overlapping;
    }
  }

  // requires: mr must be weakly mergable with this
  __device__ inline MemoryRegion<AddrType, SizeType> operator+( const MemoryRegion<AddrType, SizeType> & mr ) const {
    if( !mr.valid() ) {
      return *this;
    }
    if( !valid() ) {
      return mr;
    }
    if( !mr.mergableWith( this ) ){
      mr.print("mr:","\n");
      this -> print("this:","\n");
    }
    CURD_ASSERT( mr.mergableWith( this ) );
    auto r = *this;
    r.mergeWith( mr );
    return r;

  }
  __device__ inline void clear(){
    addr = 0;
    size = 0;
  }
  /*NB: mr MUST be mergableWith the current obj*/
  __device__ inline void mergeWith(const MemoryRegion<AddrType, SizeType> & mr) {
    if( !valid() ){
      *this = mr;
      return; 
    }
    if( !mr.valid() ){
      return;
    }
    //if(mergableWith(&mr))
    {
      auto oldMe = *this;
      AddrType end = addr + size;
      AddrType mrEnd = mr.addr + mr.size;
      AddrType newAddr = addr < mr.addr ? addr : mr.addr;
      AddrType newEnd  = end  > mrEnd   ? end  : mrEnd;
      if(newEnd <= newAddr) {
        printf("[CURD_ASSERT fail ] block %d, thread %d: addr %ld, end %ld; mrAddr %ld, mrEnd %ld\n",
               linearizedBlockId(), linearizedThreadId(), (uint64_t)addr, (uint64_t)end, (uint64_t)mr.addr, (uint64_t)mrEnd);
      }
      CURD_ASSERT(newEnd > newAddr);
      this -> addr = newAddr;
      this -> size = newEnd - newAddr;
      if( !valid() ){
        mr.print("mr:","\n");
        oldMe.print("oldMe:","\n");
        this->print("this:","\n" );
        CURD_ASSERT(false );
      }
      //return true;
    }
    //return false;
  }
  __device__ inline void print(const char * prefix, const char * suffix) const {
#ifdef WITH_SOURCE_INFO
    printf("[b%d:t%d]%s<%ld, %d> @(%s:%d) %s", linearizedBlockId(),
           linearizedThreadId(), prefix, (uint64_t)addr, (int)size,
           srcLoc.filename, srcLoc.lineNo, suffix);
#else
    printf("%s<%ld, %d> %s", prefix, (uint64_t)addr, (int)size, suffix);
#endif
  }
  __device__ inline void print() {
    print("","");
  }

  template<typename A, typename S >
  friend std::ostream & operator<<( std::ostream & os, const MemoryRegion<A,S> mr );
  __host__ __device__ bool operator<( const MemoryRegion & mr ) const {
    return addr < mr. addr ;
  }
  __host__ __device__ bool operator>( const MemoryRegion & mr ) const {
    return addr > mr. addr ;
  }
};

//template<typename AddrType, typename SizeType>
template<typename ElemType >
struct Greater {
  __device__ bool operator()(const ElemType & lhs,
                             const ElemType & rhs ) {
    return !( lhs < rhs );
  }
};

template< typename AddrType, typename SizeType >
std::ostream & operator<<( std::ostream & os,
                           const MemoryRegion<AddrType, SizeType> mr ) {
  os << "<" << mr.addr <<" , " << mr.size << ">";
  return os;
}

typedef uint16_t SharedMemorySizeType;
typedef uint32_t GlobalMemorySizeType;
typedef MemoryRegion<SharedMemoryAddr, SharedMemorySizeType> SharedMemoryRegion;
typedef MemoryRegion<GlobalMemoryAddr, GlobalMemorySizeType> GlobalMemoryRegion;



__device__ inline bool isLeftBreak( GlobalMemoryRegion * column,
                                    GlobalMemorySizeType curIndex, GlobalMemorySizeType * sizes,
                                    int nthreads, int localTid, bool needsToWork) {
  CURD_ASSERT( localTid >= 0);
  int leftNeighbor = localTid - 1;
  //do not count idle threads
  return needsToWork && (
           localTid == 0 || // leftmost
           curIndex >= sizes[ leftNeighbor ]  || // left neighbor is dead
           !column[localTid].mergableWith( column + leftNeighbor) ); // cannot merge with left neighbor
}

//pre-condition: localTid is the leftBreak of the sub-region
//returns the number of merges
//TODO: can we reduce this to a single merge?
__device__ inline int reduceSubRegion(GlobalMemoryRegion * regions, const int * breaks, int localTid, int nthreads ) {
  int breakId = breaks[localTid];
  int count = 0;
  for(int i = localTid + 1; i < nthreads ; i++) {
    if(breaks[i] != breakId) {
      break;
    }
    regions[localTid].mergeWith( regions[i] );
    count ++ ;
  }
  return count;
}

template<typename R>
struct associative_merge {
  typedef R operand_type;
  __device__ operand_type operator()(
    const operand_type & lhs, const operand_type & rhs  ) {
    // invalid regions has zero fields, should just be ignored
    if( !lhs.valid() ) {
      return rhs;
    }
    if( !rhs.valid() ) {
      return lhs;
    }
    auto newAddr = min(lhs.addr, rhs.addr);
    auto newEnd = max(lhs.addr + lhs.size, rhs.addr + rhs.size);
    CURD_ASSERT( newEnd > newAddr );
    return operand_type(newAddr,  static_cast<decltype(lhs.size)>(newEnd - newAddr)
#ifdef WITH_SOURCE_INFO
                        ,lhs.srcLoc
#endif
                       );

  }

};

template< typename T> 
struct mergable{
  __host__ __device__ bool operator()(const T & lhs, const T & rhs){
    return lhs.mergableWith( &rhs );
  }
};

template< typename T>
struct overlapping{
  __host__ __device__ bool operator()(const T & lhs, const T & rhs){
    return !( lhs.end() <= rhs.addr  || // left
              lhs.addr >= rhs.end()  ); // right  
  }
};

}
