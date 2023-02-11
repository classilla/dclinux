require '_h2ph_pre.ph';

unless(defined(&__BITS_SOCKET_H)) {
    eval 'sub __BITS_SOCKET_H () {1;}' unless defined(&__BITS_SOCKET_H);
    if(!defined (defined(&_SYS_SOCKET_H) ? &_SYS_SOCKET_H : 0)  && !defined (defined(&_NETINET_IN_H) ? &_NETINET_IN_H : 0)) {
	die("Never include <bits/socket.h> directly; use <sys/socket.h> instead.");
    }
    eval 'sub __need_size_t () {1;}' unless defined(&__need_size_t);
    eval 'sub __need_NULL () {1;}' unless defined(&__need_NULL);
    require 'stddef.ph';
    require 'limits.ph';
    require 'sys/types.ph';
    unless(defined(&__socklen_t_defined)) {
	eval 'sub __socklen_t_defined () {1;}' unless defined(&__socklen_t_defined);
    }
    eval("sub SOCK_STREAM () { 1; }") unless defined(&SOCK_STREAM);
    eval("sub SOCK_DGRAM () { 2; }") unless defined(&SOCK_DGRAM);
    eval("sub SOCK_RAW () { 3; }") unless defined(&SOCK_RAW);
    eval("sub SOCK_RDM () { 4; }") unless defined(&SOCK_RDM);
    eval("sub SOCK_SEQPACKET () { 5; }") unless defined(&SOCK_SEQPACKET);
    eval("sub SOCK_PACKET () { 10; }") unless defined(&SOCK_PACKET);
    eval 'sub PF_UNSPEC () {0;}' unless defined(&PF_UNSPEC);
    eval 'sub PF_LOCAL () {1;}' unless defined(&PF_LOCAL);
    eval 'sub PF_UNIX () { &PF_LOCAL;}' unless defined(&PF_UNIX);
    eval 'sub PF_FILE () { &PF_LOCAL;}' unless defined(&PF_FILE);
    eval 'sub PF_INET () {2;}' unless defined(&PF_INET);
    eval 'sub PF_AX25 () {3;}' unless defined(&PF_AX25);
    eval 'sub PF_IPX () {4;}' unless defined(&PF_IPX);
    eval 'sub PF_APPLETALK () {5;}' unless defined(&PF_APPLETALK);
    eval 'sub PF_NETROM () {6;}' unless defined(&PF_NETROM);
    eval 'sub PF_BRIDGE () {7;}' unless defined(&PF_BRIDGE);
    eval 'sub PF_ATMPVC () {8;}' unless defined(&PF_ATMPVC);
    eval 'sub PF_X25 () {9;}' unless defined(&PF_X25);
    eval 'sub PF_INET6 () {10;}' unless defined(&PF_INET6);
    eval 'sub PF_ROSE () {11;}' unless defined(&PF_ROSE);
    eval 'sub PF_DECnet () {12;}' unless defined(&PF_DECnet);
    eval 'sub PF_NETBEUI () {13;}' unless defined(&PF_NETBEUI);
    eval 'sub PF_SECURITY () {14;}' unless defined(&PF_SECURITY);
    eval 'sub PF_KEY () {15;}' unless defined(&PF_KEY);
    eval 'sub PF_NETLINK () {16;}' unless defined(&PF_NETLINK);
    eval 'sub PF_ROUTE () { &PF_NETLINK;}' unless defined(&PF_ROUTE);
    eval 'sub PF_PACKET () {17;}' unless defined(&PF_PACKET);
    eval 'sub PF_ASH () {18;}' unless defined(&PF_ASH);
    eval 'sub PF_ECONET () {19;}' unless defined(&PF_ECONET);
    eval 'sub PF_ATMSVC () {20;}' unless defined(&PF_ATMSVC);
    eval 'sub PF_SNA () {22;}' unless defined(&PF_SNA);
    eval 'sub PF_IRDA () {23;}' unless defined(&PF_IRDA);
    eval 'sub PF_PPPOX () {24;}' unless defined(&PF_PPPOX);
    eval 'sub PF_MAX () {32;}' unless defined(&PF_MAX);
    eval 'sub AF_UNSPEC () { &PF_UNSPEC;}' unless defined(&AF_UNSPEC);
    eval 'sub AF_LOCAL () { &PF_LOCAL;}' unless defined(&AF_LOCAL);
    eval 'sub AF_UNIX () { &PF_UNIX;}' unless defined(&AF_UNIX);
    eval 'sub AF_FILE () { &PF_FILE;}' unless defined(&AF_FILE);
    eval 'sub AF_INET () { &PF_INET;}' unless defined(&AF_INET);
    eval 'sub AF_AX25 () { &PF_AX25;}' unless defined(&AF_AX25);
    eval 'sub AF_IPX () { &PF_IPX;}' unless defined(&AF_IPX);
    eval 'sub AF_APPLETALK () { &PF_APPLETALK;}' unless defined(&AF_APPLETALK);
    eval 'sub AF_NETROM () { &PF_NETROM;}' unless defined(&AF_NETROM);
    eval 'sub AF_BRIDGE () { &PF_BRIDGE;}' unless defined(&AF_BRIDGE);
    eval 'sub AF_ATMPVC () { &PF_ATMPVC;}' unless defined(&AF_ATMPVC);
    eval 'sub AF_X25 () { &PF_X25;}' unless defined(&AF_X25);
    eval 'sub AF_INET6 () { &PF_INET6;}' unless defined(&AF_INET6);
    eval 'sub AF_ROSE () { &PF_ROSE;}' unless defined(&AF_ROSE);
    eval 'sub AF_DECnet () { &PF_DECnet;}' unless defined(&AF_DECnet);
    eval 'sub AF_NETBEUI () { &PF_NETBEUI;}' unless defined(&AF_NETBEUI);
    eval 'sub AF_SECURITY () { &PF_SECURITY;}' unless defined(&AF_SECURITY);
    eval 'sub AF_KEY () { &PF_KEY;}' unless defined(&AF_KEY);
    eval 'sub AF_NETLINK () { &PF_NETLINK;}' unless defined(&AF_NETLINK);
    eval 'sub AF_ROUTE () { &PF_ROUTE;}' unless defined(&AF_ROUTE);
    eval 'sub AF_PACKET () { &PF_PACKET;}' unless defined(&AF_PACKET);
    eval 'sub AF_ASH () { &PF_ASH;}' unless defined(&AF_ASH);
    eval 'sub AF_ECONET () { &PF_ECONET;}' unless defined(&AF_ECONET);
    eval 'sub AF_ATMSVC () { &PF_ATMSVC;}' unless defined(&AF_ATMSVC);
    eval 'sub AF_SNA () { &PF_SNA;}' unless defined(&AF_SNA);
    eval 'sub AF_IRDA () { &PF_IRDA;}' unless defined(&AF_IRDA);
    eval 'sub AF_PPPOX () { &PF_PPPOX;}' unless defined(&AF_PPPOX);
    eval 'sub AF_MAX () { &PF_MAX;}' unless defined(&AF_MAX);
    eval 'sub SOL_RAW () {255;}' unless defined(&SOL_RAW);
    eval 'sub SOL_DECNET () {261;}' unless defined(&SOL_DECNET);
    eval 'sub SOL_X25 () {262;}' unless defined(&SOL_X25);
    eval 'sub SOL_PACKET () {263;}' unless defined(&SOL_PACKET);
    eval 'sub SOL_ATM () {264;}' unless defined(&SOL_ATM);
    eval 'sub SOL_AAL () {265;}' unless defined(&SOL_AAL);
    eval 'sub SOL_IRDA () {266;}' unless defined(&SOL_IRDA);
    eval 'sub SOMAXCONN () {128;}' unless defined(&SOMAXCONN);
    require 'bits/sockaddr.ph';
    if((defined(&ULONG_MAX) ? &ULONG_MAX : 0) > 0xffffffff) {
	eval 'sub __ss_aligntype () { &__uint64_t;}' unless defined(&__ss_aligntype);
    } else {
	eval 'sub __ss_aligntype () { &__uint32_t;}' unless defined(&__ss_aligntype);
    }
    eval 'sub _SS_SIZE () {128;}' unless defined(&_SS_SIZE);
    eval 'sub _SS_PADSIZE () {( &_SS_SIZE - (2* $sizeof{ &__ss_aligntype}));}' unless defined(&_SS_PADSIZE);
    eval("sub MSG_OOB () { 0x01; }") unless defined(&MSG_OOB);
    eval("sub MSG_PEEK () { 0x02; }") unless defined(&MSG_PEEK);
    eval("sub MSG_DONTROUTE () { 0x04; }") unless defined(&MSG_DONTROUTE);
    eval("sub MSG_CTRUNC () { 0x08; }") unless defined(&MSG_CTRUNC);
    eval("sub MSG_PROXY () { 0x10; }") unless defined(&MSG_PROXY);
    eval("sub MSG_TRUNC () { 0x20; }") unless defined(&MSG_TRUNC);
    eval("sub MSG_DONTWAIT () { 0x40; }") unless defined(&MSG_DONTWAIT);
    eval("sub MSG_EOR () { 0x80; }") unless defined(&MSG_EOR);
    eval("sub MSG_WAITALL () { 0x100; }") unless defined(&MSG_WAITALL);
    eval("sub MSG_FIN () { 0x200; }") unless defined(&MSG_FIN);
    eval("sub MSG_SYN () { 0x400; }") unless defined(&MSG_SYN);
    eval("sub MSG_CONFIRM () { 0x800; }") unless defined(&MSG_CONFIRM);
    eval("sub MSG_RST () { 0x1000; }") unless defined(&MSG_RST);
    eval("sub MSG_ERRQUEUE () { 0x2000; }") unless defined(&MSG_ERRQUEUE);
    eval("sub MSG_NOSIGNAL () { 0x4000; }") unless defined(&MSG_NOSIGNAL);
    if(!defined (defined(&__STRICT_ANSI__) ? &__STRICT_ANSI__ : 0)  && defined (defined(&__GNUC__) ? &__GNUC__ : 0)  && (defined(&__GNUC__) ? &__GNUC__ : 0) >= 2) {
	eval 'sub CMSG_DATA {
	    local($cmsg) = @_;
    	    eval q((($cmsg)-> &__cmsg_data));
	}' unless defined(&CMSG_DATA);
    } else {
	eval 'sub CMSG_DATA {
	    local($cmsg) = @_;
    	    eval q(( ( ($cmsg) + 1)));
	}' unless defined(&CMSG_DATA);
    }
    eval 'sub CMSG_NXTHDR {
        local($mhdr, $cmsg) = @_;
	    eval q( &__cmsg_nxthdr ($mhdr, $cmsg));
    }' unless defined(&CMSG_NXTHDR);
    eval 'sub CMSG_FIRSTHDR {
        local($mhdr) = @_;
	    eval q(( -> &msg_controllen >=  &sizeof ? -> &msg_control :  &NULL));
    }' unless defined(&CMSG_FIRSTHDR);
    eval 'sub CMSG_ALIGN {
        local($len) = @_;
	    eval q(((($len) + $sizeof{ &size_t} - 1) & ( &size_t) ~($sizeof{ &size_t} - 1)));
    }' unless defined(&CMSG_ALIGN);
    eval 'sub CMSG_SPACE {
        local($len) = @_;
	    eval q(( &CMSG_ALIGN ($len) +  &CMSG_ALIGN ($sizeof{1;
    }' unless defined(&CMSG_SPACE);
    eval 'sub CMSG_LEN {
        local($len) = @_;
	    eval q(( &CMSG_ALIGN ($sizeof{1;
    }' unless defined(&CMSG_LEN);
    if(defined(&__USE_EXTERN_INLINES)) {
	unless(defined(&_EXTERN_INLINE)) {
	    eval 'sub _EXTERN_INLINE () { &extern  &__inline;}' unless defined(&_EXTERN_INLINE);
	}
    }
    eval("sub SCM_RIGHTS () { 0x01; }") unless defined(&SCM_RIGHTS);
    eval("sub __SCM_CONNECT () { 0x03; }") unless defined(&__SCM_CONNECT);
    require 'asm/socket.ph';
}
1;
