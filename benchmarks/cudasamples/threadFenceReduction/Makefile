SM=52
.PHONY: all clean run cudarace
CURD_DIR = ../../../

all:
	nvcc -lineinfo -O -arch sm_$(SM) -I../../common/inc -I$(CURD_DIR)  -cudart=shared threadFenceReduction.cu $(CURD_DIR)/curd_lib_lazy.o -o threadFenceReduction

clean:
	rm -f threadFenceReduction

run:
	bash ./run

cudarace:
	bash ./cudarace

