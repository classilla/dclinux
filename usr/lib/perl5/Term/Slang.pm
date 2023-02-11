package Term::Slang;

# $Id: Slang.pm,v 1.5 2000/04/17 03:53:11 joey Rel $

use strict;
use Exporter;

use vars qw($VERSION @ISA @EXPORT_OK %EXPORT_TAGS);

$VERSION   = '0.07';
@ISA	   = qw(Exporter);
@EXPORT_OK = qw(
	SLang_buffer_keystring SLang_flush_input SLang_getkey 
	SLang_getkey_intr_hook SLang_init_readline SLang_init_tty
	SLang_input_pending SLang_read_line SLang_reset_tty
	SLang_rline_insert SLang_rline_save_line SLang_ungetkey
	SLang_ungetkey_string
	
	SLkp_define_keysym SLkp_getkey SLkp_init
	
	SLrline_redraw
	
	SLscroll_create SLscroll_find_line_num SLscroll_find_top 
	SLscroll_next_n SLscroll_pagedown SLscroll_pageup SLscroll_prev_n
	SLline_next SLline_prev SLline_data SLline_create

	SLscroll_window_current_line SLscroll_window_lines 
	SLscroll_window_top_line SLscroll_window_line_num
	SLscroll_window_num_lines SLscroll_window_nrows

	SLsig_block_signals SLsig_unblock_signals
	
	SLsmg_char_at SLsmg_cls SLsmg_draw_box SLsmg_draw_hline
	SLsmg_draw_object SLsmg_draw_vline SLsmg_erase_eol 
	SLsmg_erase_eos SLsmg_fill_region SLsmg_forward SLsmg_get_column
	SLsmg_get_row SLsmg_gotorc SLsmg_init_smg SLsmg_normal_video
	SLsmg_printf SLsmg_read_raw SLsmg_refresh SLsmg_reset_smg
	SLsmg_resume_smg SLsmg_reverse_video SLsmg_set_char_set
	SLsmg_set_color SLsmg_set_color_in_region SLsmg_set_screen_start
	SLsmg_set_terminal_info SLsmg_suspend_smg SLsmg_touch_lines
	SLsmg_write_char SLsmg_write_color_chars SLsmg_write_nchars
	SLsmg_write_nstring SLsmg_write_raw SLsmg_write_string
	SLsmg_write_wrapped_string SLsmg_reinit_smg
	
	SLtt_beep SLtt_begin_insert SLtt_bold_video SLtt_cls SLtt_del_eol
	SLtt_delete_char SLtt_delete_nlines SLtt_end_insert SLtt_erase_line
	SLtt_flush_output SLtt_get_screen_size SLtt_get_terminfo SLtt_goto_rc
	SLtt_init_video SLtt_normal_video SLtt_putchar SLtt_reset_scroll_region
	SLtt_reset_video SLtt_reverse_index SLtt_reverse_video SLtt_set_color
	SLtt_set_cursor_visibility SLtt_set_mouse_mode SLtt_set_scroll_region
	SLtt_smart_puts SLtt_write_string SLtt_set_mono SLtty_set_suspend_state
	SLtt_set_screen_size

	SLANG_GETKEY_ERROR SLANG_VERSION SLSMG_CKBRD_CHAR SLSMG_COLOR_BLACK
	SLSMG_COLOR_BLUE SLSMG_COLOR_BRIGHT_BLUE SLSMG_COLOR_BRIGHT_BROWN
	SLSMG_COLOR_BRIGHT_CYAN SLSMG_COLOR_BRIGHT_GREEN SLSMG_COLOR_BRIGHT_MAGENTA
	SLSMG_COLOR_BRIGHT_RED SLSMG_COLOR_BRIGHT_WHITE SLSMG_COLOR_BROWN
	SLSMG_COLOR_CYAN SLSMG_COLOR_GRAY SLSMG_COLOR_GREEN SLSMG_COLOR_LGRAY
	SLSMG_COLOR_MAGENTA SLSMG_COLOR_RED SLSMG_DTEE_CHAR SLSMG_HLINE_CHAR
	SLSMG_LLCORN_CHAR SLSMG_LRCORN_CHAR SLSMG_LTEE_CHAR SLSMG_NEWLINE_IGNORED
	SLSMG_NEWLINE_MOVES SLSMG_NEWLINE_PRINTABLE SLSMG_NEWLINE_SCROLLS 
	SLSMG_PLUS_CHAR SLSMG_RTEE_CHAR SLSMG_ULCORN_CHAR SLSMG_URCORN_CHAR
	SLSMG_UTEE_CHAR SLSMG_VLINE_CHAR SLTT_ALTC_MASK SLTT_BLINK_MASK
	SLTT_BOLD_MASK SLTT_REV_MASK SLTT_ULINE_MASK SL_KEY_A1 SL_KEY_A3
	SL_KEY_B2 SL_KEY_BACKSPACE SL_KEY_C1 SL_KEY_C3 SL_KEY_DELETE SL_KEY_DOWN
	SL_KEY_END SL_KEY_ENTER SL_KEY_ERR SL_KEY_F0 SL_KEY_HOME SL_KEY_IC
	SL_KEY_LEFT SL_KEY_NPAGE SL_KEY_PPAGE SL_KEY_REDO SL_KEY_RIGHT SL_KEY_UNDO
	SL_KEY_UP SLSMG_DARROW_CHAR SLSMG_BLOCK_CHAR SLSMG_BOARD_CHAR 
	SLSMG_BULLET_CHAR SLSMG_DEGREE_CHAR SLSMG_DIAMOND_CHAR SLSMG_LARROW_CHAR
	SLSMG_PLMINUS_CHAR SLSMG_RARROW_CHAR SLSMG_UARROW_CHAR
);

%EXPORT_TAGS = (
	'CONSTANTS' => [ grep /^SL(?:ANG|SMG|TT|_KEY)_/,   @EXPORT_OK ],
	'screen'    => [ grep /^SLsmg_/, 		   @EXPORT_OK ],
	'common'    => [ grep /^SL(?:ang|sig|tty|rline)_/, @EXPORT_OK ],
	'term'      => [ grep /^SLtt_/,			   @EXPORT_OK ],
	'signal'    => [ grep /^SLsig_/,		   @EXPORT_OK ],
	'keys'      => [ grep /^SLkp_/,			   @EXPORT_OK ],
	'scroll'    => [ grep /^SLscroll_/,		   @EXPORT_OK ],
	'all'       => [ @EXPORT_OK],
);

BOOT_XS: {
	# If I inherit DynaLoader then I inherit AutoLoader and I DON'T WANT TO.
	require DynaLoader;

	# DynaLoader calls dl_load_flags as a static method.
	*dl_load_flags = DynaLoader->can('dl_load_flags');

	do {__PACKAGE__->can('bootstrap') || 
		\&DynaLoader::bootstrap}->(__PACKAGE__,$VERSION);
}

1;
__END__

=head1 NAME

Term::Slang - Interface to the S-Lang terminal library.

=head1 SYNOPSIS

use Term::Slang qw(:all);

SLtt_get_terminfo();
SLang_init_tty(-1,0,1);

SLsig_block_signals();

SLsmg_init_smg;

SLsig_unblock_signals();

SLkp_init();

=head1 DESCRIPTION

Please see the S-Lang API documentation.

=head1 AUTHOR

Daniel Sully E<lt>daniel-cpan-slang@electricrain.comE<gt>

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=head1 SEE ALSO

slang(1), perl(1)

=cut
