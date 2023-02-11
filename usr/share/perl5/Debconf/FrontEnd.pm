#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::FrontEnd;
use strict;
use Debconf::Gettext;
use Debconf::Priority;
use Debconf::Log ':all';
use base qw(Debconf::Base);
sub init {
	my $this=shift;
	
	$this->elements([]);
	$this->interactive('');
	$this->capb('');
	$this->title('');
}
my %nouse;
sub makeelement {
	my $this=shift;
	my $question=shift;
	my $nodebug=shift;
	my $frontend_type;
	if (ref $this) {
		($frontend_type)=ref($this)=~m/Debconf::FrontEnd::(.*)/;
	}
	else {
		($frontend_type)=$this=~m/Debconf::FrontEnd::(.*)/;
	}
	my $type=$frontend_type.'::'.ucfirst($question->type);
	$type=~s/::$//; # in case the question has no type..
	if (! UNIVERSAL::can("Debconf::Element::$type", 'new')) {
		return if $nouse{$type};
		eval qq{use Debconf::Element::$type};
		if ($@ || ! UNIVERSAL::can("Debconf::Element::$type", 'new')) {
			warn sprintf(gettext("Unable to load Debconf::Element::%s. Failed because: %s"), $type, $@) if ! $nodebug;
			$nouse{$type}=1;
			return;
		}
	}
	my $element="Debconf::Element::$type"->new(question => $question);
	return if ! ref $element;
	return $element;
}
sub add {
	my $this=shift;
	my $element=shift;
	foreach (@{$this->elements}) {
		return if $element->question == $_->question;
	}
	
	$element->frontend($this);
	push @{$this->elements}, $element;
}
sub go {
	my $this=shift;
	$this->backup('');
	foreach my $element (@{$this->elements}) {
		$element->show;
		return if $this->backup && $this->capb_backup;
	}
	return 1;
}
sub clear {
	my $this=shift;
	
	$this->elements([]);
}
sub default_title {
	my $this=shift;
	
	$this->title(sprintf(gettext("Configuring %s"), ucfirst shift));
}
sub shutdown {}
1
