#!/usr/bin/perl -w

=head1 NAME

Term::Stool::DropDown - drop down list widget

=cut

package Term::Stool::DropDown;
use strict;
use Term::Slang qw(:all);
use Term::Stool::List;
use Term::Stool::Decoration::Shadow;
use base qw(Term::Stool::Container);

=head1 DESCRIPTION

This is a drop down list widget. 

L<Term::Stool::Container|Term::Stool::Container> is the parent of this class.

=cut

=head1 FIELDS

=over 4

=item list

A List widget that is displayed when the widget is dropped down. It is
created automatically when the DropDown widget is created unless you pass
one into the new() method (doing so is a good idea, generally).

This doesn't actually have to be a list widget; it could be any sort of
widget that has a value method. That would be pretty weird though, in general.

The widget will be hidden when it should not be displayed.

=item selcolor

This is the color to draw the actual widget in. Note that the activecolor
is the color used for the drop down widget.

=back

=head1 METHODS

=over 4

=item init

Sets up colors, and sets the fields above to reasonable defaults.

=cut

sub init {
	my $this=shift;

	$this->SUPER::init(@_);
	# This is the color the actual dropdown widget is drawn in. 
	# Can't use the activecolor, because the list uses that color, and
	# I don't want a blue list..
	$this->selcolor = Term::Stool::Color->new(
		tag        => 'dropdown_selected',
		foreground => 'white',
		background => 'blue',
		mono       => SLTT_ULINE_MASK,
	) unless $this->selcolor;
	$this->inactivecolor = Term::Stool::Color->new(
		tag	   => 'dropdown_inactive',
		foreground => 'black',
		background => 'lightgray',
	) unless $this->inactivecolor;

	$this->height = 1;
	$this->list = Term::Stool::List->new unless $this->list;
	$this->list->xoffset = -1 unless defined $this->list->xoffset;
	$this->list->yoffset = -1 unless defined $this->list->yoffset;
	$this->list->decorate_with(Term::Stool::Decoration::Shadow->new);
	$this->list->hidden = 1;
}

=item display

Draw the widget.

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
	if ($this->list->hidden) {
		SLsmg_gotorc($y, $x);
		SLsmg_write_nstring($this->list->value, $width - 4);
	}
	SLsmg_gotorc($y, $x + $width - 3);
	SLsmg_write_string(' v ');
	SLsmg_gotorc($y, $x + $width - 2);

	$this->SUPER::display;
}

=item resize

Resize the attached list as well.

=cut

sub resize {
	my $this=shift;

	$this->SUPER::resize(@_);
	$this->list->resize;
	$this->list->width = $this->width - 2;
}

=item activate

Unlike most containers, this widget can be activated directly.

=cut

sub activate {
	my $this=shift;

	# Call activate method of widget, not container.
	# This ugly bit here makes me wonder if this class should really
	# be a subcless of container. Of course, everything else in it
	# works quite nicely.
	$this->Term::Stool::Widget::activate;
}

=item deactivate

When deactivated, the list is automatically retracted.

=cut

sub deactivate {
	my $this=shift;
	
	$this->retract;
	$this->SUPER::deactivate();
}

=item dropdown

Drop the list down.

=cut

sub dropdown {
	my $this=shift;

	if ($this->list->hidden) {
		$this->list->hidden = '';
		$this->list->activate;
		$this->add($this->list);
		$this->list->resize; # Allow the list to size itself.
		$this->display;
	}
}

=item retract

Retract the list.

=cut

sub retract {
	my $this=shift;

	unless ($this->list->hidden) {
		$this->list->hidden = 1;
		$this->list->deactivate;
		$this->remove($this->list);
		# Since the list could be over any part of the screen, the
		# whole screen must be redrawn.
		my $screen=$this->container;
		$screen=$screen->container while $screen->container;
		$screen->display;
	}
}

=item keypress

Catches space and enter, and uses them to toggle list expansion. Passes all
other keys on to the list if it is dropped down. If the list doesn't handle
them, pass them on to SUPER.

=cut

sub keypress {
	my $this=shift;
	my $key=shift;
	my $value=$this->list->value;
	
	if ($key eq ord " " || $key eq ord "\r") {
		if ($this->list->hidden) {
			$this->dropdown;
		}
		else {
			$this->retract;
		}
		SLsmg_refresh();
		return 1;
	}
	# Pass keypresses on to the list. This is tricky, because the list
	# will pass any keypresses it doesn't understand back to its
	# container, which is (suprise!) this very object.
	unless ($this->list->hidden || $this->_list_keypress) {
		$this->_list_keypress = 1;
		my $ret=$this->list->keypress($key);
		$this->_list_keypress = '';
		if ($value ne $this->list->value) {
			$this->display;
			SLsmg_refresh;
		}
		return $ret if $ret;
	}
	$this->SUPER::keypress($key);
}

=item move_focus

Though this object is a container, it doesn't handle focusing like most
containers do: it can be focused, and the stuff inside it cannot be
directly focused. Therefore, when asked to move focus, it immediatly passes
the request to its container.

=cut

sub move_focus {
	my $this=shift;
	my $direction=shift;

	if ($this->container->active && $this->container->active == $this) {
		$this->move_focus_fallback($direction);
	}
	else {
		$this->activate($this);
	}
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
