SM?=52
.PHONY: all clean run cudarace


all:
	nvcc -lineinfo -D_FORCE_INLINES -I/usr/local/cuda/samples/common/inc/ -arch=sm_$(SM) --cudart=shared main.cu -o hybridsort -I../../../ ../../../curd_lib_lazy.o

clean:
	rm -f result.txt hybridsort

run:
	bash ./run

cudarace:
	bash ./cudarace

