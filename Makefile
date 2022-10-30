
DEBUG = true
export DEBUG

SO_LINKER_FLAGS=-L./protobuf/ -L./multiaddr/ -L./multihash/ -lprotobuf -lmultiaddr -lmultihash -lpthread -lm
LINKER_FLAGS=

OBJS = \
	conn/*.o \
	crypto/*.o \
	crypto/encoding/*.o \
	db/*.o \
	thirdparty/mbedtls/*.o \
	hashmap/hashmap.o \
	identify/*.o \
	net/*.o \
	os/*.o \
	peer/*.o \
	record/*.o \
	routing/*.o \
	secio/*.o \
	utils/*.o \
	swarm/*.o \
	yamux/*.o

all: compile link

link: 
	ar rcs libp2p.a $(OBJS) $(LINKER_FLAGS)
	gcc -shared $(OBJS) protobuf/protobuf.o protobuf/varint.o -o libp2p.so $(SO_LINKER_FLAGS)

compile:
	cd multihash; make all;
	cd multiaddr; make all;
	cd protobuf; make all;
	cd conn; make all;
	cd crypto; make all;
	cd db; make all;
	cd thirdparty; make all;
	cd hashmap; make all;
	cd identify; make all;
	cd net; make all;
	cd os; make all;
	cd peer; make all;
	cd record; make all;
	cd routing; make all;
	cd secio; make all;
	cd swarm; make all;
	cd utils; make all;
	cd yamux; make all;
	
test: compile link
	cd test; make all;
	
rebuild: clean all
	
	
clean:
	cd conn; make clean;
	cd crypto; make clean;
	cd db; make clean;
	cd hashmap; make clean;
	cd identify; make clean;
	cd net; make clean;
	cd os; make clean;
	cd peer; make clean;
	cd thirdparty; make clean
	cd record; make clean;
	cd routing; make clean;
	cd secio; make clean;
	cd swarm; make clean;
	cd utils; make clean;
	cd test; make clean;
	cd yamux; make clean;
	rm -rf libp2p.a

