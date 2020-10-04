all: all.out
all.out: Point_test.o point.o
	g++ $^ -o $@ -lgtest -lgtest_main -lpthread
Point_test.o: Point_test.cpp point.h point.cpp
	g++ $< -c
point.o: point.cpp point.h
	g++ $< -c
clean:
	rm -rf *.o *.out

