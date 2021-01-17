CURD_DIR ?=../../../
CURD_CFLAGS ?=-I$(P4ROOT)/sw/gpgpu/samples/common/inc  -v -keep -dr -rdc=true -I$(CURD_DIR) -lineinfo
CURD_FLAGS_LAZY=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_lazy.o
CURD_FLAGS_EAGER=$(CURD_CFLAGS) -L$(CURD_DIR) $(CURD_DIR)/race_detection_eager.o
.PHONY: all clean run cudarace


FILES=main.cu Graph.cpp Timer.cpp OptionParser.cpp ResultDatabase.cpp Option.cpp 

all:
	nvcc $(CURD_FLAGS_LAZY) -arch sm_35 -o shoc_bfs_lazy $(FILES) --cudart=shared
	nvcc $(CURD_FLAGS_EAGER) -arch sm_35 -o shoc_bfs_eager $(FILES) --cudart=shared

clean:
	rm -f *.o result.txt shoc_bfs_lazy shoc_bfs_eager

run:
	bash ./run

cudarace:
	bash ./cudarace

