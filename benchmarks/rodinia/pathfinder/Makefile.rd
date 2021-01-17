CURD_DIR ?=../../../
INC_CUDA_DIRS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc
CURD_FLAGS_LAZY=-I$(CURD_DIR) $(INC_CUDA_DIRS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_lazy.o -v -keep -dr -rdc=true -lineinfo
CURD_FLAGS_EAGER=-I$(CURD_DIR) $(INC_CUDA_DIRS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_eager.o -v -keep -dr -rdc=true -lineinfo

.PHONY: all clean run cudarace


all:
	nvcc $(CURD_FLAGS_EAGER) -O2 -lineinfo -D_FORCE_INLINES -arch=sm_35 --cudart=shared pathfinder.cu -o pathfinder_eager
	nvcc $(CURD_FLAGS_LAZY) -O2 -lineinfo -D_FORCE_INLINES -arch=sm_35 --cudart=shared pathfinder.cu -o pathfinder_lazy

clean:
	rm -f result.txt pathfinder_lazy pathfinder_eager

run:
	bash ./run

cudarace:
	bash ./cudarace

