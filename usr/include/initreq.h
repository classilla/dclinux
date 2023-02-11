/*
 * initreq.h    Interface to let init spawn programs on behalf of
 *              other programs/daemons.
 *              Definitions based on sys_term.c from the BSD 4.4
 *              telnetd source.
 *
 * Version:     @(#)initreq.h 1.25 28-Dec-1995 MvS
 *
 * Notes:       Implemented in sysvinit-2.58 and up, but only
 *		for "telinit". Support for rlogind, telnetd
 *		and rxvt/xterm will follow shortly.
 */
#ifndef _INITREQ_H
#define _INITREQ_H

#include <sys/param.h>

#define INIT_MAGIC 0x03091969
#define INIT_FIFO  "/dev/initctl"
#define INIT_CMD_START	       0
#define INIT_CMD_RUNLVL        1
#define INIT_CMD_POWERFAIL     2
#define INIT_CMD_POWERFAILNOW  3
#define INIT_CMD_POWEROK       4

struct init_request {
  int magic;			/* Magic number                 */
  int cmd;			/* What kind of request         */
  int runlevel;			/* Runlevel to change to        */
  int sleeptime;		/* Time between TERM and KILL   */
  char gen_id[8];		/* Beats me.. telnetd uses "fe" */
  char tty_id[16];		/* Tty name minus /dev/tty      */
  char host[MAXHOSTNAMELEN];    /* Hostname                     */
  char term_type[16];		/* Terminal type                */
  int signal;			/* Signal to send               */
  int pid;			/* Process to send to           */
  char exec_name[128];	        /* Program to execute           */
  char reserved[128];		/* For future expansion.        */
};

#endif
