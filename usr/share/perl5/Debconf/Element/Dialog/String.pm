#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Dialog::String;
use strict;
use base qw(Debconf::Element);
sub show {
	my $this=shift;
	my ($text, $lines, $columns)=
		$this->frontend->makeprompt($this->question);	
	my $default='';
	$default=$this->question->value if defined $this->question->value;
	my @params=('--inputbox', $text, 
		$lines + $this->frontend->spacer, 
		$columns, $default);
	my $value=$this->frontend->showdialog(@params);
	$value='' unless defined $value;
	$this->value($value);
}
1
