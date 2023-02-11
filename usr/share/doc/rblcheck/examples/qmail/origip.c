/*
** origip - Obtain the sending IP address from email Received: lines.
** Copyright (C) 1997, Edward S. Marshall <emarshal@logic.net>
**
** This program is free software; you can redistribute it and/or modify
** it under the terms of the GNU General Public License as published by
** the Free Software Foundation; either version 2 of the License, or
** (at your option) any later version.
**
** This program is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU General Public License for more details.
**
** You should have received a copy of the GNU General Public License
** along with this program; if not, write to the Free Software
** Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
**
** NOTES:
**
** We determine the IP address of the sender by taking the -second-
** Received: header we come across. Under QMail, this is consistantly
** the real line we're interested in (under Sendmail, this is incorrect;
** the first line gives us what we need there).
**
** - Is it overkill to bother reconstructing a split-up Received: line?
**   Or can we safely assume that the last set of brackets on the first
**   line will surround the IP address (with ident information)?
**
** - This scheme can be defeated: by sending back bogus IDENT info, you
**   could potentically spoof this check. No, I won't provide an example.
**
** - Would anyone be interested in a Sendmail spin on this (#ifdef QMAIL,
**   #ifdef SENDMAIL, etc)?
**
** RETURN VALUES: 0 for success (with output), 1 for failure (no output).
**
** $Id: origip.c,v 1.6 2000/04/21 15:22:57 logic Exp $
**
** $Log: origip.c,v $
** Revision 1.6  2000/04/21 15:22:57  logic
** Update to current cvs tree.
**
** Revision 1.1.1.1  1998/01/09 20:42:50  emarshal
** Initial import into CVS.
**
*/

#include <stdio.h>

#ifdef solaris
#include <strings.h>
#else
#include <string.h>
#endif

#define BUFF_SIZE 4096

int main( int argc, char * argv[] )
{
	char buff[ BUFF_SIZE ];
	char buff2[ BUFF_SIZE ];
	char * p;
	char * q;
	int a, b, c, d;
	int count = 0;

	while( fgets( buff, BUFF_SIZE, stdin ) )
	{
		if( !strncmp( buff, "Received:", 9 ) )
		{
			if( !count )
			{
				count++;
				continue;
			}

			while( fgets( buff2, BUFF_SIZE, stdin ) )
			{
				if( strncmp( buff2, "Received:", 9 ) )
					strncat( buff, buff2, strlen( buff ) -
					  BUFF_SIZE );
				else
					break;
			}

			/* Are there any parens at all? */
			p = strchr( buff, '(' );
			if( !p )
			{
				return 1;
			}

			/* Warning: wierd logic follows... */
			if( *( ++p ) < '0' || *p > '9' )
			{
				q = strchr( p, '(' );
				if( !q )
				{
					q = strchr( p, '@' );
					if( !q )
					{
						return 1; /* Error! */
					}
				}
				p = q + 1;
			}
			q = strchr( p, '@' );
			if( q )
			{
				p = q + 1;
			}
			if( sscanf( p, "%d.%d.%d.%d", &a, &b, &c, &d ) != 4 )
			{
				return 1; /* Error! */
			}
			printf( "%d.%d.%d.%d\n", a, b, c, d );

			/* Finish reading to avoid broken pipes. */
			while( fgets( buff, BUFF_SIZE, stdin ) );
			return 0;
		}
	}
	return 1; /* No Received: lines match??? Is this even QMail? */
}
