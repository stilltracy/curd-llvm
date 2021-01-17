SM ?= 52
CUDA_DIR=/usr/local/cuda
NVCC=/home/acg/llvm/build/bin/clang
#BUILD_FLAGS_LAZY=-lineinfo -g -std=c++11 -g -Xptxas "-v" -I/usr/local/cuda7/samples/common/inc/ -I. -arch=sm_$(SM) -maxrregcount=32  -dc -G -I/usr/local/cuda7/include/ #for thrust headers
BUILD_FLAGS_LAZY=-lineinfo -g -std=c++11   -I$(CUDA_DIR)/samples/common/inc/ -I. --cuda-gpu-arch=sm_$(SM)  -emit-llvm # -Xcicc "-v -keep" 

BUILD_FLAGS_EAGER= $(BUILD_FLAGS_LAZY) -DEAGER_INTERBLOCK_CHECK

.PHONY: all clean test

all: race_detection_lazy.o #race_detection_eager.o


race_detection_lazy.o:
	$(NVCC) $(BUILD_FLAGS_LAZY) -c race_detection.cu

race_detection_eager.o:
	$(NVCC) $(BUILD_FLAGS_EAGER) -o race_detection_eager.bc -c race_detection.cu

clean:
	rm -f *.o *.gpu *.cubin

test2: test2.cu
	cp $^ $^.bak
	rm -f $^.o $^_eager $^_lazy
	$(NVCC) -lineinfo -g -std=c++11 -arch=sm_35 -I$(P4ROOT)/sw/gpgpu/samples/common/inc -dr -dc $^ -o $^.o
	$(NVCC) -lineinfo -g -std=c++11 -arch=sm_35 -I$(P4ROOT)/sw/gpgpu/samples/common/inc $^ -o $@
	$(NVCC) -lineinfo -g  -std=c++11 -arch=sm_35 -I$(P4ROOT)/sw/gpgpu/samples/common/inc -o $^_eager $^.o race_detection_eager.o 
	$(NVCC) -lineinfo -g -std=c++11 -arch=sm_35 -I$(P4ROOT)/sw/gpgpu/samples/common/inc -o $^_lazy $^.o race_detection_lazy.o 

testPtx: test_ptx.cu
	rm -f $@
	$(NVCC) -lineinfo -g -std=c++11 -arch=sm_35 -I$(P4ROOT)/sw/gpgpu/samples/common/inc -o $^.o -dc $^ 
	$(NVCC) -lineinfo -g  -std=c++11 -arch=sm_35 -I$(P4ROOT)/sw/gpgpu/samples/common/inc -o $@ $^.o race_detection_lazy.o
