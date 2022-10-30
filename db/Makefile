CC = gcc
CFLAGS = -O0 -I../include -I../protobuf -I../multihash/include -I../multiaddr/include -g3 -std=c99
LFLAGS =
DEPS = 
OBJS = datastore.o filestore.o

%.o: %.c $(DEPS)
	$(CC) -fPIC -c -o $@ $< $(CFLAGS)

	
all: $(OBJS)

clean:
	rm -f $(OBJS)
