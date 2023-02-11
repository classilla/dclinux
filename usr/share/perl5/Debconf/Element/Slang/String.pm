#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Slang::String;
use strict;
use Term::Stool::Input;
use base qw(Debconf::Element::Slang);
sub make_widgets {
	my $this=shift;
	my $default='';
	$default=$this->question->value if defined $this->question->value;
	return Term::Stool::Input->new(
		text => $default,
		preferred_width => 20,
	);
}
sub resize {
	my $this=shift;
	my $y=shift;
	my $widget=$this->widgets->[0];
	my $description=$this->widget_description;
	my $maxwidth=$widget->container->width - 4;
	my $sameline;
	if ($maxwidth > $widget->preferred_width + $description->width) {
		$sameline=1;
		$widget->width($maxwidth - 1 - $description->width);
		$widget->xoffset($description->width + 2);
	}
	else {
		$sameline=0;
		$widget->width($maxwidth);
		$widget->xoffset(1);
	}
	$description->yoffset($y);
	$description->resize;
	$y++ unless $sameline;
	$widget->yoffset($y);
	
	return $y;
}
sub value {
	my $this=shift;
	return $this->widgets->[0]->text;
}
1
