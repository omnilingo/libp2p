%module p2p
%{

        #include <libp2p/libp2p.h>

%}

int libp2p_net_server_start(const char* ip, int port, struct Libp2pVector* protocol_handlers);
int libp2p_net_server_stop();
