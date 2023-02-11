#!/usr/bin/perl -w

=head1 NAME

Term::Stool::ButtonBar - holds and lays out a row of buttons

=cut

package Term::Stool::ButtonBar;
use strict;
use base qw(Term::Stool::Container);
use Term::Slang qw(:all);

=head1 DESCRIPTION

A ButtonBar is a container that holds and lays out a set of buttons (it can
really hold other widgets too, but is most useful for buttons).

L<Term::Stool::Container|Term::Stool::Container> is the parent of this class.

=head1 METHODS

=over 4

=item init

Set height.

=cut

sub init {
	my $this=shift;

	$this->SUPER::init(@_);

	$this->height = 1 unless defined $this->height;
}

=item resize

Lay out everything inside. Items are left aligned unless they have an align
field set to "right".

TODO: handle detecting when there are too many buttons for one line, and
using more.

=cut

sub resize {
	my $this=shift;
	my ($width, @contents)=($this->width, @{$this->contents});
	
	map { $_->yoffset = 0 } @contents;
	$this->SUPER::resize(@_);
	my $leftoffset=1;
	my $rightoffset=$this->width - 3;
	foreach my $item (@contents) {
		if ($item->align ne 'right') {
			$item->xoffset = $leftoffset;
			$leftoffset += $item->width + 2;
		}
		else {
			$rightoffset -= $item->width + 2;
			$item->xoffset = $rightoffset + 2;
		}
	}
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
