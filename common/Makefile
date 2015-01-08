SRC=$(wildcard *.c)
OBJ=$(patsubst %c, %out, $(SRC)) 
all:$(OBJ) 

.PHONY:all clean  

%.out: %.c
	gcc $< ../common/apue.c -I ../common -o $@

clean:
	rm -rf *.out
