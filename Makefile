CFLAGS=-Wall -Wextra -std=c11 -pedantic -ggdb

.PHONY: test
test: test.c sv.h
	$(CC) $(CFLAGS) -o test test.c
	./test
