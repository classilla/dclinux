#!/usr/bin/perl

use Debconf::Client::ConfModule ':all';

#####COMMON#####
# -*- perl -*-

# Subarches
# FIXME: not done
# Issues:
# * ppc issues not fully asserted yet
# * /proc/hardware, which only exists on m68k and ppc, seems to be
#   an OPTION while configuring the kernel !
#   Any fallback when it's not there ?
# * USB set of keymap should contain what ? mac ? pc ? subset of those ?

# SUBARCH	KEYMAP SET	DETECTION
# m68k/atari	atari		"Model: Atari"
# m68k/amiga	amiga		"Model: Amiga"
# m68k/mac	mac		"Model: Macintosh"
# m68k/mvme	pc		"Model: Motorola"
# m68k/bvme	pc		"Model: BVME[46]000"
# m68k/{sun,apollo,next,q40,hp300} Not supported by Debian

# ppc/apus	amiga		"Model: Amiga"
# ppc/chrp	pc,mac		"Model: CHRP"
# ppc/pmac	mac		"Model: PowerMac|[Pp]ower[Bb]ook*|Power|iMac*|PowerMac1*"
# ppc/prep	pc		"Model: PReP"
# ppc/{bbox,mbx,ppc64,82xx,8xx} Not yet supported by Debian

# arm/riscpc	pc(translated),riscpc	"Hardware *: Acorn-"
# arm/*		pc		(refered to as 'arm' only)

sub guess_arch {
  my ($defs) = @_;

  my $arch = `dpkg --print-installation-architecture`;
  chomp $arch;

  # Overrides for testing:
  #     $arch = 'powerpc';
  #     $arch = 'm68k';

  if (($arch eq 'powerpc') || ($arch eq 'm68k')) {
    my $subarch;
    if ($arch eq 'powerpc') {
      my $line = `grep ^machine /proc/cpuinfo`;
      chomp $line;
      abort ($defs, "No \"machine\" field in /proc/cpuinfo") if $line eq '';
      $subarch = lc substr ($line, 11);
    } elsif ($arch eq 'm68k') {
      my $line = `grep ^Model: /proc/hardware`;
      chomp $line;
      abort ($defs, "No \"Model\" field in /proc/hardware") if $line eq '';
      $subarch = lc substr ($line, 6);
    }
    chomp($subarch);
    $subarch =~ s/^\s*//;
    $subarch = 'amiga'	if $subarch =~ m/^amiga/;
    $subarch = 'chrp'	if $subarch =~ m/^chrp/;
    $subarch = 'prep'	if $subarch =~ m/^prep/;
    $subarch = 'mac'	if $subarch =~ m/^macintosh|powermac|powerbook|power|imac|powermac1/;
    $subarch = 'atari'	if $subarch =~ m/^atari/;
    $subarch = 'mvme'	if $subarch =~ m/^motorola/;
    $subarch = 'bvme'	if $subarch =~ m/^bvme/;

    $arch = "$arch/$subarch";
  } elsif ($arch eq 'arm') {
    my $subarch;
    my $isRiscPc = (system ("grep", "^Hardware *: Acorn-", "/proc/cpuinfo") == 0);

    $arch = 'arm/riscpc' if $isRiscPc;
  }

  # Overrides for testing:
  #     $arch = 'sparc';
  #     $arch = 'powerpc/mac';
  #     $arch = 'powerpc/chrp';
  #     $arch = 'm68k/amiga';
  #     $arch = 'alpha';

  return $arch;
}

sub abort {
  my ($defs, $msg) = @_;
  print STDERR "Debconf module aborted ($msg) - using old config mechanism.\n";
#  fset_default($defs);
  exit 0;
}

sub correctname($) {
  my ($string) = @_;

  $string = lc $string;
  $string =~ s/[^a-z0-9+\-\.\/]/_/g;

  return $string;
}

# BELOW THIS LINE IS STUFF FOR ALL KEYMAP PROVIDERS

