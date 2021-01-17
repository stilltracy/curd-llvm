#add_library(LLVMCoolInstrument MODULE Cool.cpp)
add_llvm_loadable_module( LLVMCoolInstrument
  Cool.cpp
  )
