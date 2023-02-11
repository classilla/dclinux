#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Noninteractive::Note;
use strict;
use Text::Wrap;
use Debconf::Gettext;
use base qw(Debconf::Element::Noninteractive);
sub show {
	my $this=shift;
	$this->sendmail(gettext("Debconf was not configured to display this note, so it mailed it to you."));
	$this->value('');
}
sub sendmail {
	my $this=shift;
	my $footer=shift;
	return unless length Debconf::Config->admin_email;
	if (-x '/usr/bin/mail' && $this->question->flag('seen') ne 'true') {
	    	my $title=gettext("Debconf").": ".
			$this->frontend->title." -- ".
			$this->question->description;
		unless (open(MAIL, "|-")) { # child
			exec("mail", "-s", $title, Debconf::Config->admin_email) or return '';
		}
		my $old_columns=$Text::Wrap::columns;
		$Text::Wrap::columns=75;
		if ($this->question->extended_description ne '') {
			print MAIL wrap('', '', $this->question->extended_description);
		}
		else {
			print MAIL wrap('', '', $this->question->description);
		}
		print MAIL "\n\n";
		print MAIL "-- \n", sprintf(gettext("Debconf, running at %s"), `hostname -f`);
		print MAIL "[ ", wrap('', '', $footer), " ]\n" if $footer;
		close MAIL or return '';
		$Text::Wrap::columns=$old_columns;
	
		$this->question->flag('seen', 'true');
		return 1;
	}
}
1
