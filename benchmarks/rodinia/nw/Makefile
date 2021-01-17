SM=52

CC := nvcc

INCLUDE := $(CUDA_DIR)/include

SRC = needle.cu

EXE = nw

release: $(SRC)
	$(CC) ${KERNEL_DIM} $(SRC) -o $(EXE) -I$(INCLUDE) -I../../../ ../../../curd_lib_lazy.o -arch=sm_$(SM)  

enum: $(SRC)
	$(CC) ${KERNEL_DIM} -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -I../../../ ../../../curd_lib_lazy.o -arch=sm_$(SM)  -L$(CUDA_LIB_DIR) 

debug: $(SRC)
	$(CC) ${KERNEL_DIM} -g $(SRC) -o $(EXE) -I$(INCLUDE) -I../../../ ../../../curd_lib_lazy.o -arch=sm_$(SM)  -L$(CUDA_LIB_DIR) 

debugenum: $(SRC)
	$(CC) ${KERNEL_DIM} -g -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -I../../../ ../../../curd_lib_lazy.o -arch=sm_$(SM)  -L$(CUDA_LIB_DIR) 

clean: $(SRC)
	rm -f $(EXE) $(EXE).linkinfo result.txt
