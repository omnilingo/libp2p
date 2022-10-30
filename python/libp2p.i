%module p2p
%{

        #include <libp2p/libp2p.h>
        #include <multiaddr/multiaddr.h>
%}

int libp2p_net_server_start(const char* ip, int port, struct Libp2pVector* protocol_handlers);
int libp2p_net_server_stop();

struct Stream* libp2p_net_connection_new(int fd, char* ip, int port, struct SessionContext* session_context);


struct MultiAddress* multiaddress_new_from_string(const char* straddress); 

struct MultiAddress
{
	// A MultiAddress represented as a string
	char* string;
	// A MultiAddress represented as an array of bytes
	//<varint proto><n byte addr><1 byte protocol code><4 byte ipv4 address or 16 byte ipv6 address><1 byte tcp/udp code><2 byte port>
	uint8_t* bytes;
	size_t bsize;
};

