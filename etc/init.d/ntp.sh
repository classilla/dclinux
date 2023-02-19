#!/bin/sh
# Start/stop the NTP daemon (currently chronyd).

export SERVICE=chronyd
export DAEMON=/usr/bin/chronyd
test -f $DAEMON || exit 0

case "$1" in
start)	echo -n "Starting NTP: $SERVICE"
        start-stop-daemon --start --quiet --exec $DAEMON
        echo "." 
	;;
stop)	echo -n "Stopping NTP: $SERVICE"
        start-stop-daemon --stop --quiet --exec $DAEMON
        echo "."
        ;;
restart) echo -n "Restarting NTP: $SERVICE"
        start-stop-daemon --stop --quiet --exec $DAEMON
        start-stop-daemon --start --quiet --exec $DAEMON
        echo "."
        ;;
*)	echo "Usage: /etc/init.d/ntp.sh start|stop|restart"
        exit 1 
        ;;
esac
exit 0
