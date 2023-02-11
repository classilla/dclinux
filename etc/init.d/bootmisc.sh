#
# bootmisc.sh	Miscellaneous things to be done during bootup.
#
# Version:	@(#)bootmisc.sh  2.78  13-Nov-1999  miquels@cistron.nl
#

. /etc/default/rcS
#
# Put a nologin file in /etc to prevent people from logging in before
# system startup is complete.
#
if [ "$DELAYLOGIN" = yes ]
then
  echo "System bootup in progress - please wait" > /etc/nologin
  cp /etc/nologin /etc/nologin.boot
fi

#
# Wipe /tmp (and don't erase `lost+found', `quota.user' or `quota.group')!
# Note that files _in_ lost+found _are_ deleted.
#
[ "$VERBOSE" != no ] && echo -n "Cleaning: /tmp "
#
#	If $TMPTIME is set to 0, we do not use any ctime expression
#	at all, so we can also delete files with timestamps
#	in the future!
#
if [ "$TMPTIME" = 0 ]
then
	TEXPR=""
else
	TEXPR="! -ctime -$TMPTIME"
fi
( cd /tmp && \
  find . -xdev \
  $TEXPR \
  ! -name . \
  ! \( -name lost+found -uid 0 \) \
  ! \( -name quota.user -uid 0 \) \
  ! \( -name quota.group -uid 0 \) \
    -depth -exec rm -rf -- {} \; )
rm -f /tmp/.X*-lock
#
# Clean up any stale locks.
#
[ "$VERBOSE" != no ] && echo -n "/var/lock "
( cd /var/lock && find . -type f ! -newer /etc/mtab -exec rm -f -- {} \; )
#
# Clean up /var/run and create /var/run/utmp so that we can login.
#
[ "$VERBOSE" != no ] && echo -n "/var/run"
( cd /var/run && \
	find . ! -type d ! -name utmp ! -name innd.pid ! -name random-seed \
	! -newer /etc/mtab -exec rm -f -- {} \; )
: > /var/run/utmp
if grep -q ^utmp: /etc/group
then
	chmod 664 /var/run/utmp
	chgrp utmp /var/run/utmp
fi
[ "$VERBOSE" != no ] && echo "."

#
# Set pseudo-terminal access permissions.
#
if [ -c /dev/ttyp0 ]
then
	chmod 666 /dev/tty[p-za-e][0-9a-f]
	chown root:tty /dev/tty[p-za-e][0-9a-f]
fi

#
# Update /etc/motd.
#
if [ "$EDITMOTD" != no ]
then
	uname -a > /etc/motd.tmp
	sed 1d /etc/motd >> /etc/motd.tmp
	mv /etc/motd.tmp /etc/motd
fi

#
# Save kernel messages in /var/log/dmesg
#
dmesg > /var/log/dmesg

