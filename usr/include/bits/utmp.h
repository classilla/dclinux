/* The `struct utmp' type, describing entries in the utmp file.  GNU version.
   Copyright (C) 1993, 1996, 1997, 1998, 1999 Free Software Foundation, Inc.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Library General Public License as
   published by the Free Software Foundation; either version 2 of the
   License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Library General Public License for more details.

   You should have received a copy of the GNU Library General Public
   License along with the GNU C Library; see the file COPYING.LIB.  If not,
   write to the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.  */

#ifndef _UTMP_H
# error "Never include <bits/utmp.h> directly; use <utmp.h> instead."
#endif

#include <paths.h>
#include <sys/time.h>
#include <sys/types.h>


#define UT_LINESIZE	32
#define UT_NAMESIZE	32
#define UT_HOSTSIZE	256


/* The structure describing an entry in the database of
   previous logins.  */
struct lastlog
  {
    __time_t ll_time;
    char ll_line[UT_LINESIZE];
    char ll_host[UT_HOSTSIZE];
  };


/* The structure describing the status of a terminated process.  This
   type is used in `struct utmp' below.  */
struct exit_status
  {
    short int e_termination;	/* Process termination status.  */
    short int e_exit;		/* Process exit status.  */
  };


/* The structure describing an entry in the user accounting database.  */
struct utmp
{
  short int ut_type;		/* Type of login.  */
  pid_t ut_pid;			/* Process ID of login process.  */
  char ut_line[UT_LINESIZE];	/* Devicename.  */
  char ut_id[4];		/* Inittab ID.  */
  char ut_user[UT_NAMESIZE];	/* Username.  */
  char ut_host[UT_HOSTSIZE];	/* Hostname for remote login.  */
  struct exit_status ut_exit;	/* Exit status of a process marked
				   as DEAD_PROCESS.  */
  long int ut_session;		/* Session ID, used for windowing.  */
  struct timeval ut_tv;		/* Time entry was made.  */
  int32_t ut_addr_v6[4];	/* Internet address of remote host.  */
  char __unused[20];		/* Reserved for future use.  */
};

/* Backwards compatibility hacks.  */
#define ut_name		ut_user
#ifndef _NO_UT_TIME
/* We have a problem here: `ut_time' is also used otherwise.  Define
   _NO_UT_TIME if the compiler complains.  */
# define ut_time	ut_tv.tv_sec
#endif
#define ut_xtime	ut_tv.tv_sec
#define ut_addr		ut_addr_v6[0]


/* Values for the `ut_type' field of a `struct utmp'.  */
#define EMPTY		0	/* No valid user accounting information.  */

#define RUN_LVL		1	/* The system's runlevel.  */
#define BOOT_TIME	2	/* Time of system boot.  */
#define NEW_TIME	3	/* Time after system clock changed.  */
#define OLD_TIME	4	/* Time when system clock changed.  */

#define INIT_PROCESS	5	/* Process spawned by the init process.  */
#define LOGIN_PROCESS	6	/* Session leader of a logged in user.  */
#define USER_PROCESS	7	/* Normal process.  */
#define DEAD_PROCESS	8	/* Terminated process.  */

#define ACCOUNTING	9

/* Old Linux name for the EMPTY type.  */
#define UT_UNKNOWN	EMPTY


/* Tell the user that we have a modern system with UT_HOST, UT_PID,
   UT_TYPE, UT_ID and UT_TV fields.  */
#define _HAVE_UT_TYPE	1
#define _HAVE_UT_PID	1
#define _HAVE_UT_ID	1
#define _HAVE_UT_TV	1
#define _HAVE_UT_HOST	1
