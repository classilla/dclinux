require '_h2ph_pre.ph';

unless(defined(&_SIGNAL_H)) {
    die("Never include <bits/sigaction.h> directly; use <signal.h> instead.");
}
if(defined(&__USE_POSIX199309)) {
    eval 'sub sa_handler () { ($__sigaction_handler->{sa_handler});}' unless defined(&sa_handler);
    eval 'sub sa_sigaction () { ($__sigaction_handler->{sa_sigaction});}' unless defined(&sa_sigaction);
} else {
}
unless(defined(&SA_NOCLDSTOP)) {
    sub SA_NOCLDSTOP () {	1;}
}
unless(defined(&SA_NOCLDWAIT)) {
    sub SA_NOCLDWAIT () {	2;}
}
unless(defined(&SA_SIGINFO)) {
    sub SA_SIGINFO () {	4;}
}
if(defined (defined(&__USE_UNIX98) ? &__USE_UNIX98 : 0) || defined (defined(&__USE_MISC) ? &__USE_MISC : 0)) {
    eval 'sub SA_ONSTACK () {0x08000000;}' unless defined(&SA_ONSTACK);
    eval 'sub SA_RESTART () {0x10000000;}' unless defined(&SA_RESTART);
    eval 'sub SA_NODEFER () {0x40000000;}' unless defined(&SA_NODEFER);
    eval 'sub SA_RESETHAND () {0x80000000;}' unless defined(&SA_RESETHAND);
}
if(defined(&__USE_MISC)) {
    eval 'sub SA_INTERRUPT () {0x20000000;}' unless defined(&SA_INTERRUPT);
    eval 'sub SA_NOMASK () { &SA_NODEFER;}' unless defined(&SA_NOMASK);
    eval 'sub SA_ONESHOT () { &SA_RESETHAND;}' unless defined(&SA_ONESHOT);
    eval 'sub SA_STACK () { &SA_ONSTACK;}' unless defined(&SA_STACK);
}
unless(defined(&SIG_BLOCK)) {
    sub SIG_BLOCK () {	0;}
}
unless(defined(&SIG_UNBLOCK)) {
    sub SIG_UNBLOCK () {	1;}
}
unless(defined(&SIG_SETMASK)) {
    sub SIG_SETMASK () {	2;}
}
1;
