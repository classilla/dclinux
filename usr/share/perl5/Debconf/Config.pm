#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Config;
use strict;
use Debconf::Question;
use Debconf::Gettext;
use Debconf::Db;
use fields qw(config templates frontend priority helpvisible
              showold admin_email log debug);
our $config=fields::new('Debconf::Config');
our @config_files=("$ENV{HOME}/.debconfrc", "/etc/debconf.conf",
                   "/usr/share/debconf/debconf.conf");
sub _hashify ($$) {
	my $text=shift;
	my $hash=shift;
	$text =~ s/\${([^}]+)}/$ENV{$1}/eg;
	
	my %ret;
	my $i;
	foreach my $line (split /\n/, $text) {
		next if $line=~/^\s*#/; # comment
		next if $line=~/^\s*$/; # blank
		$i++;
		my ($key, $value)=split(/\s*:\s*/, $line, 2);
		$key=~tr/-/_/;
		die "Parse error" unless defined $key and length $key;
		$hash->{lc($key)}=$value;
	}
	return $i;
}
sub load {
	my $class=shift;
	my $cf=shift;
	
	if (! $cf) {
		for my $file (@config_files) {
			$cf=$file, last if -e $file;
		}
	}
	die "No config file found" unless $cf;
	open (DEBCONF_CONFIG, $cf) or die "$cf: $!\n";
	local $/="\n\n"; # read a stanza at a time
	1 until _hashify(<DEBCONF_CONFIG>, $config);
	if (! exists $config->{config}) {
		print STDERR gettext("Config database not specified in config file.");
		exit(1);
	}
	if (! exists $config->{templates}) {
		print STDERR gettext("Template database not specified in config file.");
		exit(1);
	}
	while (<DEBCONF_CONFIG>) {
		my %config=();
		next unless _hashify($_, \%config);
		Debconf::Db->makedriver(%config);
	}
	close DEBCONF_CONFIG;
}
sub frontend {
	my $class=shift;
	return $ENV{DEBIAN_FRONTEND} if exists $ENV{DEBIAN_FRONTEND};
	$config->{frontend}=shift if @_;
	return $config->{frontend} if exists $config->{frontend};
	
	my $ret='Dialog';
	my $question=Debconf::Question->get('debconf/frontend');
	if ($question) {
		$ret=$question->value || $ret;
	}
	return $ret;
}
sub priority {
	my $class=shift;
	return $ENV{DEBIAN_PRIORITY} if exists $ENV{DEBIAN_PRIORITY};
	$config->{priority}=shift if @_;
	return $config->{priority} if exists $config->{priority};
	my $ret='medium';
	my $question=Debconf::Question->get('debconf/priority');
	if ($question) {
		$ret=$question->value || $ret;
	}
	return $ret;
}
sub helpvisible {
	my $class=shift;
	$config->{helpvisible}=$_[0] if @_;
	return $config->{helpvisible} if exists $config->{helpvisible};
	my $ret='true';
	my $question=Debconf::Question->get('debconf/helpvisible');
	if ($question) {
		return $question->value || $ret;
	}
	return $ret;
}
sub showold {
	my $class=shift;
	$config->{showold}=shift if @_;
	return $config->{showold} if exists $config->{showold};
	
	my $ret='false';
	my $question=Debconf::Question->get('debconf/showold');
	if ($question) {
		$ret=$question->value || $ret;
	}
	return $ret;
}
sub debug {
	my $class=shift;
	return $ENV{DEBCONF_DEBUG} if exists $ENV{DEBCONF_DEBUG};
	return $config->{debug} if exists $config->{debug};
	return '';
}
sub admin_mail {
	my $class=shift;
	return $ENV{DEBCONF_ADMIN_EMAIL} if exists $ENV{DEBCONF_ADMIN_EMAIL};
	return $config->{admin_email} if exists $config->{admin_email};
	return 'root';
}
sub AUTOLOAD {
	(my $field = our $AUTOLOAD) =~ s/.*://;
	my $class=shift;
	
	return $config->{$field}=shift if @_;
	return $config->{$field} if defined $config->{$field};
	return '';
}
1
