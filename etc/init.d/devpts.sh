#! /bin/sh

set -e

. /etc/default/devpts

[ "$(uname -s)" = "Linux" ] || exit 0

#
#	First find out if devpts is available. Also check if devfs
#	is already mounted - in that case we don't want to use devpts.
#
devpts_avail=$(grep -qci '[<[:space:]]devpts' /proc/filesystems || true)
devpts_mounted=$(grep -qci '/dev/pts' /proc/mounts || true)
devfs_mounted=$(grep -qci '[<[:space:]]/dev[>[:space:]].*devfs' /proc/mounts || true)

if [ $devfs_mounted = 0 ] && [ $devpts_avail != 0 ]
then
	#
	#	Create mountpoint and multiplexor device.
	#
	[ -d /dev/pts ] || mkdir --mode=755 /dev/pts
	[ -c /dev/ptmx ] || mknod --mode=666 /dev/ptmx c 5 2

	#
	#	Mount /dev/pts if needed.
	#
	if [ $devpts_mounted = 0 ]
	then
		mount -t devpts devpts /dev/pts -ogid=${TTYGRP},mode=${TTYMODE}
	fi
fi
