use vars qw(@EXPORT $VAR1);


# Common functions that are used in adduser and deluser
# Copyright (C) 2000 Roland Bauerschmidt <rb@debian.org>

# Most of the functions are adopted from the original adduser
# Copyright (C) 1997, 1998, 1999 Guy Maor <maor@debian.org>
# Copyright (C) 1995 Ted Hajek <tedhajek@boombox.micro.umn.edu>
#                     Ian A. Murdock <imurdock@gnu.ai.mit.edu>
#

@EXPORT = qw(invalidate_nscd _ dief warnf read_config get_users_groups get_group_members s_print s_printf);

sub invalidate_nscd {
    my $nscd;
    if(-e "/var/yp/Makefile")
      {
	    system ("make", "-C", "/var/yp");
      }
    if(-e "/usr/sbin/nscd")
      {
        $nscd = "/usr/sbin/nscd";
      }
    elsif(-e "/usr/bin/nscd")
      {
        $nscd = "/usr/bin/nscd";
      }
    else
      {
        return(0); # nscd is not installed
      }
    my $nscdpid = "/var/run/nscd.pid";
    # this function replaces startnscd and stopnscd (closes: #54726)
    if(-e $nscdpid)
      {
	    my $table = shift;
	    if ($table)
	      {
	        system ($nscd, "-i", $table);
	      }
	    else
	      {
	        # otherwise we invalidate passwd and group table
	        system ($nscd, "-i", "passwd");
	        system ($nscd, "-i", "group");
	      }
      }
}

sub _ {
    return gettext("@_");
}

sub dief {
    my ($form,@argu)=@_;
    printf STDERR "$0: $form",@argu;
    exit 1;
}

sub warnf {
    my ($form,@argu)=@_;
    printf STDERR "$0: $form",@argu;
}

# parse the configuration file
sub read_config {
    my ($conf_file) = @_;
    my ($var, $lcvar, $val);

    if (! -f $conf_file) {
	printf _("%s: %s doesn't exist.  Using defaults.\n"),$0,$conf_file if $verbose;
	return;
    }

    open (CONF, $conf_file) || dief("%s: %s\n",$conf_file,$!);
    while (<CONF>) {
	chomp;
	next if /^#/ || /^\s*$/;

	if ((($var, $val) = /^\s*(\S+)\s*=\s*(.*)/) != 2) {
	    warnf(_("Couldn't parse %s:%s.\n"),$conf_file,$.);
	    next;
	}
	$lcvar = lc $var;
	if (!defined($config{$lcvar})) {
	    warnf(_("Unknown variable `%s' at %s:%s.\n"),$var,$conf_file,$.);
	    next;
	}
		
	$val =~ s/^"(.*)"$/$1/;
	$val =~ s/^'(.*)'$/$1/;

	$config{$lcvar} = $val;
    }

    close CONF || die "$!";
}

# return a user's groups
sub get_users_groups {
    my($user) = @_;
    my($name,$members,@groups);
    setgrent;
    while (($name,$members) = (getgrent)[0,3]) {
	for (split(/ /, $members)) {
	    if ($user eq $_) {
		push @groups, $name;
		last;
	    }
	}
    }
    endgrent;
    @groups;
}

# return a group's members
sub get_group_members
  {
      my $group = shift;
      my $members = (getgrnam($group))[3];
      return split(/ /, $members);
  }

sub s_print
{
    print join(" ",@_)
	if($verbose);
}

sub s_printf
{
    printf(@_)
	if($verbose);
}

# Local Variables:
# mode:cperl
# End:
