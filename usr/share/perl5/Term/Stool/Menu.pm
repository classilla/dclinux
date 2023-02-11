#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Menu - a pull-down menu widget

=cut

package Term::Stool::Menu;
use strict;
use Term::Slang qw(:all);
use Term::Stool qw(EXITLOOP);
use base qw(Term::Stool::DropDown);

=head1 DESCRIPTION

This is a pull-down menu. It handles display of the menu header, and
contains a List widget that is dropped down when the menu is active.

L<Term::Stool::DropDown|Term::Stool::DropDown> is the parent of this class.

=head1 FIELDS

=over 4

=item title

The menu title.

=item select_hook

If this contains a sub reference, the subroutine will be called when an
item is selected from the menu. Otherwise, the main event loop is exited
when something is selected from the menu. To figure out what was selected,
see $this->list->value

=back

=head1 METHODS

=over 4

=item init

Sets colors and fields above to reasonable defaults.

=cut

sub init {
	my $this=shift;

	$this->selcolor = Term::Stool::Color->new(
		tag        => 'menu_selected',
		foreground => 'black',
		background => 'white',
		mono       => SLTT_ULINE_MASK,
	) unless $this->selcolor;
	$this->inactivecolor = Term::Stool::Color->new(
		tag        => 'menu_inactive',
		foreground => 'black',
		background => 'cyan',
		mono       => SLTT_REV_MASK,
	) unless $this->inactivecolor;
	$this->activecolor = Term::Stool::Color->new(
		tag        => 'menu_active',
		foreground => 'black',
		background => 'cyan',
	) unless $this->activecolor;
	$this->title = '' unless defined $this->title;

	$this->SUPER::init(@_);
}

=item display

Besides drawing the widget, this also causes the attached list to be
redrawn, if it is visible.

=cut

sub display {
	my $this=shift;
	my ($x, $y, $width)=($this->x, $this->y, $this->width);

	return if $this->hidden;
	if ($this->active) {
		$this->selcolor->set;
	}
	else {
		$this->color->set;
	}
	SLsmg_gotorc($this->y, $this->x);
	SLsmg_write_nstring($this->title, $width);
	if ($this->list->hidden) {
		SLsmg_gotorc($this->y, $this->x + $width);
	}
	else {
		$this->list->display;
	}
	$this->resize;
}

=item activate

When activated, automatically drop down the list.

=cut

sub activate {
	my $this=shift;
	
	$this->dropdown;
	$this->SUPER::activate(@_);
}

=item resize

This moves the attached list to be right over the widget.

=cut

sub resize {
	my $this=shift;

	$this->width = length $this->title;
	$this->SUPER::resize(@_);
	$this->list->xoffset = 0;
	$this->list->yoffset = 1 ;
	$this->list->resize;
}

=item keypress

Trap space and enter, which mean a menu item has been selected and an
action should probably be taken.

=cut

sub keypress {
	my $this=shift;
	my $key=shift;

	if ($key eq ord " " || $key eq ord "\r") {
		return $this->select_hook->($this) if $this->select_hook;
		return EXITLOOP;
	}
	return $this->SUPER::keypress($key);
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
