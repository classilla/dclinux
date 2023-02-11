#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Widget - stool widget

=cut

package Term::Stool::Widget;
use strict;

=head1 DESCRIPTION

This is the base class for all widgets in the Slang Toolkit.

=head1 FIELDS

Objects of this class may have any number of fields. These fields
can be read by calling the method with the same name as the fie;ds. If a
parameter is passed into the method, the field is set.

=over 4

=item xoffset

The x offset of the widget inside its container (if any).

=item yoffset

The y offset of the widget inside its container (if any).

=item width

The width of the widget.

=item height

The height of the widget.

=item container

The container the widget is inside, if any.

=item active

Set if the widget (or some widget inside it for containers) is active. It
is set to the actual widget that is active.

=item activecolor

The color of the object when it is active. A
L<Term::Stool::Color|Term::Stool::Color> object.

=cut

=item inactivecolor

The color of the object when it is inactive. A 
L<Term::Stool::Color|Term::Stool::Color> object.

=cut

=item disabledcolor

The color of the widget when it is disabled. A
L<Term::Stool::Color|Term::Stool::Color> object.
This is optional. If not set, the object just uses the inactivecolor.

=item can_focus

Set if the widget can receive focus.

=item disabled

Set if the widget is disabled. This means it cannot focus, and it will
be displayed greyed out.

=item resize_hook

This may be set to a subroutine reference. If so, that subroutine will be
called as a method whenever the object is resized.

=item keypress_hook

This may be set to a subroutine reference. If so, that subroutine will be
called as a method whever this object receives a keypress. It will be
passed the result of SLkp_getkey(). If it handles the keypress, it should
return a true value.

=item activate_hook

This may be set to a subroutine reference. If so, that subroutine will be
called as a method whever this object becomes activated.

=item deactivate_hook

This may be set to a subroutine reference. If so, that subroutine will be
called as a method whever this object becomes deactivated.

=item hidden

If this is set, the widget is not being displayed, because it is hidden for
some reason. If set, the display method should do nothing.

=item align

This field is a hint used by come containers to lay out widgets inside
them. Typically set to "left" or "right".

=back

=head1 METHODS

=over 4

=item new

Returns a new object of this class. Optionally, you can pass in named
parameters that specify the values of any fields in the class.

=cut

sub new {
        my $proto = shift;
        my $class = ref($proto) || $proto;
        my $this=bless ({@_}, $class);
	$this->init;
	return $this;
}

=item init

Called by method new() when an object is created. This method can be used to
initialize the object without having to write a proper new() method.

=cut

sub init {
	my $this=shift;

	$this->can_focus = 1 unless defined $this->can_focus;
	$this->align = '' unless defined $this->align;
	$this->decorations = [] unless defined $this->decorations;
}

=item decorate_with

All widgets can have some decorations -- simple widgets that are displayed
at the same time and add to the UI experience. This method adds one or more
decorations to a widget -- simply pass in the decoration objects.

TODO: there is currently no way to remove a decoration, as I have not
needed to do so yet. ;-)

=cut

sub decorate_with {
	my $this=shift;

	map { $_->container($this) } @_; # tell decorations what they're decorating
	my @decorations=@{$this->decorations};
	push @decorations, @_;
	$this->decorations = \@decorations;
}

=item display

Called when the widget is displayed. This is overridden in almost every
derived class, and all it does in this base class is cause all decorations
to be displayed as well.

=cut

sub display {
	my $this=shift;
	return if $this->hidden;

	foreach (@{$this->decorations}) {
		$_->display;
	}
}

=item keypress

This method is called when the user presses a key and the widget is active.
It is passed the result of SLkp_getkey().

First, it will try to deal with the keypress itself. (This stub method
cannot deal with any.) If it deals with a keypress, it should return a true
value.

Failing that, it will ask its container to deal with the keypress, and
return whatever its container returns.

=cut

sub keypress {
	my $this=shift;
	my $key=shift;

	my $c=$this->container;
	$c->keypress($key) if $c;
}

=item activate

Make a widget be active, and then pass the word on to its container.

=cut

sub activate {
	my $this=shift;

	unless ($this->active) {
		$this->activate_hook->($this) if $this->activate_hook;
		$this->active = $this;
		$this->container->activate($this, "") if $this->container;
	}
}

=item deactivate

Make a widget no longer be active, and redraw it. The container is not
informed, because it is most likely going to remain active.

=cut

sub deactivate {
	my $this=shift;

	if ($this->active) {
		$this->deactivate_hook->($this) if $this->deactivate_hook;
		$this->active = '';
		$this->display;
	}
}

=item resize

This method is called whenever the layout of the screen needs to be
changed. This method calls the function pointed to by the resize_hook
field, if any. Typically, that function will look at the size of the
widget's container, and change the element's position and size
to fit.

=cut

sub resize {
	my $this=shift;

	if (ref $this->resize_hook eq 'CODE') {
		$this->resize_hook->($this, @_);
	}
}

=item x

This returns the absolute x position of the widget, taking into account
that it may be inside a container.

=cut

sub x {
	my $this=shift;

	my $container=$this->container;
	if (defined $container && $container ne '') {
		return $this->xoffset + $this->container->x + 
		       $this->container->leftborder;
	}
	else {
		return $this->xoffset;
	}
}

=item y

This returns the absolute y position of the widget, taking into account
that it may be inside a container.

=cut

sub y {
	my $this=shift;

	my $container=$this->container;
	if (defined $container && $container ne '') {
		return $this->yoffset + $this->container->y +
		       $this->container->topborder;
	}
	else {
		return $this->yoffset;
	}
}

=item color

Returns the color of the object, based on whether it is active or not, and
whether it is disabled.

If the widget does not define colors for these states, use whatever colors
its container would use instead.

=cut

sub color {
	my $this=shift;
	if ($this->active) {
		return $this->activecolor if $this->activecolor;
	}
	elsif ($this->disabled) {
		return $this->disabledcolor if $this->disabledcolor;
		my $container=$this->container;
		$container=$container->container until $container->disabledcolor;
		return $container->disabledcolor;
	}
	else {
		return $this->inactivecolor if $this->inactivecolor;
	}
	
	my $container=$this->container;
	$container=$container->container until $container->color;
	return $container->color;
}

=item AUTOLOAD

Handles all fields, by creating accessor methods for them the first time
they are accessed.

=cut

sub AUTOLOAD : lvalue {
	(my $field = our $AUTOLOAD) =~ s/.*://;

	no strict 'refs';
	*$AUTOLOAD = sub : lvalue {
		my $this=shift;

		$this->{$field}=shift if @_;
		# Ensure lvalue calls work the first time through (grr).
		$this->{$field}=undef unless exists $this->{$field};
		$this->{$field};
	};
	goto &$AUTOLOAD;
}

=item DESTROY

TODO: I doubt objects cleanly destroy yet, too many circular references.
      Use weak refs?

=cut

sub DESTROY {
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
