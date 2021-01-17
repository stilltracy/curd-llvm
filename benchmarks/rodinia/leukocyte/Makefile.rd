CURD_DIR ?=../../../
CURD_CFLAGS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc  -v -keep -dr -rdc=true -I$(CURD_DIR) -lineinfo -arch=sm_35 --cudart=shared 
CURD_FLAGS=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection.o

all: CUDA/leukocyte 

CUDA/leukocyte:
	cd CUDA; make -f Makefile.rd

clean:
	cd CUDA; make clean -f Makefile.rd
	rm -f meschach_lib/meschach.a
