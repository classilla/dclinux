#!/usr/bin/perl -w
# This file was preprocessed, do not edit directly.
package Debconf::Template;
use strict;
use POSIX;
use FileHandle;
use Debconf::Gettext;
use Text::Wrap;
use Text::Tabs;
use Debconf::Db;
use Debconf::Question;
use fields qw(template);
our %template;
$Debconf::Template::i18n=1;
sub new {
	my Debconf::Template $this=shift;
	my $template=shift || die "no template name specified";
	my $owner=shift || 'unknown';
	
	return $template{$template} if exists $template{$template};
	if ($Debconf::Db::templates->exists($template) and
	    $Debconf::Db::templates->owners($template)) {
		$this = fields::new($this);
		$this->{template}=$template;
		return $template{$template}=$this;
	}
	unless (ref $this) {
		$this = fields::new($this);
	}
	$this->{template}=$template;
	unless ($Debconf::Db::config->exists($template)) {
		my $q=Debconf::Question->new($template, $owner);
		$q->template($template);
	}
	return unless $Debconf::Db::templates->addowner($template, $template);
	return $template{$template}=$this;
}
sub get {
	my Debconf::Template $this=shift;
	my $template=shift;
	return $template{$template} if exists $template{$template};
	if ($Debconf::Db::templates->exists($template)) {
		$this = fields::new($this);
		$this->{template}=$template;
		return $template{$template}=$this;
	}
	return undef;
}
sub i18n {
	my $class=shift;
	$Debconf::Template::i18n=shift;
}
sub load {
	my $this=shift;
	my $file=shift;
	my @ret;
	my $fh;
	if (ref $file) {
		$fh=$file;
	}
	else {
		$fh=FileHandle->new($file) || die "$file: $!";
	}
	local $/="\n\n"; # read a template at a time.
	while (<$fh>) {
		my %data;
		
		my $save = sub {
			my $field=shift;
			my $value=shift;
			my $extended=shift;
			my $file=shift;
			$extended=~s/\n+$//;
			if ($field ne '') {
				if (exists $data{$field}) {
					die sprintf(gettext("Template #%s in %s has a duplicate field \"%s\" with new value \"%s\". Probably two templates are not properly seperated by a lone newline.\n"), $., $file, $field, $value);
				}
				$data{$field}=$value;
				$data{"extended_$field"}=$extended
					if length $extended;
			}
		};
		s/^\n+//;
		s/\n+$//;
		my ($field, $value, $extended)=('', '', '');
		foreach my $line (split "\n", $_) {
			chomp $line;
			if ($line=~/^([-_.A-Za-z0-9]*):\s?(.*)/) {
				$save->($field, $value, $extended, $file);
				$field=lc $1;
				$value=$2;
				$value=~s/\s*$//;
				$extended='';
			}
			elsif ($line=~/^\s\.$/) {
				$extended.="\n\n";
			}
			elsif ($line=~/^\s(\s+.*)/) {
				my $bit=$1;
				$extended.="\n" unless $extended =~ /\n$/;
				$extended.=$bit."\n";
			}
			elsif ($line=~/^\s(.*)/) {
				$extended.=' ' if length $extended;
				$extended.=$1;
			}
			else {
				die sprintf(gettext("Template parse error near `%s', in stanza #%s of %s\n"), $line, $., $file);
			}
		}
		$save->($field, $value, $extended, $file);
		die sprintf(gettext("Template #%s in %s does not contain a 'Template:' line\n"), $., $file)
			unless $data{template};
		my $template=$this->new($data{template}, @_);
		$template->clearall;
		foreach my $key (keys %data) {
			next if $key eq 'template';
			$template->$key($data{$key});
		}
		push @ret, $template;
	}
	return @ret;
}
					
sub template {
	my $this=shift;
	return $this->{template};
}
sub fields {
	my $this=shift;
	return $Debconf::Db::templates->fields($this->{template});
}
sub clearall {
	my $this=shift;
	foreach my $field ($this->fields) {
		$Debconf::Db::templates->removefield($this->{template}, $field);
	}
}
sub merge {
	my $this=shift;
	my $other=shift;
	foreach my $field ($other->fields) {
		$this->$field($other->$field);
	}
}
sub stringify {
	my $this=shift;
	my @templatestrings;
	foreach (ref $this ? $this : @_) {
		my $data='';
		foreach my $key ('template', 'type',
			(grep { $_ ne 'template' && $_ ne 'type'} sort $_->fields)) {
			next if $key=~/^extended_/;
			if ($key =~ m/-[a-z]{2}_[a-z]{2}$/) {
				my $casekey=$key;
				$casekey=~s/([a-z]{2})$/uc($1)/eg;
				$data.=ucfirst($casekey).": ".$_->$key."\n";
			}
			else {
				$data.=ucfirst($key).": ".$_->$key."\n";
			}
			my $e="extended_$key";
			my $ext=$_->$e;
			if (defined $ext) {
				my $extended=expand(wrap(' ', ' ', $ext));
				$extended=~s/(\n )+\n/\n .\n/g;
				$data.=$extended."\n" if length $extended;
			}
		}
		push @templatestrings, $data;
	}
	return join("\n", @templatestrings);
}
sub _getlangs {
	my $language=setlocale(5); # LC_MESSAGES
	if ($language eq 'C' || $language eq 'POSIX') {
		return;
	}
	elsif ($language=~m/^(\w\w)_/) {
		return $language, $1;
	}
	return $language;
}
{
	my @langs=_getlangs();
	sub AUTOLOAD {
		(my $field = our $AUTOLOAD) =~ s/.*://;
		no strict 'refs';
		*$AUTOLOAD = sub {
			my $this=shift;
			if (@_) {
				return $Debconf::Db::templates->setfield($this->{template}, $field, shift);
			}
		
			my $ret;
			if ($Debconf::Template::i18n && @langs) {
				foreach my $lang (@langs) {
					$ret=$Debconf::Db::templates->getfield($this->{template}, $field.'-'.lc($lang));
					return $ret if defined $ret;
				}
			}
			$ret=$Debconf::Db::templates->getfield($this->{template}, $field);
			return $ret if defined $ret;
			return '';
		};
		goto &$AUTOLOAD;
	}
}
sub DESTROY {}
1
