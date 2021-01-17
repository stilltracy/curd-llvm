CURD_DIR ?=../../../
CURD_CFLAGS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc  -v -keep -dr -rdc=true -I$(CURD_DIR) -lineinfo -arch=sm_35 --cudart=shared 
CURD_FLAGS_LAZY=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_lazy.o
CURD_FLAGS_EAGER=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_eager.o
# C compiler
CC = gcc
CC_FLAGS = -g  -O2

# CUDA compiler
NVCC = nvcc

backprop: backprop.o facetrain.o imagenet.o backprop_cuda.o 
	$(NVCC) $(CURD_FLAGS_LAZY) backprop.o facetrain.o imagenet.o backprop_cuda.o -o backprop_lazy -lcuda -lm
	$(NVCC) $(CURD_FLAGS_EAGER) backprop.o facetrain.o imagenet.o backprop_cuda.o -o backprop_eager -lcuda -lm

%.o: %.[ch]
	$(CC) $(CC_FLAGS) $< -c

facetrain.o: facetrain.c backprop.h
	$(CC) $(CC_FLAGS) facetrain.c -c
	
backprop.o: backprop.c backprop.h
	$(CC) $(CC_FLAGS) backprop.c -c

backprop_cuda.o: backprop_cuda.cu backprop.h
	$(NVCC) $(CURD_CFLAGS) -c backprop_cuda.cu

imagenet.o: imagenet.c backprop.h
	$(CC) $(CC_FLAGS) imagenet.c -c


clean:
	rm -f *.o *~ backprop_eager backprop_lazy backprop_cuda.linkinfo
