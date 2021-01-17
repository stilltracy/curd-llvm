SM=52
# Example
# target: dependencies
	# command 1
	# command 2
          # .
          # .
          # .
	# command n

# link objects(binaries) together
myocyte:		main.o
	nvcc	main.o \
				-I/usr/local/cuda/include \
				-L/usr/local/cuda/lib64 \
				-lm -lcuda -lcudart \
                                -o myocyte ../../../curd_lib_lazy.o -arch=sm_$(SM) --cudart=shared

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
	nvcc	main.cu \
				-c -O3 -g -I../../../ -arch=sm_$(SM) -D_FORCE_INLINES --cudart=shared

# delete all object files
clean:
	rm -f *.o *.out myocyte output.txt
