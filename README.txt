		 Dreamcast Linux Network Distribution
		      010605 beta RELEASE NOTES

	 YAEGASHI Takeshi <t@keshi.org> <takeshi@yaegashi.jp>


About This Software
===================

This is Dreamcast Linux, GNU/Linux on SEGA Dreamcast.  You can obtain
more information about that from:

	http://www.m17n.org/linux-sh/dreamcast/

It's a complete stand-alone system in one CD; you don't need Broadband
Adapter nor NFS server any longer, but may need Dreamcast keyboard
(and mouse for X) for practical use.  If you still have Broadband
Adapter or serial cable, of course you can login Dreamcast with them.

Both NTSC Video and VGA output are supported, but VGA is highly
recommended.

License notice:

All the software in this package are copyrighted somehow, and are
provided "as-is".  This package comes with ABSOLUTELY NO WARRANTY.
For details, please refer our project: http://www.m17n.org/linux-sh/


Mastering Bootable CD-R
=======================

The detail of how to make Dreamcast bootable CD is not covered by this
document.  Refer to Marcus Comstedt's Dreamcast web site, and included
sample shell script(master.sh).  Don't ask me about this issue.

You need the IP.BIN file to make a CD.  With included script mastering
process would be as follows.

	# tar -xjvf dreamcast-linux-yymmdd.tar.bz2
	# cd dreamcast-linux-yymmdd
	# vi master.sh (change some variables)
	# ./master.sh /somewhere/IP.BIN


eCos/RedBoot
============

First, Red Hat and eCos logo will appear on the screen.  After waiting
about 10 seconds, it will load Linux kernel and initrd images from CD,
and the GNU/Linux system is automatically booting up.

eCos/RedBoot is used as a kernel boot loader for this distribution, but
it can also be used for Dreamcast software development.  While the
boot script waits for timeout, connect Dreamcast via serial cable
(115.2Kbps) or network (telnet dreamcast 9000) and send ^C to
interrupt the booting process.

With eCos/RedBoot you can load images into Dreamcast's memory from
another CD, from network server via TFTP, from terminal software with
X/YMODEM via serial cable.  Refer to http://www.m17n.org/linux-sh/ecos
for further information.


Network Configuration
=====================

Of course you can use the network with Broadband Adapter.  If there is
a DHCP server on your network, pump(DHCP client) will properly
configure the network interface at boot time.


Login
=====

You can login the Dreamcast as root without any password via
console(with Dreamcast keyboard), via serial port(with terminal
software), via network(with telnet).

FTP server is also available.


X Window System
===============

Running xdm from the console should be enough to use X Window System.


XMAME
=====

XMAME is arcade game machine emulator for UNIX(http://x.mame.net/).

There are no game ROM images in this package.  Your zipped ROM images
should be in /var/lib/xmame/.

X11(xmame.x11) and SDL(xmame.SDL) version is provided.  For SDL
version on frame buffer, you should set the frame buffer to 16bpp before
invoking.

	# fbset -depth 16
	# xmame.SDL

You can play games with your Dreamcast controller.  Following settings
are in /root/.xmame/cfg/default.cfg:

	Y button     - 1P CREDIT
	START button - 1P START


PRBOOM
======

Prboom is a version of DOOM for UNIX, Linux and Windows systems
(http://prboom.sourceforge.net/).

The DOOM 1 share ware WAD file is included in this package for your
convenience.  See /usr/share/doc/doom-wad-shareware/copyright for the
license terms.

On the frame buffer(not X) you should set the frame buffer to 16bpp mode
before invoking prboom.

	# fbset -depth 16
	# prboom

It seems that the first invocation tends to fail; try once again in
that case.
