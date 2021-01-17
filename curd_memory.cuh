#pragma once
#include "simple_set.cuh"
#include "build_switches.cuh"
#include "source_location.cuh"
#include "race_buffer.cuh"

#define DEFINE_MAPPED_MEMORY_HANDLES(qualifier, type, name ) type * _host__##name = nullptr; qualifier type name;

#define INIT_MAPPED_COALESCED_SETS(type, name, threads, blocks, capacityPerThread) do{\
   _host__##name = new type(threads, blocks, capacityPerThread); \
   checkCudaErrors( cudaMemcpyToSymbol(name, \
    _host__##name, sizeof(type)) );\
  }while(0)

#define INIT_MAPPED_GRANDCENTRAL_SETS(type, name, blocks, capacityPerBlock) do{\
   _host__##name = new type(blocks, capacityPerBlock); \
   checkCudaErrors( cudaMemcpyToSymbol(name, \
    _host__##name, sizeof(type)) );\
  }while(0)

#define INIT_DIRECTORY(type, name, rows, columns) do{\
   _host__##name = new type(rows, columns); \
   checkCudaErrors( cudaMemcpyToSymbol(name, \
    _host__##name, sizeof(type)) );\
  }while(0)



#define FREE_MAPPED_MEMORY( name ) do{\
  _host__##name -> free(); \
  delete _host__##name;\
  _host__##name = nullptr;\
  }while(0)

#define FREE_DIRECTORY( name ) do{\
  _host__##name -> cudaFreeUnderlyingArray();\
  delete _host__##name;\
  _host__##name = nullptr;\
  }while(0)


#define DEFINE_SCRATCH( type, name ) Simple2DArray<type> * _host__scratch_##name = nullptr; __constant__ Simple2DArray<type> scratch_##name;

#define INIT_SCRATCH( type, name, blocksNum, threadsNumPerBlock) do{\
   _host__scratch_##name= new Simple2DArray<type> (blocksNum, threadsNumPerBlock); \
  checkCudaErrors( cudaMemcpyToSymbol( scratch_##name,  \
    _host__scratch_##name, sizeof( Simple2DArray<type> ))); \
}while(0)

#define FREE_SCRATCH( name ) do {\
  _host__scratch_##name -> cudaFreeUnderlyingArray(); \
  delete _host__scratch_##name; \
  _host__scratch_##name = nullptr; \
}while(0)








