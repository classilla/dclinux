#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::DbDriver::Directory;
use strict;
use Debconf::Log qw(:all);
use IO::File;
use Fcntl qw(:DEFAULT :flock);
use Debconf::Iterator;
use base 'Debconf::DbDriver::Cache';
use fields qw(directory extention lock format);
sub init {
	my $this=shift;
	$this->{extention} = "" unless exists $this->{extention};
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
	$this->error("No directory specified") unless $this->{directory};
	if (not -d $this->{directory} and not $this->{readonly}) {
		mkdir $this->{directory} ||
			$this->error("mkdir $this->{directory}:$!");
	}
	if (not -d $this->{directory}) {
		$this->error($this->{directory}." does not exist");
	}
	debug "db $this->{name}" => "started; directory is $this->{directory}";
	
	if (! $this->{readonly}) {
		open ($this->{lock}, ">".$this->{directory}."/.lock") or
			$this->error("could not lock $this->{directory}: $!");
		flock($this->{lock}, LOCK_EX | LOCK_NB) or
			$this->error("$this->{directory} is locked by another process");
	}
}
sub load {
	my $this=shift;
	my $item=shift;
	return unless $this->accept($item);
	debug "db $this->{name}" => "loading $item";
	my $file=$this->{directory}.'/'.$this->filename($item);
	return unless -e $file;
	my $fh=IO::File->new;
	open($fh, $file) or $this->error("$file: $!");
	my $ret=$this->{format}->read($fh);
	close $fh;
	return $ret;
}
sub save {
	my $this=shift;
	my $item=shift;
	my $data=shift;
	return unless $this->accept($item);
	return if $this->{readonly};
	debug "db $this->{name}" => "saving $item";
	
	my $file=$this->{directory}.'/'.$this->filename($item);
	my $fh=IO::File->new;
	if ($this->ispassword($item)) {
		sysopen($fh, $file."-new", O_WRONLY|O_TRUNC|O_CREAT, 0600)
			or $this->error("$file-new: $!");
	}
	else {
		open($fh, ">$file-new") or $this->error("$file-new: $!");
	}
	$this->{format}->beginfile;
	$this->{format}->write($fh, $data, $item);
	$this->{format}->endfile;
	close $fh;
	rename("$file-new", $file) or $this->error("rename failed: $!");
}
sub filename {
	my $this=shift;
	my $item=shift;
	$item =~ tr#/#:#;
	return $item.$this->{extention};
}
sub iterator {
	my $this=shift;
	
	my $handle;
	opendir($handle, $this->{directory}) ||
		$this->error("opendir: $!");
	my $iterator=Debconf::Iterator->new(callback => sub {
		my $ret;
		do {
			$ret=readdir($handle);
			closedir($handle) if not defined $ret;
			next if $ret eq '.lock'; # ignore lock file
			next if length $this->{extention} and
			        not $ret=~s/$this->{extention}//;
		} while defined $ret and -d "$this->{directory}/$ret";
		$ret=~tr#:#/#;
		return $ret;
	});
	$this->SUPER::iterator($iterator);
}
sub exists {
	my $this=shift;
	my $name=shift;
	
	return unless $this->accept($name);
	
	my $incache=$this->SUPER::exists($name);
	return $incache if (!defined $incache or $incache);
	return -e $this->{directory}.'/'.$this->filename($name);
}
sub remove {
	my $this=shift;
	my $name=shift;
	return if $this->{readonly} or not $this->accept($name);
	debug "db $this->{name}" => "removing $name";
	unlink $this->{directory}.'/'.$this->filename($name) or return undef;
	return 1;
}
1
