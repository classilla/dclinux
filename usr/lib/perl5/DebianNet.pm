# DebianNet.pm: a perl module to add entries to the /etc/inetd.conf file
#
# Copyright (C) 1995, 1996 Peter Tobias <tobias@et-inf.fho-emden.de>
#                          Ian Jackson <iwj10@cus.cam.ac.uk>
#
#
# DebianNet::add_service($newentry, $group);
# DebianNet::disable_service($service, $pattern);
# DebianNet::enable_service($service, $pattern);
# DebianNet::remove_service($entry);
#

package DebianNet;

require 5.000;

$inetdcf="/etc/inetd.conf";
$sep = "#<off># ";
$version = "1.11";

sub add_service {
    local($newentry, $group) = @_;
    local($service, $searchentry, @inetd, $inetdconf, $found, $success);
    unless (defined($newentry)) { return(-1) };
    chomp($newentry); chomp($group);
    $group = "OTHER" unless (defined($group));
    $group =~ tr/a-z/A-Z/;
    $newentry =~ s/\\t/\t/g;
    ($service = $newentry) =~ s/(\W*\w+)\s+.*/$1/;
    ($sservice = $service) =~ s/^#([A-Za-z].*)/$1/;
    ($searchentry = $newentry) =~ s/^$sep//;
    $searchentry =~ s/^#([A-Za-z].*)/$1/;

    # strip parameter from entry (e.g. -s /tftpboot)
    # example:          service dgram udp     wait    root    /tcpd /prg   -s /tftpboot";
    $searchentry =~ s/^(\w\S+\W+\w+\W+\w\S+\W+\w\S+\W+\w\S+\W+\S+\W+\S+).*/$1/;
    $searchentry =~ s/[ \t]+/ /g;
    $searchentry =~ s/ /\\s+/g;
    $searchentry =~ s@\\s\+/\S+\\s\+/\S+@\\s\+\\S\+\\s\+\\S\+@g;

    if (open(INETDCONF,"$inetdcf")) {
        @inetd=<INETDCONF>;
        close(INETDCONF);
        if (grep(m/$sep$sservice\s+/,@inetd)) {
            &enable_service($sservice);
        } else {
            if (grep(m/^$sservice\s+/,@inetd)) {
                if (grep(m/^$sservice\s+/,@inetd) > 1) {
                    &inetde("There are several entries for $sservice in $inetdcf\n");
                } elsif (!grep(m:^#?.*$searchentry.*:, @inetd)) {
                    print"\nTrying to add the following entry:\n\n $newentry\n\n";
                    &inetde("There is already an entry for $sservice in $inetdcf,
but I don't recognise it.  Here is what it looks like:\n
 ".join(' ',grep(m/^$sservice\s+/,@inetd)));
                }
            } elsif (grep(m/^#\s*$sservice\s+/, @inetd) >= 1 or
              (($service =~ s/^#//) and grep(m/^$service\s+/, @inetd)>=1)) {
                &printv("Processing service \`$service' ... not changed\n");
            } else {
                &printv("Processing service \`$sservice' ... added\n");
                $inetdconf=1;
            }
        }
        if ($inetdconf) {
            open(ICWRITE, ">$inetdcf.new") || die "Error creating new $inetdcf: $!\n";
            open(ICREAD, "$inetdcf");
            while(<ICREAD>) {
                chop;
                if (/^#:$group:/) {
                    $found = 1;
                };
                if ($found and !(/[a-zA-Z#]/)) {
                    print (ICWRITE "$newentry\n") || die "Error writing new $inetdcf: $!\n";
                    $found = 0;
                    $success = 1;
                }
                print ICWRITE "$_\n";
            }
            close(ICREAD);
            unless ($success) {
                print (ICWRITE "$newentry\n") || die "Error writing new $inetdcf: $!\n";
            }
            close(ICWRITE) || die "Error closing new inetd.conf: $!\n";

            rename("$inetdcf.new","$inetdcf") ||
                die "Error installing new $inetdcf: $!\n";
            umask(000); chmod(0644, "$inetdcf");

            &wakeup_inetd;
        }
    }

    sub inetde {
        my($response);
        do {
            print @_,
"\nDo you want to ignore this potential problem and continue, or would
you rather not do so now ?  Continue?  (n/y) ";
            $!=0; defined($response=<STDIN>) || die "netconfig: EOF/error on stdin: $!\n";
        } while ($response !~ m/^\s*[yn]?\s*$/i);
        return(1) if($response =~ m/y/i);
        exit(1);
    }
    return(1);
}

sub remove_service {
    my($service) = @_;
    unless(defined($service)) { return(-1) };
    chomp($service);
    if($service eq "") {
         print "DebianNet::remove_service called with empty argument\n";
         return(-1);
    }

    if ((&scan_entries("$service") > 1) and (not defined($multi))) {
        print "\nWARNING!!!!!! $inetdcf contains multiple entries for \n";
        print "the \`$service' service. You're about to remove these entries.\n";
        print "Do you want to continue? [n] ";
        if (<STDIN> =~ /^[^y]/i) {
            print "\nOk, I'll stop ...\n";
            return(1);
        } else {
            if ($want_continue == 0) {
                print "\nOk, I'll continue ...\n";
            }
        }
    }

    open(ICWRITE, ">$inetdcf.new") || die "Error creating $inetdcf.new";
    open(ICREAD, "$inetdcf");
    RLOOP: while(<ICREAD>) {
        chomp;
        unless (/$service\b/) {
            print ICWRITE "$_\n";
        } else {
            &printv("Removing line: \`$_'\n");
        }
    }
    close(ICREAD);
    close(ICWRITE);

    rename("$inetdcf.new", "$inetdcf") ||
        die "Error installing new $inetdcf: $!\n";
    umask(000); chmod(0644, "$inetdcf");

    &wakeup_inetd;
    return(1);
}

sub disable_service {
    my($service, $pattern) = @_;
    unless (defined($service)) { return(-1) };
    chomp($service);

    if ((&scan_entries("$service", $pattern) > 1) and (not defined($multi))) {
        print "\nWARNING!!!!!! $inetdcf contains multiple entries for \n";
        print "the \`$service' service. You're about to disable these entries.\n";
        print "Do you want to continue? [n] ";
        if (<STDIN> =~ /^[^y]/i) {
            print "\nOk, I'll stop ...\n";
            return(1);
        } else {
            if ($want_continue == 0) {
                print "\nOk, I'll continue ...\n";
            }
        }
    }

    open(ICWRITE, ">$inetdcf.new") || die "Error creating new $inetdcf: $!\n";
    open(ICREAD, "$inetdcf");
    DLOOP: while(<ICREAD>) {
      chop;
      if (/^$service\s+\w+\s+/ and /$pattern/) {
          &printv("Processing service \`$service' ... disabled\n");
          $_ =~ s/^(.+)$/$sep$1/;
      }
      print ICWRITE "$_\n";
    }
    close(ICREAD);
    close(ICWRITE) || die "Error closing new inetd.conf: $!\n";

    rename("$inetdcf.new","$inetdcf") ||
        die "Error installing new $inetdcf: $!\n";
    umask(000); chmod(0644, "$inetdcf");

    &wakeup_inetd;
    return(1);
}

sub enable_service {
    my($service, $pattern) = @_;
    unless (defined($service)) { return(-1) };
    chomp($service);
    open(ICWRITE, ">$inetdcf.new") || die "Error creating new $inetdcf: $!\n";
    open(ICREAD, "$inetdcf");
    while(<ICREAD>) {
      chop;
      if (/^$sep$service\s+\w+\s+/ and /$pattern/) {
          &printv("Processing service \`$service' ... enabled\n");
          $_ =~ s/^$sep//;
      }
      print ICWRITE "$_\n";
    }
    close(ICREAD);
    close(ICWRITE) || die "Error closing new inetd.conf: $!\n";

    rename("$inetdcf.new","$inetdcf") ||
        die "Error installing new $inetdcf: $!\n";
    umask(000); chmod(0644, "$inetdcf");

    &wakeup_inetd;
    return(1);
}

sub wakeup_inetd {
    my($pid);
    if (open(P,"/var/run/inetd.pid")) {
        $pid=<P>;
        if (open(C,sprintf("/proc/%d/stat",$pid))) {
            $_=<C>;
            if (m/^\d+ \(inetd\)/) { kill(1,$pid); }
            close(C);
        }
        close(P);
    }
    return(1);
}

sub scan_entries {
    my ($service, $pattern) = @_;
    my $counter = 0;

    open(ICREAD, "$inetdcf");
    SLOOP: while (<ICREAD>) {
        $counter++ if (/^$service\b/ and /$pattern/);
    }
    close(ICREAD);
    return($counter);
}

sub printv {
    print @_ if (defined($verbose));
}

1;

