#!/usr/bin/perl

# This script can be used to detect people trying to abuse the security hole which
# existed in A CGI script direstributed with Apache 1.0.3 and earlier versions.
# You can redirect them to here using the "<Location /cgi-bin/phf*>" suggestion in
# httpd.conf.  
#
# The format logged to is "[date] remote_addr remote_host [date] referrer user_agent".

$LOG = "/var/log/phf.log";

require "ctime.pl";
$when = &ctime(time);
$when =~ s/\n//go;
$ENV{HTTP_USER_AGENT} .= " via $ENV{HTTP_VIA}" if($ENV{HTTP_VIA});

open(LOG, ">>$LOG") || die "boo hoo, phf_log $!";
print LOG "[$when] $ENV{REMOTE_ADDR} $ENV{REMOTE_HOST} $ENV{$HTTP_REFERER} $ENV{HTTP_USER_AGENT}\n";
close(LOG);

print "Content-type: text/html\r\n\r\n<BLINK>Smile, you're on Candid Camera.</BLINK>\n";
