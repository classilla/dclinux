#!/usr/bin/perl -w

=head1 NAME

Term::Stool::Screen - represents the whole screen

=cut

use strict;
package Term::Stool::Screen;
use Term::Stool::Color;
use Term::Slang qw(:all);
use Term::Stool qw(EXITLOOP);
use POSIX qw(SIGTSTP);
use base qw(Term::Stool::Container);

=head1 SYNOPSIS

 use Term::Stool::Screen;
 use Term::Stool::Window;
 use Term::Stool::Button;
 $s=Term::Stool::Screen->new;
 $b=Term::Stool::Button->new(text => "Ok", 
 	xoffset => 4, yoffset => 4, width => 4);
 $w=Term::Stool::Window->new(title => "Hello, World!",
 	xoffset=>10, yoffset=>2, height=>17, width=>40);
 $w->inside->add($b);
 $s->add($w);
 $s->run($b);
 $s->reset;

=cut

=head1 DESCRIPTION

This widget represents the whole screen. It is a container of course, so
you can place windows and so on inside it. This widget should only be used as
a top-level widget; ie, it should not be inside other widgets.

L<Term::Stool::Container|Term::Stool::Container> is the parent of this class.

=head1 FIELDS

=over 4

=item initialized

Set if S-Lang is initialized.

=item width

The screen width. Updated automatically.

=item height

The screen height. Updated automatically.

=item desktop

The color of the screen; ie, the desktop color. A Term::Stool::Color
object. Color tag must be "desktop".

=back

=head1 METHODS

=over 4

=item init

Sets the background color to a default.

=cut

sub init {
	my $this=shift;
	
	$this->SUPER::init(@_);
	$this->desktop = Term::Stool::Color->new(
		tag        => 'desktop',
		foreground => 'white',
		background => 'blue',
	) unless $this->desktop;
}

=item x

Always 0.

=cut

sub x {
	return 0;
}

=item y

Always 0.

=cut

sub y {
	return 0;
}

=item display

This does a standard screen redisplay. Doesn't guarentee the whole screen
is painted, though.

=cut

sub display {
	my $this=shift;
	
	$this->desktop->set;
	SLsmg_gotorc(0,0);
	SLsmg_erase_eos();
	$this->SUPER::display(@_);
}

=item force_display

This forces the whole display to be repainted, even if slang doesn't think
it has changed.

=cut

sub force_display {
	my $this=shift;

	SLsmg_cls;
	$this->display;
	SLsmg_refresh;
}

=item refresh

This just has slang write all pending changes to the screen.

=cut

sub refresh {
	my $this=shift;

	SLsmg_refresh;
}

=item resize

This method is automatically called when the screen is resized.

It normally forces a full screen redraw, but if a parameter is passed, that
can be avoided.

=cut

sub resize {
	my $this=shift;
	
	return unless $this->initialized;
	($this->height, $this->width)=SLtt_get_screen_size;
	$this->height--;
	SLsmg_reinit_smg();
	$this->SUPER::resize(@_);
	$this->force_display unless shift;
}

=item suspend

This method handles suspending everything.

=cut

sub suspend {
	my $this=shift;

	SLsmg_suspend_smg();
	SLang_reset_tty();
	$SIG{'TSTP'}='DEFAULT';
	kill(SIGTSTP, $$);
}

=item continue

This is a CONT signal handler.

=cut

sub continue {
	my $this=shift;

	SLsmg_resume_smg();
	SLang_init_tty(-1,0,1);
	SLtty_set_suspend_state(1);

	$SIG{'TSTP'}=sub { $this->suspend };
	$SIG{'CONT'}=sub { $this->continue };
}

=item init

Initializes and sets up slang. Registers SIGWINCH handler and so forth.

Generally, you don't need to call this by hand; any methods that require
slang is initialized will call it for you.

=cut

sub slang_init {
	my $this=shift;
	
	return if $this->initialized;
	SLtt_get_terminfo();
	SLang_init_tty(-1,0,1);
	SLsmg_init_smg();
	SLkp_init();
	SLtty_set_suspend_state(1);
	$SIG{'TSTP'}=sub { $this->suspend };
	$SIG{'CONT'}=sub { $this->continue };
	$SIG{'WINCH'}=sub { $this->resize };
	$SIG{'INT'}=sub { $this->reset; exit 1 };
	$this->initialized = 1;
	$this->resize(1);
}

=item run

This is the main event processing loop. Pass in the widget that should get
focus.

The event loop works like this: Wait for a keystroke. If the active widget
has a keypress_hook, call it. If that fails, send the data to the active
widget's keypress method.

If either of the above return EXITLOOP, then the event loop is exited.
Otherwise, it continues.

=cut

sub run {
	my $this=shift;
	my $focused=shift;
	
	$this->slang_init;
	$focused->activate;

	my ($ret, $key, $h);
	while ($key = SLkp_getkey()) {
		$ret='';
		$h=$this->active->keypress_hook;
		$ret=$h->($this, $key) if $h;
		return if defined $ret && $ret eq EXITLOOP;
		next if $ret;
		$ret=$this->active->keypress($key);
		return if defined $ret && $ret eq EXITLOOP;
	}
}

=item reset

This method resets the display to normal mode.

=cut

sub reset {
	my $this=shift;

	return unless $this->initialized;
	$SIG{'WINCH'}='IGNORE';
	SLang_reset_tty();
	SLsmg_reset_smg();
	$this->initialized = '';
}

=item keypress

ctrl-r can be used to force a screen refresh.

=cut

sub keypress {
	my $this=shift;
	my $key=shift;

	if ($key == ord "\cR" || $key == ord "\cL") {
		$this->force_display;
	}
	else {
		$this->SUPER::keypress($key);
	}
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
