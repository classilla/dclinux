#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Slang::Boolean;
use strict;
use Term::Stool::CheckBox;
use base qw(Debconf::Element::Slang);
sub make_widgets {
	my $this=shift;
	return Term::Stool::CheckBox->new(
		checked => (defined $this->question->value && $this->question->value eq 'true') ? 1 : 0,
	);
}
sub resize {
	my $this=shift;
	my $y=shift;
	my $widget=$this->widgets->[0];
	my $description=$this->widget_description;
	my $maxwidth=$widget->container->width - 4;
	$widget->xoffset(1);
	$description->xoffset(1 + $widget->width + 1);
	$description->width($widget->container->width - 4 -
		$description->xoffset + 1);
	$description->yoffset($y);
	$description->resize;
	$widget->yoffset($y);
	
	return $y;
}
sub value {
	my $this=shift;
	my $ret='false';
	$ret='true' if $this->widgets->[0]->checked;
	return $ret;
}
1
