#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Window - scrollable panel

=cut

package Term::Stool::Panel;
use strict;
use Term::Slang qw(:all);
use Term::Stool::Color;
use Term::Stool::VScrollBar;
use base qw(Term::Stool::Container);

=head1 DESCRIPTION

This is a scrollable panel, which can contain other widgets, and scroll
them around. Moving from widget to widget automatically scrolls the
panel in an intelligent way.

Panels are currently limited to vertical scrolling, and can only contain
widgets that are one character high. TODO: remove these restrictions.

L<Term::Stool::Container|Term::Stool::Container> is the parent of this class.

=head1 FIELDS

=over 4

=item topborder

This is used to scroll the panel around, in a truely sick abuse of its
original purpose.

=item vscrollbar

The vertical scrollbar on the right hand side of the panel. Is generally
created and set up automatically.

=item withframe

This is normally set, and a panel normally has a frame drawn around it. If
this is unset, the panel does not, which can be useful for placing panels
inside windwos.

=back

=head1 METHODS

=over 4

=item init

Sets the fields above to reasonable defaults. 

=cut

sub init {
	my $this=shift;

	$this->leftborder = 1 unless defined $this->leftborder;
	$this->rightborder = 1 unless defined $this->rightborder;
	$this->bottomborder = 1 unless defined $this->bottomborder;

	$this->SUPER::init(@_);

	$this->vscrollbar = Term::Stool::VScrollBar->new
		unless $this->vscrollbar;
	$this->add($this->vscrollbar);
	$this->vscrollbar->widget = $this;
	$this->vscrollbar->can_focus = 0;
	$this->withframe = 1 unless defined $this->withframe;
}

=item clear

Clear out all contents, except the scroll bar.

=cut

sub clear {
	my $this=shift;

	$this->SUPER::clear(@_);
	$this->add($this->vscrollbar);
}

=item resize

After a resize, make sure that the active element (if any) is still
visible. If the panel was made shorter and it was near the bottom, it may
not be.

=cut

sub resize {
	my $this=shift;

	$this->SUPER::resize(@_);
	$this->scrollto($this->active) if $this->active;
}

=item display

Draws the panel, and any visible widgets inside it.

=cut

sub display {
	my $this=shift;
	my ($x, $y, $width, $height, $topborder, $active, $vscrollbar)=
		($this->x, $this->y, $this->width, $this->height,
		 $this->topborder, $this->active || '', $this->vscrollbar);

	return if $this->hidden;
	$this->color->set;
	SLsmg_draw_box($y, $x, $height, $width) if $this->withframe;
	SLsmg_fill_region($y + 1, $x + 1, $height - 2 , $width - 2, ord(' '));

	# Find the topmost and bottommost offsets of widgets inside.
	my $top=0;
	$top=$active->yoffset if $active;
	my $bottom=$top;
	foreach (@{$this->contents}) {
		my $offset=$_->yoffset;
		$top=$offset if $offset < $top;
		$bottom=$offset if $offset > $bottom;
	}

	# See if the panel even needs to scroll at all.
	if ($bottom - $top >= $height - 2) {
		# From the offsets and the panel's scroll position, we can
		# calculate the position of the scroll bar thumb.
		if ($bottom - $top > 0) {
			$vscrollbar->thumbpos = 
				100 * (-$topborder + $height - 3)/ ($bottom - $top);
		}
		else {
			$vscrollbar->thumbpos = 0;
		}
	
		# Play with the topborder, resetting it to what it really
		# should be so the scroll bar is always displayed in the
		# right place.
		$this->topborder = 1;
		$vscrollbar->display;
		$this->topborder($topborder);
	}
	
	# Draw all visible widgets inside the panel, with the active one
	# last.
	my @contents=grep { $_ ne $active && $_ ne $vscrollbar} @{$this->contents};
	push @contents, $active if $active;
	foreach (@contents) {
		my $offset=$_->yoffset;
		next if $offset + $topborder < 1;
		next if $offset + $topborder >= $height - 1;
		$_->display(@_);
	}
}

=item scrollto

Pass a widget that is on the panel, and the panel will be positioned to
ensure that widget is visible.

=cut

sub scrollto {
	my $this=shift;
	my $widget=shift;
	
	# Note that I look at absolute y coordinates here, not offsets,
	# because there is no guarentee the widget in question is directly
	# inside this panel. It might be in a container in the panel.
	my $scrolled='';
	my $y=$this->y;
	my $widget_y=$widget->y;
	if ($widget != $this) {
		if ($widget_y < $y + 1) {
			# Scroll up until the widget is visible.
			$this->topborder =
				$this->topborder + $y - $widget_y + 1;
			$scrolled=1;
		}
		elsif ($widget_y + $widget->height > $y + $this->height - 1) {
			# Scroll down until the widget is visible.
			$this->topborder = 
				$this->topborder + $y + $this->height - 1 -
				$widget_y - $widget->height;
			$scrolled=1;
		}
	}
	
	if ($scrolled) {
		$this->display;
	}
}

=item activate

Ensures widgets are visible before displaying them.

=cut

sub activate {
	my $this=shift;
	my $widget=shift;
	my $widget_wasactive=shift;

	$this->scrollto($widget);

	$this->SUPER::activate($widget, $widget_wasactive);
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
