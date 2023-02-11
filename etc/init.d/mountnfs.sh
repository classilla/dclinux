#
# mountnfs.sh	Now that TCP/IP is configured, mount the NFS file
#		systems in /etc/fstab if needed. If possible,
#		start the portmapper before mounting (this is needed for
#		Linux 2.1.x and up).
#
#		Also mounts SBM filesystems now, so the name of
#		this script is getting increasingly inaccurate.
#
# Version:	@(#)mountnfs.sh  1.20  11-Feb-2000  miquels@cistron.nl
#

. /etc/default/rcS

#
#	Run in a subshell because of I/O redirection.
#
test -f /etc/fstab && (

#
#	Read through fstab line by line. If it is NFS, set the flag
#	for mounting NFS file systems. If any NFS partition is found and it
#	not mounted with the nolock option, we start the portmapper.
#
portmap=no
mount_nfs=no
mount_smb=no
while read device mountpt fstype options
do
	case "$device" in
		""|\#*)
			continue
			;;
	esac
	if [ "$fstype" = nfs ]
	then
		case "$options" in
			*noauto*)
				;;
			*nolock*)
				mount_nfs=yes
				;;
			*)
				mount_nfs=yes
				portmap=yes
				;;
		esac
	fi
	if [ "$fstype" = smbfs ]
	then
		case "$options" in
			*noauto*)
				;;
			*)
				mount_smb=yes
				;;
		esac
	fi
done

exec 0>&1

if [ "$portmap" = yes ]
then
	if [ -x /sbin/portmap ]
	then
		echo -n "Starting portmapper... "
		start-stop-daemon --start --quiet --exec /sbin/portmap
		sleep 2
	fi
fi

if [ "$mount_nfs" = yes ] || [ "$mount_smb" = yes ]
then
	echo "Mounting remote filesystems..."
	[ "$mount_nfs" = yes ] && mount -a -t nfs
	[ "$mount_smb" = yes ] && mount -a -t smbfs
fi

) < /etc/fstab

