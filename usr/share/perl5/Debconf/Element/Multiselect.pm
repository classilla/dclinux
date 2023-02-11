#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Multiselect;
use strict;
use base qw(Debconf::Element::Select);
sub translate_default {
	my $this=shift;
	my @choices=$this->question->choices_split;
	$this->question->template->i18n('');
	my @choices_c=$this->question->choices_split;
	$this->question->template->i18n(1);
	
	my @ret;
	foreach my $c_default ($this->question->value_split) {
		foreach (my $x=0; $x <= $#choices; $x++) {
			push @ret, $choices[$x]
				if $choices_c[$x] eq $c_default;
		}
	}
	return @ret;
}
1
