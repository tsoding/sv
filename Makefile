CFLAGS=-Wall -Wextra -std=c11 -pedantic -ggdb
CXXFLAGS=-Wall -Wextra -std=c++17 -pedantic -ggdb

.PHONY: all
all: test-c test-cxx
	./test-c
	./test-cxx

test-c: test.c sv.h
	$(CC) $(CFLAGS) -o test-c test.c

test-cxx: test.c sv.h
	$(CXX) $(CXXFLAGS) -x c++ -o test-cxx test.c
