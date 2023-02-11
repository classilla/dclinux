#!/usr/bin/perl -w

=head1 NAME

Term::Stool::WrappedText - wrapped text display

=cut

package Term::Stool::WrappedText;
use strict;
use Text::Wrap;
use Text::Tabs;
use base qw(Term::Stool::Text);

=head1 DESCRIPTION

This is a widget that displays text, with word-wrapping.

L<Term::Stool::Text|Term::Stool::Text> is the parent of this class.

=head1 METHODS

=over 4

=item textlines

Wordwrap the the text to display before breaking it up into lines.

=cut

sub textlines {
	my $this=shift;
	
	return if (! defined $this->width || $this->width <= 1);
	
	my $old_columns=$Text::Wrap::columns;
	$Text::Wrap::columns=$this->width;
	# Why call Text::Tabs expand here?
	# Well, wrap gratuitously calls unexpand. However, unexpand puts 
	# in tabs that mess up the display if the text is offset. Bleagh.
	my @lines=split(/\n/, expand(wrap('', '', $this->text)));
	$Text::Wrap::columns=$old_columns;
	return @lines;
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
