/* This demo test some of the slsmg features. */
#include "config.h"

#include <stdio.h>
#ifdef HAVE_STDLIB_H
# include <stdlib.h>
#endif

#include <string.h>
#include <slang.h>

#include "demolib.c"

static void menu_loop (void);
static int select_menu_item (int i);
static void init_colors (void);

int main (int argc, char **argv)
{   
   init_colors ();
   if (-1 == demolib_init_terminal (1, 1))
     return 1;
   
   (void) SLtt_set_mouse_mode (1, 0);

   if (argc <= 1)
     menu_loop ();
   
   do
     {
	argc--;
	argv++;
	     
	if (-1 == select_menu_item (atoi (*argv)))
	  menu_loop ();
     }
   while (argc > 1);
	     
   demolib_exit (0);
   return 1;
}

static void quit (void)
{
   demolib_exit (0);
}

static void bce_color_test (void);
static void color_test (void);
static void color_test1 (void);
static void alt_char_test (void);
static void esc_seq_test (void);
static void ansi_esc_seq_test (void);
static void line_test (void);
static void mouse_test (void);
static void low_level_test (void);
static void box_test (void);
static void draw_symbols_test (void);
static void lr_corner_test (void);

typedef struct
{
   char *name;
   void (*funct) (void);
}
Menu_Type;

static Menu_Type Root_Menu [] =
{
     {"Color Test", color_test},
     {"Another Color Test", color_test1},
     {"BCE Color Test", bce_color_test},
     {"Alt charset test", alt_char_test},
     {"Drawing Symbols", draw_symbols_test},
     {"Key Escape Sequence Report", esc_seq_test},
#ifdef IBMPC_SYSTEM
     {"ANSI Key Escape Sequence Report", ansi_esc_seq_test},
#endif
     {"Line Drawing Test", line_test},
     {"Test Mouse", mouse_test},
     {"Box Test", box_test},
     {"Write to Lower Right Corner Test", lr_corner_test},
     {"Test Low Level Functions", low_level_test},
     {"Quit", quit},
     {NULL, NULL}
};

Menu_Type *Current_Menu = Root_Menu;

static void print_menu (void)
{
   int i;
   int row;
   Menu_Type *menu;
   
   menu = Current_Menu;
   
   SLsig_block_signals ();
   
   SLsmg_cls ();
   
   row = 2;
   i = 1;
   while (menu->name != NULL)
     {
	SLsmg_gotorc (row, 3);
	SLsmg_printf ("%2X. %s", i, menu->name);
	menu++;
	row++;
	i++;
     }
   
   row = 0;
   SLsmg_gotorc (row, 1);
   SLsmg_write_string ("Choose number:");
   
   SLsmg_refresh ();
   SLsig_unblock_signals ();
}


static int select_menu_item (int num)
{
   int i = 1;
   Menu_Type *m = Current_Menu;
   
   while (m->name != NULL)
     {
	if (i == num)
	  {
	     (*m->funct) ();
	     return 0;
	  }
	i++;
	m++;
     }
   
   return -1;
}


static void menu_loop (void)
{
   int ch;
   
   print_menu ();
   
   while (1)
     {
	ch = SLkp_getkey ();
	
	if ((ch == 'q') || (ch == 'Q'))
	  quit ();

	if ((ch >= '0')
	    && (ch <= '9'))
	  ch -= '0';
	else if ((ch >= 'A') && (ch <= 'Z'))
	  ch = 10 + (ch - 'A');
	else
	  ch = 10 + (ch - 'a');


	if (-1 == select_menu_item (ch))
	  {
	     SLtt_beep ();
	     continue;
	  }
	print_menu ();
     }
}

static void write_centered_string (char *s, int row)
{
   unsigned int len;
   int col;
   
   if (s == NULL)
     return;
   
   len = strlen (s);
   
   /* Want 2 * col + len == SLtt_Screen_Rows */
   if (len >= (unsigned int) SLtt_Screen_Cols) col = 0;
   else col = (SLtt_Screen_Cols - (int)len) / 2;
   
   SLsmg_gotorc (row, col);
   SLsmg_write_string (s);
}

static void pre_test (char *title)
{
   SLsig_block_signals ();
   SLsmg_cls ();
   write_centered_string (title, 0);
}

