require '_h2ph_pre.ph';

unless(defined(&__ASM_SH_SOCKET_H)) {
    eval 'sub __ASM_SH_SOCKET_H () {1;}' unless defined(&__ASM_SH_SOCKET_H);
    require 'asm/sockios.ph';
    eval 'sub SOL_SOCKET () {1;}' unless defined(&SOL_SOCKET);
    eval 'sub SO_DEBUG () {1;}' unless defined(&SO_DEBUG);
    eval 'sub SO_REUSEADDR () {2;}' unless defined(&SO_REUSEADDR);
    eval 'sub SO_TYPE () {3;}' unless defined(&SO_TYPE);
    eval 'sub SO_ERROR () {4;}' unless defined(&SO_ERROR);
    eval 'sub SO_DONTROUTE () {5;}' unless defined(&SO_DONTROUTE);
    eval 'sub SO_BROADCAST () {6;}' unless defined(&SO_BROADCAST);
    eval 'sub SO_SNDBUF () {7;}' unless defined(&SO_SNDBUF);
    eval 'sub SO_RCVBUF () {8;}' unless defined(&SO_RCVBUF);
    eval 'sub SO_KEEPALIVE () {9;}' unless defined(&SO_KEEPALIVE);
    eval 'sub SO_OOBINLINE () {10;}' unless defined(&SO_OOBINLINE);
    eval 'sub SO_NO_CHECK () {11;}' unless defined(&SO_NO_CHECK);
    eval 'sub SO_PRIORITY () {12;}' unless defined(&SO_PRIORITY);
    eval 'sub SO_LINGER () {13;}' unless defined(&SO_LINGER);
    eval 'sub SO_BSDCOMPAT () {14;}' unless defined(&SO_BSDCOMPAT);
    eval 'sub SO_PASSCRED () {16;}' unless defined(&SO_PASSCRED);
    eval 'sub SO_PEERCRED () {17;}' unless defined(&SO_PEERCRED);
    eval 'sub SO_RCVLOWAT () {18;}' unless defined(&SO_RCVLOWAT);
    eval 'sub SO_SNDLOWAT () {19;}' unless defined(&SO_SNDLOWAT);
    eval 'sub SO_RCVTIMEO () {20;}' unless defined(&SO_RCVTIMEO);
    eval 'sub SO_SNDTIMEO () {21;}' unless defined(&SO_SNDTIMEO);
    eval 'sub SO_SECURITY_AUTHENTICATION () {22;}' unless defined(&SO_SECURITY_AUTHENTICATION);
    eval 'sub SO_SECURITY_ENCRYPTION_TRANSPORT () {23;}' unless defined(&SO_SECURITY_ENCRYPTION_TRANSPORT);
    eval 'sub SO_SECURITY_ENCRYPTION_NETWORK () {24;}' unless defined(&SO_SECURITY_ENCRYPTION_NETWORK);
    eval 'sub SO_BINDTODEVICE () {25;}' unless defined(&SO_BINDTODEVICE);
    eval 'sub SO_ATTACH_FILTER () {26;}' unless defined(&SO_ATTACH_FILTER);
    eval 'sub SO_DETACH_FILTER () {27;}' unless defined(&SO_DETACH_FILTER);
    eval 'sub SO_PEERNAME () {28;}' unless defined(&SO_PEERNAME);
    eval 'sub SO_TIMESTAMP () {29;}' unless defined(&SO_TIMESTAMP);
    eval 'sub SCM_TIMESTAMP () { &SO_TIMESTAMP;}' unless defined(&SCM_TIMESTAMP);
    eval 'sub SO_ACCEPTCONN () {30;}' unless defined(&SO_ACCEPTCONN);
    if(defined( &__KERNEL__)) {
	eval 'sub SOCK_STREAM () {1;}' unless defined(&SOCK_STREAM);
	eval 'sub SOCK_DGRAM () {2;}' unless defined(&SOCK_DGRAM);
	eval 'sub SOCK_RAW () {3;}' unless defined(&SOCK_RAW);
	eval 'sub SOCK_RDM () {4;}' unless defined(&SOCK_RDM);
	eval 'sub SOCK_SEQPACKET () {5;}' unless defined(&SOCK_SEQPACKET);
	eval 'sub SOCK_PACKET () {10;}' unless defined(&SOCK_PACKET);
    }
}
1;
