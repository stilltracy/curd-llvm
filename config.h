#pragma once
#include <cstddef>
#include <cstdlib>
#include <iostream>
#include <cassert>

namespace curd{
struct Config{

 size_t blocksTrackedGM; 
 size_t blocksTrackedSM;
 size_t initialTRSSizeSM;
 size_t initialTWSSizeSM;
 size_t initialTRSSizeGM;
 size_t initialTWSSizeGM;
 size_t initialBRSSize;
 size_t initialBWSSize;
 size_t tsInsertSearchRange;
 size_t bsMergeSearchRange;

inline int toInt( const char * ptr ){
  return ptr ? atoi( ptr ) : 0 ;
}

inline size_t toUInt( const char * ptr ){
  int i = toInt( ptr );
  assert( i >= 0 );
  return i;
} 

/* return whether an environment variable was loaded */
template<size_t invalidVal = 0 >
inline bool loadVariable( size_t & v, const char * name, size_t defaultV ){
  using namespace std;
  char * strVal = getenv( name );
  auto val = toUInt( strVal );
  bool loaded = val != invalidVal ;
  v =  loaded ?  val  : defaultV;
  #ifdef VERBOSE_OUTPUT
  cout << curd_msg( name ) << " = " << v << endl;
  #endif
  return loaded;
}

inline void load( size_t actualBlocksNum ){
  loadVariable( blocksTrackedGM, "CURD_BLOCKS_TRACKED_GM", 
    DEFAULT_BLOCKS_TO_TRACK_GM );  
  loadVariable( blocksTrackedSM, "CURD_BLOCKS_TRACKED_SM",
    DEFAULT_BLOCKS_TO_TRACK_SM );
  blocksTrackedGM = blocksTrackedGM <= actualBlocksNum ? 
 	blocksTrackedGM : actualBlocksNum;
  blocksTrackedSM = blocksTrackedSM <= actualBlocksNum ?
	blocksTrackedSM : actualBlocksNum;

  loadVariable( initialTRSSizeGM, "CURD_INITIAL_TRSSIZE_GM",
    DEFAULT_INITIAL_TRSSIZE_GM );
  loadVariable( initialTWSSizeGM, "CURD_INITIAL_TWSSIZE_GM",
    DEFAULT_INITIAL_TWSSIZE_GM );
  loadVariable( initialTRSSizeSM, "CURD_INITIAL_TRSSIZE_SM",
    DEFAULT_INITIAL_TRSSIZE_SM );
  loadVariable( initialTWSSizeSM, "CURD_INITIAL_TWSSIZE_SM",
    DEFAULT_INITIAL_TWSSIZE_SM );
  loadVariable( initialBRSSize, "CURD_INITIAL_BRSSIZE",
    DEFAULT_INITIAL_BRSSIZE );
  loadVariable( initialBWSSize, "CURD_INITIAL_BWSSIZE",
    DEFAULT_INITIAL_BWSSIZE );
  loadVariable( tsInsertSearchRange, "CURD_TS_INSERT_SEARCH_RANGE",
    DEFAULT_TS_INSERT_SEARCH_RANGE );
  loadVariable( bsMergeSearchRange, "CURD_BS_MERGE_SEARCH_RANGE",
    DEFAULT_BS_MERGE_SEARCH_RANGE );
}

};

extern __constant__ Config configParams;
}
