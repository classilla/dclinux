#ifndef _LCT_FONT_H
#define _LCT_FONT_H

#include <stdio.h>
#include <linux/kd.h>

#include <lct/unicode.h>
#include <lct/utils.h>

/*
 * SFM stuff
 */

struct unicode_list
{
  unicode uc;			/* Unicode listed */
  struct unicode_list *next;
};

/* unimap-*.c */
int sfm_read_ascii   (FILE*, struct unimapdesc*, int fontlen);
int sfm_read_binary  (FILE*, struct unimapdesc*, int fontlen);
int sfm_write_ascii  (FILE*, struct unimapdesc*);
int sfm_write_binary (FILE*, struct unimapdesc*, int fontlen);

/*
 * Unifont stuff
 */

/* font-file-formats identification */

#define FFF_RAW		1
#define FFF_CP		2
#define FFF_PSF		3
#define FFF_XPSF	4

extern const struct magicset ff_magics;

/* core unifont stuff */

typedef struct cfontdesc
{
  unsigned short charcount;	/* nb of characters in font */
  unsigned short charheight;
  unsigned short charwidth;
  char *chardata;		/* font data in expanded form */
} cfontdesc;

typedef struct unifont
{
  struct cfontdesc font;
  struct unimapdesc sfm;
} simple_font;

typedef struct fontgroup
{
  struct unimapdesc sfm;
  unsigned char fontcount;
  struct cfontdesc* fonts;
} font_group;

/*
 * PSF stuff
 */

#define PSF_MAGIC1	0x36
#define PSF_MAGIC2	0x04

#define PSF_MODE256NOSFM	0
#define PSF_MODE512NOSFM	1
#define PSF_MODE256SFM		2
#define PSF_MODE512SFM		3

#define PSF_SEPARATOR	0xFFFF

struct psf_header
{
  unsigned char magic1, magic2;	/* Magic number */
  unsigned char mode;		/* PSF font mode */
  unsigned char charheight;	/* Character size */
};

#define PSF_MAGIC_OK(x)	((x).magic1 == PSF_MAGIC1 && (x).magic2 == PSF_MAGIC2)
#define PSF_MODE_VALID(x) ((x) <= PSF_MODE512SFM)
#define PSF_MODE_HAS512(x) (((x) == 1) || ((x) == 3))
#define PSF_MODE_HASSFM(x) (((x) == 2) || ((x) == 3))

/* high-level font-handling funcs */
simple_font* read_simple_font (FILE* fontfile, FILE* sfmfile, int font_format);

/* low-level PSF-specific funcs from psf-header.c */
int psf_header_read     (FILE* in, struct psf_header* psfhdr_ptr);
int psf_header_write    (FILE* out, struct psf_header* psfhdr_ptr);
int write_as_psf_header (FILE* out, int charheight, int charcount, int with_sfm);

/*
 * Font data stuff
 */

/* fontdata.c */
int fontdata_write_binary (FILE* out, cfontdesc *cfd);
int fontdata_read_binary  (FILE* in, cfontdesc *cfd);

#endif /* _LCT_FONT_H */
