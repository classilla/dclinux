#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Button - password input widget

=cut

package Term::Stool::Password;
use strict;
use Term::Slang qw(:all);
use base qw(Term::Stool::Input);

=head1 DESCRIPTION

This is a passwod input widget. The password is not displayed, but a simple
progess indicator is, to let the user know when they make keystrokes.

L<Term::Stool::Input|Term::Stool::Input> is the parent of this class.

=head1 FIELDS

=over 4

=item progress_indicator

This should be a list reference. The list contains a set of strings, which
are displayed in sequence when the user modifies the password.

It's set by default to an array that causes a standard twirly animation to
be done.

=back

=head1 METHODS

=over 4

=item init

Sets colors and width and sets the field above to a reasonable default.

=cut

sub init {
	my $this=shift;

	$this->SUPER::init(@_);
	$this->activecolor = Term::Stool::Color->new(
		tag        => 'password',
		foreground => 'red',
		background => 'blue',
		mono       => SLTT_ULINE_MASK,
	) unless $this->activecolor;
	$this->width = 11; # should be odd; > 3 is best
	$this->progress_indicator = [qw{- \ | / }];
	$this->SUPER::init(@_);
}

=item display

Display the progress indicator. Which frame to display depends on where the
cursor is in the text, mod the number of frames.

=cut

sub display {
	my $this=shift;
	my @progress=@{$this->progress_indicator};

	return if $this->hidden;
	$this->color->set;
	SLsmg_gotorc($this->y, $this->x);
	SLsmg_write_string((" " x ($this->width / 2)).
		$progress[$this->cursor % ($#progress + 1)].
		(" " x ($this->width / 2)));
	SLsmg_gotorc($this->y, $this->x);
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
