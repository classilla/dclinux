/* gleaned from a web-search, shows a bug combining scanw and implicit scroll.
 * Date:  1997/03/17
 * From:  bayern@morpheus.cis.yale.edu
 *
 * $Id: testscanw.c,v 1.5 1997/09/20 14:16:20 tom Exp $
 */
#include <test.priv.h>
#include <ctype.h>

int main(int argc, char *argv[])
{
	long badanswer = 1;
	long *response = &badanswer;

	initscr();
	scrollok(stdscr, TRUE);
	idlok(stdscr, TRUE);
	echo();

#if 0
	trace(TRACE_UPDATE|TRACE_CALLS);
#endif
	while (argc > 1) {
		if (isdigit(*argv[1]))
			move(atoi(argv[1]), 0);
		else if (!strcmp(argv[1], "-k"))
			keypad(stdscr, TRUE);
		argc--, argv++;
	}

	while (badanswer) {
		printw("Enter a number (0 to quit):\n");
		printw("--> ");
		scanw("%20ld", response);    /* yes, it's a pointer */
	}
	endwin();
	return EXIT_SUCCESS;
}
