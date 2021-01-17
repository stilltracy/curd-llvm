CURD_DIR ?=../../../
CURD_CFLAGS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc  -v -keep -dr -rdc=true -I$(CURD_DIR) 
CURD_FLAGS_LAZY=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_lazy.o
CURD_FLAGS_EAGER=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_eager.o
NVCC= nvcc 


.PHONY: all clean run cudarace


all:
	$(NVCC) $(CURD_FLAGS_EAGER) -O2 -lineinfo -D_FORCE_INLINES -arch=sm_35 --cudart=shared -o kmeans_eager cluster.c getopt.c kmeans.cpp kmeans_clustering.c kmeans_cuda.cu rmse.c
	$(NVCC) $(CURD_FLAGS_LAZY) -O2 -lineinfo -D_FORCE_INLINES -arch=sm_35 --cudart=shared -o kmeans_lazy cluster.c getopt.c kmeans.cpp kmeans_clustering.c kmeans_cuda.cu rmse.c

clean:
	rm -f result.txt kmeans_lazy kmeans_eager

run:
	bash ./run

cudarace:
	bash ./cudarace

