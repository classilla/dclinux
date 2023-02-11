package Term::Slang::Window;

# $Id: Window.pm,v 1.1 1999/12/22 23:55:45 daniel Exp $

use strict;
use Data::Dumper;
#use DynaLoader;
use Tie::Hash;

use vars qw($VERSION @ISA @EXPORT_OK %EXPORT_TAGS $AUTOLOAD);

@ISA = qw(Tie::Hash);
$VERSION = '0.03';

# bootstrap Term::Slang $VERSION;

sub DESTROY {
	die unless @_ == 1;
	my $self = shift;
	Term::Slang::SLscroll_destroy($self);
}

sub TIEHASH {
	die "Usage: tie %arr, __PACKAGE__\n" unless @_ == 1;
	my $proto = shift;

	my $window = Term::Slang::SLscroll_create();

        bless my $self = {
		'window' => $window
	}, (ref $proto || $proto);
	return $self;
}

sub STORE {
	my ($self, $key, $val) = @_;
	die unless @_ == 3;
	Term::Slang::SLscroll_set($self->{'window'}, $key, $val);
}

sub FETCH {
	my ($self, $key) = @_;
	die unless @_ == 2;
	Term::Slang::SLscroll_get($self->{'window'}, $key);
}

sub DELETE {
	my ($self, $key) = @_;
	die unless @_ == 2;
	SLscroll_set($self, $key, undef);
}

sub EXISTS {
	my ($self, $key) = @_;
	die unless @_ == 2;
	my $val = SLscroll_get($self, $key);
	return 1 if defined $val;
	return 0;
}

sub FIRSTKEY { 1 }
sub NEXTKEY { 1 }

1;
__END__

=head1 NAME

Term::Slang - Interface to the S-Lang terminal library.

=head1 SYNOPSIS

=head1 DESCRIPTION

Please see the S-Lang API documentation.

=head1 AUTHOR

Daniel E<lt>daniel-cpan-slang@electricrain.comE<gt>

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=head1 SEE ALSO

slang(1), perl(1)

=cut
