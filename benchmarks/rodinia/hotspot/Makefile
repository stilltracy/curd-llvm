SM=52

.PHONY: all clean run cudarace

all:
	nvcc -O2 -lineinfo -D_FORCE_INLINES -arch=sm_$(SM) --cudart=shared hotspot.cu -o hotspot -I../../../ ../../../curd_lib_lazy.o -D_FORCE_INLINES
	cuobjdump -ptx hotspot > hotspot.ptx

clean:
	rm -f result.txt hotspot

run:
	bash ./run

cudarace:
	bash ./cudarace

