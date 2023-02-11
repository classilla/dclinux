#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Dialog::Select;
use strict;
use base qw(Debconf::Element::Select);
sub show {
	my $this=shift;
	my ($text, $lines, $columns)=
		$this->frontend->makeprompt($this->question);
	my $screen_lines=$this->frontend->screenheight - $this->frontend->spacer;
	my $default=$this->translate_default;
	my @params=();
	my @choices=$this->question->choices_split;
		
	my $menu_height=$#choices + 1;
	if ($lines + $#choices + 2 >= $screen_lines) {
		$menu_height = $screen_lines - $lines - 4;
		if ($menu_height < 3 && $#choices + 1 >= 2) {
			$this->frontend->showtext($this->question->extended_description);
			($text, $lines, $columns)=$this->frontend->sizetext($this->question->description);
			$menu_height=$#choices + 1;
			if ($lines + $#choices + 2 >= $screen_lines) {
				$menu_height = $screen_lines - $lines - 4;
			}
		}
	}
	
	$lines=$lines + $menu_height + $this->frontend->spacer;
	my $c=1;
	foreach (@choices) {
		if ($_ ne $default) {
			push @params, $_, '';
		}
		else {
			@params=($_, '', @params);
		}
	}
	
	@params=('--menu', $text, $lines, $columns, $menu_height, '--', @params);
	my $value=$this->frontend->showdialog(@params);
	if (defined $value) {
		$this->value($this->translate_to_C($value));
	}
	else {
		$this->value('');
	}
}
1
