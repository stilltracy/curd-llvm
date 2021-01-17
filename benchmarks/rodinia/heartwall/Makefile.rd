CURD_DIR ?=../../../
CURD_CFLAGS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc  -v -keep -dr -rdc=true -I$(CURD_DIR) -lineinfo -arch=sm_35 --cudart=shared 
CURD_FLAGS_LAZY=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_lazy.o
CURD_FLAGS_EAGER=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_eager.o


ifdef OUTPUT
override OUTPUT = -DOUTPUT
endif

# link objects(binaries) together
heartwall: main.o ./AVI/avilib.o ./AVI/avimod.o 
	nvcc $(CURD_FLAGS_EAGER) main.o ./AVI/avilib.o ./AVI/avimod.o -I/usr/local/cuda/include -lm -o heartwall_eager
	nvcc $(CURD_FLAGS_LAZY) main.o ./AVI/avilib.o ./AVI/avimod.o -I/usr/local/cuda/include -lm -o heartwall_lazy

# compile main function file into object (binary)
main.o: main.cu kernel.cu define.c
	nvcc $(CURD_CFLAGS) $(OUTPUT) $(KERNEL_DIM) main.cu -I./AVI -c -O3

./AVI/avilib.o ./AVI/avimod.o:
	cd AVI; make;

# delete all object files
clean:
	rm -f *.o AVI/*.o heartwall_* *.linkinfo
