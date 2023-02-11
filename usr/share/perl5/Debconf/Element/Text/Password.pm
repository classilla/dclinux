#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Text::Password;
use strict;
use Debconf::Gettext;
use base qw(Debconf::Element);
sub show {
	my $this=shift;
	$this->frontend->display(
		$this->question->extended_description."\n");
	
	my $default='';
	$default=$this->question->value if defined $this->question->value;
	my $value=$this->frontend->prompt_password($this->question->description, $default, 1);
	return unless defined $value;
	if ($value eq '') {
		$value=$default;
	}
	
	$this->frontend->display("\n");
	$this->value($value);
}
1
