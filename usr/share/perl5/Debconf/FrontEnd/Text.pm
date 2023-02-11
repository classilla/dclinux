#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::FrontEnd::Text;
use strict;
use Text::Wrap;
use Term::ReadLine;
use Debconf::Gettext;
use base qw(Debconf::FrontEnd::Tty);
local $|=1;
sub init {
	my $this=shift;
	$this->SUPER::init(@_);
	$Term::ReadLine::termcap_nowarn = 1; # Turn off stupid termcap warning.
	$this->readline(Term::ReadLine->new('debconf'));
	$this->readline->ornaments(1);
	if (Term::ReadLine->ReadLine =~ /::Gnu$/) {
		$this->readline->add_defun('previous-question',	
			sub {
				if ($this->capb_backup) {
					$this->_skip(1);
					$this->_direction(-1);
					$this->readline->stuff_char(ord "\n");
				}
				else {
					$this->readline->ding;
				}
			}, ord "\cu");
		$this->readline->add_defun('next-question',
			sub {
				if ($this->capb_backup) {
					$this->readline->stuff_char(ord "\n");
				}
			}, ord "\cv");
		$this->readline->parse_and_bind('"\e[5~": previous-question');
		$this->readline->parse_and_bind('"\e[6~": next-question');
		$this->capb('backup');
	}
	
	$this->interactive(1);
	$this->linecount(0);
	
	if (Term::ReadLine->ReadLine =~ /::Stub$/) {
		$this->promptdefault(1);
	}
}
sub go {
	my $this=shift;
	foreach my $element (grep ! $_->visible, @{$this->elements}) {
		my $value=$element->show;
		return if $this->backup && $this->capb_backup;
		$element->question->value($value);
	}
	my @elements=grep $_->visible, @{$this->elements};
	unless (@elements) {
		$this->_didbackup('');
		return 1;
	}
	my $current=$this->_didbackup ? $#elements : 0;
	$this->_direction(1);
	for (; $current > -1 && $current < @elements; $current += $this->_direction) {
		my $value=$elements[$current]->show;
	}
	if ($current < 0) {
		$this->_didbackup(1);
		return;
	}
	else {
		$this->_didbackup('');
		return 1;
	}
}
sub screenwidth {
	my $this=shift;
	
	$Text::Wrap::columns=$this->SUPER::screenwidth(@_);
}
sub display {
	my $this=shift;
	my $text=shift;
	
	$this->display_nowrap(wrap('','',$text));
}
sub display_nowrap {
	my $this=shift;
	my $text=shift;
	my $notitle=shift;
	$this->title unless $notitle;
	my @lines=split(/\n/, $text);
	push @lines, "" if $text=~/\n$/;
	foreach (@lines) {
		if ($this->linecount($this->linecount+1) > $this->screenheight - 2) {
			$this->prompt('['.gettext("More").']', '');
		}
		print "$_\n";
	}
}
sub title {
	my $this=shift;
	if (@_) {
		return $this->{title}=shift;
	}
	my $title=$this->{title};
	if ($title) {
		$this->display_nowrap($title."\n".('-' x length($title)). "\n", 1);
	}
	$this->{title}='';
}
sub prompt {
	my $this=shift;
	my $prompt=(shift)." ";
	my $default=shift;
	my $noshowdefault=shift;
	
	$this->linecount(0);
	my $ret;
	$this->_skip('');
	if (! $noshowdefault && $this->promptdefault && $default ne '') {
		$ret=$this->readline->readline($prompt."[$default] ", $default);
	}
	elsif (! $noshowdefault) {
		$ret=$this->readline->readline($prompt, $default);
	}
	else {
		$ret=$this->readline->readline($prompt);
	}
	return if $this->_skip;
	$this->_direction(1);
	$this->readline->addhistory($ret);
	if ($ret eq '' && $this->promptdefault) {
		return $default;
	}
	return $ret;
}
sub prompt_password {
	my $this=shift;
	my $prompt=(shift)." ";	
	$this->readline->Attribs->{completion_entry_function} = sub {
		my $text=shift;
		my $state=shift;
 		return '' if $state == 0;
 		return;
	};
	$this->readline->Attribs->{completion_append_character} = '';
	
	system('stty -echo');
	my $ret;
	if (Term::ReadLine->ReadLine =~ /::Perl$/) {
		local $|=1;
		print $prompt;
		$ret=<STDIN>;
		chomp $ret;
	}
	else {
		$ret=$this->prompt($prompt, @_);
	}
	system('stty sane');
	$this->display("\n");
	return $ret;
}
sub shutdown {
	my $this=shift;
	if ($this->linecount > 0) {
		$this->display('', '');
	}
}
1
