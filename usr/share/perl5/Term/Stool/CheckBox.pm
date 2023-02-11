#!/usr/bin/perl -w

=head1 NAME

Term::Stool::CheckBox - check box widget

=cut

package Term::Stool::CheckBox;
use strict;
use Term::Slang qw(:all);
use base qw(Term::Stool::Widget);

=head1 DESCRIPTION

This is a check box widget.

L<Term::Stool::Widget|Term::Stool::Widget> is the parent of this class.

=cut

=head1 FIELDS

=over 4

=item checked

Set if the widget is checked.

=item left_side

This is the text that appears on the left side of the check box.
Default is "[".

=item right_side

This is the text that appears on the right side of the check box.
Default is "]".

=item check_hook

If this contains a sub reference, the subroutine will be called when the
checkbox is checked and unchecked.

=back

=head1 METHODS

=over 4

=item init

Sets default colors and other fields to reasonable defaults.

=cut

sub init {
	my $this=shift;

	$this->SUPER::init(@_);
	$this->activecolor = Term::Stool::Color->new(
		tag        => 'checkbox',
		foreground => 'white',
		background => 'blue',
	) unless $this->activecolor;
	$this->height = 1;
	$this->left_side = '[' unless $this->left_side;
	$this->right_side = ']' unless $this->right_side;
	$this->width = 1 + length($this->right_side . $this->left_side);
	$this->checked = '' unless $this->checked;
}

=item display

Display the checkbox.

=cut

sub display {
	my $this=shift;
	my $width=$this->width-2;

	return if $this->hidden;
	$this->color->set;
	SLsmg_gotorc($this->y, $this->x);
	SLsmg_write_string($this->left_side .
		( $this->checked ? '*' : ' ' ) .
		$this->right_side);
	SLsmg_gotorc($this->y, $this->x+1);

	$this->SUPER::display;
}

=item keypress

Hitting space or enter causes the check box to toggle.

=cut

sub keypress {
	my $this=shift;
	my $key=shift;

	if ($key eq ord " " || $key eq ord "\r") {
		$this->checked = !$this->checked;
		$this->check_hook->($this) if $this->check_hook;
		$this->display;
		SLsmg_refresh();
		return 1; 
	}
	$this->SUPER::keypress($key);
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
