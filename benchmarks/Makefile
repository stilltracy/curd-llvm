CUDA_SAMPLES=cudasamples/threadFenceReduction cudasamples/dxtc cudasamples/scalarProd
GPU_TM_SAMPLES=#gpu-tm/hashtable #gpu-tm/interac 
RODINIA_SAMPLES=rodinia/cfd rodinia/backprop rodinia/bfs rodinia/b+tree rodinia/dwt2d rodinia/hotspot rodinia/hotspot3D rodinia/huffman rodinia/kmeans rodinia/lavaMD rodinia/lud rodinia/myocyte rodinia/nw rodinia/nn rodinia/pathfinder rodinia/gaussian rodinia/srad rodinia/streamcluster rodinia/leukocyte/CUDA rodinia/particlefilter rodinia/heartwall rodinia/hybridsort
CUB_SAMPLES=cub
SHOC=shoc/shocbfs
CHAI=chai/CUDA-D
PARBOIL=parboil/bfs/src/cuda parboil/cutcp/src/cuda parboil/histo/src/cuda parboil/lbm/src/cuda parboil/mri-gridding/src/cuda parboil/mri-q/src/cuda parboil/sad/src/cuda parboil/sgemm/src/cuda parboil/spmv/src/cuda parboil/stencil/src/cuda parboil/tpacf/src/cuda
GUNROCK=gunrock/tests
#SUBDIRS=$(CUDA_SAMPLES) $(CUB_SAMPLES) $(RODINIA_SAMPLES) $(GPU_TM_SAMPLES) $(SHOC) $(CHAI) $(PARBOIL)
#SUBDIRS=$(PARBOIL)
SUBDIRS=$(CUDA_SAMPLES) $(RODINIA_SAMPLES)  $(PARBOIL) $(GUNROCK) $(CUB_SAMPLES) #$(CHAI)
#SUBDIRS=$(GUNROCK) $(CHAI) $(PARBOIL) 
.PHONY: run clean all cudarace $(SUBDIRS)

all: $(SUBDIRS)

$(SUBDIRS):
#	-make -C $@ clean
#	make -C $@
	-make -C $@ -f Makefile.rd.llvm clean
	make -C $@ -f Makefile.rd.llvm 2> $@/build.log
	
run:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir run; \
	done

cudarace:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir cudarace; \
	done

clean:
	for dir in $(SUBDIRS); do \
		make -C $$dir -f Makefile.rd.llvm clean; \
		$(MAKE) -C $$dir clean; \
	done
