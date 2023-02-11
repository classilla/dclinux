/*
 * Tiny test program for the `spawn console' key
 * (should not use signal; should not use sleep)
 * aeb - 941025
 *
 * Note: this functionality has become part of init.
 * 
 * Note: open(1) is now part of the `open' Debian package.
 * 
 * You do not want to it on a system, as takes RAM for
 * nothing more than what init does.
 * 
 * To use init, edit the "kb" entry in /etc/inittab.
 * Eg:
 *     kb::kbrequest:/bin/open -sl -- login
 */
#include <signal.h>
#include <stdlib.h>		       /* system */
#include <fcntl.h>		       /* open */
#include <unistd.h>		       /* sleep */
#include <sys/ioctl.h>		       /* ioctl */
#include <linux/kd.h>

void
sighup(){
    system("open -s -l -- login -h spawn");
    signal(SIGHUP, sighup);
}

void
main(){
    int fd;

    fd = open("/dev/console", 0);
    if (fd < 0)
      fd = 0;
    signal(SIGHUP, sighup);
    ioctl(fd, KDSIGACCEPT, (long) SIGHUP);
    while(1)
      sleep(3600);
}
