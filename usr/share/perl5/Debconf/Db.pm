#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Db;
use strict;
use Debconf::Log qw{:all};
use Debconf::Config;
use Debconf::DbDriver;
our $config;
our $templates;
sub load {
	Debconf::Config->load;
	$config=Debconf::DbDriver->driver(Debconf::Config->config);
	if (not ref $config) {
		die "Configuration database \"".Debconf::Config->config.
			"\" was not initialized.\n";
	}
	$templates=Debconf::DbDriver->driver(Debconf::Config->templates);
	if (not ref $templates) {
		die "Template database \"".Debconf::Config->config.
			"\" was not initialized.\n";
	}
}
sub makedriver {
	my $class=shift;
	my %config=@_;
	my $type=$config{driver} or die "driver type not specified";
	if (! UNIVERSAL::can("Debconf::DbDriver::$type", 'new')) {
		eval qq{use Debconf::DbDriver::$type};
		die $@ if $@;
	}
	delete $config{driver}; # not a field for the object
	
	debug db => "making DbDriver of type $type";
	"Debconf::DbDriver::$type"->new(%config);
}
sub save {
	$config->savedb if $config;
	$templates->savedb if $templates;
	$config='';
	$templates='';
}
1
