SM?=52
.PHONY: all clean run cudarace


all: release debug

release:
	nvcc -lineinfo -D_FORCE_INLINES -arch=sm_$(SM) --cudart=shared main.cu -o dwt2d -I../../../ ../../../curd_lib_lazy.o 
	cuobjdump -ptx dwt2d > dwt2d.ptx

debug:
	nvcc -lineinfo -D_FORCE_INLINES -arch=sm_$(SM) --cudart=shared main.cu -o dwt2d_debug -I../../../ ../../../curd_lib_lazy.o -g -G

clean:
	rm -f result.txt dwt2d

run:
	bash ./run

cudarace:
	bash ./cudarace

