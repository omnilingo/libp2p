CC = gcc
CFLAGS = -O0 -Wall -Werror -I../include -I../protobuf -std=c11

ifdef DEBUG
CFLAGS += -g3
endif

LFLAGS = 
DEPS = 
OBJS = identify.o

%.o: %.c
	$(CC) -fPIC -c -o $@ $< $(CFLAGS)

all: $(OBJS)

clean:
	rm -f *.o
