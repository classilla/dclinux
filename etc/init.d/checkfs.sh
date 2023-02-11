#
# checkfs.sh	Check all filesystems.
#
# Version:	@(#)checkfs  2.78  13-Nov-1999  miquels@cistron.nl
#

. /etc/default/rcS

#
# Check the rest of the file systems.
#
if [ ! -f /fastboot ]
then
    if [ -f /forcefsck ]
    then
        force="-f"
    else
        force=""
    fi
    if [ "$FSCKFIX"  = yes ]
    then
	fix="-y"
    else
	fix="-a"
    fi
    echo "Checking all file systems..."
    fsck -C -R -A $fix $force
    if [ $? -gt 1 ]
    then
      echo
      echo "fsck failed.  Please repair manually."
      echo
      echo "CONTROL-D will exit from this shell and continue system startup."
      echo
      # Start a single user shell on the console
      /sbin/sulogin $CONSOLE
    fi
fi
rm -f /fastboot /forcefsck

