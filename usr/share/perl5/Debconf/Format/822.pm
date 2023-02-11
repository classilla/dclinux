#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Format::822;
use strict;
use base 'Debconf::Format';
sub beginfile {}
sub endfile {}
sub read {
	my $this=shift;
	my $fh=shift;
	
	local $/="\n";
	
	my $name;
	my %ret=(
		owners => {},
		fields => {},
		variables => {},
		flags => {},
	);
	my $invars=0;
	my $line;
	while ($line = <$fh>) {
		chomp $line;
		last if $line eq ''; # blank line is our record delimiter
		if ($invars) {
			if ($line =~ /^\s/) {
				$line =~ s/^\s+//;
				my ($var, $value)=split(/\s*=\s*/, $line, 2);
				$value=~s/\\n/\n/g;
				$ret{variables}->{$var}=$value;
				next;
			}
			else {
				$invars=0;
			}
		}
		my ($key, $value)=split(/:\s*/, $line, 2);
		$key=lc($key);
		if ($key eq 'owners') {
			foreach my $owner (split(/,\s+/, $value)) {
				$ret{owners}->{$owner}=1;
			}
		}
		elsif ($key eq 'flags') {
			foreach my $flag (split(/,\s+/, $value)) {
				$ret{flags}->{$flag}='true';
			}
		}
		elsif ($key eq 'variables') {
			$invars=1;	
		}
		elsif ($key eq 'name') {
			$name=$value;
		}
		elsif (length $key) {
			$value=~s/\\n/\n/g;
			$ret{fields}->{$key}=$value;
		}
	}
	return $name, \%ret;
}
sub write {
	my $this=shift;
	my $fh=shift;
	my %data=%{shift()};
	my $name=shift;
	print $fh "Name: $name\n";
	foreach my $field (sort keys %{$data{fields}}) {
		my $val=$data{fields}->{$field};
		$val=~s/\n/\\n/g;
		print $fh ucfirst($field).": $val\n";
	}
	if (keys %{$data{owners}}) {
		print $fh "Owners: ".join(", ", sort keys(%{$data{owners}}))."\n";
	}
	if (grep { $data{flags}->{$_} eq 'true' } keys %{$data{flags}}) {
		print $fh "Flags: ".join(", ",
			grep { $data{flags}->{$_} eq 'true' }
				sort keys(%{$data{flags}}))."\n";
	}
	if (keys %{$data{variables}}) {
		print $fh "Variables:\n";
		foreach my $var (sort keys %{$data{variables}}) {
			my $val=$data{variables}->{$var};
			$val=~s/\n/\\n/g;
			print $fh " $var = $val\n";
		}
	}
	print $fh "\n"; # end of record delimiter
}
1
