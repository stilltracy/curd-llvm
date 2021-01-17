SM?=52

ifdef OUTPUT
override OUTPUT = -DOUTPUT
endif

# link objects(binaries) together
heartwall: main.o ./AVI/avilib.o ./AVI/avimod.o 
	nvcc main.o ./AVI/avilib.o ./AVI/avimod.o -I/usr/local/cuda/include -lm -o heartwall -I../../../ ../../../curd_lib_lazy.o -D_FORCE_INLINES -arch=sm_$(SM) -lineinfo

# compile main function file into object (binary)
main.o: main.cu kernel.cu define.c
	nvcc $(OUTPUT) $(KERNEL_DIM) main.cu -I./AVI -c -O3  -I../../../ -D_FORCE_INLINES -arch=sm_$(SM)

./AVI/avilib.o ./AVI/avimod.o:
	cd AVI; make;

# delete all object files
clean:
	rm -f *.o AVI/*.o heartwall *.linkinfo
