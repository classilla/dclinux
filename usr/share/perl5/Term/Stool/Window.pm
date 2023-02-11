#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Window - window widget

=cut

package Term::Stool::Window;
use strict;
use Term::Stool::Decoration::Shadow;
use Term::Stool::Color;
use base qw(Term::Stool::Container);
use Term::Slang qw(:all);

=head1 DESCRIPTION

This is a window widget. It is a container that draws a window on the screen,
complete with a title and a shadow.

L<Term::Stool::Container|Term::Stool::Container> is the parent of this class.

=head1 FIELDS

=over 4

=item title

The title of the window.

=back

=head1 METHODS

=over 4

=item init

Sets up reasonable defaults for fields and colors. Instantiates a shadow
for the window.

=cut

sub init {
	my $this=shift;

	$this->leftborder = 1 unless defined $this->leftborder;
	$this->rightborder = 1 unless defined $this->rightborder;
	$this->topborder = 1 unless defined $this->topborder;
	$this->bottomborder = 1 unless defined $this->bottomborder;
	$this->xoffset = 0 unless defined $this->xoffset;
	$this->yoffset = 0 unless defined $this->yoffset;
	$this->width = 0 unless defined $this->width;
	$this->height = 0 unless defined $this->height;
	
	# This color is for inactive windows. Note that widgets in the
	# inactive window frequently use this color too.
	$this->inactivecolor = Term::Stool::Color->new(
		tag        => 'window_inactive',
		foreground => 'black',
		background => 'lightgray',
	) unless  $this->inactivecolor;
	# This color is for active windows. Note that widgets in the
	# active window frequently use this color too.
	$this->activecolor = Term::Stool::Color->new(
		tag        => 'window',
		foreground => 'black',
		background => 'cyan',
	) unless $this->activecolor;
	# This color is used for disabled widgets on the window.
	$this->disabledcolor = Term::Stool::Color->new(
		tag        => 'window_disabled',
		foreground => 'gray',
		background => 'cyan',
	) unless $this->disabledcolor;

	$this->SUPER::init();

	$this->decorate_with(Term::Stool::Decoration::Shadow->new);
}

=item display

Displays the window, its decorations, and everything inside it.

=cut

sub display {
	my $this=shift;
	my ($x, $y, $width, $height, $title)=
		($this->x, $this->y, $this->width, $this->height, $this->title);
	
	return if $this->hidden;
	$this->color->set;
	SLsmg_draw_box($y, $x, $height, $width);
	SLsmg_fill_region($y + 1, $x + 1, $height - 2 , $width - 2, ord(' '));
				
	if (defined $title && $title ne '' && $width > 6) {
		$title=" ".substr($title, 0, $width-6)." ";
		SLsmg_gotorc($y, $x + ($width - length $title)/2);
		SLsmg_write_string($title);
	}

	$this->SUPER::display(@_);
}

=item resize

Windows default to being centered onscreen.

=cut

sub resize {
	my $this=shift;

	$this->xoffset = int(($this->container->width - $this->width) / 2);
	$this->yoffset = int(($this->container->height - $this->height) / 2);
	
	$this->SUPER::resize(@_);
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
