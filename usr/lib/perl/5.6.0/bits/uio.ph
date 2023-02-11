require '_h2ph_pre.ph';

unless(defined(&_SYS_UIO_H)) {
    die("Never include <bits/uio.h> directly; use <sys/uio.h> instead.");
}
require 'sys/types.ph';
unless(defined(&UIO_MAXIOV)) {
    sub UIO_MAXIOV () {	1024;}
}
1;
