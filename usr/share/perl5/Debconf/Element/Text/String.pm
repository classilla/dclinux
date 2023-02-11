#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Text::String;
use strict;
use base qw(Debconf::Element);
sub show {
	my $this=shift;
	$this->frontend->display(
		$this->question->extended_description."\n");
	my $default='';
	$default=$this->question->value if defined $this->question->value;
	my $value=$this->frontend->prompt($this->question->description, $default);
	return unless defined $value;
	
	if ($value eq '') {
		$value=$default;
	}
	
	$this->frontend->display("\n");
	$this->value($value);
}
1
