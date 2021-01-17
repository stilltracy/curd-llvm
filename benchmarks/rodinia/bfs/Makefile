SM=52
SM = 52
.PHONY: all clean run cudarace


all:
	nvcc -lineinfo -D_FORCE_INLINES -arch=sm_$(SM) --cudart=shared bfs.cu -o rodinia_bfs -I../../../ ../../../curd_lib_lazy.o

clean:
	rm -f result.txt rodinia_bfs

run:
	bash ./run

cudarace:
	bash ./cudarace

