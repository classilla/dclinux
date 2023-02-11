#!/usr/bin/perl -w

=head1 NAME

Term::Stool::TitleBar - title bar widget

=cut

package Term::Stool::TitleBar;
use strict;
use Term::Slang qw(:all);
use Term::Stool::Color;
use base qw(Term::Stool::Widget);

=head1 DESCRIPTION

This is a colored horizontal bar that can hold text -- it's useful as a title
bar at the top of the whole screen. The text is displayed centered. The bar
itself is always as long as the container it is inside, and it is displayed at
the top of the container.

L<Term::Stool::Widget|Term::Stool::Widget> is the parent of this class.

=cut

=head1 FIELDS

=over 4

=item text

The text to put on the bar.

=item center

Whether the text should be centered. Defaults to true.

=back

=head1 METHODS

=over 4

=item init

Sets the color. Also, this type of widget cannot be focused.

=cut

sub init {
	my $this=shift;

	$this->SUPER::init(@_);
	$this->can_focus = 0;
	$this->center = 1 unless defined $this->center;
	$this->inactivecolor = Term::Stool::Color->new(
		tag        => 'bar_inactive',
		foreground => 'black',
		background => 'cyan',
		mono       => SLTT_REV_MASK,
	) unless $this->inactivecolor;
}

=item height

Always 1.

=cut

sub height {
	return 1;
}

=item width

Always the width of the container.

=cut

sub width {
	my $this=shift;

	return $this->container->width if $this->container;
}

=item xoffset

Always 0.

=cut

sub xoffset {
	return 0;
}

=item yoffset

Always 0.

=cut

sub yoffset {
	return 0;
}

=item display

Draws the widget.

=cut

sub display {
	my $this=shift;
	my ($x, $y, $width, $text)=
		($this->x, $this->y, $this->width, $this->text);

	return if $this->hidden;
	$this->color->set;
	# If centering, have to clear off the whole line first.
	$text='' unless defined $text;
	my $center=0;
	if ($this->center) {
		SLsmg_gotorc($y, $x);
		SLsmg_write_nstring("", $width);
		$center=int(($width - length($text)) / 2);
	}
	SLsmg_gotorc($y, $x + $center);
	SLsmg_write_nstring($text, $width);

	$this->SUPER::display;
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
