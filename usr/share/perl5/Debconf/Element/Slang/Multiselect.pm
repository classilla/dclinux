#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Slang::Multiselect;
use strict;
use Term::Stool::CheckBox;
use Term::Stool::Text;
use base qw(Debconf::Element::Multiselect Debconf::Element::Slang);
sub make_widgets {
	my $this=shift;
	my %default=map { $_ => 1 } $this->translate_default;
	my @choices=$this->question->choices_split;
	
	my @widgets;
	foreach my $choice (@choices) {
		push @widgets, Term::Stool::CheckBox->new(
			checked => ($default{$choice} ? 1 : 0)
		);
		push @widgets, Term::Stool::Text->new(text => $choice);
	}
	return @widgets;
}
sub resize {
	my $this=shift;
	my $y=shift;
	my $description=$this->widget_description;
	my $maxwidth=$description->container->width - 4;
	$description->yoffset($y);
	$y++;
	my @widgets=@{$this->widgets};
	for (my $i=0; $i<@widgets; $i+=2) {
		my ($widget, $label)=@widgets[$i, $i+1];
		$widget->xoffset(2);
		$widget->yoffset($y);
		$label->xoffset(3 + $widget->width);
		$label->yoffset($y);
		$label->width($maxwidth - 3 - $widget->width);
		$y++;
	}
	return $y;
}
sub value {
	my $this=shift;
	my @values=();
	my @widgets=@{$this->widgets};
	for (my $i=0; $i<@widgets; $i+=2) {
		my ($widget, $label)=@widgets[$i, $i+1];
		if ($widget->checked) {
			push @values, $this->translate_to_C($label->text);
		}
	}
	return join(", ", @values);
}
1
