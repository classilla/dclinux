#!/bin/sh

# Quick test script to try the messages in a Maildir for whether they
# are filtered by the RBL. Good for testing to see if mail you receive
# now would be caught in a filter.
#
# $Id: test_rblcheck.sh,v 1.6 2000/04/21 15:22:57 logic Exp $
#
# $Log: test_rblcheck.sh,v $
# Revision 1.6  2000/04/21 15:22:57  logic
# Update to current cvs tree.
#
# Revision 1.1.1.1  1998/01/09 20:42:50  emarshal
# Initial import into CVS.
#

MAILDIR=$HOME/Maildir

for i in $MAILDIR/new/* $MAILDIR/cur/*
do
	x="`cat $i | ./origip`"
	if [ -z "$x" ]
	then
		echo "failure: $i"
	else
		rblcheck "$x"
	fi
done
