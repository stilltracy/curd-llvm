CURD_DIR ?=../../../
CURD_CFLAGS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc  -v -keep -dr -rdc=true -I$(CURD_DIR) 
CURD_FLAGS_LAZY=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_lazy.o
CURD_FLAGS_EAGER=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_eager.o

.PHONY: all clean run cudarace

all:
	nvcc $(CURD_FLAGS_LAZY) -O2 -lineinfo -D_FORCE_INLINES -arch=sm_35 --cudart=shared needle.cu -o needle_lazy
	nvcc $(CURD_FLAGS_EAGER) -O2 -lineinfo -D_FORCE_INLINES -arch=sm_35 --cudart=shared needle.cu -o needle_eager

clean:
	rm -f result.txt needle_eager needle_lazy

run:
	bash ./run

cudarace:
	bash ./cudarace