static void post_test (void)
{
   write_centered_string ("Press any key to return.", SLtt_Screen_Rows - 1);
   SLsmg_refresh ();
   SLsig_unblock_signals ();
   (void) SLkp_getkey ();
}

/* Various tests */

#define NUM_COLORS 16
static char *Colors [NUM_COLORS] =
{
   "black/default",
   "red",
   "green",
   "brown",
   "blue",
   "magenta",
   "cyan",
   "lightgray",
   "gray",
   "brightred",
   "brightgreen",
   "yellow",
   "brightblue",
   "brightmagenta",
   "brightcyan",
   "white"
};

static void init_colors (void)
{
   int i;
   char *fg, *bg;

   fg = "black";
   for (i = 0; i < NUM_COLORS; i++)
     {
	bg = Colors[i];
	SLtt_set_color (i + 1, NULL, fg, bg);
     }
}


static void box_test (void)
{
   char *msg = "This is a box with changing background";
   int r, c, dr, dc;
   int color;

   pre_test ("Box Test");
   
   dr = 8;
   dc = 4 + strlen (msg);
   r = SLtt_Screen_Rows / 2 - dr/2;
   c = SLtt_Screen_Cols / 2 - dc/2;

   SLsmg_set_color (1);
   SLsmg_set_char_set (1);
   SLsmg_fill_region (r + 1, c + 1, dr - 2, dc - 2, SLSMG_CKBRD_CHAR);
   SLsmg_set_char_set (0);
   SLsmg_set_color (0);
   SLsmg_gotorc (r + dr/2, c + 2); SLsmg_write_string (msg);
   SLsmg_draw_box (r, c, dr, dc);

   SLsmg_refresh ();

   color = 2;
   while (0 == SLang_input_pending (10))
     {
	SLsmg_set_color_in_region (color, r, c, dr, dc);
	SLsmg_refresh ();
	color++;
	color = color % NUM_COLORS;
     }
   post_test ();
}

static int check_color_support (void)
{
   if (SLtt_Use_Ansi_Colors)
     return 0;
   
   pre_test ("Your terminal does not provide color support.");
   post_test ();
   return -1;
}


static void bce_color_test (void)
{
   int row;
   
   if (-1 == check_color_support ())
     return;

   pre_test ("Background Color Erase Test");

   SLtt_set_color (0, NULL, "lightgray", "blue");

   row = SLtt_Screen_Rows/2;
   SLsmg_set_color (0);
   SLsmg_gotorc (row, 1);
   SLsmg_write_string ("The screen background should be blue.");
   
   row += 2;
   SLsmg_gotorc (row++, 1);
   SLsmg_write_string ("****If the screen update is slow, then your terminal");
   SLsmg_gotorc (row++, 1);
   SLsmg_write_string ("    does not support background-color-erase.");
   SLsmg_set_color (0);
   post_test ();
}

static void lr_corner_test (void)
{
   pre_test ("Write to Lower Right Corner Test");

   SLsmg_gotorc (SLtt_Screen_Rows-1, SLtt_Screen_Cols-1);
   SLsmg_write_string ("X");

   write_centered_string ("An 'X' should be in the lower-right corner.",
			  SLtt_Screen_Rows/2);

   SLsmg_refresh ();
   SLsig_unblock_signals ();
   (void) SLkp_getkey ();
}

static void color_test (void)
{
   int color;
   int row;
   
   if (-1 == check_color_support ())
     return;

   pre_test ("Color Test");
   
   row = 1;

   color = 0;
   while (row < SLtt_Screen_Rows - 1)
     {
	color = color % NUM_COLORS;

	SLsmg_gotorc (row, 0);
	SLsmg_set_color (0);
	SLsmg_write_string (Colors[color]);
	color++;
	SLsmg_set_color (color);
	SLsmg_erase_eol ();
	row++;
     }
   
   SLsmg_set_color (0);
   post_test ();
}

