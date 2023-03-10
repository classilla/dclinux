#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Select;
use strict;
use Debconf::Log ':all';
use Debconf::Gettext;
use base qw(Debconf::Element);
sub visible {
	my $this=shift;
	
	my @choices=$this->question->choices_split;
	return ($#choices > 0);
}
sub translate_default {
	my $this=shift;
	my @choices=$this->question->choices_split;
	$this->question->template->i18n('');
	my @choices_c=$this->question->choices_split;
	$this->question->template->i18n(1);
	my $c_default='';
	$c_default=$this->question->value if defined $this->question->value;
	foreach (my $x=0; $x <= $#choices; $x++) {
		return $choices[$x] if $choices_c[$x] eq $c_default;
	}
	return '';
}
sub translate_to_C {
	my $this=shift;
	my $value=shift;
	my @choices=$this->question->choices_split;
	$this->question->template->i18n('');
	my @choices_c=$this->question->choices_split;
	$this->question->template->i18n(1);
	
	for (my $x=0; $x <= $#choices; $x++) {
		return $choices_c[$x] if $choices[$x] eq $value;
	}
	debug developer => sprintf(gettext("Input value, \"%s\" not found in C choices! This should never happen. Perhaps the templates were incorrectly localized."), $value);
	return '';
}
1
