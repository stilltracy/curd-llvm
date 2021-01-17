.PHONY: all run cudarace clean

BENCHMARKS=b_radix_sort b_reduce b_scan d_partition_flagged d_partition_if d_radix_sort d_reduce d_scan d_select_flagged d_select_if d_select_unique d_sort_find_non_trivial_runs
BENCHMARKS_DONT_COMPILE=d_histogram 

CCFLAGS=-DSM500 -D_FORCE_INLINES -Xcompiler -ffloat-store -m64 -I./ -O3 -cudart=shared -gencode=arch=compute_50,code=\"sm_50,compute_50\"   -g -lineinfo

all: $(BENCHMARKS)

$(BENCHMARKS): *.cu
	nvcc $(CCFLAGS) -o $@ $@.cu

run:
	bash ./run
	
cudarace:
	bash ./cudarace
	
clean:
	rm -f *.i* *.cubin *.cu.c *.cudafe* *.fatbin.c *.ptx *.hash *.cu.cpp *.o block_radix_sort block_reduce block_scan $(BENCHMARKS)

