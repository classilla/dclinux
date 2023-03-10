#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::DbDriver;
use Debconf::Log qw{:all};
use strict;
use base 1.01; # ensure that they don't have a broken perl installation
use fields qw(name readonly required backup failed
              accept_type reject_type accept_name reject_name);
our %drivers;
sub new {
	my Debconf::DbDriver $this=shift;
	unless (ref $this) {
		$this = fields::new($this);
	}
	$this->{required}=1;
	$this->{readonly}=0;
	$this->{failed}=0;
	my %params=@_;
	foreach my $field (keys %params) {
		if ($field eq 'readonly' || $field eq 'required' || $field eq 'backup') {
			$this->{$field}=1,next if lc($params{$field}) eq "true";
			$this->{$field}=0,next if lc($params{$field}) eq "false";
		}
		elsif ($field=~/^(accept|reject)_/) {
			$this->{$field}=qr/$params{$field}/i;
		}
		$this->{$field}=$params{$field};
	}
	unless (exists $this->{name}) {
		$this->{name}="(unknown)";
		$this->error("no name specified");
	}
	$drivers{$this->{name}} = $this;
	$this->init;
	return $this;
}
sub init {}
sub error {
	my $this=shift;
	if ($this->{required}) {
		print STDERR 'debconf: DbDriver "'.$this->{name}.'" error: '.
			shift()."\n";
		exit(1);
	}
	else {
		print STDERR 'debconf: DbDriver "'.$this->{name}.'" warning: '.
			shift()."\n";
	}
	$this->{failed}++;
}
sub driver {
	my $this=shift;
	my $name=shift;
	
	return $drivers{$name};
}
sub accept {
	my $this=shift;
	my $name=shift;
	
	return if $this->{failed};
	
	if ((exists $this->{accept_name} && $name!~/$this->{accept_name}/) ||
	    (exists $this->{reject_name} && $name=~/$this->{reject_name}/)) {
		debug "db $this->{name}" => "reject $name";
		return;
	}
	if (exists $this->{accept_type} || exists $this->{reject_type}) {
		my $template=Debconf::Template->get($name);
		return 1 unless $template; # no type to act on
		my $type=$template->type || '';
		return if exists $this->{accept_type} && $name!~/$this->{accept_type}/;
		return if exists $this->{reject_type} && $name=~/$this->{reject_type}/
	}
	return 1;
}
sub ispassword {
	my $this=shift;
	my $item=shift;
	my $template=Debconf::Template->get($item);
	return unless $template;
	my $type=$template->type || '';
	return 1 if $type eq 'password';
	return 0;
}
1
