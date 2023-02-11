#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::DbDriver::File;
use strict;
use Debconf::Log qw(:all);
use Fcntl qw(:DEFAULT :flock);
use IO::Handle;
use base 'Debconf::DbDriver::Cache';
use fields qw(filename mode format _fh);
sub init {
	my $this=shift;
	$this->{mode} = 0600 unless exists $this->{mode};
	$this->{format} = "822" unless exists $this->{format};
	$this->{backup} = 1 unless exists $this->{backup};
	$this->error("No format specified") unless $this->{format};
	eval "use Debconf::Format::$this->{format}";
	if ($@) {
		$this->error("Error setting up format object $this->{format}: $@");
	}
	$this->{format}="Debconf::Format::$this->{format}"->new;
	if (not ref $this->{format}) {
		$this->error("Unable to make format object");
	}
	$this->error("No filename specified") unless $this->{filename};
	debug "db $this->{name}" => "started; filename is $this->{filename}";
	
	if (! -e $this->{filename}) {
		$this->{backup}=0;
		sysopen(my $fh, $this->{filename}, 
				O_WRONLY|O_TRUNC|O_CREAT,$this->{mode}) or
			$this->error("could not open $this->{filename}");
		close $fh;
	}
	open ($this->{_fh}, $this->{filename}) or
		$this->error("could not open $this->{filename}: $!");
	if (! $this->{readonly}) {
		flock($this->{_fh}, LOCK_EX | LOCK_NB) or
			$this->error("$this->{filename} is locked by another process");
	}
	$this->SUPER::init(@_);
	debug "db $this->{name}" => "loading database";
	while (! eof $this->{_fh}) {
		my ($item, $cache)=$this->{format}->read($this->{_fh});
		$this->{cache}->{$item}=$cache;
	}
	if ($this->{readonly}) {
		close $this->{_fh};
	}
}
sub savedb {
	my $this=shift;
	return if $this->{readonly};
	if (grep $this->{dirty}->{$_}, keys %{$this->{cache}}) {
		debug "db $this->{name}" => "saving database";
	}
	else {
		debug "db $this->{name}" => "no database changes, not saving";
		return 1;
	}
	sysopen(my $fh, $this->{filename}."-new",
			O_WRONLY|O_TRUNC|O_CREAT,$this->{mode}) or
		$this->error("could not write $this->{filename}: $!");
	flock($fh, LOCK_EX | LOCK_NB) or
		$this->error("$this->{filename}-new is locked by another process");
	$this->{format}->beginfile;
	foreach my $item (sort keys %{$this->{cache}}) {
		next unless defined $this->{cache}->{$item}; # skip deleted
		$this->{format}->write($fh, $this->{cache}->{$item}, $item);
	}
	$this->{format}->endfile;
	$fh->autoflush(1);
	if (-e $this->{filename} && $this->{backup}) {
		rename($this->{filename}, $this->{filename}."-old") or
			debug "db $this->{name}" => "rename failed: $!";
	}
	rename($this->{filename}."-new", $this->{filename}) or
		$this->error("rename failed: $!");
	delete $this->{_fh};
	return 1;
}
sub load {
	return undef;
}
1
