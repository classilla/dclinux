require '_h2ph_pre.ph';

unless(defined(&_SYS_SOCKET_H)) {
    eval 'sub _SYS_SOCKET_H () {1;}' unless defined(&_SYS_SOCKET_H);
    require 'features.ph';
    require 'sys/uio.ph';
    eval 'sub __need_size_t () {1;}' unless defined(&__need_size_t);
    require 'stddef.ph';
    require 'bits/socket.ph';
    if(defined(&__USE_BSD)) {
    }
    eval("sub SHUT_RD () { 0; }") unless defined(&SHUT_RD);
    eval("sub SHUT_WR () { 1; }") unless defined(&SHUT_WR);
    eval("sub SHUT_RDWR () { 2; }") unless defined(&SHUT_RDWR);
    if(defined (defined(&__cplusplus) ? &__cplusplus : 0) || !(defined(&__GNUC_PREREQ) ? &__GNUC_PREREQ(2, 7) : 0) || !defined (defined(&__USE_GNU) ? &__USE_GNU : 0)) {
	eval 'sub __SOCKADDR_ARG () {1;}' unless defined(&__SOCKADDR_ARG);
	eval 'sub __CONST_SOCKADDR_ARG () { 1;}' unless defined(&__CONST_SOCKADDR_ARG);
    } else {
	eval 'sub __SOCKADDR_ALLTYPES () { &__SOCKADDR_ONETYPE  &__SOCKADDR_ONETYPE  &__SOCKADDR_ONETYPE  &__SOCKADDR_ONETYPE  &__SOCKADDR_ONETYPE  &__SOCKADDR_ONETYPE  &__SOCKADDR_ONETYPE  &__SOCKADDR_ONETYPE  &__SOCKADDR_ONETYPE  &__SOCKADDR_ONETYPE  &__SOCKADDR_ONETYPE  &__SOCKADDR_ONETYPE  &__SOCKADDR_ONETYPE ( &sockaddr_x25);}' unless defined(&__SOCKADDR_ALLTYPES);
	eval 'sub __SOCKADDR_ONETYPE {
	    local($type) = @_;
    	    eval q(1;);
	}' unless defined(&__SOCKADDR_ONETYPE);
	undef(&__SOCKADDR_ONETYPE) if defined(&__SOCKADDR_ONETYPE);
	eval 'sub __SOCKADDR_ONETYPE {
	    local($type) = @_;
    	    eval q( 1;);
	}' unless defined(&__SOCKADDR_ONETYPE);
	undef(&__SOCKADDR_ONETYPE) if defined(&__SOCKADDR_ONETYPE);
    }
    if(defined(&__USE_MISC)) {
    }
}
1;
