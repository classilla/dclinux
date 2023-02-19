#include <fcntl.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <sys/ioctl.h>

/* Restores Tux to his rightful place on the SuperH console screen.
   Public domain. Cameron Kaiser <ckaiser@floodgap.com>
   (Tux image copied from kernel) */

#include "tuxsuper.h"

// set scrollable area to rows 6-30 and "home" cursor
char screen[14] = { 
	0x1b, 0x5b, 0x36, 0x3b, 0x33, 0x30, 0x72, /* ESC [ 6 ; 30 r */
	0x1b, 0x5b, 0x48,                         /* ESC [ H */
	0x1b, 0x5b, 0x35, 0x42 };                 /* ESC [ 5 B */

int main(int argc, char **argv) {
	int fd;
	size_t s, i;
	uint32_t *z, *zp;
        struct fb_fix_screeninfo fix_info;
        struct fb_var_screeninfo var_info;

	fd = open("/dev/fb0", O_RDWR);
        if (ioctl(fd, FBIOGET_FSCREENINFO, &fix_info)) {
		perror("FBIOGET_FSCREENINFO"); return 1; }
        if (ioctl(fd, FBIOGET_VSCREENINFO, &var_info)) {
		perror("FBIOGET_VSCREENINFO"); return 1; }

	if (var_info.bits_per_pixel != 32 ||
		fix_info.visual != FB_VISUAL_TRUECOLOR ||
		fix_info.type != FB_TYPE_PACKED_PIXELS ||
		fix_info.line_length != 2560 || /* 640 * 4 */	
		var_info.xoffset != 0 ||
		var_info.yoffset != 0 ||
		var_info.yres < 80 || /* height of tux */
	0) {
		fprintf(stderr, "fatal: expected 640x...x32bpp\n");
		return 1;
	}

	z = mmap(NULL, (s = fix_info.line_length * var_info.yres),
		PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
	if (z == MAP_FAILED) { perror("mmap"); return 1; }
	(void)fwrite(&screen, 1, 14, stdout);
	fflush(stdout); // ensure cursor is homed first
	/* The Dreamcast FB must be accessed as 32-bit ints, not char, which
		memset() and memcpy() will do for lengths divisible by 4. */
	memset((void *)z, 0, s);
	zp = z;
	for(i=0;i<80;i++) {
		memcpy((void *)zp, (void *)&tuxsuper_h[i], 320); /* 80 * 4 */
		zp += 640;
	}
	munmap(z, s);
	close(fd);
	return 0;
}
