#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Decoration::Shadow - a shadow decoration

=cut

package Term::Stool::Decoration::Shadow;
use strict;
use Term::Stool::Color;
use base qw(Term::Stool::Decoration);
use Term::Slang qw(:all);

=head1 DESCRIPTION

This is a decoration widget that draws a shadow along the bottom and the 
right side of the container it's decorating.

=cut

=head1 METHODS

=over 4

=item init

Sets up the shadow color.

=cut

sub init {
	my $this=shift;

	$this->SUPER::init(@_);
	$this->inactivecolor = Term::Stool::Color->new(
		tag        => 'shadow',
		foreground => 'gray',
		background => 'black',
	) unless $this->inactivecolor;
}

=item display

Draws the shadow on the bottom and right sides of the decorated widget.

=cut

sub display {
	my $this=shift;
	return if $this->hidden;
	
	SLsmg_set_color_in_region($this->inactivecolor->id,
		$this->container->y + $this->container->height, 
		$this->container->x + 1, 1, $this->container->width);
	SLsmg_set_color_in_region($this->inactivecolor->id,
		$this->container->y + 1, 
		$this->container->x + $this->container->width,
		$this->container->height, 1);
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
