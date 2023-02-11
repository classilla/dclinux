#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Element::Slang::Note;
use strict;
use Debconf::Gettext;
use Term::Stool::Button;
use base qw(Debconf::Element::Slang
	    Debconf::Element::Noninteractive::Note);
sub make_widgets {
	my $this=shift;
	return Term::Stool::Button->new(
		text => gettext("Save Note"),
		preferred_width => 13,
		press_hook => sub {
			my $button=shift;
			if ($this->sendmail(gettext("Debconf was asked to save this note, so it mailed it to you."))) {
				$this->frontend->helpbar->push(gettext("The note has been mailed to root."));
			}
			else {
				$this->frontend->helpbar->push(gettext("Unable to save note."));
			}
			$this->frontend->helpbar->display;
			$button->display;
			$this->frontend->screen->refresh;
		},
	);
}
1
