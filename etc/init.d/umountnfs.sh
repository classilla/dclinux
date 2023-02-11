#! /bin/sh
#
# umountnfs.sh	Unmount all network file systems.
#
# Version:      @(#)umountnfs.sh  2.78  05-Jun-2000  miquels@cistron.nl
#

PATH=/sbin:/bin:/usr/sbin:/usr/bin

case "`uname -r`" in
  1.*|2.[01].*) FORCE=""   ;;
  *)            FORCE="-f" ;;
esac

# Write a reboot record to /var/log/wtmp before unmounting
halt -w

echo -n "Unmounting remote filesystems... "
umount -tnfs,smbfs $FORCE -a -r
echo "done."

