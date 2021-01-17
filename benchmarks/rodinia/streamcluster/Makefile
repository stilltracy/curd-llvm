SM?=52
.PHONY: all clean run cudarace

all:
	nvcc -O2 -lineinfo -D_FORCE_INLINES -arch=sm_$(SM) --cudart=shared streamcluster_cuda_cpu.cu -o streamcluster -I../../../ ../../../curd_lib_lazy.o

clean:
	rm -f result.txt streamcluster

run:
	bash ./run

cudarace:
	bash ./cudarace

