#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Decoration::Highlight - highlight a letter in a widget

=cut

package Term::Stool::Decoration::Highlight;
use strict;
use Term::Slang qw(:all);
use base qw(Term::Stool::Decoration);

=head1 DESCRIPTION

This is a decoration widget. All it does is highlight a particular letter
in another widget. It's often used in conjunction with a hotkey.

=head1 METHODS

=over 4

=item init

Sets reasonable defaults.

=cut

sub init {
	my $this=shift;

	$this->SUPER::init(@_);

	# It's really a shame that I have to just hardcode the colors here.
	# Unfortunatly, slang's color hanling sucks, and I can't make it
	# just change the forground color, leaving the background alone, or
	# something.
        $this->inactivecolor = Term::Stool::Color->new(
                tag        => 'highlight_inactive',
                foreground => 'yellow',
                background => 'cyan',
        ) unless $this->inactivecolor;
	$this->activecolor = Term::Stool::Color->new(
		tag	   => 'highligh_active',
		foreground => 'yellow',
		background => 'blue',
	) unless $this->activecolor;
}

=item display

Displays the highlight.

=cut

sub display {
	my $this=shift;
	return if $this->hidden;

	my $color=$this->container->active ? $this->activecolor : $this->inactivecolor;
	SLsmg_set_color_in_region($color->id,
		$this->container->y + $this->yoffset, 
		$this->container->x + $this->xoffset, 1, 1);

	$this->SUPER::display;
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
