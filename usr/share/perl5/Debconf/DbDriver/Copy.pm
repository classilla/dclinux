#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::DbDriver::Copy;
use strict;
use Debconf::Log qw{:all};
use base 'Debconf::DbDriver';
sub copy {
	my $this=shift;
	my $item=shift;
	my $src=shift;
	my $dest=shift;
	
	debug "db $this->{name}" => "copying $item from $src->{name} to $dest->{name}";
	
	foreach my $owner ($src->owners($item)) {
		$dest->addowner($item, $owner);
	}
	foreach my $field ($src->fields($item)) {
		$dest->setfield($item, $field, $src->getfield($item, $field));
	}
	foreach my $flag ($src->flags($item)) {
		$dest->setflag($item, $flag, $src->getflag($item, $flag));
	}
	foreach my $var ($src->variables($item)) {
		$dest->setvariable($item, $var, $src->getvariable($item, $var));
	}
}
1
