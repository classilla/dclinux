#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Dialog::Boolean;
use strict;
use base qw(Debconf::Element);
sub show {
	my $this=shift;
	my @params=('--yesno', $this->frontend->makeprompt($this->question, 1));
	if (defined $this->question->value && $this->question->value eq 'false') {
		unshift @params, '--defaultno';
	}
	my ($ret, $value)=$this->frontend->showdialog(@params);
	$this->value($ret eq 0 ? 'true' : 'false');
}
1
