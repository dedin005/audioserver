

CFLAGS= -Og -Wall -Werror -g
# CFLAGS = -Wall -g -O3
CC = gcc $(CFLAGS)

SHELL = /bin/bash
CWD = $(shell pwd | sed 's/.*\///g')

PROGRAMS = \
	reader \

all: $(PROGRAMS)	

clean:
	rm -f $(PROGRAMS) *.o

%.o: %.c
	$(CC) -c $<

reader: reader.o
	$(CC) -o $@ $^ -lpulse -lpulse-simple