static void color_test1 (void)
{
   int color;
   int r0, r1;
   int c0, c1;
   unsigned int dr0, dr1, dc0, dc1;

   if (-1 == check_color_support ())
     return;

   pre_test ("Another Color Test");

   r0 = 1;
   r1 = SLtt_Screen_Rows / 2;
   dr0 = r1;
   dr1 = SLtt_Screen_Rows;

   c0 = 0;
   c1 = SLtt_Screen_Cols / 2;
   dc0 = c1;
   dc1 = SLtt_Screen_Cols;
   
   color = 0;
   do
     {
	SLsmg_gotorc (r1, 0);
	SLsmg_set_color (color); color++; color = color % NUM_COLORS;
	SLsmg_write_string ("                          ");
	SLsmg_set_color (color); color++; color = color % NUM_COLORS;
	SLsmg_write_string ("X");
	SLsmg_set_color (color); color++; color = color % NUM_COLORS;
	SLsmg_erase_eol ();
	SLsmg_refresh ();
     }
   while (0 == SLang_input_pending (30));
   SLang_flush_input ();

   color = 0;
   do 
     {
	SLsmg_set_color (color); color++; color = color % NUM_COLORS;
	SLsmg_fill_region (r0, c0, dr0, dc0, ' ');

	SLsmg_set_color (color); color++; color = color % NUM_COLORS;
	SLsmg_fill_region (r0, c1, dr0, dc1, ' ');

	SLsmg_set_color (color); color++; color = color % NUM_COLORS;
	SLsmg_fill_region (r1, c0, dr1, dc0, ' ');

	SLsmg_set_color (color); color++; color = color % NUM_COLORS;
	SLsmg_fill_region (r1, c1, dr1, dc1, ' ');
	
	SLsmg_refresh ();
     }
   while (0 == SLang_input_pending (30));

   SLsmg_set_color (0);
   post_test ();
}

static void alt_char_test (void)
{
   int row, col;
   int ch;
   
   pre_test ("Alternate Charset Test");
   
   row = SLtt_Screen_Rows / 2 - 2;
   col = 0;
   for (ch = 32; ch < 128; ch++)
     {
	SLsmg_gotorc (row, col);
	SLsmg_write_char (ch);
	SLsmg_gotorc (row + 1, col);
	SLsmg_set_char_set (1);
	SLsmg_write_char (ch);
	SLsmg_set_char_set (0);
	col++;
	
	if (col > 40)
	  {
	     col = 0;
	     row += 4;
	  }
     }
   
   post_test ();
}

typedef struct 
{
   char *name;
   unsigned char value;
}
Draw_Symbols_Type;

static Draw_Symbols_Type Draw_Symbols [] = 
{
     {"SLSMG_HLINE_CHAR",		SLSMG_HLINE_CHAR},
     {"SLSMG_VLINE_CHAR",		SLSMG_VLINE_CHAR},
     {"SLSMG_ULCORN_CHAR",		SLSMG_ULCORN_CHAR},
     {"SLSMG_URCORN_CHAR",		SLSMG_URCORN_CHAR},
     {"SLSMG_LLCORN_CHAR",		SLSMG_LLCORN_CHAR},
     {"SLSMG_LRCORN_CHAR",		SLSMG_LRCORN_CHAR},
     {"SLSMG_RTEE_CHAR",		SLSMG_RTEE_CHAR},
     {"SLSMG_LTEE_CHAR",		SLSMG_LTEE_CHAR},
     {"SLSMG_UTEE_CHAR",		SLSMG_UTEE_CHAR},
     {"SLSMG_DTEE_CHAR",		SLSMG_DTEE_CHAR},
     {"SLSMG_PLUS_CHAR",		SLSMG_PLUS_CHAR},
     {"SLSMG_CKBRD_CHAR",		SLSMG_CKBRD_CHAR},
     {"SLSMG_DIAMOND_CHAR",		SLSMG_DIAMOND_CHAR},
     {"SLSMG_DEGREE_CHAR",		SLSMG_DEGREE_CHAR},
     {"SLSMG_PLMINUS_CHAR",		SLSMG_PLMINUS_CHAR},
     {"SLSMG_BULLET_CHAR",		SLSMG_BULLET_CHAR},
     {"SLSMG_LARROW_CHAR",		SLSMG_LARROW_CHAR},
     {"SLSMG_RARROW_CHAR",		SLSMG_RARROW_CHAR},
     {"SLSMG_DARROW_CHAR",		SLSMG_DARROW_CHAR},
     {"SLSMG_UARROW_CHAR",		SLSMG_UARROW_CHAR},
     {"SLSMG_BOARD_CHAR",		SLSMG_BOARD_CHAR},
     {"SLSMG_BLOCK_CHAR",		SLSMG_BLOCK_CHAR},
     {NULL}
};

