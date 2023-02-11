#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Slang::Text;
use strict;
use Term::Stool::Widget;
use base qw(Debconf::Element::Slang);
sub make_widgets {
	my $this=shift;
	
	return Term::Stool::Widget->new(
		can_focus => 0,
		width => 1,
		preferred_width => 1,
	);
}
1
