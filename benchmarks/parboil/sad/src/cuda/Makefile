SM ?= 52
CXX=nvcc
CXX_FLAGS=-std=c++11 -ccbin g++-4.9 -arch=sm_$(SM)

ifndef CHAI_CUDA_LIB
    $(error CHAI_CUDA_LIB not defined. This environment variable must be defined to point to the location of the CUDA library)
endif
LIB=-L/usr/lib/ -L$(CHAI_CUDA_LIB) -lm -L/home/acg/new-curd/parboil/parboilsb/common/lib -lparboil

ifndef CHAI_CUDA_INC
    $(error CHAI_CUDA_INC not defined. This environment variable must be defined to point to the location of the CUDA header files)
endif
INC=-I$(CHAI_CUDA_INC) -I../../../include

#DEP=kernel.cpp kernel.h main.cpp kernel_cuda.cu support/common.h support/cuda-setup.h support/timer.h support/verify.h
SRC=image.c file.c main.cu sad4.cu largerBlocks.cu
EXE=sad

all:
	$(CXX) $(CXX_FLAGS) $(SRC) $(LIB) $(INC) -o $(EXE)

clean:
	rm -f $(EXE)

