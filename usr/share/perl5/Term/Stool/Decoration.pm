#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Decoration - a decoration

=cut

package Term::Stool::Decoration;
use strict;
use Term::Stool::Color;
use base qw(Term::Stool::Widget);
use Term::Slang qw(:all);

=head1 DESCRIPTION

A decoration is a special type of widget that is never focused, and is
tightly bound to another widget that it decorates in some way.

=cut

=head1 FIELDS

=over 4

=item container

This is the widget that is being decorated. It need not really be a
container.

=back

=head1 METHODS

=over 4

=item init

This type of widget can never be focused, so we force can_focus to 0.

=cut

sub init {
	my $this=shift;

	$this->SUPER::init(@_);
	$this->can_focus = 0;
	$this->xoffset = 0 unless defined $this->xoffset;
	$this->yoffset = 0 unless defined $this->yoffset;
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
