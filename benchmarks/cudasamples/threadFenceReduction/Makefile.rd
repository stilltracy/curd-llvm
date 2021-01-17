CURD_DIR ?=../../../
INC_CUDA_DIRS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc
CURD_FLAGS_LAZY=-I$(CURD_DIR) $(INC_CUDA_DIRS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_lazy.o -Xcicc "-v -keep"
CURD_FLAGS_EAGER=-I$(CURD_DIR) $(INC_CUDA_DIRS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_eager.o -v -keep
.PHONY: all clean run cudarace

all:
	nvcc $(CURD_FLAGS_LAZY)  -rdc=true -dr -lineinfo -O -arch sm_35 -I../../common/inc -cudart=shared threadFenceReduction.cu -o threadFenceReduction_lazy
	nvcc $(CURD_FLAGS_EAGER)  -rdc=true -dr -lineinfo -O -arch sm_35 -I../../common/inc -cudart=shared threadFenceReduction.cu -o threadFenceReduction_eager


clean:
	rm -f threadFenceReduction_eager thread_FenceReduction_lazy

run:
	bash ./run

cudarace:
	bash ./cudarace

