#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Button - button widget

=cut

package Term::Stool::Button;
use strict;
use Term::Stool::Decoration::Highlight;
use Term::Stool qw(EXITLOOP);
use Term::Slang qw(:all);
use base qw(Term::Stool::Widget);

=head1 DESCRIPTION

This is a button widget.

L<Term::Stool::Widget|Term::Stool::Widget> is the parent of this class.

=head1 FIELDS

=over 4 

=item text

Text to display on the face of the button. If it contains a '&' character,
then the letter after that character is highlighted, and a hotkey is set up
for it, to allow the user to quickly trigger the button.

=item press_hook

If this contains a sub reference, the subroutine will be called when the
button is pressed. Otherwise, the main event loop is exited when a button
is pressed.

=back

=head1 METHODS

=over 4

=item init

Set up colors, etc.

=cut

sub init {
	my $this=shift;

	$this->SUPER::init(@_);
	$this->activecolor = Term::Stool::Color->new(
		tag        => 'button',
		foreground => 'white',
		background => 'blue',
	) unless $this->activecolor;
	$this->height = 1;
	$this->text($this->text); # allow the text method to fire
}

=item text

Actually, text is implemented as a method to make the hotkey stuff work.
Also, when the text of the button is set/changed, the button's width is
automatically adjusted to fit it.

TODO: this cannot work with lvalues, so it needs to be redesigned.

=cut

sub text {
	my $this=shift;

	if (@_) {
		my $text=shift;
		$text='' unless defined $text;
		if ($text=~/\&(.)/) {
			my $char=$1;
			$this->decorate_with(
				Term::Stool::Decoration::Highlight->new(
					xoffset => 1 + index($text, $char),
				),
			);
			$this->width(3 + length $text);
		}
		else {
			$this->width(4 + length $text);
		}
		$this->SUPER::text($text);
	}
	else {	
		return $this->SUPER::text;
	}
}

=item display

Displays the button

=cut

sub display {
	my $this=shift;
	my $width=$this->width;

	return if $this->hidden;
	$this->color->set;
	SLsmg_gotorc($this->y, $this->x);
	my $text=$this->text;
	$text=~s/\&//;
	$text=substr($text, 0, $width);
	# Pad out with spaces if necessary.
	if (length $text < $width - 2) {
		$text.=' ' x (($width - 2 - length $text)/2);
		$text=(' ' x ($width - 2 - length $text)) . $text;
	}
	SLsmg_write_nstring("<".$text.">", $width);

	$this->SUPER::display;
}

=item keypress

Hitting space or enter causes the button to be pressed.

=cut

sub keypress {
	my $this=shift;
	my $key=shift;

	if ($key eq ord " " || $key eq ord "\r") {
		return $this->press_hook->($this) if $this->press_hook;
		return EXITLOOP;
	}
	$this->SUPER::keypress($key);
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
