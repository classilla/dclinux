#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::FrontEnd::Tty;
use strict;
use Debconf::Gettext;
use base qw(Debconf::FrontEnd);
sub init {
	my $this=shift;
	$this->SUPER::init(@_);
	open(TESTTY, "/dev/tty") || die gettext("This frontend requires a controlling tty.")."\n";
	$this->resize; # Get current screen size.
	$SIG{'WINCH'}=sub { $this->resize };
}
sub resize {
	my $this=shift;
	if (exists $ENV{'LINES'}) {
		$this->screenheight($ENV{'LINES'});
	}
	else {
		my ($rows)=`stty -a </dev/tty 2>/dev/null` =~ m/rows (\d+)/s;
		$this->screenheight($rows || 25);
	}
	if (exists $ENV{'COLUMNS'}) {
		$this->screenwidth($ENV{'COLUMNS'});
	}
	else {
		my ($cols)=`stty -a </dev/tty 2>/dev/null` =~ m/columns (\d+)/s;
		$this->screenwidth($cols || 80);
	}
}
1