static void draw_symbols_test (void)
{
   int row, col;
   Draw_Symbols_Type *d;
   
   pre_test ("Alternate Charset Test");
   
   row = 3;
   col = 3;
   d = Draw_Symbols;
   while (d->name != NULL)
     {
	SLsmg_gotorc (row, col);
	SLsmg_set_char_set (1);
	SLsmg_write_char ((char) d->value);
	SLsmg_set_char_set (0);
	SLsmg_printf (":%s", d->name);
	col += 40;
	if (col >= 80)
	  {
	     col = 3;
	     row++;
	  }
	d++;
     }
   post_test ();
}

static void line_test (void)
{
   int row, col;
   pre_test ("Line Test");
   
   row = 4;
   col = 2;
   SLsmg_gotorc (row, col);
   SLsmg_draw_hline (10);
   SLsmg_write_string ("Result of SLsmg_draw_hline(10)");
   SLsmg_draw_vline (5);
   SLsmg_write_string ("Result of SLsmg_draw_vline(5)");

   post_test ();
}


static void do_esc_seq_test (char *testname)
{
   int row;
   unsigned char ch;
   unsigned char buf[80], *b;
   
   pre_test (testname);

   while (1)
     {
	row = SLtt_Screen_Rows / 2;
   
	SLsmg_gotorc (row, 0);
	SLsmg_write_string ("Press key: (RETURN quits)");
	SLsmg_refresh ();
   
	ch = SLang_getkey ();
	SLang_ungetkey (ch);
	if (ch == '\r')
	  break;

	SLsmg_gotorc (row+1, 0);
	SLsmg_write_string ("Key returned \"");

	b = buf;
	do
	  {
	     ch = SLang_getkey ();
	     if (ch < ' ')
	       {
		  *b++ = '^';
		  ch += '@';
		  *b++ = ch;
	       }
	     else if (ch >= 127)
	       {
		  sprintf ((char *) b, "\\x%02X", ch);
		  b += strlen ((char *) b);
	       }
	     else if ((ch == '"') || (ch == '\\'))
	       {
		  *b++ = '\\';
		  *b++ = ch;
	       }
	     else *b++ = ch;
	  }
	while (SLang_input_pending (3) > 0);
	*b++ = '"';
	*b = 0;
	SLsmg_write_string ((char *) buf);
	SLsmg_erase_eol ();
	SLsmg_refresh ();
     }
   
   post_test ();
}

static void esc_seq_test (void)
{
#ifdef IBMPC_SYSTEM
   SLgetkey_map_to_ansi (0);
#endif
   do_esc_seq_test ("Escape Sequence Report");
}

#ifdef IBMPC_SYSTEM
static void ansi_esc_seq_test (void)
{
   SLgetkey_map_to_ansi (1);
   do_esc_seq_test ("ANSI Escape Sequence Report");
}
#endif

static void mouse_test (void)
{
   int row;
   int b, x, y;

   pre_test ("Mouse Test");
   
   row = SLtt_Screen_Rows / 2;
   
   SLsmg_gotorc (row, 0);
   SLsmg_write_string ("Click Mouse: ");
   SLsmg_refresh ();

   if ((27 != SLang_getkey ())
       || ('[' != SLang_getkey ())
       || ('M' != SLang_getkey ()))
     {
	SLsmg_gotorc (row, 0);
	SLsmg_write_string ("That did not appear to be a mouse escape sequence");
	post_test ();
	return;
     }
   
   b = SLang_getkey () - ' ';
   x = SLang_getkey () - ' ';
   y = SLang_getkey () - ' ';
   
   SLsmg_gotorc (row, 0);      SLsmg_printf ("Button: %d     ", b);
   SLsmg_gotorc (row + 1, 0);  SLsmg_printf ("Column: %d", x);
   SLsmg_gotorc (row + 2, 0);  SLsmg_printf ("   Row: %d", y);

   post_test ();
}

