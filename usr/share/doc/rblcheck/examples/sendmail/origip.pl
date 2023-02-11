#!/usr/bin/perl -w

# Specifically for pulling the remote IP address out of Sendmail
# Received: headers. Supplied by Ophir Ronen <ophir@internap.com>,
# ever-so-slightly modified by Edward S. Marshall <emarshal@logic.net>.
#
# $Id: origip.pl,v 1.6 2000/04/21 15:22:57 logic Exp $
#
# $Log: origip.pl,v $
# Revision 1.6  2000/04/21 15:22:57  logic
# Update to current cvs tree.
#
# Revision 1.2  1998/08/21 01:04:14  emarshal
# Committed patch from Dougal Campbell for default value and better checking
# for a match against a Received: header.
#
# Revision 1.1.1.1  1998/01/09 20:42:50  emarshal
# Initial import into CVS.
#

# Default value. If we can't find something in the headers, use this.
$REMOTEIP = '127.0.0.1';

@msg = <STDIN>;

foreach $line ( @msg )
{
	chop $line;

	if( $line =~ /^Received:.*\[(\d+.*)\]/ )
	{
		$REMOTEIP = $1;
		last;
	}
}
print $REMOTEIP;

# EOF
