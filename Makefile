SRC=$(wildcard *.c)
OBJ=$(patsubst %c, %out, $(SRC)) 
all:$(OBJ) 

.PHONY:all clean  

%.out: %.c
	gcc $< ../apue.c -I ../ -o $@

clean:
	rm -rf *.out
