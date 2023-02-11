#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::DbDriver::Pipe;
use strict;
use Debconf::Log qw(:all);
use base 'Debconf::DbDriver::Cache';
use fields qw(infd outfd format);
sub init {
	my $this=shift;
	$this->{format} = "822" unless exists $this->{format};
	$this->error("No format specified") unless $this->{format};
	eval "use Debconf::Format::$this->{format}";
	if ($@) {
		$this->error("Error setting up format object $this->{format}: $@");
	}
	$this->{format}="Debconf::Format::$this->{format}"->new;
	if (not ref $this->{format}) {
		$this->error("Unable to make format object");
	}
	my $fh;
	if (defined $this->{outfd}) {
		open ($fh, "<&=$this->{outfd}") or
			$this->error("could not open file descriptor #$this->{outfd}: $!");
	}
	else {	
		open ($fh, '-');
	}
	$this->SUPER::init(@_);
	debug "db $this->{name}" => "loading database";
	while (! eof $fh) {
		my ($item, $cache)=$this->{format}->read($fh);
		$this->{cache}->{$item}=$cache;
	}
	close $fh;
}
sub savedb {
	my $this=shift;
	return if $this->{readonly};
	my $fh;
	if (defined $this->{outfd}) {
		open ($fh, ">&=$this->{infd}") or
			$this->error("could not open file descriptor #$this->{outfd}: $!");
	}
	else {
		open ($fh, '>-');
	}
	$this->{format}->beginfile;
	foreach my $item (sort keys %{$this->{cache}}) {
		next unless defined $this->{cache}->{$item}; # skip deleted
		$this->{format}->write($fh, $this->{cache}->{$item}, $item);
	}
	$this->{format}->endfile;
	close $fh;
	return 1;
}
sub load {
	return undef;
}
1
