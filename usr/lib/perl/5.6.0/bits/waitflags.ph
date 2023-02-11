require '_h2ph_pre.ph';

if(!defined (defined(&_SYS_WAIT_H) ? &_SYS_WAIT_H : 0)  && !defined (defined(&_STDLIB_H) ? &_STDLIB_H : 0)) {
    die("Never include <bits/waitflags.h> directly; use <sys/wait.h> instead.");
}
unless(defined(&WNOHANG)) {
    sub WNOHANG () {	1;}
}
unless(defined(&WUNTRACED)) {
    sub WUNTRACED () {	2;}
}
unless(defined(&__WALL)) {
    sub __WALL () {	0x40000000;}
}
unless(defined(&__WCLONE)) {
    sub __WCLONE () {	0x80000000;}
}
1;
