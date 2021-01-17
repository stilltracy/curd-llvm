SM=52
.PHONY: all clean run cudarace


all:
	nvcc -O2 -lineinfo -D_FORCE_INLINES -arch=sm_$(SM) --cudart=shared -o kmeans cluster.c getopt.c kmeans.cpp kmeans_clustering.c kmeans_cuda.cu rmse.c ../../../curd_lib_lazy.o -I../../../ 

clean:
	rm -f result.txt kmeans

run:
	bash ./run

cudarace:
	bash ./cudarace

