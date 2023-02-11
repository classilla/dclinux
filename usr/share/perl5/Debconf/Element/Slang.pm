#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Slang;
use strict;
use base qw(Debconf::Element);
sub widgets {
	my $this=shift;
	return $this->_widgets if $this->_widgets;
	return $this->_widgets([$this->make_widgets]);
}
sub make_widgets {
	die "make_widgets not overridden by child class";
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
		$widget->width($widget->preferred_width);
		$widget->xoffset($description->width + 2);
	}
	elsif ($maxwidth > $widget->preferred_width) {
		$sameline=0;
		$widget->width($widget->preferred_width);
		$widget->xoffset(1);
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
	return '';
}
1
