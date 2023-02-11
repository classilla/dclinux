#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::ConfModule;
use strict;
use IPC::Open2;
use FileHandle;
use Debconf::Gettext;
use Debconf::Config;
use Debconf::Question;
use Debconf::Priority qw(priority_valid high_enough);
use Debconf::FrontEnd::Noninteractive;
use Debconf::Log ':all';
use base qw(Debconf::Base);
my %codes = (
	success => 0,
	badparams => 10,
	syntaxerror => 20,
	input_invisible => 30,
	version_bad => 30,
	go_back => 30,
	internalerror => 100,
);
sub init {
	my $this=shift;
	$this->version("2.0");
	
	$this->owner('unknown') if ! defined $this->owner;
	
	$this->frontend->capb_backup('');
	$this->seen([]);
	$ENV{DEBIAN_HAS_FRONTEND}=1;
}
sub startup {
	my $this=shift;
	my $confmodule=shift;
	my @args=$this->confmodule($confmodule);
	push @args, @_ if @_;
	
	my $bad='';
	map { $bad=1 if ! defined $_ } @args;
	if ($bad) {
		use Carp;
		Carp::cluck(gettext("debconf: Undefined values detected at confmodule startup! Please file a bug report, and include the stack trace below"));
	}
	
	debug developer => "starting ".join(' ',@args);
	$this->pid(open2($this->read_handle(FileHandle->new),
		         $this->write_handle(FileHandle->new),
			 @args)) || die $!;
		
	$this->caught_sigpipe('');
	$SIG{PIPE}=sub { $this->caught_sigpipe(128) };
}
sub communicate {
	my $this=shift;
	my $r=$this->read_handle;
	$_=<$r> || return $this->_finish;
	chomp;
	my $ret=$this->process_command($_);
	my $w=$this->write_handle;
	print $w $ret."\n";
	return '' unless length $ret;
	return 1;
}
sub process_command {
	my $this=shift;
	
	debug developer => "<-- $_";
	return 1 unless defined && ! /^\s*#/; # Skip blank lines, comments.
	chomp;
	my ($command, @params)=split(' ', $_);
	$command=lc($command);
	if (lc($command) eq "stop") {
		return $this->_finish;
	}
	if (! $this->can("command_$command")) {
		return $codes{syntaxerror},
		       "Unsupported command \"$command\" received from confmodule.";
	}
	$command="command_$command";
	my $ret=join(' ', $this->$command(@params));
	debug developer => "--> $ret";
	return $ret;
}
sub _finish {
	my $this=shift;
	waitpid $this->pid, 0 if defined $this->pid;
	$this->exitcode($this->caught_sigpipe || ($? >> 8));
	foreach (@{$this->seen}) {
		$_->flag('seen', 'true');
	}
	$this->seen([]);
	
	return '';
}
sub command_input {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ != 2;
	my $priority=shift;
	my $question_name=shift;
	
	my $question=Debconf::Question->get($question_name) ||
		return $codes{badparams}, "\"$question_name\" doesn't exist";
	if (! priority_valid($priority)) {
		return $codes{syntaxerror}, "\"$priority\" is not a valid priority";
	}
	my $visible=1;
	$visible='' if ! $this->frontend->interactive;
	$visible='' unless high_enough($priority);
	$visible='' if Debconf::Config->showold() eq 'false' &&
	               $question->flag('seen') eq 'true';
	my $element;
	if ($visible) {
		$element=$this->frontend->makeelement($question);
		unless ($element) {
			return $codes{internalerror},
			       "unable to make an input element";
		}
		$visible=$element->visible;
	}
	if (! $visible) {
		$element=Debconf::FrontEnd::Noninteractive->makeelement($question, 1);
		return $codes{input_invisible}, "question skipped" unless $element;
	}
	$this->frontend->add($element);
	if ($element->visible) {
		return $codes{success}, "question will be asked";
	}
	else {
		return $codes{input_invisible}, "question skipped";
	}
}
sub command_clear {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ != 0;
	$this->frontend->clear;
	return $codes{success};
}
sub command_version {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ > 1;
	my $version=shift;
	if (defined $version) {
		return $codes{version_bad}, "Version too low ($version)"
			if int($version) < int($this->version);
		return $codes{version_bad}, "Version too high ($version)"
			if int($version) > int($this->version);
	}
	return $codes{success}, $this->version;
}
sub command_capb {
	my $this=shift;
	$this->client_capb([@_]);
	$this->frontend->capb_backup(1) if grep { $_ eq 'backup' } @_;
	my @capb=('multiselect');
	push @capb, $this->frontend->capb;
	return $codes{success}, @capb;
}
sub command_title {
	my $this=shift;
	$this->frontend->title(join ' ', @_);
	return $codes{success};
}
sub command_beginblock {
	return $codes{success};
}
sub command_endblock {
	return $codes{success};
}
sub command_go {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ > 0;
	my $ret=$this->frontend->go;
	if ($ret && (! $this->backed_up ||
	             grep { $_->visible } @{$this->frontend->elements})) {
		foreach (@{$this->frontend->elements}) {
			$_->question->value($_->value);
			push @{$this->seen}, $_->question if $_->visible && $_->question;
		}
		$this->frontend->clear;
		$this->backed_up('');
		return $codes{success}, "ok"
	}
	else {
		$this->frontend->clear;
		$this->backed_up(1);
		return $codes{go_back}, "backup";
	}
}
sub command_get {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ != 1;
	my $question_name=shift;
	my $question=Debconf::Question->get($question_name) ||
		return $codes{badparams}, "$question_name doesn't exist";
	if (defined $question->value) {
		return $codes{success}, $question->value;
	}
	else {
		return $codes{success}, '';
	}
}
sub command_set {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ < 1;
	my $question_name=shift;
	my $value=join(" ", @_);
	my $question=Debconf::Question->get($question_name) ||
		return $codes{badparams}, "$question_name doesn't exist";
	$question->value($value);
	return $codes{success}, "value set";
}
sub command_reset {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ != 1;
	my $question_name=shift;
	my $question=Debconf::Question->get($question_name) ||
		return $codes{badparams}, "$question_name doesn't exist";
	$question->value($question->default);
	$question->flag('seen', 'false');
	return $codes{success};
}
sub command_subst {
	my $this = shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ < 2;
	my $question_name = shift;
	my $variable = shift;
	my $value = (join ' ', @_);
	
	my $question=Debconf::Question->get($question_name) ||
		return $codes{badparams}, "$question_name doesn't exist";
	my $result=$question->variable($variable,$value);
	return $codes{internalerror}, "Substitution failed" unless defined $result;
	return $codes{success};
}
sub command_register {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ != 2;
	my $template=shift;
	my $name=shift;
	
	if (! Debconf::Question->get($template)) {
		return $codes{badparams}, "No such template, \"$template\"";
	}
	my $question=Debconf::Question->get($name) || 
	             Debconf::Question->new($name, $this->owner);
	if (! $question) {
		return $codes{internalerror}, "Internal error";
	}
	if (! $question->addowner($this->owner)) {
		return $codes{internalerror}, "Internal error";
	}
	if (! $question->template($template)) {
		return $codes{internalerror}, "Internal error";
	}
	return $codes{success};
}
sub command_unregister {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ != 1;
	my $name=shift;
	
	my $question=Debconf::Question->get($name) ||
		return $codes{badparams}, "$name doesn't exist";
	$question->removeowner($this->owner);
	return $codes{success};
}
sub command_purge {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ > 0;
	
	my $iterator=Debconf::Question->iterator;
	while (my $q=$iterator->iterate) {
		$q->removeowner($this->owner);
	}
	return $codes{success};
}
sub command_metaget {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ != 2;
	my $question_name=shift;
	my $field=shift;
	
	my $question=Debconf::Question->get($question_name) ||
		return $codes{badparams}, "$question_name doesn't exist";
	my $fieldval=$question->$field();
	unless (defined $fieldval) {
		return $codes{badparams}, "$field does not exist";
	}
	return $codes{success}, $fieldval;
}
sub command_fget {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ != 2;
	my $question_name=shift;
	my $flag=shift;
	
	my $question=Debconf::Question->get($question_name) ||
		return $codes{badparams},  "$question_name doesn't exist";
	return $codes{success}, $question->flag($flag);
}
sub command_fset {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ < 3;
	my $question_name=shift;
	my $flag=shift;
	my $value=(join ' ', @_);
	
	my $question=Debconf::Question->get($question_name) ||
		return $codes{badparams}, "$question_name doesn't exist";
	return $codes{success}, $question->flag($flag, $value);
}
sub command_visible {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ != 2;
	my $priority=shift;
	my $question_name=shift;
	
	my $question=Debconf::Question->get($question_name) ||
		return $codes{badparams}, "$question_name doesn't exist";
	return $codes{success}, $this->frontend->visible($question, $priority) ? "true" : "false";
}
sub command_exist {
	my $this=shift;
	return $codes{syntaxerror}, "Incorrect number of arguments" if @_ != 1;
	my $question_name=shift;
	
	return $codes{success}, 
		Debconf::Question->get($question_name) ? "true" : "false";
}
sub AUTOLOAD {
	(my $field = our $AUTOLOAD) =~ s/.*://;
	no strict 'refs';
	*$AUTOLOAD = sub {
		my $this=shift;
		
		return $this->{$field} unless @_;
		return $this->{$field}=shift;
	};
	goto &$AUTOLOAD;
}
sub DESTROY {
	my $this=shift;
	
	$this->read_handle->close if $this->read_handle;
	$this->write_handle->close if $this->write_handle;
	
	if (defined $this->pid && $this->pid > 1) {
		kill 'TERM', $this->pid;
	}
}
1
