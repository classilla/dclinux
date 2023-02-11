#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Slang::Select;
use strict;
use Term::Stool::DropDown;
use base qw(Debconf::Element::Select Debconf::Element::Slang);
sub make_widgets {
	my $this=shift;
	my $default=$this->translate_default;
	my @choices=$this->question->choices_split;
	my $cursor=1;
	for (my $x=0; $x <= $#choices ; $x++) {
		if ($choices[$x] eq $default) {
			$cursor=$x;
			last;
		}
	}
	my $widget=Term::Stool::DropDown->new(
		list => Term::Stool::List->new(
			contents => [@choices],
			cursor => $cursor,
		),
	);
	
	$widget->preferred_width($widget->list->width + 3);
	return $widget;
}
sub value {
	my $this=shift;
	return $this->translate_to_C($this->widgets->[0]->list->value);
}
1
