#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::ConfigDb;
use Debconf::Template;
use Debconf::Question;
use strict;
use base qw(Exporter);
our @EXPORT_OK = qw(registertemplates disownquestion disownall savedb loaddb);
our %templates;
our %questions;
sub registertemplates {
	my $owner=shift;
	foreach (@_) {
		if ($templates{$_->template}) {
			$templates{$_->template}->clear;
			$templates{$_->template}->merge($_);
		}
		else {
			$templates{$_->template}=$_;
		}
		addquestion($_->template, $_->template, $owner);
	}
}
sub addquestion {
	my $template=shift;
	my $name=shift;
	my $owner=shift;
	my $question=$questions{$name} || Debconf::Question->new;
	$question->name($name);
	$question->template($templates{$template});
	$question->addowner($owner);
	$questions{$name}=$question;
}
sub disownquestion {
	my $name=shift;
	my $owner=shift;
	
	return unless $questions{$name};
	
	$questions{$name}->removeowner($owner);
	if ($questions{$name}->owners eq '') {
		my $template=$questions{$name}->template;
		my $users=0;
		foreach my $question (keys %questions) {
			$users++ if $questions{$question}->template eq $template;
		}
		delete $questions{$name};
		if ($users == 1) {
			delete $templates{$template->template};
		}
	}
}
sub disownall {
	my $owner=shift;
	
	foreach my $question (keys %questions) {
		disownquestion($question, $owner);
	}
}
use Data::Dumper;
sub savedb {
	my $dir=shift;
	my $dumper=Data::Dumper->new([\%questions], ['*questions']);
	my %seen;
	foreach (keys %templates) {
		$seen{"\$templates{'$_'}"}=$templates{$_};
	}
	$dumper->Seen({%seen});
	$dumper->Indent(1);
	open (OUT, ">$dir/debconf.new") || die "$dir/debconf.new: $!";
	print OUT $dumper->Dump;
	print OUT "\n1;\n"; # Return a true value so require works.
	close OUT;
	
	$dumper=Data::Dumper->new([\%templates],
		[qw{*templates}]);
	$dumper->Indent(1);
	open (OUT, ">$dir/templates.new") || die "$dir/templates.new: $!";
	print OUT $dumper->Dump;
	print OUT "\n1;\n"; # Return a true value so require works.
	close OUT;
	
	system 'mv', "-f", "$dir/templates.new", "$dir/templates.db";
	system 'mv', "-f", "$dir/debconf.new", "$dir/debconf.db";
}
sub loaddb {
	my $dir=shift;
	if (-e "$dir/templates.db") {
		eval qq{require "$dir/templates.db"};
	}
	if (-e "$dir/debconf.db") {
		eval qq{require "$dir/debconf.db"};
	}
	foreach (values %questions) {
		if (exists $_->{flag_isdefault}) {
			$_->flag_seen($_->{flag_isdefault} eq "true" ? "false" : "true");
			delete $_->{flag_isdefault};
		}
	}
}
1
