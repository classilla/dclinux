#!/usr/bin/perl -w
# Disgusting hack to transition from debconf's even more disgusting old
# database to its nice bright sparkling new one.
use strict;
use Debconf::Db;
use Debconf::Question;
use Debconf::Template;

my $dir = shift || '/var/lib/debconf';

Debconf::Db->load;

our %questions;
our %templates;

# Load order is important.
foreach my $thing (qw(templates debconf)) {
	if (-e "$dir/$thing.db") {
		eval qq{require "$dir/$thing.db"};
		print STDERR $@ if $@;
	}
	else {
		print STDERR "Skipping $dir/$thing.db: DNE\n";
	}
}

# So this is a bitch. In the questions objects, there are things like
# template' => $templates{'apt-setup/security-updates-failed'}
# Well, I want the template *name*, not a ref to it. But there is no way at
# all to go from the name to a ref except for walking the whole hash.
# Instead of doing that below, add some _name fields to the templates hash
# that contain their names.
foreach my $t (keys %templates) {
	$templates{$t}->{_name}=$t;
}

# Now make new Question objects for all the questions.
foreach my $item (keys %questions) {
	my @owners=grep { $_ ne '' } keys %{$questions{$item}->{owners}};
	delete $questions{$item}, next unless @owners;

	# Skip questions that have no listed owner.
	next unless defined $questions{$item}->{template}->{_name};

	my $question=Debconf::Question->new($item, pop @owners);
	$question->addowner($_) foreach @owners;
}

my $skipped=0;

# Now that all the Question objects are made, we can fill them in.
# Have to do it in two passes to prevent duplicate questions trying to 
# be made. This converts the templates too.
my %seen_templates;
foreach my $item (keys %questions) {
	my $question=Debconf::Question->get($item);
	# Make sure that the template used by this item exists.
	my $tname=$questions{$item}->{template}->{_name};
	# I'm not sure why, but some db's have undef templates.
	$skipped++, next unless defined $tname;
	my $template=Debconf::Template->get($tname);
	unless (defined $template) {
		$template=Debconf::Template->new($tname, $item);
	}
	unless ($seen_templates{$template}) {
		# Delete every existing field, and then copy every field into
		# it. I do this even if it already exists, because for all I
		# know a db is being imported over top of a failed import or
		# a different db.
		$template->clearall;
		foreach my $field (keys %{$templates{$tname}}) {
			next if $field=~/^_name/; # except this one we added above.
			$template->$field($templates{$tname}->{$field});
		}
	}
	
	# Copy over all significant values to the question.

	# This old flag morphs into the seen flag, inverting meaning.
	if (exists $questions{$item}->{flag_isdefault}) {
		if ($questions{$item}->{flag_isdefault} eq 'false') {
		    	$question->flag('seen', 'true');
		}
		delete $questions{$item}->{flag_isdefault};
	}
	# All other flags.
	foreach my $flag (grep /^flag_/, keys %{$questions{$item}}) {
		if ($questions{$item}->{$flag} eq 'true') {
			$flag=~s/^flag_//;
			$question->flag($flag, 'true');
		}
	}
	# All variables.
	foreach my $var (keys %{$questions{$item}->{variables}}) {
		$question->variable($var,
			$questions{$item}->{variables}->{$var});
	}
	if (exists $questions{$item}->{value} 
		and defined $questions{$item}->{value}) {
		$question->value($questions{$item}->{value});
	}

	# And finally, set its template.
	$question->template($questions{$item}->{template}->{_name});
}

Debconf::Db->save;

if ($skipped) {
	print STDERR "While upgrading the debconf database, $skipped corrupt items were skipped.\n";
}
