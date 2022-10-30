# c-libp2p
Implementation of libp2p in C.

Bundles:
- Mbedtls
- Protobuf
- Multiaddr
- Multihash

## Compile

```bash
$ make
```

## Library

- `libp2p.so`
- `libp2p.a`

## Python

```python
$ LD_LIBRARY_PATH=../ python3.8
Python 3.8.7 (default, Dec 22 2020, 10:37:26) 
[GCC 10.2.1 20201207] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import p2p
>>> p2p.libp2p_net_server_start("127.0.0.1", 1234, None);
1
>>> p2p.libp2p_net_server_stop()
1
```
