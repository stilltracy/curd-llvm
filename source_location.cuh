#pragma once
#include <iostream>

namespace curd{

struct SourceLocation {
  const char * filename;
  uint32_t lineNo;
  __device__  __host__ SourceLocation(): filename(nullptr), lineNo(0) {}
  __device__ SourceLocation( const char * f, uint32_t ln): filename(f), lineNo(ln) {}
  bool operator==( const SourceLocation & sl ) const {
    return filename == sl.filename && lineNo == sl.lineNo ;
  }
  __host__ __device__ void operator=( const SourceLocation & sl ) {
    filename = sl.filename;
    lineNo = sl.lineNo;
  }
};

std::ostream & operator<<( std::ostream & os, const SourceLocation & sl ){
  os << "(" ;
  if( sl.filename ){
    os << sl.filename ;
  }else{
    os << "null";
  }
  os << ",line "<< sl.lineNo << ")" << std::endl;
  return os;
}

}
