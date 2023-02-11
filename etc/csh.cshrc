# /etc/csh.cshrc: system-wide .cshrc file for csh(1)/tcsh(1).
# $Id: csh.cshrc,v 1.4 1998/06/05 21:04:02 luisgh Exp $

# Getting a consistent keyboard mapping
if ($?tcsh ) then
  bindkey "\e[1~" beginning-of-line  # Home
  bindkey "\e[7~" beginning-of-line  # Home rxvt
  bindkey "\e[2~" overwrite-mode     # Ins
  bindkey "\e[3~" delete-char        # Delete
  bindkey "\e[4~" end-of-line        # End
  bindkey "\e[8~" end-of-line        # End rxvt

  umask 002
endif
if (( $?prompt ) && ( $?tcsh )) then
  if ( "$?TERM" == "linux" ) then
    	set prompt = "%m:%B%~%b%# "
  else
  	set prompt = "%U%m%u:%B%~%b%# "
  endif
endif
