SM?=52
.PHONY: all clean run cudarace

all:
	nvcc -O2 -lineinfo -D_FORCE_INLINES -arch=sm_$(SM) --cudart=shared nn.cu -o nn -I../../../ ../../../curd_lib_lazy.o

clean:
	rm -f result.txt nn

run:
	bash ./run

cudarace:
	bash ./cudarace

