CURD_DIR ?=../../../../
CURD_CFLAGS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc  -v -keep -dr -rdc=true -I$(CURD_DIR) -lineinfo -arch=sm_35 --cudart=shared 
CURD_FLAGS_EAGER=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_eager.o
CURD_FLAGS_LAZY=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_lazy.o

CC = gcc
NVCC = nvcc

DEFS += \
		-DGPU_TIMER \
		$(SPACE)

NVCCFLAGS += $(CURD_CFLAGS) -I../common \
			 -O3 \
			 -use_fast_math \
			 -lm \
			 $(SPACE)

CFLAGS += -I../common \
					-I/usr/include/cuda \
		  -O3 \
		  -Wall \
		  $(SPACE)

# Add source files here
EXECUTABLE  := lud_cuda
# Cuda source files (compiled with cudacc)
CUFILES     := lud_kernel.cu
# C/C++ source files (compiled with gcc / c++)
CCFILES     := lud.c lud_cuda.c ../common/common.c

OBJS = ../common/common.o lud.o lud_kernel.o

.PHONY: all clean 
all : $(EXECUTABLE)

.c.o : 
	$(NVCC) $(KERNEL_DIM) $(NVCCFLAGS) $(DEFS) -o $@ -c $<

%.o:	%.cu 
	$(NVCC) $(KERNEL_DIM) $(NVCCFLAGS) $(DEFS) -o $@ -c $<


$(EXECUTABLE) : $(OBJS)
	$(NVCC) $(CURD_FLAGS_LAZY) -o $@_lazy  $?
	$(NVCC) $(CURD_FLAGS_EAGER) -o $@_eager  $?
clean:
	rm -f $(EXECUTABLE)_lazy $(EXECUTABLE)_eager $(OBJS) *.linkinfo
