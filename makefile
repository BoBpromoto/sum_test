all : sum_test

sum_test : sum.o main.o
	gcc -o sum_test sum.o main.o
sum.o : sum.c sum.h
	gcc -o sum.o sum.c
main.o : main.c main.h
	gcc -o main.o main.c
cleam :
	rm -rf *.o sum_test
