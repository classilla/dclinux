#!/usr/bin/perl -w

=head1 NAME

Term::Stool - S-lang Toolkit

=cut

use strict;
package Term::Stool;
use base qw(Exporter);

=head1 DESCRIPTION

S-lang Toolkit is an Object Oriented windowing toolkit for Perl.

This class is a utility class used by various objects in the toolkit. 
You probably don't need to use this class direclty if you just want to write
programs that use Stool. Check out the Term::Stool::Screen
class instead.

=head1 CLASS VARIABLES

All class variables are exported on request.

=over 4

=cut

our @EXPORT_OK=qw(EXITLOOP $VERSION);

=item EXITLOOP

This is a value that keypress event handlers should return if they want to
exit the event loop

=cut

use constant EXITLOOP => 100;

=item $VERSION

The version of this module.

=cut

our $VERSION = '0.05';

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1

