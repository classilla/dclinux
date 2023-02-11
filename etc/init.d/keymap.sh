#!/bin/sh

#
# Load the keymaps *as soon as possible*
#

command -v loadkeys >/dev/null 2>&1 || exit 0

CONFDIR=/etc/console
CONFFILEROOT=boottime
EXT=kmap

#KERNEL_KEYMAP=/var/state/misc/kernel.${EXT}

case "$1" in
    start | restart | force-reload | reload)
# 	# save kernel keymap
# 	if [ -d ${KERNEL_KEYMAP%/*} -a ! -r ${KERNEL_KEYMAP} ]
# 	then
# 	    /usr/bin/dumpkeys > ${KERNEL_KEYMAP}
# 	fi

	# load new map
	if [ -r ${CONFDIR}/${CONFFILEROOT}.${EXT}.gz ] ; then
	    loadkeys ${CONFDIR}/${CONFFILEROOT}.${EXT}.gz
	fi
	;;

    stop)
# 	# ensure the saved kernel keymap is removed before halt/reboot
# 	rm -f ${KERNEL_KEYMAP}
	;;

    *)
	echo "Usage: $0 {start|stop|restart|reload|force-reload}"
	exit 1
	;;
esac
