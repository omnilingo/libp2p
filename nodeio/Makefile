CC = gcc
CFLAGS = -O0 -Wall -I../include -I../protobuf

ifdef DEBUG
CFLAGS += -g3
endif

LFLAGS = 
DEPS = 
OBJS = nodeio.o

%.o: %.c $(DEPS)
	$(CC) -fPIC -c -o $@ $< $(CFLAGS)

all: $(OBJS)

clean:
	rm -f *.o
