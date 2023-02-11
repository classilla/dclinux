require '_h2ph_pre.ph';

unless(defined(&_SYSCALL_H)) {
    eval 'sub _SYSCALL_H () {1;}' unless defined(&_SYSCALL_H);
    require 'asm/unistd.ph';
    unless(defined(&_LIBC)) {
	require 'bits/syscall.ph';
    }
}
1;
