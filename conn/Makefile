CC = gcc
CFLAGS = -O0 -I../include -I../protobuf -I../multihash/include -I../multiaddr/include -g3
LFLAGS =
DEPS = 
OBJS = dialer.o transport_dialer.o connection.o tcp_transport_dialer.o session.o

%.o: %.c $(DEPS)
	$(CC) -fPIC -c -o $@ $< $(CFLAGS)

	
all: $(OBJS)

clean:
	rm -f *.o
