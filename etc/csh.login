# /etc/csh.login: system-wide .login file for csh(1)/tcsh(1).
# $Id: csh.login,v 1.1 1998/04/16 14:57:01 luisgh Exp $

umask 022

test -x /netfs/csh.login && source /netfs/csh.login

