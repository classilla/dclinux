#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Text::Select;
use strict;
use POSIX qw(ceil);
use base qw(Debconf::Element::Select);
sub pickabbrevs {
	my $this=shift;
	my @important=@{(shift)};
	my @items=@_;
	my %alphabet=map { chr(97 + $_) => 1 } 0..25;
	my %abbrevs;
	
	my $count=0;
	foreach my $item (@important, @items) {
		if (! $abbrevs{$item} && $item =~ m/^([a-z])/i && $alphabet{lc $1}) {
			$abbrevs{$item}=lc $1;
			$alphabet{lc $1}='';
			$count++;
		}
	}
	
	return %abbrevs if $count == @items; # Done; short circuit.
	
	my @alphabits=grep { $alphabet{$_} } keys %alphabet;
	my $counter=1;
	foreach my $item (@items) {
		$abbrevs{$item} = (shift @alphabits || $counter++)
			unless $abbrevs{$item};
	}
	return %abbrevs;
}
sub expandabbrev {
	my $this=shift;
	my $abbrev=lc shift;
	my %values=reverse @_;
	return $values{$abbrev} if exists $values{$abbrev};
	return '';
}
sub printlist {
	my $this=shift;
	my %abbrevs=%{(shift)};
	my @choices=@_;
	my $width=$this->frontend->screenwidth;
	my $choice_min=length $choices[0];
	map { $choice_min = length $_ if length $_ < $choice_min } @choices;
	my $max_cols=int($width / (5 + $choice_min)) - 1;
	$max_cols = $#choices if $max_cols > $#choices;
	my $max_lines;
	my $num_cols;
COLUMN:	for ($num_cols = $max_cols; $num_cols > 0; $num_cols--) {
		my @col_width;
		my $total_width;
		$max_lines=ceil(($#choices + 1) / ($num_cols + 1));
		next if ceil(($#choices + 1) / $max_lines) - 1 < $num_cols;
		foreach (my $choice=1; $choice <= $#choices + 1; $choice++) {
			my $choice_length=2
				+ length($abbrevs{$choices[$choice - 1]}) + 2
				+ length($choices[$choice - 1]);
			my $current_col=ceil($choice / $max_lines) - 1;
			if (! defined $col_width[$current_col] ||
			    $choice_length > $col_width[$current_col]) {
				$col_width[$current_col]=$choice_length;
				$total_width=0;
				map { $total_width += $_ } @col_width;
				next COLUMN if $total_width > $width;
			}
		}
		last;
	}
	my $line=0;
	my $max_len=0;
	my $col=0;
	my @output=();
	foreach (my $choice=0; $choice <= $#choices; $choice++) {
		$output[$line] .= "  $abbrevs{$choices[$choice]}. " . 
				  $choices[$choice];
		if (length $output[$line] > $max_len) {
			$max_len = length $output[$line];
		}
		if (++$line >= $max_lines) {
			if ($col++ != $num_cols) {
				for (my $l=0; $l <= $#output; $l++) {
					$output[$l] .= ' ' x ($max_len - length $output[$l]);
				}
			}
	
			$line=0;
			$max_len=0;
		}
	}
	map { print "$_\n" } @output;
}
sub show {
	my $this=shift;
	
	my $default=$this->translate_default;
	my @choices=$this->question->choices_split;	
	my @important;
	push @important, $default if $default ne '';
	my %abbrevs=$this->pickabbrevs(\@important, @choices);
	$this->frontend->display($this->question->extended_description."\n");
	$this->printlist(\%abbrevs, @choices);
	$this->frontend->display("\n");
	my $value;
	while (1) {
		$value=$this->frontend->prompt($this->question->description,
			$default ne '' ? $abbrevs{$default} : '');
		return unless defined $value;
		$value=$this->expandabbrev($value, %abbrevs);
		last if $value ne '';
	}
	$this->frontend->display("\n");
	$this->value($this->translate_to_C($value));
}
1
