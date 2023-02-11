#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::FrontEnd::Slang;
use strict;
use Debconf::Gettext;
use Debconf::Config;
use base qw(Debconf::FrontEnd);
eval q{
	use Term::Stool::Screen;
	use Term::Stool::Window;
	use Term::Stool::Dialog;
	use Term::Stool::TitleBar;
	use Term::Stool::HelpBar;
	use Term::Stool::Panel;
	use Term::Stool::Button;
	use Term::Stool::Text;
	use Term::Stool::WrappedText
};
die "Unable to load Term::Stool -- is libterm-stool-perl installed?\n"
	if $@;
sub init {
	my $this=shift;
	if (! exists $ENV{TERM} || ! defined $ENV{TERM} || $ENV{TERM} eq '') {
		die gettext("TERM is not set, so the Slang frontend is not usable.")."\n";
	}
	elsif ($ENV{TERM} =~ /emacs/i) {
		die gettext("Slang frontend is incompatible with emacs shell buffers")."\n";
	}
	elsif ($ENV{TERM} eq 'dumb') {
		die gettext("Slang frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.")."\n";
	}
	$this->SUPER::init(@_);
	$this->interactive(1);
	$this->capb('backup');
	$this->screen(Term::Stool::Screen->new);
	$this->titlebar(Term::Stool::TitleBar->new(
		text => gettext("Debian Configuration"),
	));
	$this->helpbar(Term::Stool::HelpBar->new);
	
	$this->helpwindow(Term::Stool::Window->new(
		title => gettext("Help"),
		resize_hook => sub {
			my $this=shift;
		
			$this->xoffset(3);
			$this->width($this->container->width - 6);
			$this->yoffset(int(($this->container->height - 6) / 2 + 4));
			$this->height(int(($this->container->height - 6) / 2));
		},
	));
	$this->helptext(Term::Stool::WrappedText->new(
		xoffset => 1,
		yoffset => 0,
		resize_hook => sub {
			my $this=shift;
			$this->width($this->container->width - 3);
			$this->height($this->container->height - 2);
		},
	));
	
	$this->button_next(Term::Stool::Button->new(text => gettext("Next")));
	$this->button_back(Term::Stool::Button->new(text => gettext("Back")));
	my $hide_help=gettext("Hide Help");
	my $show_help=gettext("Show Help");
	my $length=length $hide_help;
	$length=length $show_help if length $show_help > $length;
	$this->button_help(Term::Stool::Button->new(
		align => 'right',
		text_hidden => $show_help,
		text_shown => $hide_help,
		width => $length + 4,
		press_hook => sub {
			if ($this->helpwindow->hidden) {
				Debconf::Config->helpvisible('true');
				$this->helpwindow->hidden(0);
				$this->button_help->text($this->button_help->text_shown);
			}
			else {
				Debconf::Config->helpvisible('false');
				$this->helpwindow->hidden(1);
				$this->button_help->text($this->button_help->text_hidden);
			}
			$this->mainwindow->resize;
			$this->screen->display;
			$this->screen->refresh;
		},
	
	));
	
	if (Debconf::Config->helpvisible eq 'true') {
		$this->button_help->text($this->button_help->text_shown);
	}
	else {
		$this->button_help->text($this->button_help->text_hidden);
		$this->helpwindow->hidden(1);
	}
	
	$this->panel(Term::Stool::Panel->new(
		xoffset => -1,
		yoffset => -1,
		withframe => 0,
		resize_hook => sub {
			my $panel=shift;
			
			$panel->width($panel->container->width);
			$panel->height($panel->container->height - 2);
			$this->fillpanel;
		},
	));
	$this->mainwindow(Term::Stool::Dialog->new(
		inside => $this->panel,
		resize_hook => sub {
			my $window=shift;
			
			$window->xoffset(2);
			$window->yoffset(2);
			$window->width($window->container->width - 4);
			if ($this->helpwindow->hidden) {			
				$window->height($window->container->height - 4);
			}
			else {
				$window->height(int(($window->container->height - 6) / 2));
			}	
		},
        ));
	
	$this->mainwindow->buttonbar->add($this->button_next,
		$this->button_back, $this->button_help);
	$this->helpwindow->add($this->helptext);
	$this->screen->add($this->titlebar, $this->mainwindow,
		$this->helpwindow, $this->helpbar);
}
sub go {
        my $this=shift;
	my @elements=@{$this->elements};
	$this->panel->clear;
	my $firstwidget='';
	foreach my $element (@elements) {
		next unless $element->widgets;
		
		unless ($firstwidget) {
			$firstwidget=$element->widgets->[0];
			
			if (! $this->screen_is_setup) {
				$this->screen_is_setup(1);
				$this->screen->slang_init;
			}
		}
		
		foreach my $widget (@{$element->widgets}) {
			$widget->activate_hook(sub {
				my $this=shift;
			
				$this->container->scrollto($element->widget_description);
				$element->frontend->helptext->text($element->question->extended_description);
				unless ($element->frontend->helpwindow->hidden) {	
					$element->frontend->helptext->display;
				}
			});
		}
		$element->widget_description(Term::Stool::Text->new(
			text => $element->question->description,
			xoffset => 1,
			resize_hook => sub {
				my $this=shift;
				my $length=length $this->text;
				my $maxwidth=$this->container->width - $this->x;
				
				if ($length <= $maxwidth) {
					$this->width($length);
				}
				else {
					$this->width($maxwidth);
				}
			},
		));
		$this->panel->add($element->widget_description);
		$this->panel->add(@{$element->widgets});
	}
	if ($firstwidget) {
		$this->mainwindow->title($this->title);
		$this->fillpanel;
		if (($this->button_back->disabled && $this->capb_backup) ||
		    (! $this->button_back->disabled && ! $this->capb_backup)) {
			$this->button_back->disabled(! $this->capb_backup);
			$this->button_back->display;
		}
		$this->helpbar->push(gettext("Tab and arrow keys move; space drops down lists."));
		$this->helpbar->display;
		$this->panel->display;
		$this->screen->run($firstwidget);
		if ($this->button_next->active) {
			$this->backup('');
			$this->button_next->deactivate;
			$this->button_next->display;
		}
		elsif ($this->button_back->active) {
			$this->backup(1);
			$this->button_back->deactivate;
			$this->button_back->display;
		}
		$this->mainwindow->buttonbar->active('');
		$this->helpbar->helpstack([gettext("Working, please wait...")]);
		$this->helpbar->display;
		$this->screen->refresh;
	}
	foreach my $element (@elements) {
		$element->show;
	}
	return ! $this->backup;
}
sub fillpanel {
	my $this=shift;
	my $y=0;
	foreach my $element (@{$this->elements}) {
		$element->widget_description || next;
		$y=$element->resize($y);
		$y++;
		$y++; # a blank line between widget groups.
	}
}
sub title {
	my $this=shift;
	if (@_) {
		my $title=$this->SUPER::title(shift);
		if ($this->mainwindow) {
			$this->mainwindow->title($title);
			$this->mainwindow->display if $this->screen_is_setup;
		}
		return $title;
	}
	else {
		return $this->SUPER::title;
	}
}
sub shutdown {
	my $this=shift;
	$this->screen->reset if $this->screen;
}
1
