SM?=52
#makefile

CC := nvcc

INCLUDE := $(CUDA_DIR)/include

all: naive float

naive: ex_particle_CUDA_naive_seq.cu
	$(CC) -D_FORCE_INLINES  -I$(INCLUDE) -I../../../ ../../../curd_lib_lazy.o  -L$(CUDA_LIB_DIR) -lcuda -g -lm -O3 -use_fast_math -arch sm_$(SM) ex_particle_CUDA_naive_seq.cu -o particlefilter_naive
	
float: ex_particle_CUDA_float_seq.cu
	$(CC) -D_FORCE_INLINES -I$(INCLUDE) -I../../../ ../../../curd_lib_lazy.o  -L$(CUDA_LIB_DIR) -lcuda -g -lm -O3 -use_fast_math -arch sm_$(SM) ex_particle_CUDA_float_seq.cu -o particlefilter_float

clean:
	rm -f particlefilter_naive particlefilter_float
