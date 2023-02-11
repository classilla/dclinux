#!/usr/bin/perl -w

=head1 NAME

Term::Stool::VScrollBar - vertical scrollbar widget

=cut

package Term::Stool::VScrollBar;
use strict;
use Term::Slang qw(:all);
use base qw(Term::Stool::Widget);

=head1 DESCRIPTION

This is a vertical scrollbar widget, suitable for standalone use or for
attachment to a scrollable widget.

L<Term::Stool::Widget|Term::Stool::Widget> is the parent of this class.

=head1 FIELDS

=over 4

=item thumbpos

The percentage of the way down the scrollbar that the thumb is.

=item thumbcolor

The color to use for the thumb when the scrollbar is active. When it is
inactive, the thumb will mimic the color of the container the scrollbar is
in.

=item widget

A widget the scroll bar is attached to. If set, the scroll bar will
automatically fit itself to the right hand side of the widget.

=back

=head1 METHODS

=over 4

=item init

Sets fields to reasonable defaults.

=cut

sub init {
	my $this=shift;

	$this->SUPER::init(@_);
	$this->thumbcolor = Term::Stool::Color->new(
		tag	   => 'scrollbar_thumb',
		foreground => 'white',
		background => 'blue',
	) unless $this->activebarcolor;
	$this->thumbpos = 0 unless defined $this->thumbpos;
	$this->width = 1;
	$this->height = 3 unless defined $this->height;
	$this->xoffset = 0 unless defined $this->xoffset;
	$this->yoffset = 0 unless defined $this->yoffset;
}

=item display

If the scroll bar is bound to a widget, it displays along its rigt side.
Otherwise, it displays wherever its is located.

=cut

sub display {
	my $this=shift;

	return if $this->hidden;
	my $widget=$this->widget;
	my ($height, $x, $y);
	
	if ($widget) {
		($height, $x, $y)= ($widget->height - 3,
			$widget->x + $widget->width - 1, $widget->y + 1);
	}
	else {
		($height, $x, $y,)=($this->height, $this->x, $this->y);
	}

	# Convert percentage into absolute number of characters down.
	my $thumbpos=int($this->thumbpos * ($height + 1) / 100);

	$this->color->set;
	SLsmg_set_char_set(1);
	for (0 .. $height) {
		next if $_ == $thumbpos;
		SLsmg_gotorc($y+$_, $x);
		SLsmg_write_char('a'); # SLSMG_CKBRD_CHAR
	}
	SLsmg_gotorc($y+$thumbpos, $x);
	SLsmg_write_char('`'); # SLSMG_DIAMOND_CHAR
	SLsmg_set_char_set(0);
	SLsmg_gotorc($y+$thumbpos, $x);

	$this->SUPER::display;
}

=item input

Up and down arrow keys scroll, also handle home and end.

=cut

sub keypress {
	my $this=shift;
	my $key=shift;

	if ($key == SL_KEY_UP) {
		$this->thumbpos-- if $this->thumbpos > 0;
	}
	elsif ($key == SL_KEY_DOWN) {
		$this->thumbpos++ if $this->thumbpos < $this->height;
	}
	elsif ($key == SL_KEY_HOME) {
		$this->thumbpos = 0;
	}
	elsif ($key == SL_KEY_END) {
		$this->thumbpos = $this->height;
	}
	else {
		return $this->SUPER::keypress($key);
	}

	$this->display;
	SLsmg_refresh();
	return 1;
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
