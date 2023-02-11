#ifndef _LCT_UTILS_H
#define _LCT_UTILS_H

#include <stdio.h>
#include <linux/kd.h>
#include <lct/unicode.h>

struct magic
{
  int id;
  char* magic;
  char* mask;
  size_t length;
};

struct magicset
{
  size_t max_length_hint;
  const struct magic* m;
};

/* special magic_IDs */
#define FF_END		 0	/* array terminator */
#define FF_UNKNOWN	-1	/* magic == mask == NULL - unidentified (used as default) */
#define FF_HINTS	-2	/* magic == max length for magic and mask in following array
				 * mask == ignored */

FILE *findfile_simple(const char *fnam, const char **dirpath, const char **suffixes);

FILE* findfile(const char *fnam, const char **dirpath, const char **suffixes,
	       char *fullname, size_t maxfullength, FILE* minus_meaning,
	       const struct magicset * magics, int* magic_return);

/* low-level wrappers around findfile() */
#define FINDFONT_WRAPPER_HEADER(NAME) \
FILE* find ## NAME(const char *fnam, char *fullname, size_t maxfullength, \
                   FILE* minus_meaning, int* magic_return)

FINDFONT_WRAPPER_HEADER(font);
FINDFONT_WRAPPER_HEADER(acm);
FINDFONT_WRAPPER_HEADER(sfm);
FINDFONT_WRAPPER_HEADER(sfmfallback);
FINDFONT_WRAPPER_HEADER(keymap);
FINDFONT_WRAPPER_HEADER(videomode);

/* from x*.c */
int xfseek (FILE *stream, long offset, int whence);
FILE *xfopen (const char *path, const char *mode, FILE* minus_meaning);

/* from sfm-utils.c */
unicode sgetunicode(char **p0);
void unimapdesc_addpair(int fp, unicode un, struct unimapdesc *list, int *listsz);
void unimapdesc_adjust(struct unimapdesc* list);

/* sfm-fallback */
int sfm_fallback_read (FILE* f, unicode** *sfmf, unsigned *size);
int sfm_fallback_add (unicode** sfmf, unsigned size,
		      struct unimapdesc* ilist,
		      struct unimapdesc* olist);

/* miscutils.c */
typedef void (*UsageFunc) (char *progname);

void simple_options(int argc, char **argv, UsageFunc usage, char *progname);
char* strip_path (const char* name);
void version(char* progname);
void* xmalloc(size_t n);
char* xstrdup(char *p);

#endif /* _LCT_UTILS_H */
