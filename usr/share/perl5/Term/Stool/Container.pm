#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Container - container widget

=cut

package Term::Stool::Container;
use strict;
use Carp;
use base qw(Term::Stool::Widget);
use Term::Slang qw(:all);

=head1 DESCRIPTION

This is a base class for any type of widget that can contain other widgets.

L<Term::Stool::Widget|Term::Stool::Widget> is the parent of this class.

=head1 FIELDS

=over 4

=item contents

A reference to a list of the widgets inside this one.

=item leftborder

The width of the left border of the container. Used to make widgets inside
the container be offset off the border.

=item rightborder

The width of the right border of the container.

=item topborder

The height of the top border of the container.

=item bottomborder

The height of the bottom border of the container.

=back

=head1 METHODS

=over 4

=item init

Initializes all fields listed above to reasonable defaults.

=cut

sub init {
	my $this=shift;

	$this->contents = [] unless $this->contents;
	$this->leftborder = 0 unless defined $this->leftborder;
	$this->rightborder = 0 unless defined $this->rightborder;
	$this->topborder = 0 unless defined $this->topborder;
	$this->bottomborder = 0 unless defined $this->bottomborder;
	$this->SUPER::init(@_);
}

=item add

Add the passed widgets to my contents, also updating their container fields.

=cut

sub add {
	my $this=shift;
	my @new=@_;

	croak("Containers cannot hold non-widgets")
		if grep { ! UNIVERSAL::isa($_, 'Term::Stool::Widget') } @new;
	push @{$this->contents}, @new;
	map { $_->container = $this } @new;
}

=item remove

Remove the passed widget from my contents.

=cut

sub remove {
	my $this=shift;
	my $widget=shift;

	$this->contents = [grep { $_ ne $widget } @{$this->contents}];
	$widget->container = '';
}

=item clear

Clear out all my contents.

=cut

sub clear {	
	my $this=shift;

	$this->contents = [];
}

=item display

Ask all elements inside this one to display themselves. If active, display the
active element last, so it can have the cursor positioned over it.

=cut

sub display {
	my $this=shift;

	return if $this->hidden;
	my $active=$this->active;
	map { $_->display(@_) unless $active && $_ == $active }
	    @{$this->contents};
	$active->display(@_) if $active && $active != $this;
	$this->SUPER::display(@_);
}

=item resize

Ask all elements inside this one to resize themselves.

=cut

sub resize {
	my $this=shift;
	
	$this->SUPER::resize(@_);
	map { $_->resize(@_) } @{$this->contents};
}

=item keypress

Traps tab and all arrow keys, and uses them to change the focus from one
object in the container to the next.

Feeds any other keypresses it gets through any HotKey widgets that are
inside the container.

If the keypress has still not been handled, it is passed up to the enclosing
container.

=cut

sub keypress {
	my $this=shift;
	my $key=shift;
	
	return $this->move_focus(1)
		if $key == ord "\t" || $key == SL_KEY_RIGHT || $key == SL_KEY_DOWN;
	return $this->move_focus(-1)
		if $key == SL_KEY_LEFT || $key == SL_KEY_UP;

	# Hack for menus. TODO: remove, use hotkeys instead to pull down
	# the menus.
	if ($key == 522) { # F10
		# Activate any menubar inside this container.
		foreach (@{$this->contents}) {
			next unless UNIVERSAL::isa($_, 'Term::Stool::MenuBar');
			# Remember what was active.
			my $widget=$this->active;
			$_->wasactive($widget);
			until ($widget == $this) {
				$widget->deactivate;
				$widget = $widget->container
			}
			$_->activate;
			$_->display;
			SLsmg_refresh();
			return 1;
		}
	}
	
	$this->SUPER::keypress($key);
}

=item move_focus

Move the focus backward or forward by one widget.

If a positive value is passed, move focus forward. A mositive value means
move focus forward.

=cut

sub move_focus {
	my $this=shift;
	my $direction=shift;

	# Walk through the list until we pass the current item;
	# the next item that is focusable and is not disabled
	# is the one to focus.
	my $current=$this->active;
	my $past='';
	if (!$current || $current eq $this) {
		$past=1;
	}
	my @contents=@{$this->contents};
	@contents=reverse @contents if $direction < 0;
	foreach my $widget (@contents) {
		if ($past && ! $widget->disabled && $widget->can_focus) {
			if (!$current || $current ne $widget) {
				$current->deactivate if $current && $current ne $this;
				# If the widget supports move_focus, call
				# that (it's probably a container). Else,
				# just activate it.
				if (UNIVERSAL::can($widget, 'move_focus')) {
					$widget->move_focus($direction);
				}
				else {
					$widget->activate;
				}
			}
			return 1;
		}
		$past=1 if $widget eq $current;
	}
	
	# If we got this far, the focused widget was the last focusable one
	# in the container, so we have to do something else. What, exactly,
	# depends.
	$this->move_focus_fallback($direction);
}

=item move_focus_fallback

Called if move_focus fails to find a widget to focus. The default behavior
is to move the focus out of the current container, and into the container
enclosing it.

Containers may override this if they prefer to do something else, like loop
focus.

=cut

sub move_focus_fallback {
	my $this=shift;
	my $direction=shift;
	
	if ($this->container) {
		$this->active->deactivate if $this->active;
		$this->active = '';
		# Let the container know this had focus before.
		$this->container->activate($this, 1);
		$this->container->move_focus($direction);
	}
}

=item activate

If this is called in an attempt to make the container itself active (with
no second parameter), the first widget inside the container is made active.

More commonly, this is called when a widget inside the container becomes
active. That means the container should become active too, if it isn't already.

If the container is already active, we have reached the top of the ripple
display effect that making the widget active caused. So the widget needs to
be redrawn, but the container does not. This miminizes redraws.

It also always propigates the activation up to the next container, so the
next container can update its active field as well.

=cut

sub activate {
	my $this=shift;
	my $widget=shift;
	my $widget_wasactive=shift;

	# Self activation..
	unless ($widget) {
		$this->contents->[0]->activate;
		return;
	}

	my $wasactive=$this->active;
	$this->active = $widget;
	if ($wasactive && ! $widget_wasactive && $widget) {
		$widget->display;
		SLsmg_refresh;
	}
	if ($this->container) {
		$this->container->activate($widget, $wasactive);
	}
	elsif (! $wasactive) {
		# Top-level container, and not active before. Redraw all.
		$this->display;
		SLsmg_refresh;
	}
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
