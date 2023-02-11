#
# mountall.sh	Mount all filesystems.
#
# Version:	@(#)mountall.sh  2.78  05-Jun-2000  miquels@cistron.nl
#
. /etc/default/rcS

#
# Mount local file systems in /etc/fstab.
#
[ "$VERBOSE" != no ] && echo "Mounting local filesystems..."
mount -avt nonfs,noproc,nosmbfs

#
# We might have mounted something over /dev, see if /dev/initctl is there.
#
if [ ! -p /dev/initctl ]
then
	rm -f /dev/initctl
	mknod -m 600 /dev/initctl p
fi
kill -USR1 1

#
# Execute swapon command again, in case we want to swap to
# a file on a now mounted filesystem.
#
grep -qs resync /proc/mdstat || swapon -a 2> /dev/null

