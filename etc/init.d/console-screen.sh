#!/bin/sh

#
# This is the boot script for the `console-tools' package.
#
# It loads parameters from /etc/console-tools/config, maybe loads
# default screen-font, screen font-map, and application charset-map,
# and maybe start "vcstime"
#
# (c) 1997 Yann Dirson

if [ -r /etc/console-tools/config ] ; then
    . /etc/console-tools/config
fi

SETFONT="/usr/bin/consolechars"
SETFONT_OPT=""
CHARSET="/usr/bin/charset"
VCSTIME="/usr/sbin/vcstime"

# be sure the main program is installed
[ -x "${SETFONT}" ] || exit 0


# set DEVICE_PREFIX depending on devfs
if [ "`grep -c devfs /proc/filesystems`" -a -d /dev/vc ]; then
  DEVICE_PREFIX="/dev/vc/"
else
  DEVICE_PREFIX="/dev/tty"
fi


reset_vga_palette ()
{
    if ! /usr/bin/tty | grep -q ttyS ; then
       # not a serial console.
       if [ -f /proc/fb ]; then
           # They have a framebuffer device.
           # That means we have work to do...
           echo -n "]R"
       fi
    fi
}

setup ()
{
    reset_vga_palette

    # start vcstime
    if [ "${DO_VCSTIME}" = "yes" -a -x ${VCSTIME} ] ; then
      echo -n Starting clock on text console: `basename ${VCSTIME}`
      ${VCSTIME} &
      echo .
    fi


    # Global default font+sfm
    if [ "${SCREEN_FONT}" ]
    then
	echo -n "Setting up general console font... "
	SCREEN_FONT="-f ${SCREEN_FONT}"

	# maybe use an external SFM
	[ "${SCREEN_FONT_MAP}" ] && SCREEN_FONT_MAP="-u ${SCREEN_FONT_MAP}"

	${SETFONT} ${SETFONT_OPT} ${SCREEN_FONT} ${SCREEN_FONT_MAP} && echo done.
    fi


    # Per-VC font+sfm
    PERVC_FONTS=`set | grep "^SCREEN_FONT_vc[0-9]*="`
    if [ "${PERVC_FONTS}" ]
    then
	echo -n "Setting up per-VC fonts: "
	for font in ${PERVC_FONTS}
	do
	    # extract VC and FONTNAME info from variable setting
	    font=`echo $font | cut -c15-`
	    vc=`echo $font | cut -d= -f1`
	    font=`echo $font | cut -d= -f2`
	    echo -n "${DEVICE_PREFIX}${vc}, "
	    # eventually find an associated SFM
	    eval sfm=\${SCREEN_FONT_MAP_vc${vc}}
	    [ "$sfm" ] && sfm="-u $sfm"

	    ${SETFONT} --tty=${DEVICE_PREFIX}$vc ${SETFONT_OPT} -f $font $sfm
	done
	echo "done."
    fi


    # Global ACM
    [ "${APP_CHARSET_MAP}" ] && ${CHARSET} G0 ${APP_CHARSET_MAP}


    # Per-VC ACMs
    PERVC_ACMS=`set | grep "^APP_CHARSET_MAP_vc[0-9]*="`
    if [ "${PERVC_ACMS}" ]
    then
	echo -n "Setting up per-VC ACM's: "
	for acm in ${PERVC_ACMS}
	do
	    # extract VC and FONTNAME info from variable setting
	    acm=`echo $acm | cut -c19-`
	    vc=`echo $acm | cut -d= -f1`
	    acm=`echo $acm | cut -d= -f2`

	    echo -n "${DEVICE_PREFIX}${vc} ($acm), "
	    ${CHARSET} --tty=${DEVICE_PREFIX}$vc G0 $acm
	done
	echo "done."
    fi
}

case "$1" in
start|reload|restart|force-reload)
    setup
    ;;
stop)
    ;;
*)
    setup
    ;;
esac
