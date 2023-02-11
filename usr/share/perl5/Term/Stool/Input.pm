#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Button - text input widget

=cut

package Term::Stool::Input;
use strict;
use Term::Slang qw(:all);
use base qw(Term::Stool::Widget);

=head1 DESCRIPTION

This is a text input widget.

L<Term::Stool::Widget|Term::Stool::Widget> is the parent of this class.

=head1 FIELDS

=over 4

=item text

The contents of the widget.

=item cursor

The location of the cursor within the text.

=item scrollpos

This holds the left-most visible character's location within the text.

=item validate_hook

Points to a method that is called before each change to the text. The
method is passed the proposed new text, and can do any type of checks to
validate it. It should return true if the new text is ok, false otherwise.
Two simple methods suitable for use as validate_hooks are defined below.

=back

=head1 METHODS

=over 4

=item noscroll_validate_hook

Returns a validate_hook method that limits the length of input text to
the width of the input widget.

Turn it on like this:
 $input->validate_hook($input->noscroll_validate_hook);

=cut

sub noscroll_validate_hook {
	return sub {
		my $this=shift;
		my $text=shift;
	
		return length $text < $this->width;
	}
}

=item integer_validate_hook

Returns a validate_hook method that only allows integers to be input.

Turn it on like this:
 $input->validate_hook($input->noscroll_validate_hook);

=cut

sub integer_validate_hook {
	return sub {
		my $this=shift;
		my $text=shift;

		return $text !~ m/[^0-9]/;
	}
}

=item init

Comes up with useful defaults for most of the fields.

=cut

sub init {
	my $this=shift;

	$this->SUPER::init(@_);
	$this->activecolor = Term::Stool::Color->new(
		tag        => 'input',
		foreground => 'white',
		background => 'blue',
		mono       => SLTT_ULINE_MASK,
	) unless $this->activecolor;
	$this->inactivecolor = Term::Stool::Color->new(
		tag        => 'input_inactive',
		foreground => 'black',
		background => 'lightgray',
	) unless $this->inactivecolor;
	$this->height = 1;
	$this->width = 10 unless $this->width;
	$this->text = '' unless defined $this->text;
	$this->cursor = length $this->text unless defined $this->cursor;
	$this->scrollpos = 0 unless defined $this->scrollpos;
}

=item display

Draws the widget.

=cut

sub display {
	my $this=shift;
	my ($width, $x, $y, $scrollpos)=
		($this->width, $this->x, $this->y, $this->scrollpos);

	return if $this->hidden;
	$this->color->set;
	SLsmg_gotorc($y, $x);
	SLsmg_write_nstring(substr($this->text, $scrollpos, $width), $width);
	SLsmg_gotorc($y, $x + $this->cursor - $scrollpos);

	$this->SUPER::display;
}

=item resize

When resized to be smaller, make sure that the scrollpos still makes sense.

Also try to move the scrollpos left if resized to be bigger, so as much of
the text as possible is dispolayed.

=cut

sub resize {
	my $this=shift;
	my ($cursor, $scrollpos, $width, $text)=
		($this->cursor, $this->scrollpos, $this->width, $this->text);

	$this->SUPER::resize(@_);
	
	if (length $text < $width) {
		$this->scrollpos = 0;
	}
	elsif ($cursor - $scrollpos >= $width || $cursor == length $text) {
		$this->scrollpos = $cursor - $width + 1;
	}
}

=item keypress

Most keys are treated as input. Also, delete, backspace, arrow keys, and
ctrl-k are handled.

=cut

sub keypress {
	my $this=shift;
	my $key=shift;
	my ($text, $width, $validate_hook)=
		($this->text, $this->width, $this->validate_hook);
	my $fixscroll=0;
	
	# TODO: needs to be 8-bit clean
	if ($key >= 32 && $key < 127) {
		substr($text, $this->cursor, 0) = chr $key;
		if (! $validate_hook ||
		    ($validate_hook && $validate_hook->($this, $text))) {
			$this->text = $text;
			$this->cursor++; # Lvalues are pretty neat sometimes.
			$fixscroll=1;
		}
	}	
	elsif ($key == SL_KEY_BACKSPACE) {
		if (length $text > 0 && $this->cursor > 0) {
			substr($text, $this->cursor - 1, 1) = '';
			if (! $validate_hook ||
			    ($validate_hook && $validate_hook->($this, $text))) {
				$this->text = $text;
				$this->cursor--;
				$fixscroll=1;
			}
		}
	}
	elsif ($key == 4 || $key == SL_KEY_DELETE) {
		if (length $text > $this->cursor) {
			substr($text, $this->cursor, 1) = '';
			if (! $validate_hook || 
			    ($validate_hook && $validate_hook->($this, $text))) {
				$this->text = $text;
				$fixscroll=1;
			}
		}
	}
	elsif ($key == SL_KEY_LEFT) {
		$fixscroll=1, $this->cursor-- if $this->cursor > 0
	}
	elsif ($key == SL_KEY_RIGHT) {
		$fixscroll=1, $this->cursor++
			if length $text > $this->cursor;
	}
	elsif ($key == SL_KEY_HOME) {
		$this->cursor = 0;
		$this->scrollpos = 0;
	}
	elsif ($key == SL_KEY_END) {
		$this->cursor = length($text);
		$this->scrollpos = $this->cursor - $width + 1
			if $this->cursor >= $width + 1;
	}
	elsif ($key == ord "\cK" || $key == ord "\cU") {
		if (! $validate_hook ||
		    ($validate_hook && $validate_hook->($this, ''))) {
			$this->text = '';
			$this->cursor = 0;
			$this->scrollpos = 0;
		}
	}
	else {
		return $this->SUPER::keypress($key);
	}

	# Adjust scroll position if necessary.
	if ($fixscroll) {
		if ($this->cursor < $this->scrollpos) {
			$this->scrollpos--;
		}
		elsif ($this->cursor - $this->scrollpos >= $width) {
			$this->scrollpos++;
		}
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
