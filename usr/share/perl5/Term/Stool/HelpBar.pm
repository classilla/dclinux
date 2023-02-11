#!/usr/bin/perl -w

=head1 NAME

Term::Stool::HelpBar - help bar widget

=cut

package Term::Stool::HelpBar;
use strict;
use Term::Slang qw(:all);
use base qw(Term::Stool::TitleBar);

=head1 DESCRIPTION

This is a help bar that can appear that the bottom of a container. Text on
the bar is displayed left justified. The help text is stored in a stack;
new text can be pushed onto the stack, and later popped off to display the
old help text.

L<Term::Stool::TitleBar|Term::Stool::TitleBar> is the parent of this class.

=cut

=head1 FIELDS

=over 4

=item helpstack

This holds a reference the an array which is the help stack.

=item center

Whether the text should be centered. Defaults to false.

=back

=head1 METHODS

=over 4

=item init

Sets the fields above to reasonable defaults.

=cut

sub init {
	my $this=shift;
	
	$this->center = '';
	$this->SUPER::init(@_);
	$this->helpstack = [] if ! defined $this->helpstack;
}

=item push

Push help text onto the stack

=cut

sub push {
	my $this=shift;

	push @{$this->helpstack}, @_;
}

=item pop

Pop the topmost help text off.

=cut

sub pop {
	my $this=shift;

	pop @{$this->helpstack};
}

=item yoffset

Always located at the bottom of the container it is inside.

=cut

sub yoffset {
	my $this=shift;

	return $this->container->height if $this->container;
	return 0;
}

=item text

Simply returns the item at the top of the helpstack.

=cut

sub text {
	my $this=shift;
	
	return $this->helpstack->[-1];
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
