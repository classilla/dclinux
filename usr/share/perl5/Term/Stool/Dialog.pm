#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Dialog - window widget with buttons at the bottom

=cut

package Term::Stool::Dialog;
use strict;
use Term::Stool::ButtonBar;
use base qw(Term::Stool::Window);
use Term::Slang qw(:all);

=head1 DESCRIPTION

This is a window widget, with a container at the bottom where buttons may
be displayed.

L<Term::Stool::Window|Term::Stool::Window> is the parent of this class.

=head1 FIELDS

=over 4

=item inside

This container fills the top of the window.

=item buttonbar

The container that holds the buttons. By default, this is a ButtonBar
but it may be any type of container (or widget).

=head1 METHODS

=over 4

=item init

Sets the fields above to reasonable defaults, and adds inside and buttonbar
to the contents of the object and positions them.

=cut

sub init {
	my $this=shift;

	$this->buttonbar = Term::Stool::ButtonBar->new unless $this->buttonbar;
	$this->buttonbar->xoffset = 0 unless defined $this->buttonbar->xoffset;
	
	# Use a mimic so colors percolate up from the window.
	$this->inside = Term::Stool::Container->new unless $this->inside;
	$this->inside->xoffset = 0 unless defined $this->inside->xoffset;
	$this->inside->yoffset = 0 unless defined $this->inside->yoffset;

	$this->SUPER::init();

	$this->add($this->inside, $this->buttonbar);
	$this->position;
}

=item position

A helper function, this sets up the positions of the buttonbar and
container.

=cut

sub position {
	my $this=shift;

	$this->buttonbar->width = $this->width;
	$this->inside->width = $this->width;
	$this->inside->height = $this->height - $this->buttonbar->height - 1;
	$this->buttonbar->yoffset = $this->height - 3;
	$this->inside->resize;
	map { $_->resize(@_) } @{$this->contents};
}

=item resize

Positions the buttonbar and container.

=cut

sub resize {
	my $this=shift;

	$this->SUPER::resize(@_);
	$this->position;
}

=item display

Display all contents, and then the horizontal line separating buttonbar and
top part.

=cut

sub display {
	my $this=shift;
	
	return if $this->hidden;
	$this->SUPER::display(@_);

	# Draw the divider bar between the button bar and the rest of the
	# dialog.
	$this->color->set;
	SLsmg_gotorc($this->buttonbar->y - 1 , $this->x);
	SLsmg_set_char_set(1);
	SLsmg_write_char('t'); # SLSMG_LTEE_CHAR
	SLsmg_draw_hline($this->width - 2);
	SLsmg_write_char('u'); # SLSMG_RTEE_CHAR
	SLsmg_set_char_set(0);
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
