#!/bin/sh
# Enable/disable swap over NFS. Assumes /netfs is populated.
# Linux 2.4 has a hard limit of eight loop devices.
# 
# Recommended placement in the runlevels:
#         etc/rc1.d/K79nfsswap
#         etc/rc3.d/S21nfsswap
#         etc/rc4.d/S21nfsswap
#         etc/rc5.d/S21nfsswap
#         etc/rc6.d/K79nfsswap
#
# Written by Cameron Kaiser <ckaiser@floodgap.com>

nfsloop=/dev/loop7
nfsswap=/netfs/swapfile

test -r $nfsswap || exit 0
test -b $nfsloop || exit 0

case "$1" in
start)	echo -n "Starting NFS swap... "
	/sbin/losetup $nfsloop $nfsswap || exit 1
	/sbin/swapon $nfsloop || exit 1
        echo "" 
	;;
stop)	echo -n "Stopping NFS swap... "
	/sbin/swapoff $nfsloop || exit 1
	/sbin/losetup -d $nfsloop || exit 1
        echo ""
        ;;
*)	echo "Usage: /etc/init.d/nfsswap.sh start|stop"
        exit 1 
        ;;
esac
exit 0
