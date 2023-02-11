if ( $?prompt ) then

  # set path = ( ${HOME}/bin/${HOSTTYPE} ${HOME}/bin /usr/local/bin /bin /usr/bin /usr/local/games /usr/bin/X11 /usr/games )

  set autoexpand
  set autolist
# To unset autologout
  # unset autologout
# To set autologout to other time (in minutes):
  # if ( $?autologout ) then
  #   set autologout = 30
  # endif
# To set autologout to 60 and autolock to 15:
  # set autologout = 60 15
  set cdpath = ( ~ )
  set correct = cmd
  set fignore = ( \~ .o )
# To set implicit cd:
  # set implicitcd
  # set matchbeep = never
  # set nobeep
  set printexitvalue
  set pushdtohome
  # set recognize_only_executables

## tcsh completion feature
## For more details see /usr/doc/examples/tcsh/complete.tcsh
# To not load debian-specific completions:
  # set no_debian_complete
# To not load new completions:
  # set no_new_complete
# For traditional completion of cp and mv commands:
  # set traditional_cp_mv_complete
# For traditional completion of zcat command:
  # set traditional_zcat_complete
# For traditional completion of nm command:
  # set traditional_nm_complete
# For traditional completion of tex command:
  # set traditional_tex_complete
# For traditional completion of find command:
  # set traditional_find_complete
# For traditional completion of ./configure command:
  # set traditional_configure_complete
# For traditional completion of rm command:
  # set foolproof_rm_complete
# For all traditional completions:
  # set traditional_complete
# To load completions:
  # Please copy /usr/share/doc/tcsh/examples/complete.tcsh.gz to
  # your home directory and uncompress it to ~/.complete and then
  # source ${HOME}/.complete

  # mesg y

  setenv EDITOR emacs
  setenv PAGER less

# To make xterm make your hostname and your working directory its window
# name, uncomment the following lines:
  # if ( "$TERM" == "xterm" ) then
  #   alias cwdcmd 'echo -n "\033]2;${HOST}:$cwd\007\033]1;${HOST}\007"'
  #   cwdcmd
  # endif

# Load aliases from ~/.alias
  if ( -e ~/.alias )	source ~/.alias

# Execute fortune cookie
  if ( "$TERM" == "xterm" ) echo ""
  fortune
  echo ""

# Execute calendar
  if ( -e ~/calendar ) then
    pushd ~
    calendar
    popd
  endif
  echo ""

endif
