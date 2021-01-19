CC = gcc
CFLAGS = -g -Wall --std=gnu99

movies : main.o
	$(CC) $(CFLAGS) -o $@ $^

movies.o : movies.c

memCheckSpellChecker :
	valgrind --tool=memcheck --leak-check=yes movies

clean :
	-rm *.o
	-rm movies
