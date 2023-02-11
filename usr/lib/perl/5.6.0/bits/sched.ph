require '_h2ph_pre.ph';

unless(defined(&__need_schedparam)) {
    unless(defined(&_SCHED_H)) {
	die("Never include <bits/sched.h> directly; use <sched.h> instead.");
    }
    eval 'sub SCHED_OTHER () {0;}' unless defined(&SCHED_OTHER);
    eval 'sub SCHED_FIFO () {1;}' unless defined(&SCHED_FIFO);
    eval 'sub SCHED_RR () {2;}' unless defined(&SCHED_RR);
    if(defined(&__USE_MISC)) {
	eval 'sub CSIGNAL () {0x000000ff;}' unless defined(&CSIGNAL);
	eval 'sub CLONE_VM () {0x00000100;}' unless defined(&CLONE_VM);
	eval 'sub CLONE_FS () {0x00000200;}' unless defined(&CLONE_FS);
	eval 'sub CLONE_FILES () {0x00000400;}' unless defined(&CLONE_FILES);
	eval 'sub CLONE_SIGHAND () {0x00000800;}' unless defined(&CLONE_SIGHAND);
	eval 'sub CLONE_PID () {0x00001000;}' unless defined(&CLONE_PID);
	eval 'sub CLONE_PTRACE () {0x00002000;}' unless defined(&CLONE_PTRACE);
	eval 'sub CLONE_VFORK () {0x00004000;}' unless defined(&CLONE_VFORK);
    }
    if(defined(&__USE_MISC)) {
    }
}
if(!defined (defined(&__defined_schedparam) ? &__defined_schedparam : 0)  && (defined (defined(&__need_schedparam) ? &__need_schedparam : 0) || defined (defined(&_SCHED_H) ? &_SCHED_H : 0))) {
    eval 'sub __defined_schedparam () {1;}' unless defined(&__defined_schedparam);
    undef(&__need_schedparam) if defined(&__need_schedparam);
}
1;
