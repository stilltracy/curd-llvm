#pragma once
#include "atomic_array.cuh"
#include "race.cuh"

using util::AtomicArray;

namespace curd{
class RaceBuffer : public AtomicArray< Race >{
public:
//  using AtomicArray::AtomicArray;
  __device__ RaceBuffer(){}
  RaceBuffer(size_t c, size_t s ):
    AtomicArray<Race>( c, s ){
  }

  RaceBuffer(Race * array, size_t  c, size_t s) {
    this -> underlyingArray = array; 
    this -> mCapacity = c;
    this -> mSize = s; 
  }
   // move the content of a device array to a new host array
  RaceBuffer * moveToHost() {
    using namespace std;
    // may lose some races due to concurrent updates
    if( this -> mSize > this -> mCapacity ) {
      this -> mSize = this -> mCapacity;
    }
    #ifdef VERBOSE_OUTPUT
    cout << curd_msg("Moving ")<< this -> mSize << " out of " <<
         this -> mCapacity << " elements..." << endl;
    #endif
    // allocate a new array of elements on the host
    Race * elems = new Race[ this -> mSize ];
    checkCudaErrors( cudaMemcpy( elems, this -> underlyingArray,
                                 sizeof( Race) * this -> mSize, cudaMemcpyDeviceToHost ) );
    return new RaceBuffer(elems, this -> mCapacity, this -> mSize);
   /* // free the original device array
    this -> cudaFreeUnderlyingArray();
    this -> underlyingArray = elems;
    // now underlyingArray points to a host array*/
  }
  // requires underlyingArray to a host array
  void printHistogram() {
    using namespace std;
    #ifdef PRINT_SUMMARY
    map< Race , size_t > histogram;
    for( decltype( this -> mSize) i = 0; i < this -> mSize; i++) {
      const Race & elem = this -> underlyingArray[i];
      histogram[ elem ]++;
    }
    cout << " Distinct races: "<< histogram.size() << endl;
    for( auto & kv : histogram ) {
      cout << kv.first << " : " << kv.second << endl;
    }
    #endif
  }
  void free() {
    this -> cudaFreeUnderlyingArray();
  }
  //TODO: encode the address space of the underlying array
  void freeH() {
    delete[] this -> underlyingArray;
  } 
};

extern __device__ RaceBuffer racesDetected;


#ifdef WITH_SOURCE_INFO

template<typename RegionType>
static __device__ inline void reportRace(int count, RaceKind kind,
    RaceType type, int localId, int remoteId, const SourceLocation & srcLoc1, const SourceLocation & srcLoc2, 
    const RegionType & region  ) {
  if( count > 0 ) {
    auto fnSize1 = curd_strlen( srcLoc1.filename); 
    auto fnSize2 = srcLoc1.filename == srcLoc2.filename ? fnSize1: 
      curd_strlen( srcLoc2.filename );  
    Race r(kind, type, localId, remoteId, srcLoc1, fnSize1, srcLoc2, fnSize2, region.addr, region.size);
    racesDetected.put( r );
  }
}
#endif

template<typename RegionType>
static __device__ inline void reportRace(int count, RaceKind kind,
    RaceType type, int localId, int remoteId,
    const RegionType & region  ) {
  if( count ) {
    SourceLocation empty;
    Race r(kind, type, localId, remoteId, empty, empty, region.addr, region.size);
    racesDetected.put( r );
  }
}

}
