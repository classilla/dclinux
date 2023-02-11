/*
 * Tiny test program for the `spawn console' key
 * (should not use signal; should not use sleep)
 * aeb - 941025
 *
 * Note: this functionality has become part of init.
 * 
 * Note: open(1) is now part of the `open' Debian package.
 * 
 * You should not use it on a system; if you want to do this, 
 * be very careful.
 * 
 * If you have this in /etc/rc.local you should
 * start getty, not open, or anybody will have a root shell
 * with a single keystroke.
 */
#include <signal.h>
#include <stdlib.h>		       /* system */
#include <fcntl.h>		       /* open */
#include <unistd.h>		       /* sleep */
#include <sys/ioctl.h>		       /* ioctl */
#include <linux/kd.h>

void
sighup(){
    system("open -s -l bash");
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
