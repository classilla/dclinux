#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::FrontEnd::Passthrough;
use strict;
use Carp;
use IO::Socket;
use Debconf::FrontEnd;
use Debconf::Element;
use Debconf::Log qw(:all);
use base qw(Debconf::FrontEnd);
my $DEBCONFPIPE = $ENV{DEBCONF_PIPE} || die "DEBCONF_PIPE not set";
sub init {
	my $this=shift;
	$this->{thepipe} = IO::Socket::UNIX->new(
		Type => SOCK_STREAM,
		Peer => $DEBCONFPIPE
	) || croak "Cannot connect to $DEBCONFPIPE: $!";
	$this->{thepipe}->autoflush(1);
	
	$this->SUPER::init(@_);
	$this->interactive(1);
}
sub talk {
	my $this=shift;
	my $command=join(' ', @_);
	my $reply;
	
	my $fh = $this->{thepipe} || croak "Broken pipe";
	
	debug developer => "----> $command";
	print $fh $command."\n";
	$fh->flush;
	$reply = <$fh>;
	chomp($reply);
	debug developer => "<---- $reply";
	my ($tag, $val) = split(' ', $reply, 2);
	return ($tag, $val) if wantarray;
	return $tag;
}
sub shutdown {
	my $this=shift;
	
	debug developer => "Sending done signal";
	$this->talk('STOP');
}
sub makeelement
{
	my $this=shift;
	my $question=shift;
	
	return Debconf::Element->new(question => $question);
}
sub capb_backup
{
	my $this=shift;
	my $val = shift;
	$this->{capb_backup} = $val;
	$this->talk('CAPB', 'backup') if $val;
}
sub capb
{
	my $this=shift;
	my $ret;
	return $this->{capb} if exists $this->{capb};
	($ret, $this->{capb}) = $this->talk('CAPB');
	return $this->{capb} if $ret eq '0';
}
sub title
{
	my $this = shift;
	my $title = shift;
	$this->{title} = $title;
	$this->talk('TITLE', $title);
}
sub go {
	my $this = shift;
	foreach my $element (@{$this->elements}) {
		my $question = $element->question;
		my $tag = $question->template->template;
		my $type = $question->template->type;
		my $desc = $question->description;
		my $extdesc = $question->extended_description;
		my $default = $question->value;
		if ($desc) {
			$desc =~ s/\n/\\n/g;
			$this->talk('DATA', $tag, 'description', $desc);
		}
		if ($extdesc) {
			$extdesc =~ s/\n/\\n/g;
			$this->talk('DATA', $tag, 'extended-description',
			            $extdesc);
		}
		if ($type eq "select") {
			my $choices = $question->choices;
			$choices =~ s/\n/\\n/g if ($choices);
			$this->talk('DATA', $tag, 'choices', $choices);
		}
		$this->talk('SET', $tag, $default) if $default ne '';
		$this->talk('INPUT', $tag, $type);
	}
	if ((scalar($this->talk('GO')) eq "30") && $this->{capb_backup}) {
		return;
	}
	
	foreach my $element (@{$this->elements}) {
		my $tag = $element->question->template->template;
		my ($ret, $val)=$this->talk('GET', $tag);
		if ($ret eq "0") {
			$element->value($val);
			debug developer => "Got \"$val\" for $tag";
		}
	}
	return 1;
}
1
