CURD_DIR ?=../../../../
CURD_CFLAGS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc  -v -keep -dr -rdc=true -I$(CURD_DIR) -lineinfo -arch=sm_35 --cudart=shared 
CURD_FLAGS_LAZY=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_lazy.o
CURD_FLAGS_EAGER=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_eager.o


ifdef OUTPUT
override OUTPUT = -DOUTPUT
endif

# C compiler
CC = gcc
CC_FLAGS = -g -O3 -Wall -I$(MATRIX_DIR)

# CUDA compiler
NVCC = nvcc
NVCC_FLAGS = $(CURD_CFLAGS)

# Matrix library path
MATRIX_DIR = ../meschach_lib

# 'make dbg=1' enables NVCC debugging
ifeq ($(dbg),1)
	NVCC_FLAGS += -g -O0
else
	NVCC_FLAGS += -O3
endif

# 'make emu=1' compiles the CUDA kernels for emulation
ifeq ($(emu),1)
	NVCC_FLAGS += -deviceemu
endif


leukocyte: detect_main.o avilib.o find_ellipse.o find_ellipse_kernel.o track_ellipse.o track_ellipse_kernel.o misc_math.o $(MATRIX_DIR)/meschach.a
	$(NVCC) $(CURD_FLAGS_LAZY) -lm avilib.o find_ellipse.o find_ellipse_kernel.o track_ellipse.o track_ellipse_kernel.o misc_math.o detect_main.o -o leukocyte_lazy $(MATRIX_DIR)/meschach.a -lm -lcuda -lcudart
	$(NVCC) $(CURD_FLAGS_EAGER) -lm avilib.o find_ellipse.o find_ellipse_kernel.o track_ellipse.o track_ellipse_kernel.o misc_math.o detect_main.o -o leukocyte_eager $(MATRIX_DIR)/meschach.a -lm -lcuda -lcudart


%.o: %.[ch]
	$(CC)  $(OUTPUT) $(CC_FLAGS) $< -c

detect_main.o: detect_main.c find_ellipse.h track_ellipse.h avilib.h 
	$(CC) $(CC_FLAGS) detect_main.c -c

find_ellipse_kernel.o: find_ellipse_kernel.cu find_ellipse_kernel.h
	$(NVCC) $(NVCC_FLAGS) -c find_ellipse_kernel.cu

track_ellipse_kernel.o: track_ellipse_kernel.cu track_ellipse_kernel.h
	$(NVCC) $(NVCC_FLAGS) -I$(MATRIX_DIR) -c track_ellipse_kernel.cu

find_ellipse.o: avilib.h

track_ellipse.o: find_ellipse.h avilib.h

$(MATRIX_DIR)/meschach.a:
	cd $(MATRIX_DIR); ./configure --with-all; make all; make clean

clean:
	rm -f *.o *~ leukocyte_lazy leukocyte_eager *.linkinfo
