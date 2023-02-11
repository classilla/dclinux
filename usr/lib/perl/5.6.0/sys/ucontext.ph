require '_h2ph_pre.ph';

unless(defined(&_SYS_UCONTEXT_H)) {
    eval 'sub _SYS_UCONTEXT_H () {1;}' unless defined(&_SYS_UCONTEXT_H);
    require 'features.ph';
    require 'signal.ph';
    require 'bits/sigcontext.ph';
    eval 'sub NGREG () {16;}' unless defined(&NGREG);
    if(defined(&__USE_GNU)) {
	eval("sub R0 () { 0; }") unless defined(&R0);
	eval("sub R1 () { 1; }") unless defined(&R1);
	eval("sub R2 () { 2; }") unless defined(&R2);
	eval("sub R3 () { 3; }") unless defined(&R3);
	eval("sub R4 () { 4; }") unless defined(&R4);
	eval("sub R5 () { 5; }") unless defined(&R5);
	eval("sub R6 () { 6; }") unless defined(&R6);
	eval("sub R7 () { 7; }") unless defined(&R7);
	eval("sub R8 () { 8; }") unless defined(&R8);
	eval("sub R9 () { 9; }") unless defined(&R9);
	eval("sub R10 () { 10; }") unless defined(&R10);
	eval("sub R11 () { 11; }") unless defined(&R11);
	eval("sub R12 () { 12; }") unless defined(&R12);
	eval("sub R13 () { 13; }") unless defined(&R13);
	eval("sub R14 () { 14; }") unless defined(&R14);
	eval("sub R15 () { 15; }") unless defined(&R15);
    }
    eval 'sub NFPREG () {16;}' unless defined(&NFPREG);
}
1;
