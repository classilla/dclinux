#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Text - text display

=cut

package Term::Stool::Text;
use strict;
use Term::Slang qw(:all);
use base qw(Term::Stool::Widget);

=head1 DESCRIPTION

This is a widget that displays text.

L<Term::Stool::Widget|Term::Stool::Widget> is the parent of this class.

=head1 FIELDS

=over 4

=item can_focus

Text widgets are unfocusable by default.

=back

=head1 METHODS

=over 4

=item init

Sets reasonable defaults.

Note that a named parameter called "text" may be passed in, with the same
effect as calling the text method after creating the object, and setting
the width and height to the size of that text.

=cut

sub init {
	my $this=shift;

	$this->can_focus = 0 unless defined $this->can_focus;
	$this->SUPER::init(@_);
	$this->text = '' unless defined $this->text;

	# Size widget to fit text, unless some size was given.
	my @lines=$this->textlines;
	unless (defined $this->height) {
		$this->height = $#lines + 1;
	}
	unless (defined $this->width) {
		my $maxlen=0;
		map { $maxlen=length $_ if length $_ > $maxlen } @lines;
		$this->width = $maxlen;
	}
}

=item textlines

Get the text to display, broken up by line. This is mainly here so it can
be overridden in subclasses (if they want to wrap the text, say).

=cut

sub textlines {
	my $this=shift;

	return split(/\n/, $this->text);
}

=item display

Displays the widget.

=cut

sub display {
	my $this=shift;
	return if $this->hidden;
	my ($height, $width, $x, $y)=
		($this->height, $this->width, $this->x, $this->y);
	
	$this->color->set;
	my @lines=$this->textlines;
	foreach my $line (0..$height - 1) {
		SLsmg_gotorc($y++, $x);
		SLsmg_write_nstring($line < @lines ? $lines[$line] : '', $width);
	}

	$this->SUPER::display;
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
