#!/usr/bin/awk -f

# This simple awk script takes an email message on standard input,
# and outputs the connecting host on standard output. Returns with 0
# for success, 1 for failure.
#
# This script is QMail-specific.
#
# $Id: origip.awk,v 1.6 2000/04/21 15:22:57 logic Exp $
#
# $Log: origip.awk,v $
# Revision 1.6  2000/04/21 15:22:57  logic
# Update to current cvs tree.
#
# Revision 1.1.1.1  1998/01/09 20:42:50  emarshal
# Initial import into CVS.
#

BEGIN {
	found = 0;
}

( $1 == "Received:" && found == 1 ) {
	a = $0;
	while( getline )
		if( $1 != "Received:" )
			a = a $0;
		else
			break;
	split( a, x );
	if( x[ 4 ] == "(HELO" )
		split( x[ 6 ], y, /[@()]/ );
	else
		split( x[ 4 ], y, /[@()]/ );
	if( y[ 3 ] == "" )
		print y[ 2 ];
	else
		print y[ 3 ];
	exit 0;
}

( $1 == "Received:" && found == 0 ) {
	found = 1;
}

END {
	exit 1;
}
