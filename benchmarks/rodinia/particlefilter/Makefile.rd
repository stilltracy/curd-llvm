CURD_DIR ?=../../../
CURD_CFLAGS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc  -v -dr -rdc=true -I$(CURD_DIR) -lineinfo -arch=sm_35 --cudart=shared 
CURD_FLAGS_LAZY=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_lazy.o
CURD_FLAGS_EAGER=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_eager.o



CC := nvcc

all: naive_lazy naive_eager float_lazy float_eager

naive_lazy: ex_particle_CUDA_naive_seq.cu
	$(CC) $(CURD_FLAGS_LAZY) -lcuda -g -lm -O3 -use_fast_math ex_particle_CUDA_naive_seq.cu -o particlefilter_naive_lazy

naive_eager: ex_particle_CUDA_naive_seq.cu
	$(CC) $(CURD_FLAGS_EAGER) -lcuda -g -lm -O3 -use_fast_math ex_particle_CUDA_naive_seq.cu -o particlefilter_naive_eager

float_eager: ex_particle_CUDA_float_seq.cu
	$(CC) $(CURD_FLAGS_EAGER) -lcuda -g -lm -O3 -use_fast_math ex_particle_CUDA_float_seq.cu -o particlefilter_float_eager

float_lazy: ex_particle_CUDA_float_seq.cu
	$(CC) $(CURD_FLAGS_LAZY) -lcuda -g -lm -O3 -use_fast_math ex_particle_CUDA_float_seq.cu -o particlefilter_float_lazy

clean:
	rm -f particlefilter_naive_eager particlefilter_naive_lazy particlefilter_float_lazy particlefilter_float_eager
