#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Color - Represents the color of a stool widget.

=cut

use strict;
package Term::Stool::Color; # sorry!
use Term::Slang qw(:all);

=head1 DESCRIPTION

First, my apologies for the awkward name of this class. When I
called this project Stool, I just didn't realize what was guarenteed to
happen...

This class represents a foreground/background color pair. Instantiated
objects are typically bound to widgets to set the color of those widgets.
This all ties in with S-Lang's own color handling.

=head1 FIELDS

=over 4

=item foreground

The name of the foreground color.

=item background

The name of the background color.

=item mono

The type of mask to use on a monochrome display. For example,
Term::Slang::REV_MASK is reverse video.

=item tag

The tag associated with this color pair. Typically, this is the name of the
type of object that uses the color.

=item id

The S-Lang id for this color pair.

=back

=head1 METHODS

=over 4

=item new

Create a new object. Pass in the foreground, background, and tag fields as
named parameters. 

Note that color ids start at 1. S-Lang reserves color id 0 for the screen
background color. To set this special color, use "desktop" as the tag name.

Note that if you call new repeatedly with the same tag, you get the same
object back each time. 
TODO: And the object's colors are not changed, which should be fixed..

=cut

{
my %colorhash;
my $color_counter=1;

sub new {
        my $proto = shift;
        my $class = ref($proto) || $proto;
	my %params=@_;
	return $colorhash{$params{tag}} if exists $colorhash{$params{tag}};
        my $this=bless (\%params, $class);
	
	$colorhash{$this->tag}=$this;
	if ($this->tag eq 'desktop') {
		$this->id = 0;
	}
	else {
		$this->id = $color_counter++ unless defined $this->id;
	}
	$this->mono = 0 unless defined $this->mono;
	
	SLtt_set_color($this->id, '', $this->foreground, $this->background);
	SLtt_set_mono($this->id, '', $this->mono);
	
	return $this;
}

}

=item set

Call this method to actually set the current S-Lang color.

=cut

sub set {
	my $this=shift;
	
	SLsmg_set_color($this->id);
}

sub AUTOLOAD : lvalue {
	my $field;
	($field = our $AUTOLOAD) =~ s/.*://;

	no strict 'refs';
	*$AUTOLOAD = sub : lvalue {
		my $this=shift;
		
		$this->{$field}=shift if @_;
		# Ensure lvalue calls work the first time through (grr).
		$this->{$field}=undef unless exists $this->{$field};
		$this->{$field};
	};
	goto &$AUTOLOAD;
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
