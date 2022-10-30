CC = gcc
CFLAGS = -O0 -g3 -Wall -std=c99
LFLAGS = 
DEPS = protobuf.h
OBJS = protobuf.o varint.o

all: protobuf_reader
	cd test; make all;
	
%.o: %.c $(DEPS)
	$(CC) -fPIC -c -o $@ $< $(CFLAGS)

libprotobuf.so:
	gcc -shared *.o -o libprotobuf.so

protobuf_reader: $(OBJS) main.o
	$(CC) -fPIC -o $@ $^ 

test_protobuf: $(OBJS)
	$(CC) -fPIC -o $@ $^ $(LFLAGS)

clean:
	rm -f *.o
	rm -f protobuf_reader;
	cd test; make clean;
	
rebuild: clean all
