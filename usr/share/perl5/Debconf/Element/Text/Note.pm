#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Text::Note;
use strict;
use base qw(Debconf::Element);
sub show {
	my $this=shift;
	$this->frontend->display($this->question->description."\n".
		$this->question->extended_description."\n");
	$this->value('');
}
1
