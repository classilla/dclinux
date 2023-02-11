#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::FrontEnd::Dialog;
use strict;
use Debconf::Gettext;
use Debconf::Priority;
use Debconf::TmpFile;
use Debconf::Log qw(:all);
use Text::Wrap qw(wrap $columns);
use Text::Tabs;
use IPC::Open3;
use base qw(Debconf::FrontEnd::Tty);
sub init {
	my $this=shift;
	$this->SUPER::init(@_);
	if (! exists $ENV{TERM} || ! defined $ENV{TERM} || $ENV{TERM} eq '') { 
		die gettext("TERM is not set, so the Dialog frontend is not usable.")."\n";
	}
	elsif ($ENV{TERM} =~ /emacs/i) {
		die gettext("Dialog frontend is incompatible with emacs shell buffers")."\n";
	}
	elsif ($ENV{TERM} eq 'dumb') {
		die gettext("Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.")."\n";
	}
	$this->interactive(1);
	$this->capb('backup');
	if (-x "/usr/bin/whiptail" && ! defined $ENV{FORCE_DIALOG} &&
	    ! defined $ENV{FORCE_GDIALOG}) {
		$this->program('whiptail');
		$this->borderwidth(5);
		$this->borderheight(6);
		$this->spacer(1);
		$this->titlespacer(10);
		$this->columnspacer(3);
	}
	elsif (-x "/usr/bin/dialog" && ! defined $ENV{FORCE_GDIALOG}) {
		$this->program('dialog');
		$this->borderwidth(7);
		$this->borderheight(6);
		$this->spacer(4);
		$this->titlespacer(4);
		$this->columnspacer(2);
	}
	else {
		die gettext("Neither whiptail nor dialog are installed, so the dialog based frontend cannot be used.");
	}
}
sub sizetext {
	my $this=shift;
	my $text=shift;
	
	$columns = $this->screenwidth - $this->borderwidth - $this->columnspacer;
	$text=expand(wrap('', '', $text));
	my @lines=split(/\n/, $text);
	
	my $window_columns=length($this->title) + $this->titlespacer;
	map { $window_columns=length if length > $window_columns } @lines;
	
	return $text, $#lines + 1 + $this->borderheight,
	       $window_columns + $this->borderwidth;
}
sub showtext {
	my $this=shift;
	my $intext=shift;
	my $lines = $this->screenheight;
	my ($text, $height, $width)=$this->sizetext($intext);
	my @lines = split(/\n/, $text);
	my $num;
	my @args=('--msgbox', join("\n", @lines));
	if ($lines - 4 - $this->borderheight <= $#lines) {
		$num=$lines - 4 - $this->borderheight;
		if ($this->program eq 'whiptail') {
			push @args, '--scrolltext';
		}
		else {
			my $fh=Debconf::TmpFile::open();
			print $fh join("\n", @lines);
			close $fh;
			@args=("--textbox", Debconf::TmpFile::filename());
		}
	}
	else {
		$num=$#lines + 1;
	}
	$this->showdialog(@args, $num + $this->borderheight, $width);
	if ($args[0] eq '--textbox') {
		Debconf::TmpFile::cleanup();
	}
}
sub makeprompt {
	my $this=shift;
	my $question=shift;
	my $freelines=$this->screenheight - $this->borderheight + 1;
	$freelines += shift if @_;
	my ($text, $lines, $columns)=$this->sizetext(
		$question->extended_description."\n\n".
		$question->description
	);
	
	if ($lines > $freelines) {
		$this->showtext($question->extended_description);
		($text, $lines, $columns)=$this->sizetext($question->description);
	}
	
	return ($text, $lines, $columns);
}
sub showdialog {
	my $this=shift;
	debug debug => "preparing to run dialog. Params are:" ,
		join(",", $this->program, @_);
	use vars qw{*SAVEOUT *SAVEIN};
	open(SAVEOUT, ">&STDOUT") || die $!;
	open(SAVEIN, "<&STDIN") || die $!;
	my $savew=$^W;
	$^W=0;
	
	if (not $this->capb_backup) {
		unshift @_, '--nocancel';
	}
	
	my $pid = open3('<&STDIN', '>&STDOUT', \*ERRFH, $this->program,
		'--backtitle', gettext("Debian Configuration"),
		'--title', $this->title, @_);
	my $stderr;
	while (<ERRFH>) {
		$stderr.=$_;
	}
	chomp $stderr;
	wait;
	$^W=$savew;
	open(STDOUT, ">&SAVEOUT") || die $!;
	open(STDIN, "<&SAVEIN") || die $!;
	my $ret=$? >> 8;
	if ($ret == 255 || ($ret == 1 && join(' ', @_) !~ m/--yesno\s/)) {
		$this->backup(1);
	}
	if (wantarray) {
		return $ret, $stderr;
	}
	else {
		return $stderr;
	}
}
1
