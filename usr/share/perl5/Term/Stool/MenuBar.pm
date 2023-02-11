#!/usr/bin/perl -w

=head1 NAME

Term::Stool::MenuBar - a menubar

=cut

package Term::Stool::MenuBar;
use strict;
use base qw(Term::Stool::ButtonBar);
use Term::Slang qw(:all);

=head1 DESCRIPTION

A MenuBar holds one or more menus, and stretches all the way across the
top of its container.

L<Term::Stool::ButtonBar|Term::Stool::ButtonBar> is the parent of this class.

=head1 FIELDS

=over 4

=item wasactive

Set this to point to the widget that was active before the menubar was
activated. When the menubar is done, focus is returned to this widget.

=back

=head1 METHODS

=over 4

=item init

Initializes fields to reasonable defaults.

=cut

sub init {
	my $this=shift;

	$this->inactivecolor = Term::Stool::Color->new(
		tag        => 'menubar_inactive',
		foreground => 'black',
		background => 'cyan',
		mono       => SLTT_REV_MASK,
	) unless $this->inactivecolor;
	$this->activecolor = $this->inactivecolor 
		unless defined $this->activecolor;

	$this->SUPER::init(@_);

	$this->xoffset = 0 unless defined $this->xoffset;
	$this->yoffset = 0 unless defined $this->yoffset;
}

=item resize

Positions the menubar accross the top of the screen, then calls SUPER to
resize its contents.

=cut

sub resize {
	my $this=shift;

	$this->width = $this->container->width;
	
	$this->SUPER::resize(@_);
}

=item keypress

F10 moves focus back to where it was before the menus were activated.

=cut

sub keypress {
	my $this=shift;
	my $key=shift;

	if ($key == 522) { # F10 or Esc
		$this->active->deactivate;
		$this->display;
		# Activate old active widget.
		$this->wasactive->activate;
		$this->container->display;
		SLsmg_refresh();
	}
	else {
		$this->SUPER::keypress($key);
	}
}

=item display

Draws a bar encompassing the size of the widget, then calls SUPER to draw
contents.

=cut

sub display {
	my $this=shift;

	return if $this->hidden;
	$this->color->set;
	SLsmg_gotorc($this->y, $this->x);
	SLsmg_write_nstring("", $this->width);

	$this->SUPER::display(@_);
}

=item move_focus_fallback

This makes focus loop; so the item after the last item is the first item,
and the item before the first item is the last item.

=cut

sub move_focus_fallback {
	my $this=shift;
	my $direction=shift;

	if ($this->active != $this) {
		# Whatever was active is no more.
		$this->active->deactivate;
		$this->active = $this;
		$this->move_focus($direction);
	}
	else {
		# Avoid an infinite loop. Nothing in the window can be
		# focused, so just keep the window active.
	}
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
