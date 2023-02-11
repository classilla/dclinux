package Shell;
use 5.005_64;
our($capture_stderr, $VERSION);

$VERSION = '0.2';

sub import {
    my $self = shift;
    my ($callpack, $callfile, $callline) = caller;
    my @EXPORT;
    if (@_) {
	@EXPORT = @_;
    }
    else {
	@EXPORT = 'AUTOLOAD';
    }
    foreach $sym (@EXPORT) {
        *{"${callpack}::$sym"} = \&{"Shell::$sym"};
    }
};

AUTOLOAD {
    my $cmd = $AUTOLOAD;
    $cmd =~ s/^.*:://;
    eval <<"*END*";
	sub $AUTOLOAD {
	    if (\@_ < 1) {
		\$Shell::capture_stderr ? `$cmd 2>&1` : `$cmd`;
	    }
	    elsif ('$^O' eq 'os2') {
		local(\*SAVEOUT, \*READ, \*WRITE);

		open SAVEOUT, '>&STDOUT' or die;
		pipe READ, WRITE or die;
		open STDOUT, '>&WRITE' or die;
		close WRITE;

		my \$pid = system(1, '$cmd', \@_);
		die "Can't execute $cmd: \$!\\n" if \$pid < 0;

		open STDOUT, '>&SAVEOUT' or die;
		close SAVEOUT;

		if (wantarray) {
		    my \@ret = <READ>;
		    close READ;
		    waitpid \$pid, 0;
		    \@ret;
		}
		else {
		    local(\$/) = undef;
		    my \$ret = <READ>;
		    close READ;
		    waitpid \$pid, 0;
		    \$ret;
		}
	    }
	    else {
		my \$a;
		my \@arr = \@_;
		if ('$^O' eq 'MSWin32') {
		    # XXX this special-casing should not be needed
		    # if we do quoting right on Windows. :-(
		    #
		    # First, escape all quotes.  Cover the case where we
		    # want to pass along a quote preceded by a backslash
		    # (i.e., C<"param \\""" end">).
		    # Ugly, yup?  You know, windoze.
		    # Enclose in quotes only the parameters that need it:
		    #   try this: c:\> dir "/w"
		    #   and this: c:\> dir /w
		    for (\@arr) {
			s/"/\\\\"/g;
			s/\\\\\\\\"/\\\\\\\\"""/g;
			\$_ = qq["\$_"] if /\\s/;
		    }
		}
		else {
		    for (\@arr) {
			s/(['\\\\])/\\\\\$1/g;
			\$_ = "'\$_'";
		    }
		}
		push \@arr, '2>&1' if \$Shell::capture_stderr;
		open(SUBPROC, join(' ', '$cmd', \@arr, '|'))
		    or die "Can't exec $cmd: \$!\\n";
		if (wantarray) {
		    my \@ret = <SUBPROC>;
		    close SUBPROC;	# XXX Oughta use a destructor.
		    \@ret;
		}
		else {
		    local(\$/) = undef;
		    my \$ret = <SUBPROC>;
		    close SUBPROC;
		    \$ret;
		}
	    }
	}
*END*

    die "$@\n" if $@;
    goto &$AUTOLOAD;
}

1;
__END__

=head1 NAME

Shell - run shell commands transparently within perl

=head1 SYNOPSIS

See below.

=head1 DESCRIPTION

  Date: Thu, 22 Sep 94 16:18:16 -0700
  Message-Id: <9409222318.AA17072@scalpel.netlabs.com>
  To: perl5-porters@isu.edu
  From: Larry Wall <lwall@scalpel.netlabs.com>
  Subject: a new module I just wrote

Here's one that'll whack your mind a little out.

    #!/usr/bin/perl

    use Shell;

    $foo = echo("howdy", "<funny>", "world");
    print $foo;

    $passwd = cat("</etc/passwd");
    print $passwd;

    sub ps;
    print ps -ww;

    cp("/etc/passwd", "/tmp/passwd");

That's maybe too gonzo.  It actually exports an AUTOLOAD to the current
package (and uncovered a bug in Beta 3, by the way).  Maybe the usual
usage should be

    use Shell qw(echo cat ps cp);

Larry


If you set $Shell::capture_stderr to 1, the module will attempt to
capture the STDERR of the process as well.

The module now should work on Win32.

 Jenda

=head1 AUTHOR

Larry Wall

Changes by Jenda@Krynicky.cz and Dave Cottle <d.cottle@csc.canterbury.ac.nz>

=cut
