CC = gcc
CFLAGS = -O0 -Wall -I../include -I../protobuf -I../multiaddr/include -std=c99

ifdef DEBUG
CFLAGS += -g3
endif

LFLAGS = 
DEPS = 
OBJS = swarm.o

%.o: %.c $(DEPS)
	$(CC) -fPIC -c -o $@ $< $(CFLAGS)

all: $(OBJS)

clean:
	rm -f *.o
