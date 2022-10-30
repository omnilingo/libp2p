CC = gcc
CFLAGS = -O0 -I../include -I../protobuf -I../multihash/include -I../multiaddr/include -g3
LFLAGS =
DEPS = 
OBJS = utils.o memstream.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

	
all: $(OBJS)

clean:
	rm -f $(OBJS)
