# Makefile for origip.
#
# $Id: Makefile,v 1.6 2000/04/21 15:22:57 logic Exp $
#
# $Log: Makefile,v $
# Revision 1.6  2000/04/21 15:22:57  logic
# Update to current cvs tree.
#
# Revision 1.1.1.1  1998/01/09 20:42:50  emarshal
# Initial import into CVS.
#

CC=gcc
CFLAGS=-O2
LDFLAGS=-s

all: origip

clean:
	-rm origip

test:
	@echo "Testing 'origip'..."
	./test_origip.sh
	@echo "Testing 'rblcheck'..."
	./test_rblcheck.sh
