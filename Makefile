CFLAGS=-std=c11 -g -static

9cc: main.c
	gcc -o 9cc main.c $(CFLAGS)

test: 9cc
	./test.sh

clean:
	rm -f 9cc *.o *~ tmp*

.PHONY: test clean
