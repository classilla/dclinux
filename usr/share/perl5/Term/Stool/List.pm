#!/usr/bin/perl -w

=head1 NAME

Term::Stool::List - scrolling list

=cut

package Term::Stool::List;
use strict;
use Term::Slang qw(:all);
use Term::Stool::VScrollBar;
use base qw(Term::Stool::Widget);

=head1 DESCRIPTION

This is a scrollable list widget.

L<Term::Stool::Widget|Term::Stool::Widget> is the parent of this class.

=head1 FIELDS

=over 4

=item contents

A reference to an array that holds the list contents.

=item cursor

The location of the cursor bar in the list. This is the selected list item.

=item scrollpos

The topmost visible line of the list.

=item activebarcolor

The color of the scroll bar when the list is active.
A L<Term::Stool::Color|Term::Stool::Color> object.

=item inactivebarcolor

The color of the scroll bar when the list is inactive.
A L<Term::Stool::Color|Term::Stool::Color> object.

=item vscrollbar

The vertical scrollbar on the right hand side of the list. Will only be
displayed if the list needs to scroll, and is generally created and set up
automatically.

=back

=head1 METHODS

=over 4

=item init

Sets the fields above to reasonable defaults. This includes calculating a
minimum width for the list based on the size of its contents.

=cut

sub init {
	my $this=shift;

	$this->SUPER::init(@_);

	$this->activebarcolor = Term::Stool::Color->new(
		tag	   => 'list_bar',
		foreground => 'white',
		background => 'blue',
		mono       => SLTT_ULINE_MASK,
	) unless $this->activebarcolor;
	$this->inactivebarcolor = Term::Stool::Color->new(
		tag        => 'list_bar_inactive',
		foreground => 'black',
		background => 'lightgray',
	) unless $this->inactivebarcolor;
	
	$this->contents = [] unless $this->contents;
	$this->height = $#{$this->contents} + 3 unless defined $this->height;
	unless (defined $this->width) {
		my $max=1;
		map { $max=length $_ if length $_ > $max } @{$this->contents};
		$this->width = $max + 2;
	}
	$this->cursor = 0 unless defined $this->cursor;
	$this->vscrollbar = Term::Stool::VScrollBar->new
		unless $this->vscrollbar;
	# Needed since I pretend to be a container.
	$this->leftborder = 1 unless defined $this->leftborder;
	$this->rightborder = 1 unless defined $this->rightborder;
	$this->topborder = 1 unless defined $this->topborder;
	$this->bottomborder = 1 unless defined $this->bottomborder;
	$this->vscrollbar->container = $this;
	$this->vscrollbar->widget = $this;
}

=item display

Draws the list. Also draws the vertical scrollbar if necessary, after
updating the thumb position.

=cut

sub display {
	my $this=shift;
	my ($width, $height, $x, $y, $cursor, $scrollpos, $active)=
		($this->width, $this->height, $this->x, $this->y, 
		 $this->cursor, $this->scrollpos, $this->active);
	my @contents=@{$this->contents};

	return if $this->hidden;
	$this->color->set;
	SLsmg_draw_box($y, $x, $height, $width);
	if ($height - 2 < @contents) {
		# Draw vertical scrollbar, first updating thumb location.
		$this->vscrollbar->thumbpos = 
			100 * ($cursor + 1) / ($#contents + 2);
		$this->vscrollbar->display;
	}
	SLsmg_gotorc($y+1, $x+1);
	# Draw all lines except the one the cursor is on.
	$this->color->set;
	for (0..$height - 3) {
		next if $scrollpos + $_ == $cursor;
		SLsmg_gotorc($y + $_ + 1, $x + 1);
		if ($scrollpos + $_ <= $#contents) {
			SLsmg_write_nstring($contents[$scrollpos + $_], $width - 2);
		}
		else {
			SLsmg_write_nstring('', $width - 2);
		}
	}

	# Now draw the line the cursor is on.
	SLsmg_gotorc($y + $cursor - $scrollpos + 1, $x + 1);
	if ($active) {
		$this->activebarcolor->set;
	}
	else {
		$this->inactivebarcolor->set;
	}
	SLsmg_write_nstring($contents[$cursor], $width - 2);
	# Move cursor back to beginning of this line.
	SLsmg_gotorc($y + $cursor - $scrollpos + 1, $x + 1);

	$this->SUPER::display;
}

=item resize

Resize the list and its vscrollbar.

=cut

sub resize {
	my $this=shift;

	$this->SUPER::resize(@_);

	# Resize the list so it never goes off the bottom of the
	# screen. TODO: This is probably not at all appropriate
	# if the list is not a dropdown list, but just an element in
	# a dialog box. Perhaps dropdown lists need to be a seperate
	# subclass that contain this code.
	if ($this->container) {
		my $screen=$this->container;
		$screen=$screen->container while $screen->container;
		$this->height = $screen->height - $this->y - 2;
		$this->height = $#{$this->contents} + 3
			if $#{$this->contents} + 3 < $this->height;
		# Ensure that the list is scrolled to an appropriate place.
		if ($this->height - 3 < $this->cursor) { 
			$this->scrollpos = $this->cursor - $this->height + 3;
		}
		else {
			$this->scrollpos = 0;
		}
	}
	
	$this->vscrollbar->resize if $this->vscrollbar;
}

=item value

Returns the currently selected value.

=cut

sub value {
	my $this=shift;
	
	return ${$this->contents}[$this->cursor];
}

=item input

Up and down arrow keys scroll, also handle home and end and pageup/pagedown.

=cut

sub keypress {
	my $this=shift;
	my $key=shift;
	my ($height, $length)=($this->height, $#{$this->contents});
	my $fixscroll=0;
	
	if ($key == SL_KEY_UP) {
		$fixscroll=1, $this->cursor-- if $this->cursor > 0;
	}
	elsif ($key == SL_KEY_DOWN) {
		$fixscroll=1, $this->cursor++ if $length > $this->cursor;
	}
	elsif ($key == SL_KEY_HOME) {
		$this->cursor = 0;
		$this->scrollpos = 0;
	}
	elsif ($key == SL_KEY_END) {
		$this->cursor = $length;
		$this->scrollpos = $length - ($height - 3)
			if $length >= $height - 2;
	}
	elsif ($key == SL_KEY_NPAGE) {
		my $offset=$height;
		$offset=$length - $this->cursor if $this->cursor + $offset > $length;
		$this->cursor += $offset;
		if ($length >= $height - 2) {
			$this->scrollpos += $offset;
			$this->scrollpos = $length - ($height - 3)
				if $length - $this->scrollpos < $height - 3;
		}
	}
	elsif ($key == SL_KEY_PPAGE) {
		my $offset=$height;
		$offset=$this->cursor if $this->cursor - $offset < 0;
		$this->cursor -= $offset;
		if ($length >= $height - 4) {
			$this->scrollpos -= $offset;
			$this->scrollpos=0 if $this->scrollpos < 0;
		}
	}
	else {
		return $this->SUPER::keypress($key);
	}

	# Adjust scroll position if necessary.
	if ($fixscroll) {
		if ($this->cursor < $this->scrollpos) {
			$this->scrollpos-- if $this->cursor < $this->scrollpos;
		}
		elsif ($this->cursor - $this->scrollpos >= $height - 2) {
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
