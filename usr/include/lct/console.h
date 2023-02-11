#ifndef _LCT_CONSOLE_H
#define _LCT_CONSOLE_H

#include <stdio.h>
#include <linux/kd.h>
#include <lct/unicode.h>
#include <lct/font.h>

/*
 * Default keymap, and where the kernel copy of it lives.
 */
#ifdef __sparc__
# define DEFKMAP "sunkeymap"
# define KERNDIR "/usr/src/linux/drivers/sbus/char"
#else
# define DEFKMAP "defkeymap"
# define KERNDIR "/usr/src/linux/drivers/char"
#endif

/* misc-console-utils.c */
int is_a_console(int fd);
int get_console_fd(char* tty_name);
int acm_activate(int tty_fd, int g_set);

/* from acm.c */
void saveoldmap (int fd, char* omfil);
int screen_map_load (int fd, FILE *fp);
int uni_screen_map_read_ascii (FILE *fp, unicode buf[], int *is_unicode);
int old_screen_map_read_ascii (FILE *fp, unsigned char buf[]);

/* from saveunimap.c */
void saveunicodemap(int fd, char *oufil, int verbose, int no_act);

/* unimap-misc.c */
int set_kernel_unimap(int fd, struct unimapdesc *);
int get_kernel_unimap(int fd, struct unimapdesc *);

/* kernelfont.c */
cfontdesc* get_kernel_font(int fd);
int set_kernel_font(int fd, cfontdesc *);
void restore_rom_font(int fd);

/* testUTF8.c */
int is_in_UTF8_mode (int fd);


/*
 * provide kernel defs for compatibility
 */

/*
 * Linux pre-0.96 introduced, and 1.1.63 removed the defines
 * #define GIO_FONT8x8     0x4B28
 * #define PIO_FONT8x8     0x4B29
 * #define GIO_FONT8x14    0x4B2A
 * #define PIO_FONT8x14    0x4B2B
 * #define GIO_FONT8x16    0x4B2C
 * #define PIO_FONT8x16    0x4B2D
 * but these ioctls have never been implemented.
 */

/*
 * Linux 0.99.15 introduces the GIO_FONT and PIO_FONT ioctls.
 * Usage:
	char buf[8192];
	ioctl(fd, GIO_FONT, buf);
 * to get 256*32=8192 bytes of data for 256 characters,
 * 32 for each symbol, of which only the first H are used
 * for an 8xH font.
 * Changes in use: 1.1.74: you have to be root for PIO_FONT.
 */
#ifndef GIO_FONT
# define GIO_FONT	0x4B60	/* gets font in expanded form */
# define PIO_FONT	0x4B61	/* use font in expanded form */
#endif

/*
 * Linux 1.3.1 introduces 512-character fonts and the
 * GIO_FONTX and PIO_FONTX ioctls to read and load them.
 * The PIO_FONTX ioctl also adjusts screen character height.
 * Usage:
	char buf[16384];
	struct consolefontdesc cfd;
	cfd.charcount = fontsize;
	cfd.charheight = height;
	cfd.chardata = buf;
	ioctl(fd, PIO_FONTX, &cfd);
 * and
	char buf[32*N];
	cfd.charcount = N;
	cfd.chardata = buf;
	ioctl(fd, GIO_FONTX, &cfd);
 * (where the ioctl will fail if N was too small);
 * the ioctl fills cfd.charcount and cfd.charheight.
 * With GIO_FONTX, the chardata pointer may be NULL.
 * The old GIO_FONT will fail if the fontsize is 512.
 */
#ifndef GIO_FONTX
# define GIO_FONTX	0x4B6B	/* get font using struct consolefontdesc */
# define PIO_FONTX	0x4B6C	/* set font using struct consolefontdesc */
struct consolefontdesc {
	unsigned short charcount;	/* characters in font (256 or 512) */
	unsigned short charheight;	/* scan lines per character (1-32) */
	char *chardata;			/* font data in expanded form */
};
#endif

/*
 * Linux 2.1.111 introduces the KDFONTOP ioctl.
 * Details of use have changed a bit in 2.1.111-115,124.
 * Usage:
	struct console_font_op cfo;
	ioctl(fd, KDFONTOP, &cfo);
 */
#ifndef KDFONTOP
# define KDFONTOP	0x4B72	/* font operations */

struct console_font_op {
	unsigned int op;	/* operation code KD_FONT_OP_* */
	unsigned int flags;	/* KD_FONT_FLAG_* */
	unsigned int width, height;	/* font size */
	unsigned int charcount;
	unsigned char *data;	/* font data with height fixed to 32 */
};

# define KD_FONT_OP_SET		0	/* Set font */
# define KD_FONT_OP_GET		1	/* Get font */
# define KD_FONT_OP_SET_DEFAULT	2	/* Set font to default, data points to name / NULL */
# define KD_FONT_OP_COPY		3	/* Copy from another console */

# define KD_FONT_FLAG_DONT_RECALC 1    /* Don't call adjust_height() */
			  /* (Used internally for PIO_FONT support) */
#endif

#endif /* _LCT_CONSOLE_H */
