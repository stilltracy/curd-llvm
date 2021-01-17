CURD_DIR ?=../../../
INC_CUDA_DIRS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc
CURD_FLAGS=-I$(CURD_DIR) $(INC_CUDA_DIRS) -L$(CURD_DIR) $(CURD_DIR)/race_detection.o -v -keep -dr -rdc=true

.PHONY: all clean run cudarace

all:
	nvcc $(CURD_FLAGS) -O -arch sm_35 -I ../../common/inc/ -cudart=shared hashtable.cu ../../common/lib/libcutil_x86_64.a -o hashtable
	nvcc $(CURD_FLAGS) -lineinfo -O -arch sm_35 -I ../../common/inc/ -cudart=shared hashtable.cu ../../common/lib/libcutil_x86_64.a -o hashtable_linfo
	cuobjdump -ptx hashtable > hashtable.ptx

clean:
	rm -f hashtable

run:
	bash ./run

cudarace:
	bash ./cudarace

