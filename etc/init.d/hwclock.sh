#!/bin/sh
# hwclock.sh	Set and adjust the CMOS clock, according to the UTC
#		setting in /etc/default/rcS (see also rcS(5)).
#
# Version:	@(#)hwclock.sh  2.00  14-Dec-1998  miquels@cistron.nl
#
# Patches:
#		2000-01-30 Henrique M. Holschuh <hmh@rcm.org.br>
#		 - Minor cosmetic changes in an attempt to help new
#		   users notice something IS changing their clocks
#		   during startup/shutdown.
#		 - Added comments to alert users of hwclock issues
#		   and discourage tampering without proper doc reading.

# WARNING:	Please read /usr/share/doc/util-linux/README.Debian.hwclock
#		before changing this file. You risk serious clock
#		misbehaviour otherwise.

. /etc/default/rcS
[ "$GMT" = "-u" ] && UTC="yes"
case "$UTC" in
       no|"") GMT="--localtime"	;;
       yes)   GMT="--utc" 	;;
       *)     echo "$0: unknown UTC setting: \"$UTC\"" >&2 ;;
esac

case "$BADYEAR" in
       no|"") BADYEAR=""	;;
       yes)   BADYEAR="--badyear" 	;;
       *)     echo "$0: unknown BADYEAR setting: \"$BADYEAR\"" >&2 ;;
esac

case "$1" in
	start)
		if [ ! -f /etc/adjtime ]
		then
			echo "0.0 0 0.0" > /etc/adjtime
		fi

		# Uncomment the hwclock --adjust line below if you want 
		# hwclock to try to correct systematic drift errors in the 
		# Hardware Clock.
		#
		# WARNING: If you uncomment this option, you must either make
		# sure *nothing* changes the Hardware Clock other than
		# hwclock --systohc, or you must delete /etc/adjtime 
		# every time someone else modifies the Hardware Clock.
		#
		# Common "vilains" are: ntp, MS Windows, the BIOS Setup
		# program. 
		#
		# WARNING: You must remember to invalidate (delete)
		# /etc/adjtime if you ever need to set the system clock
		# to a very different value and hwclock --adjust is being
		# used.
		#
		# Please read /usr/share/doc/util-linux/README.Debian.hwclock
		# before enablig hwclock --adjust.
		#
		# hwclock --adjust $GMT $BADYEAR

		if [ "$VERBOSE" != no ]
		then
			echo
			echo "Setting the System Clock using the Hardware Clock as reference..."
		fi
		# Copies Hardware Clock time to System Clock using the correct
		# timezone for hardware clocks in local time, and sets kernel 
		# timezone. DO NOT REMOVE.
		hwclock --hctosys $GMT $BADYEAR
		#
		#	Now that /usr/share/zoneinfo should be available,
		#	announce the local time.
		#
		if [ "$VERBOSE" != no ]
		then
			echo "System Clock set. Local time: `date`"
			echo
		fi
		;;
	stop|restart|reload|force-reload)
		#
		# Updates the Hardware Clock with the System Clock time.
		# This will *override* any changes made to the Hardware Clock.
		#
		# WARNING: If you disable this, any changes to the system
		#          clock will not be carried across reboots.
		#
		if [ "$VERBOSE" != no ]
		then
			echo "Saving the System Clock time to the Hardware Clock..."
		fi
		[ "$GMT" = "-u" ] && GMT="--utc"
		hwclock --systohc $GMT $BADYEAR
		if [ "$VERBOSE" != no ]
		then
			echo "Hardware Clock updated to `date`."
		fi
		;;
	show)
		hwclock --show $GMT $BADYEAR
		;;
	*)
		echo "Usage: hwclock.sh {start|stop|reload|force-reload|show}" >&2
		echo "       start sets kernel (system) clock from hardware (RTC) clock" >&2
		echo "       stop and reload set hardware (RTC) clock from kernel (system) clock" >&2
		exit 1
		;;
esac

