CURD_DIR ?=../../../
INC_CUDA_DIRS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc
CURD_FLAGS_EAGER=-I$(CURD_DIR) $(INC_CUDA_DIRS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_eager.o -v -keep -dr -rdc=true -lineinfo 
CURD_FLAGS_LAZY=-I$(CURD_DIR) $(INC_CUDA_DIRS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_lazy.o -v -keep -dr -rdc=true -lineinfo 

NVCC = nvcc
.PHONY: all clean run cudarace


all:
	$(NVCC) $(CURD_FLAGS_EAGER) -lineinfo -D_FORCE_INLINES -I/opt/nvidia/cuda/samples/common/inc/ -arch=sm_35 --cudart=shared main.cu -o hybridsort_eager
	$(NVCC) $(CURD_FLAGS_LAZY)  -lineinfo -D_FORCE_INLINES -I/opt/nvidia/cuda/samples/common/inc/ -arch=sm_35 --cudart=shared main.cu -o hybridsort_lazy


clean:
	rm -f result.txt hybridsort_eager hybridsort_lazy

run:
	bash ./run

cudarace:
	bash ./cudarace

