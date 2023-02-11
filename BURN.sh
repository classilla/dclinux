#!/bin/sh

MKISOFS="mkisofs"
IPBIN="$1"
CDDEV="$2"

if test -z "$IPBIN" -o ! -f "$IPBIN" -o ! -b "$CDDEV"; then
	echo "Usage: $0 <IP.BIN> <CD device>"
	exit 1
fi

if test ! -f 1ST_READ.BIN -a ! -f 1st_read.bin; then
	echo "No 1ST_READ.BIN: Execute this script in the root of ISO9660 tree!"
	exit 1
fi

WODIM="wodim dev=$CDDEV -speed=4 -v"

dd if=/dev/zero bs=2352 count=300 | \
	$WODIM -multi -audio -dao tsize=705600 - || exit 1

# some drives may need 11702 instead: if you're burning coasters try that
$MKISOFS -v -l -r -f -C 0,11700 -G $IPBIN . \
	| $WODIM -tao -overburn -xa -eject -
