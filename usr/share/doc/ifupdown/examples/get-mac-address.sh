#!/bin/sh -e

iface="$1"
mac=$(/sbin/ifconfig $iface | sed -n 's/^.*HWaddr \([0-9A-Za-z:]*\).*/\1/p')
which=""

while read testmac scheme; do
	if [ "$which" ]; then continue; fi
	if [ "$mac" = "$testmac" ]; then which="$scheme"; fi
done

if [ "$which" ]; then echo $which; exit 0; fi
exit 1
