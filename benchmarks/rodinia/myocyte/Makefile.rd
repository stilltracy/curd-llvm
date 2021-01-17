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

# link objects(binaries) together
myocyte.out:		main.o
	nvcc	$(CURD_FLAGS_LAZY) main.o \
				-I/usr/local/cuda/include \
				-L/usr/local/cuda/lib \
				-lm -lcuda -lcudart \
                                -o myocyte.out_lazy
	nvcc	$(CURD_FLAGS_EAGER) main.o \
				-I/usr/local/cuda/include \
				-L/usr/local/cuda/lib \
				-lm -lcuda -lcudart \
                                -o myocyte.out_eager


# compile main function file into object (binary)
main.o:	define.c \
				main.cu \
				work.cu \
				solver.cu \
				embedded_fehlberg_7_8.cu \
				master.cu \
				kernel.cu \
				kernel_ecc.cu \
				kernel_cam.cu \
				kernel_fin.cu \
				work_2.cu \
				solver_2.cu \
				embedded_fehlberg_7_8_2.cu \
				kernel_2.cu \
				kernel_ecc_2.cu \
				kernel_cam_2.cu \
				kernel_fin_2.cu \
				file.c \
				timer.c
	nvcc $(CURD_CFLAGS)	main.cu \
				-c -O3 -g

# delete all object files
clean:
	rm -f *.o *.out_lazy *.out_eager output.txt 
