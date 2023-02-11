#!/usr/bin/perl -w

=head1 NAME

Term::Stool::RadioButton - radio button widget

=cut

package Term::Stool::RadioButton;
use strict;
use Term::Slang qw(:all);
use base qw(Term::Stool::CheckBox);

=head1 DESCRIPTION

Radio buttons are like check boxes except they exist in groups, and only
one radio button in a group can checked at a time.

L<Term::Stool::CheckBox|Term::Stool::CheckBox> is the parent of this class.

=head1 FIELDS

=over 4

=item group

A reference to an array containing all buttons in the group. Typically,
this array is shared amoung all the radio buttons.

=back

=head1 METHODS

=over 4

=item init

The left_side and right_side fields are changed to parens for radio
buttons.

=cut

sub init {
	my $this=shift;

        $this->left_side = '(';
	$this->right_side = ')';
	$this->group = [$this] unless $this->group;
	$this->SUPER::init(@_);
}

=item groupadd

Adds the passed radio buttons to the group.

=cut

sub groupadd {
	my $this=shift;

	my @group=(@{$this->group}, @_);
	map { $_->group = \@group } @group;
}

=item groupdel

Removes the radio button from the group it was in.

=cut

sub groupdel {
	my $this=shift;

	my @group=grep { $_ != $this } @{$this->group};
	map { $_->group = \@group } @group;
	$this->group = [$this];
}

=item keypress

Hitting space or enter turns the radio button on, and turns off all the
rest in the group.

=cut

sub keypress {
	my $this=shift;
	my $key=shift;

	if ($key eq ord " " || $key eq ord "\r") {
		if (! $this->checked) {
			foreach (@{$this->group}) {
				if ($_->checked) {
					$_->checked = '';
					$_->check_hook->($this)
						if $_->check_hook;
					$_->display;
				}
			}
			$this->checked = 1;
			$this->check_hook->($this) if $this->check_hook;
			$this->display;
			SLsmg_refresh();
		}
		return 1; 
	}
	$this->SUPER::keypress($key);
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
