CURD_DIR ?=../../../
INC_CUDA_DIRS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc
CURD_FLAGS_LAZY=-I$(CURD_DIR) $(INC_CUDA_DIRS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_lazy.o -v -keep -rdc=true -dr -lineinfo -maxrregcount=128
CURD_FLAGS_EAGER=-I$(CURD_DIR) $(INC_CUDA_DIRS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_eager.o -v -keep -rdc=true -dr -lineinfo -maxrregcount=128
.PHONY: all clean run cudarace
NVCC = nvcc

all:
	$(NVCC) $(CURD_FLAGS_LAZY) -O2 -D_FORCE_INLINES -arch=sm_35 --cudart=shared main.cu -o dwt2d_lazy
	$(NVCC) $(CURD_FLAGS_EAGER) -O2 -D_FORCE_INLINES -arch=sm_35 --cudart=shared main.cu -o dwt2d_eager

clean:
	rm -f result.txt dwt2d_eager dwt2d_lazy

run:
	bash ./run

cudarace:
	bash ./cudarace

