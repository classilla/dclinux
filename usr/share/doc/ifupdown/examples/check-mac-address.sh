#!/bin/sh -e

iface="$1"
targetmac="$2"
mac=$(/sbin/ifconfig $iface | sed -n 's/^.*HWaddr \([0-9A-Za-z:]*\).*/\1/p')

if [ "$targetmac" = "$mac" ]; then exit 0; else exit 1; fi