static void low_level_test (void)
{
   int mid, bot;
   int r;

   if (SLtt_Term_Cannot_Scroll)
     {
	pre_test ("Sorry!  Your terminal lacks scrolling capability.");
	post_test ();
	return;
     }

   if (-1 == SLsmg_suspend_smg ())
     SLang_exit_error ("SLsmg_suspend_smg failed");
   
   if (-1 == SLtt_init_video ())
     SLang_exit_error ("SLang_init_video failed");

   SLtt_get_screen_size ();

   mid = SLtt_Screen_Rows/2;
   bot = SLtt_Screen_Rows - 1;

   SLtt_cls ();
   SLtt_goto_rc (0, 0);
   SLtt_write_string ("The following set of tests are designed to test the display system.");
   SLtt_goto_rc (1, 0);
   SLtt_write_string ("There should be a line of text in the middle and one at the bottom.");
   SLtt_goto_rc (mid, 0);
   SLtt_write_string ("This line is in the middle.");
   SLtt_goto_rc (bot, 0);
   SLtt_write_string ("This line is at the bottom.");
   
   SLtt_goto_rc (2, 0); 
   SLtt_write_string ("Press return now.");
   SLtt_flush_output ();
   SLang_flush_input ();
   (void) SLang_getkey ();
   
   SLtt_goto_rc (2, 0);
   SLtt_write_string ("The middle row should slowly move down next the bottom and then back up.");
   SLtt_goto_rc (mid - 1, 0);
   SLtt_write_string ("This line should not move.");
   SLtt_goto_rc (mid + 1, 0);
   SLtt_write_string ("This line should vanish at the bottom");
   SLtt_goto_rc (mid + 1, SLtt_Screen_Cols - 5);
   SLtt_write_string ("End->");
   SLtt_flush_output ();

   SLtt_set_scroll_region (mid, bot - 1);
   
   r = (bot - mid) - 1;
   while (r > 0)
     {
	(void) SLang_input_pending (2); /* 3/10 sec delay */
	SLtt_goto_rc (0,0);		       /* relative to scroll region */
	SLtt_reverse_index (1);
	SLtt_flush_output ();
	r--;
     }
   
   r = (bot - mid) - 1;
   while (r > 0)
     {
	(void) SLang_input_pending (2); /* 3/10 sec delay */
	SLtt_goto_rc (0,0);		       /* relative to scroll region */
	SLtt_delete_nlines (1);
	SLtt_flush_output ();
	r--;
     }
   
   SLtt_reset_scroll_region ();
   SLtt_goto_rc (mid - 1, 0);
   SLtt_write_string ("Now the bottom will come up and clear the lines below");
   
   SLtt_set_scroll_region (mid, bot);
   r = (bot - mid) + 1;
   while (r > 0)
     {
	(void) SLang_input_pending (2); /* 3/10 sec delay */
	SLtt_goto_rc (0,0);		       /* relative to scroll region */
	SLtt_delete_nlines (1);
	SLtt_flush_output ();
	r--;
     }

   SLtt_reset_scroll_region ();
   SLtt_goto_rc (3,0);
   SLtt_write_string ("This line will go down and vanish");
   SLtt_set_scroll_region (3, mid - 2);

   r = ((mid - 2) - 3) + 1;
   while (r > 0)
     {
	(void) SLang_input_pending (3); /* 3/10 sec delay */
	SLtt_goto_rc (0,0);		       /* relative to scroll region */
	SLtt_reverse_index (1);
	SLtt_flush_output ();
	r--;
     }
   
   
   SLtt_reset_scroll_region ();
   SLtt_set_scroll_region (1,1); SLtt_goto_rc (0,0);
   SLtt_delete_nlines (1);
   SLtt_reset_scroll_region ();
   SLtt_set_scroll_region (2,2); SLtt_goto_rc (0,0);
   SLtt_reverse_index (1);
   SLtt_reset_scroll_region ();

   SLtt_goto_rc (1, 10);
   SLtt_write_string ("Press Any Key To Continue.");
   SLtt_flush_output ();
   r = 15;
   if (0 == SLtt_Term_Cannot_Insert) while (r)
     {
	r--;
	SLtt_goto_rc (1, 0);
	SLtt_begin_insert ();
	SLtt_putchar (' ');
	SLtt_end_insert ();
	SLtt_flush_output ();
	SLang_input_pending (2);
     }
   
   SLang_flush_input ();
   (void) SLang_getkey ();   
   
   SLtt_reset_video ();
   SLsmg_resume_smg ();
}

