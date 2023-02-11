#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Text::Boolean;
use strict;
use Debconf::Gettext;
use base qw(Debconf::Element);
sub show {
	my $this=shift;
	my $y=gettext("yes");
	my $n=gettext("no");
	$this->frontend->display($this->question->extended_description."\n");
	my $default='';
	$default=$this->question->value if defined $this->question->value;
	if ($default eq 'true') {
		$default=$y;
	}
	elsif ($default eq 'false') {
		$default=$n;
	}
	my $value='';
	my @matches;
	$this->frontend->readline->Attribs->{completion_entry_function} = sub {
		my $text=shift;
		my $state=shift;
		if ($state == 0) {
			@matches=();
			push @matches, $y if $y=~/^\Q$text\E/i;
			push @matches, $n if $n=~/^\Q$text\E/i;
		}
		return pop @matches;
	};
	$this->frontend->readline->Attribs->{completion_append_character} = '';
	
	while (1) {
		$_=$this->frontend->prompt($this->question->description, $default);
		return unless defined $_;
		if ($_ eq '' && defined $default) {
			$_=$default;
		}
		if (substr($y, 0, 1) ne substr($n, 0, 1)) {
			$y=substr($y, 0, 1);
			$n=substr($n, 0, 1);
		}
		if (/^\Q$y\E/i) {
			$value='true';
			last;
		}
		elsif (/^\Q$n\E/i) {
			$value='false';
			last;
		}
	}
	
	$this->frontend->display("\n");
	$this->value($value);
}
1
