#ifndef _LCT_UNICODE_H
# define _LCT_UNICODE_H

typedef unsigned short unicode;

unicode utf8_to_ucs2 (char* buf);
void ucs2_to_utf8(unicode c, char* utf);

#endif /* _LCT_UNICODE_H */

