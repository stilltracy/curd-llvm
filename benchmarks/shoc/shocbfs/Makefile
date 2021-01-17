.PHONY: all clean run cudarace


FILES=main.cu Graph.cpp Timer.cpp OptionParser.cpp ResultDatabase.cpp Option.cpp 

all:
	nvcc -arch sm_35 -o shoc_bfs $(FILES) -lineinfo --cudart=shared
clean:
	rm -f result.txt shoc_bfs

run:
	bash ./run

cudarace:
	bash ./cudarace

