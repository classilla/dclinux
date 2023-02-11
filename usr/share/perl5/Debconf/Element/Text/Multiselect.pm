#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Text::Multiselect;
use strict;
use Debconf::Gettext;
use base qw(Debconf::Element::Multiselect Debconf::Element::Text::Select);
sub show {
	my $this=shift;
	my @selected;
	my $none_of_the_above=gettext("none of the above");
	my @choices=$this->question->choices_split;
	my %value = map { $_ => 1 } my @important=$this->translate_default;
	if ($this->frontend->promptdefault && $this->question->value ne '') {
		push @choices, $none_of_the_above;
		push @important, $none_of_the_above;
	}
	my %abbrevs=$this->pickabbrevs(\@important, @choices);
	
	$this->frontend->display($this->question->extended_description."\n");
	$this->printlist(\%abbrevs, @choices);
	$this->frontend->display("\n(".gettext("Type in the letters of the items you want to select, separated by spaces.").")\n");
	while (1) {
		$_=$this->frontend->prompt($this->question->description,
		 	join(" ", map { $abbrevs{$_} }
				  grep { $value{$_} } @choices));
		return unless defined $_;
		@selected=split(/[^A-Za-z0-9]+/, $_);
		@selected=map { $this->expandabbrev($_, %abbrevs) } @selected;
		next if grep { $_ eq '' } @selected;
		if ($#selected > 0) {
			map { next if $_ eq $none_of_the_above } @selected;
		}
		
		last;
	}
	$this->frontend->display("\n");
	if (defined $selected[0] && $selected[0] eq $none_of_the_above) {
		$this->value('');
	}
	else {
		my %selected=map { $_ => 1 } @selected;
		$this->value(join(', ', sort map { $this->translate_to_C($_) }
		                       keys %selected));
	}
}
1
