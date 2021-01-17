SM=52
.PHONY: all clean run cudarace


all:
	nvcc -lineinfo -D_FORCE_INLINES -arch=sm_$(SM) --cudart=shared srad.cu -o srad -I../../../ ../../../curd_lib_lazy.o

clean:
	rm -f result.txt srad

run:
	bash ./run

cudarace:
	bash ./cudarace

