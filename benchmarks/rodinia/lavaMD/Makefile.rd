CURD_DIR ?=../../../
CURD_CFLAGS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc  -v -keep -dr -rdc=true -I$(CURD_DIR) -lineinfo -arch=sm_35 --cudart=shared 
CURD_FLAGS_LAZY=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_lazy.o
CURD_FLAGS_EAGER=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_eager.o


# Example
# target: dependencies
	# command 1
	# command 2
          # .
          # .
          # .
	# command n
ifdef OUTPUT
override OUTPUT = -DOUTPUT
endif

C_C = gcc
OMP_LIB = -lgomp
OMP_FLAG = -fopenmp

CUD_C = nvcc
# OMP_FLAG = 	-Xcompiler paste_one_here
CUDA_FLAG = $(CURD_CFLAGS)

# link objects (binaries) together
a.out:		main.o \
			./kernel/kernel_gpu_cuda_wrapper.o \
			./util/num/num.o \
			./util/timer/timer.o \
			./util/device/device.o
	$(CUD_C) $(CURD_FLAGS_LAZY)	$(KERNEL_DIM) main.o \
			./kernel/kernel_gpu_cuda_wrapper.o \
			./util/num/num.o \
			./util/timer/timer.o \
			./util/device/device.o \
			-lm \
			-L/usr/local/cuda/lib64 \
			-lcuda -lcudart \
			$(OMP_LIB) \
			-o lavaMD_lazy
	$(CUD_C) $(CURD_FLAGS_EAGER)	$(KERNEL_DIM) main.o \
			./kernel/kernel_gpu_cuda_wrapper.o \
			./util/num/num.o \
			./util/timer/timer.o \
			./util/device/device.o \
			-lm \
			-L/usr/local/cuda/lib64 \
			-lcuda -lcudart \
			$(OMP_LIB) \
			-o lavaMD_eager
# compile function files into objects (binaries)
main.o:		main.h \
			main.c \
			./kernel/kernel_gpu_cuda_wrapper.h \
			./kernel/kernel_gpu_cuda_wrapper.cu \
			./util/num/num.h \
			./util/num/num.c \
			./util/timer/timer.h \
			./util/timer/timer.c \
			./util/device/device.h \
			./util/device/device.cu
	$(C_C)	$(KERNEL_DIM) $(OUTPUT) main.c \
			-c \
			-o main.o \
			-O3

./kernel/kernel_gpu_cuda_wrapper.o:	./kernel/kernel_gpu_cuda_wrapper.h \
									./kernel/kernel_gpu_cuda_wrapper.cu
	$(CUD_C) $(KERNEL_DIM)						./kernel/kernel_gpu_cuda_wrapper.cu \
									-c \
									-o ./kernel/kernel_gpu_cuda_wrapper.o \
									-O3 \
									$(CUDA_FLAG)

./util/num/num.o:	./util/num/num.h \
					./util/num/num.c
	$(C_C)			./util/num/num.c \
					-c \
					-o ./util/num/num.o \
					-O3

./util/timer/timer.o:	./util/timer/timer.h \
						./util/timer/timer.c
	$(C_C)				./util/timer/timer.c \
						-c \
						-o ./util/timer/timer.o \
						-O3

./util/device/device.o:	./util/device/device.h \
						./util/device/device.cu
	$(CUD_C) $(CURD_CFLAGS)			./util/device/device.cu \
						-c \
						-o ./util/device/device.o \
						-O3

# delete all object and executable files
clean:
	rm	-f *.o \
		./kernel/*.o \
		./util/num/*.o \
		./util/timer/*.o \
		./util/device/*.o \
		lavaMD_*
