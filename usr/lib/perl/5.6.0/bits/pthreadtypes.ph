require '_h2ph_pre.ph';

if(!defined (defined(&_BITS_TYPES_H) ? &_BITS_TYPES_H : 0)  && !defined (defined(&_PTHREAD_H) ? &_PTHREAD_H : 0)) {
    die("Never include <bits/pthreadtypes.h> directly; use <sys/types.h> instead.");
}
unless(defined(&_BITS_PTHREADTYPES_H)) {
    eval 'sub _BITS_PTHREADTYPES_H () {1;}' unless defined(&_BITS_PTHREADTYPES_H);
    eval 'sub __need_schedparam () {1;}' unless defined(&__need_schedparam);
    require 'bits/sched.ph';
    unless(defined(&_PTHREAD_DESCR_DEFINED)) {
	eval 'sub _PTHREAD_DESCR_DEFINED () {1;}' unless defined(&_PTHREAD_DESCR_DEFINED);
    }
    if(defined(&__USE_UNIX98)) {
    }
    if(defined(&__USE_XOPEN2K)) {
    }
}
1;
