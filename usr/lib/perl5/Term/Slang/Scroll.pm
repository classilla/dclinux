package Term::Slang::Scroll;

# $Id: Scroll.pm,v 1.2 2000/03/20 05:40:01 daniel Exp $

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
	Term::Slang::SLline_destroy($self->{'line'});
}

sub TIEHASH {
	die "Usage: tie %arr, __PACKAGE__\n" unless @_ == 1;
	my $proto = shift;

	my $line = Term::Slang::SLline_create(ref $proto || $proto);

        bless my $self = {
		'line' => $line
	}, (ref $proto || $proto);
	return $self;
}

sub STORE {
	my ($self, $key, $val) = @_;
	die unless @_ == 3;
	#print '-' x 50, "\n";
	#print "VALUE DUMP: ", Dumper($val);
	#print "VALUE REF: ", ref($val), "\n";
	#print '-' x 50, "\n";
	Term::Slang::SLline_set($self->{'line'}, $key, $val);
}

sub FETCH {
	my ($self, $key) = @_;
	die unless @_ == 2;
	Term::Slang::SLline_get($self->{'line'}, $key);
}

sub DELETE {
	my ($self, $key) = @_;
	die unless @_ == 2;
	SLline_set($self, $key, undef);
}

sub EXISTS {
	my ($self, $key) = @_;
	die unless @_ == 2;
	my $val = SLline_get($self, $key);
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
