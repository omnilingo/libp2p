LDFLAGS=-L../ -L../protobuf -L../multihash -L../multiaddr -lp2p -lprotobuf -lmultihash -lmultiaddr
all:
	swig -python libp2p.i
	gcc -c -fPIC -I/usr/include/python3.8/ -I../include -I../multiaddr/include -I../multihash/include libp2p_wrap.c $(LDFLAGS)
	gcc -shared libp2p_wrap.o -o _p2p.so $(LDFLAGS)
	#python setup.py build_ext --inplace

clean:
	rm *.o *.so 
