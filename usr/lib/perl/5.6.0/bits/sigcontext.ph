require '_h2ph_pre.ph';

if(!defined (defined(&_SIGNAL_H) ? &_SIGNAL_H : 0)  && !defined (defined(&_SYS_UCONTEXT_H) ? &_SYS_UCONTEXT_H : 0)) {
    die("Never use <bits/sigcontext.h> directly; include <signal.h> instead.");
}
unless(defined(&sigcontext_struct)) {
    eval 'sub sigcontext_struct () { &sigcontext;}' unless defined(&sigcontext_struct);
    require 'asm/sigcontext.ph';
}
1;