$::keymap_defs = {
		  'prefix' => 'console-data/keymap/',
		  'toplevel' => 'family',
		  'sublevels' => [
				  'layout',
				  'variant',
				  'keymap',
				 ],
		  'allitems' => $::keymaps,
		  'obsolete' => $::obsolete_keymaps,
		  'archsets' => {
				 'i386' => [ 'pc' ],
				 #			       'hurd-i386' => [ 'pc' ],
				 'sparc' => [ 'sparc' ],
				 'alpha' => [ 'pc' ],
				 'arm' => [ 'pc' ],
				 'arm/riscpc' => [ 'pc', 'riscpc' ],
				 'mips' => [ 'pc' ],
				 'm68k/atari' => [ 'atari' ],
				 'm68k/amiga' => [ 'amiga' ],
				 'm68k/mac' => [ 'mac' ],
				 'm68k/mvme' => [ 'pc' ],
				 'm68k/bvme' => [ 'pc' ],
				 'powerpc/amiga' => [ 'amiga' ],
				 'powerpc/chrp' => [ 'pc', 'mac' ],
				 'powerpc/mac' => [ 'mac' ],
				 'powerpc/prep' => [ 'pc' ],
				},
		 };

sub readfiles($) {
  my ($path) = @_;

  opendir (DIR, $path) or die "Can't open directory \`$path': $!";
  my @files = grep { ! /^\./ && -f "$path/$_" } readdir(DIR);
  closedir DIR;

  foreach my $file (@files) {
#    print STDERR "Loading $defsdir/$file\n";
    require "$defsdir/$file";
  }
}


($ret, $policy) = get ('console-data/keymap/policy');
if ($policy eq 'Don\'t touch keymap') {
  # No keymap
  $filename = 'NONE';
} elsif ($policy eq 'Keep kernel keymap') {
  # No keymap
  $filename = 'KERNEL';
} else {
  # Get infos about selected keymap
  ($ret, $family) = get ('console-data/keymap/family');
  $cfamily = correctname $family;
  die "No keyboard family selected: $family" unless $ret == 0;

  # This should only occur when no keymap is available
  if ($family eq '') {
    # Tell other programs (eg. install-keymap) not to do anything
    print STDERR "NONE";
    exit 0;
  }

  ($ret, $layout) = get ("console-data/keymap/$cfamily/layout");
  $clayout = correctname $layout;
  die "No keyboard layout selected: $layout" unless $ret == 0;

  ($ret, $kbdvariant) = get ("console-data/keymap/$cfamily/$clayout/variant");
  $ckbdvariant = correctname $kbdvariant;
  die "No keyboard variant selected: $kbdvariant" unless $ret == 0;

  ($ret, $mapvariant) = get ("console-data/keymap/$cfamily/$clayout/$ckbdvariant/keymap");
  die "No keymap variant selected: $mapvariant" unless $ret == 0;


  # Get list of keymap definitions
  $defsdir = "/usr/share/console/lists/keymaps";
  $keymaps = {};
  readfiles ($defsdir);


  # Find the right one
  foreach my $kbdarch (@{$keymap_defs->{archsets}->{guess_arch($keymap_defs)}}) {
    my $maps = $keymaps->{$kbdarch};

    $maps = $maps->{$family};
    unless (defined $maps) {
      warn "Family not found ($family)"; next;
    }

    $maps = $maps->{$layout};
    unless (defined $maps) {
      warn "Layout not found ($layout)"; next;
    }

    $maps = $maps->{$kbdvariant};
    unless (defined $maps) {
      warn "Keyboard variant not found ($kbdvariant)"; next;
    }

    $filename = $maps->{$mapvariant};
    unless (defined $filename) {
      warn "Keymap variant not found ($mapvariant)"; next;
    }
  }
}

die "No matching map found" unless defined $filename;

# output result
print STDERR "$filename\n";
