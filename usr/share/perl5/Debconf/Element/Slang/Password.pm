#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Slang::Password;
use strict;
use Term::Stool::Password;
use base qw(Debconf::Element::Slang);
sub make_widgets {
	my $this=shift;
	my $widget=Term::Stool::Password->new;
	$widget->preferred_width($widget->width);
	return $widget;
}
sub value {
	my $this=shift;
	
	my $text=$this->widgets->[0]->text;
	$text=$this->question->value if $text eq '';
	return $text;
}
1
