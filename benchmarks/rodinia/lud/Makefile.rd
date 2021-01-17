all: lud_cuda 

lud_cuda:
	cd cuda; make -f Makefile.rd

clean:
	cd cuda; make clean -f Makefile.rd
