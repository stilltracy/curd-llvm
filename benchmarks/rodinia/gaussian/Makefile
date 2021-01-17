SM?=52

.PHONY: all clean run cudarace

all:
	nvcc -O2 -lineinfo -D_FORCE_INLINES -arch=sm_$(SM) --cudart=shared gaussian.cu -o gaussian -I../../../ ../../../curd_lib_lazy.o
	cuobjdump -ptx gaussian > gaussian.ptx

clean:
	rm -f result.txt gaussian

run:
	bash ./run

cudarace:
	bash ./cudarace
