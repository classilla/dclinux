#! /bin/sh
# /etc/init.d/procps: Set kernel variables from /etc/sysctl.conf
#
# written by Elrond <Elrond@Wunder-Nett.org>

# Check for existance of the default file and exit if not there,
# Closes #52839 for the boot-floppy people
[ -r /etc/default/rcS ] || exit 0
. /etc/default/rcS

[ -x /sbin/sysctl ] || exit 0


case "$1" in
       start|reload|restart|force-reload)
               if [ ! -r /etc/sysctl.conf ]
               then
                       exit 0
               fi
               if [ "$VERBOSE" = "no" ]
               then
                       n="-n"
                       redir=">/dev/null"
               else
                       echo "Setting kernel variables."
                       n=""
                       redir=""
               fi
               eval "/sbin/sysctl $n -p $redir"
               ;;
       stop|show)
               ;;
       *)
               echo "Usage: /etc/init.d/sysctl.sh {start|stop|reload|restart}" >&2
               exit 1
               ;;
esac


