#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::AutoSelect;
use strict;
use Debconf::Gettext;
use Debconf::ConfModule;
use Debconf::Config;
use Debconf::Log qw(:all);
use base qw(Exporter);
our @EXPORT_OK = qw(make_frontend make_confmodule);
our %EXPORT_TAGS = (all => [@EXPORT_OK]);
my %fallback=(
	'Web'			=>	['Slang', 'Dialog', 'Text'],
	'Dialog'		=>	['Slang', 'Text'],
	'Gtk'			=>	['Slang', 'Dialog', 'Text'],
	'Text'			=>	['Slang', 'Dialog'],
	'Slang'			=>	['Dialog', 'Text'],
	'Editor'		=>	['Text'],
);
my $frontend;
my $type;
sub make_frontend {
	my $script=shift;
	my $starttype=ucfirst($type || Debconf::Config->frontend);
	foreach $type ($starttype, @{$fallback{$starttype}}, 'Noninteractive') {
		debug user => "trying frontend $type";
		$frontend=eval qq{
			use Debconf::FrontEnd::$type;
			Debconf::FrontEnd::$type->new();
		};
		return $frontend if defined $frontend;
		warn sprintf(gettext("failed to initialize frontend: %s"), $type);
		$@=~s/\n.*//s;
		warn "($@)\n";
	}
	die sprintf(gettext("Unable to start a frontend: %s"), $@);
}
sub make_confmodule {
	my $confmodule=Debconf::ConfModule->new(frontend => $frontend);
	$confmodule->startup(@_) if @_;
	
	return $confmodule;
}
1
