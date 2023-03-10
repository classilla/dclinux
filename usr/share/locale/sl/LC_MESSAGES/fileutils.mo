??    ?      L  ?   |
      ?  ?   ?  (   ?  D  ?     	          ,     A     S     f  >   v     ?     ?     ?  ,   ?     %     :     Y     t  '   ?     ?     ?     ?     ?       ,   ,     Y  %   w  ,   ?  -   ?      ?  &        @     Y     t     ?     ?     ?     ?  B   ?  +   .  *   Z     ?  
   ?  f  ?  Z  ?  U  T  ?   ?$  y  ?%  ?  '  ?   ?(  4  B)  i  w.  !  ?0  K  3  r  O7  ?  ?<  ?   {>  &   ?     :?     Y?  `  n?     ?B     ?B      C     $C     @C  #   WC     {C  T   ?C  ?   ?C  .   vD  ?   ?D  ?   )E  ?   ?E  ?   _F     ?F      G     /G  ?   DG  	   H     H     H     %H     +H     -H     LH  
   XH  !   cH  *   ?H  +   ?H  '   ?H     I     "I  ,   @I     mI     ?I  +   ?I  (   ?I  2   ?I     J  2   9J  /   lJ     ?J     ?J  .   ?J  %   ?J  
   K  #   'K  *   KK     vK     ?K     ?K     ?K     ?K     ?K  =   ?K  :   =L     xL     ?L     ?L     ?L     ?L     ?L  B   ?L     ,M     =M     VM     lM  !   ?M  "   ?M  7   ?M  T    N  =   UN  S   ?N     ?N     O     !O     9O  %   FO     lO  "   ?O     ?O     ?O     ?O     ?O  /   ?O  f   P  <   ?P     ?P     ?P     ?P     ?P     ?P  3   Q     CQ  ~   [Q  2   ?Q  7   R  S   ER  W   ?R  =   ?R  =   /S  :   mS     ?S     ?S  E  ?S  ?   U  /   ?U  g  ?U     O\     g\  !   z\     ?\     ?\     ?\  >   ?\  !   !]     C]      \]  :   }]     ?]  %   ?]     ?]     ^  (   .^     W^      u^     ?^     ?^     ?^  )   ?^     _  !   5_  )   W_  *   ?_     ?_  "   ?_     ?_     	`     &`     E`     U`     a`     ?`  @   ?`  1   ?`  6   a     Ka  	   Ma  ?  Wa    Dd  ?  _f  ?   l  ?  ?l  ?  ~n  {   5p     ?p  M  ?u  ?   x  ?  ?y  ?  5~  ?  ̃  ?   ??  0   }?     ??     Ά    ??  '   ??     ?     2?     R?     o?  "   ??  $   ??  b   Њ  ?   3?  2   ԋ  ?   ?  ?   ??  ?   *?  ?   ֍  &   `?  &   ??     ??  ?   Ŏ     v?     ??     ??     ??     ??     ??     ??     ֏     ??  7   ??  )   7?  &   a?     ??  !   ??  ?   ??     ?     ?  >   1?  -   p?  2   ??  /   ё  5   ?  5   7?  )   m?     ??  !   ??     Ӓ     ??  '   ?  <   )?     f?     ??     ??     ??  $   ??     ړ  :   ??  7   .?     f?     ??     ??     ??     ʔ     ??  ;   ??     9?     N?     e?     x?  -   ??  -   ??  K   ??  d   3?  C   ??  N   ܖ     +?     F?     a?     v?  !   ??     ??     ??     ח     ??     ?     ?  &   &?  e   M?  2   ??     ??     ??     ?     ?      ?  7   0?     h?  ?   ??  2   ?  4   :?  G   o?  I   ??  4   ?  =   6?  (   t?     ??     ??             ,   ?   #           ?   ;       k   ?   D   ?   g   ?   F   ?   '          I               ?       i   h   ?   ?   /      V   O       Y   f   +   s   m   W           l   ?   T   H   d       ?                  ?   .   [      c       %   G   R         0   8   (   <   ?   &   }   x      A   X   t   ?   ?   q      )       ?   @              v   _   J   ?           U       ~   ?         !      ?   ?   Z   ?           C          7              E       9   "      e   K   =   w       ^   ?   $       1   ?      ?   j       ?   ?   n       *                 ?   ?   {   ?       ?   ?                 ?   ?   u       
   r   ?   Q   a          4              ]      -   2   ?   S       `   B   ?   :   \                   ?       ?   ?                         6   N       	   ?   P   M   b   >      o   5             |   y   z       3   p              L    
As a special case, cp makes a backup of SOURCE when the force and backup
options are given and SOURCE and DEST are the same name for an existing,
regular file.
 
Report bugs to <bug-fileutils@gnu.org>.   -S                         sort by file size
      --sort=WORD            extension -X, none -U, size -S, time -t,
                               version -v
                             status -c, time -t, atime -u, access -u, use -u
      --time=WORD            show time as WORD instead of modification time:
                               atime, access, use, ctime or status; use
                               specified time as sort key if --sort=time
  -t                         sort by modification time
  -T, --tabsize=COLS         assume tab stops at each COLS instead of 8
  -u                         with -lt: sort by, and show, access time
                               with -l: show access time and sort by name
                               otherwise: sort by access time
  -U                         do not sort; list entries in directory order
  -v                         sort by version
  -w, --width=COLS           assume screen width instead of current value
  -x                         list entries by lines instead of by columns
  -X                         sort alphabetically by entry extension
  -1                         list one file per line
      --help                 display this help and exit
      --version              output version information and exit

By default, color is not used to distinguish types of files.  That is
equivalent to using --color=none.  Using the --color option without the
optional WHEN argument is equivalent to using --color=always.  With
--color=auto, color codes are output only if standard output is connected
to a terminal (tty).
  (backup: %s)  (might be nonempty) %s -> %s (unbackup)
 %s+%s records in
 %s+%s records out
 %s: File exists %s: can make relative symbolic links only in current directory %s: cannot overwrite directory %s: cannot remove %s: cannot rewind %s: cannot shred append-only file descriptor %s: error truncating %s: error writing at offset %s %s: file has negative size %s: file too large %s: hard link not allowed for directory %s: illegal option -- %c
 %s: invalid file size %s: invalid file type %s: invalid number of passes %s: invalid option -- %c
 %s: option `%c%s' doesn't allow an argument
 %s: option `%s' is ambiguous
 %s: option `%s' requires an argument
 %s: option `--%s' doesn't allow an argument
 %s: option `-W %s' doesn't allow an argument
 %s: option `-W %s' is ambiguous
 %s: option requires an argument -- %c
 %s: pass %lu/%lu (%s)... %s: pass %lu/%lu (%s)...%s %s: pass %lu/%lu (%s)...%s/%s %s: removed %s: removing %s: unrecognized option `%c%s'
 %s: unrecognized option `--%s'
 %s: warning: making a hard link to a symbolic link is not portable %s:%lu: invalid line;  missing second token %scannot read table of mounted filesystems ' <internal> Change the group membership of each FILE to GROUP.

  -c, --changes          like verbose but report only when a change is made
      --dereference      affect the referent of each symbolic link, rather
                         than the symbolic link itself
  -h, --no-dereference   affect symbolic links instead of any referenced file
                         (available only on systems that can change the
                         ownership of a symlink)
  -f, --silent, --quiet  suppress most error messages
      --reference=RFILE  use RFILE's group rather than the specified
                         GROUP value
  -R, --recursive        operate on files and directories recursively
  -v, --verbose          output a diagnostic for every file processed
      --help             display this help and exit
      --version          output version information and exit
 Change the mode of each FILE to MODE.

  -c, --changes           like verbose but report only when a change is made
  -f, --silent, --quiet   suppress most error messages
  -v, --verbose           output a diagnostic for every file processed
      --reference=RFILE   use RFILE's mode instead of MODE values
  -R, --recursive         change files and directories recursively
      --help              display this help and exit
      --version           output version information and exit

Each MODE is one or more of the letters ugoa, one of the symbols +-= and
one or more of the letters rwxXstugo.
 Create a link to the specified TARGET with optional LINK_NAME.
If LINK_NAME is omitted, a link with the same basename as the TARGET is
created in the current directory.  When using the second form with more
than one TARGET, the last argument must be a directory;  create links
in DIRECTORY to each TARGET.  Create hard links by default, symbolic
links with --symbolic.  When creating hard links, each TARGET must exist.

      --backup[=CONTROL]      make a backup of each existing destination file
  -b                          like --backup but does not accept an argument
  -d, -F, --directory         hard link directories (super-user only)
  -f, --force                 remove existing destination files
  -n, --no-dereference        treat destination that is a symlink to a
                                directory as if it were a normal file
  -i, --interactive           prompt whether to remove destinations
  -s, --symbolic              make symbolic links instead of hard links
  -S, --suffix=SUFFIX         override the usual backup suffix
      --target-directory=DIRECTORY  specify the DIRECTORY in which to create
                                the links
  -v, --verbose               print name of each file before linking
      --help                  display this help and exit
      --version               output version information and exit

 Create named pipes (FIFOs) with the given NAMEs.

  -m, --mode=MODE   set permission mode (as in chmod), not a=rw - umask
      --help        display this help and exit
      --version     output version information and exit
 Create the DIRECTORY(ies), if they do not already exist.

  -m, --mode=MODE   set permission mode (as in chmod), not rwxrwxrwx - umask
  -p, --parents     no error if existing, make parent directories as needed
  -v, --verbose     print a message for each created directory
      --help        display this help and exit
      --version     output version information and exit
 Create the special file NAME of the given TYPE.

  -m, --mode=MODE   set permission mode (as in chmod), not a=rw - umask
      --help        display this help and exit
      --version     output version information and exit

MAJOR MINOR are forbidden for TYPE p, mandatory otherwise.  TYPE may be:

  b      create a block (buffered) special file
  c, u   create a character (unbuffered) special file
  p      create a FIFO
 Force changed blocks to disk, update the super block.

  --help      display this help and exit
  --version   output version information and exit
 In the first two formats, copy SOURCE to DEST or multiple SOURCE(s) to
the existing DIRECTORY, while setting permission modes and owner/group.
In the third format, create all components of the given DIRECTORY(ies).

      --backup[=CONTROL] make a backup of each existing destination file
  -b                  like --backup but does not accept an argument
  -c                  (ignored)
  -d, --directory     treat all arguments as directory names; create all
                        components of the specified directories
  -D                  create all leading components of DEST except the last,
                        then copy SOURCE to DEST;  useful in the 1st format
  -g, --group=GROUP   set group ownership, instead of process' current group
  -m, --mode=MODE     set permission mode (as in chmod), instead of rwxr-xr-x
  -o, --owner=OWNER   set ownership (super-user only)
  -p, --preserve-timestamps   apply access/modification times of SOURCE files
                        to corresponding destination files
  -s, --strip         strip symbol tables, only for 1st and 2nd formats
  -S, --suffix=SUFFIX override the usual backup suffix
  -v, --verbose       print the name of each directory as it is created
      --help          display this help and exit
      --version       output version information and exit

 Output commands to set the LS_COLORS environment variable.

Determine format of output:
  -b, --sh, --bourne-shell    output Bourne shell code to set LS_COLORS
  -c, --csh, --c-shell        output C shell code to set LS_COLORS
  -p, --print-database        output defaults
      --help                  display this help and exit
      --version               output version information and exit

If FILE is specified, read it to determine which colors to use for which
file types and extensions.  Otherwise, a precompiled database is used.
For details on the format of these files, run `dircolors --print-database'.
 Remove the DIRECTORY(ies), if they are empty.

      --ignore-fail-on-non-empty
                  ignore each failure that is solely because a directory
                  is non-empty
  -p, --parents   remove DIRECTORY, then try to remove each directory
                  component of that path name.  E.g., `rmdir -p a/b/c' is
                  similar to `rmdir a/b/c a/b a'.
  -v, --verbose   output a diagnostic for every directory processed
      --help      display this help and exit
      --version   output version information and exit
 Show information about the filesystem on which each FILE resides,
or all filesystems by default.

  -a, --all             include filesystems having 0 blocks
      --block-size=SIZE use SIZE-byte blocks
  -h, --human-readable  print sizes in human readable format (e.g., 1K 234M 2G)
  -H, --si              likewise, but use powers of 1000 not 1024
  -i, --inodes          list inode information instead of block usage
  -k, --kilobytes       like --block-size=1024
  -l, --local           limit listing to local filesystems
  -m, --megabytes       like --block-size=1048576
      --no-sync         do not invoke sync before getting usage info (default)
  -P, --portability     use the POSIX output format
      --sync            invoke sync before getting usage info
  -t, --type=TYPE       limit listing to filesystems of type TYPE
  -T, --print-type      print filesystem type
  -x, --exclude-type=TYPE   limit listing to filesystems not of type TYPE
  -v                    (ignored)
      --help            display this help and exit
      --version         output version information and exit
 Summarize disk usage of each FILE, recursively for directories.

  -a, --all             write counts for all files, not just directories
      --block-size=SIZE use SIZE-byte blocks
  -b, --bytes           print size in bytes
  -c, --total           produce a grand total
  -D, --dereference-args  dereference PATHs when symbolic link
  -h, --human-readable  print sizes in human readable format (e.g., 1K 234M 2G)
  -H, --si              likewise, but use powers of 1000 not 1024
  -k, --kilobytes       like --block-size=1024
  -l, --count-links     count sizes many times if hard linked
  -L, --dereference     dereference all symbolic links
  -m, --megabytes       like --block-size=1048576
  -S, --separate-dirs   do not include size of subdirectories
  -s, --summarize       display only a total for each argument
  -x, --one-file-system  skip directories on different filesystems
  -X FILE, --exclude-from=FILE  Exclude files that match any pattern in FILE.
      --exclude=PAT     Exclude files that match PAT.
      --max-depth=N     print the total for a directory (or file, with --all)
                          only if it is N or fewer levels below the command
                          line argument;  --max-depth=0 is the same as
                          --summarize
      --help            display this help and exit
      --version         output version information and exit
 The backup suffix is `~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.
The version control method may be selected via the --backup option or through
the VERSION_CONTROL environment variable.  Here are the values:

  none, off       never make backups (even if --backup is given)
  numbered, t     make numbered backups
  existing, nil   numbered if numbered backups exist, simple otherwise
  simple, never   always make simple backups
 This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 Try `%s --help' for more information.
 U+%04X: character out of range Unknown system error Update the access and modification times of each FILE to the current time.

  -a                     change only the access time
  -c, --no-create        do not create any files
  -d, --date=STRING      parse STRING and use it instead of current time
  -f                     (ignored)
  -m                     change only the modification time
  -r, --reference=FILE   use this file's times instead of current time
  -t STAMP               use [[CC]YY]MMDDhhmm[.ss] instead of current time
  --time=WORD            set time given by WORD: access atime use (same as -a)
                           modify mtime (same as -m)
      --help             display this help and exit
      --version          output version information and exit

Note that the three time-date formats recognized for the -d and -t options
and for the obsolescent argument are all different.
 Usage: %s [OPTIONS] FILE [...]
 Usage: %s [OPTION]
 Usage: %s [OPTION] DIRECTORY...
 Usage: %s [OPTION] NAME...
 Usage: %s [OPTION]...
 Usage: %s [OPTION]... DIRECTORY...
 Usage: %s [OPTION]... FILE...
 Usage: %s [OPTION]... GROUP FILE...
  or:  %s [OPTION]... --reference=RFILE FILE...
 Usage: %s [OPTION]... MODE[,MODE]... FILE...
  or:  %s [OPTION]... OCTAL-MODE FILE...
  or:  %s [OPTION]... --reference=RFILE FILE...
 Usage: %s [OPTION]... NAME TYPE [MAJOR MINOR]
 Usage: %s [OPTION]... OWNER[:[GROUP]] FILE...
  or:  %s [OPTION]... :GROUP FILE...
  or:  %s [OPTION]... --reference=RFILE FILE...
 Usage: %s [OPTION]... SOURCE DEST
  or:  %s [OPTION]... SOURCE... DIRECTORY
  or:  %s [OPTION]... --target-directory=DIRECTORY SOURCE...
 Usage: %s [OPTION]... SOURCE DEST           (1st format)
  or:  %s [OPTION]... SOURCE... DIRECTORY   (2nd format)
  or:  %s -d [OPTION]... DIRECTORY...       (3rd format)
 Usage: %s [OPTION]... TARGET [LINK_NAME]
  or:  %s [OPTION]... TARGET... DIRECTORY
  or:  %s [OPTION]... --target-directory=DIRECTORY TARGET...
 Usage: %s [OPTION]... [FILE]
 Usage: %s [OPTION]... [FILE]...
 Valid arguments are: WARNING: Circular directory structure.
This almost certainly means that you have a corrupted file system.
NOTIFY YOUR SYSTEM MANAGER.
The following two directories have the same inode number:
 Warning:  Written by %s.
 ^[nN] ^[yY] ` ambiguous argument %s for `%s' backup type block size block special files not supported cannot both summarize and show all entries cannot change back to directory %s via `..' cannot change to `..' from directory %s cannot change to directory %s cannot chdir to directory, %s cannot convert U+%04X to local character set cannot create fifo `%s' cannot fork cannot get the login group of a numeric UID cannot make both hard and symbolic links cannot move directory onto non-directory: %s -> %s cannot omit both user and group cannot output U+%04X: iconv function not available cannot output U+%04X: iconv function not usable cannot remove `.' or `..' cannot run strip cannot specify times from more than one source character special files not supported continue?  failed to change group of %s to %s
 failed to change mode of %s to %04lo (%s)
 fifo files not supported file arguments missing file offset out of range group number group of %s retained as %s
 ignoring all arguments ignoring invalid tab size in environment variable TABSIZE: %s ignoring invalid width in environment variable COLUMNS: %s invalid argument %s for `%s' invalid group invalid line width: %s invalid mode invalid tab size: %s invalid user major and minor device numbers may not be specified for fifo files memory exhausted missing destination file missing file argument missing file arguments mode of %s changed to %04lo (%s)
 mode of %s retained as %04lo (%s)
 neither symbolic link %s nor referent has been changed
 no FILE arguments may be used with the option to output
dircolors' internal database no SHELL environment variable, and no shell type option given only one conv in {ascii,ebcdic,ibm}, {lcase,ucase}, {block,unblock}, {unblock,sync} preserving ownership for %s preserving permissions for %s preserving times for %s removing %s
 removing all entries of directory %s
 removing directory, %s removing the directory itself: %s
 setting permissions for %s standard input standard output strip failed symbolic links are not supported on this system the options to output dircolors' internal database and
to select a shell syntax are mutually exclusive the strip option may not be used when installing a directory too few arguments too many arguments total truncated record truncated records unparsable value for LS_COLORS environment variable unrecognized prefix: %s warning: --version-control (-V) is obsolete;  support for it
will be removed in some future release.  Use --backup=%s instead. warning: summarizing conflicts with --max-depth=%d warning: summarizing is the same as using --max-depth=0 when creating block special files, major and minor device
numbers must be specified when creating character special files, major and minor device
numbers must be specified when making multiple links, last argument must be a directory when moving multiple files, last argument must be a directory when preserving paths, the destination must be a directory write error wrong number of arguments Project-Id-Version: GNU fileutils 4.0t
POT-Creation-Date: 2001-04-29 13:38+0200
PO-Revision-Date: 2001-03-01 19:17+01:00
Last-Translator: Primo? Peterlin <primoz.peterlin@biofiz.mf.uni-lj.si>
Language-Team: Slovenian <sl@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8-bit
 
V posebnem primeru napravi cp varnostno kopijo IZVORa, kadar sta podani izbiri
--force in --backup, IZVOR in CILJ pa sta isto ime za obstoje?o navadno
datoteko.
 
Poro?ila o napakah na <bug-fileutils@gnu.org>.   -S                         datoteke razvrstimo po velikosti
      --sort=BESEDA          urejanje po: priponi (BESEDA=extension), brez (none),
                               ?asu nastanka (time), verziji (version) ali ?asu 
                               zadnjega dostopa (atime, access, use)
      --time=BESEDA          namesto ?asa zadnje spremembe prika?emo ?as nastanka
                               (BESEDA=ctime ali status) ali ?as zadnjega dostopa
                               (atime, access ali use); skupaj z izbiro --sort
                               tudi uredimo po izbranem ?asu
  -t                         ureditev po datumu zadnje modifikacije
  -T, --tabsize=STOLPCEV     tabulator nastavljen na STOLPCEV namesto na 8
  -u                         ureditev po datumu zadnjega dostopa;
                               skupaj z -l: poka?i datum zadnjega dostopa
  -U                         brez urejanja; kot so v imeniku
  -v                         urejanje po ?tevilki razli?ice
  -w, --width=STOLPCEV       ?irina zaslova STOLPCEV namesto trenutne vrednosti
  -x                         izpis urejen v vrstice namesto v stolpce
  -X                         abecedna ureditev po priponah
  -1                         izpis po eno datoteko v vrstici
      --help                 ta navodila
      --version              razli?ica programa

Privzeto obna?anje je, da se barve ne uporabljajo za ozna?evanje tipa datoteke.
To je enakovredno izbiri --color=none. Izbira --color brez argumenta KDAJ je
enakovredna --color=always. Pri izbiri --color=auto se barve uporabijo samo,
kadar je standardni izhod terminal (tty).
  (varnostna kopija: %s)  (morda ni prazen) %s -> %s (brez varnostne kopije)
 %s+%s zapisov na vhodu
 %s+%s zapisov na izhodu
 %s: Datoteka obstaja %s: relativne simbolne povezave so mogo?e samo znotraj imenika %s: ni mogo?e pisati prek imenika %s: ni mogo?e odstraniti %s: ni mogo?e previti na za?etek %s: ni mogo?e uni?iti datoteke, v katero smemo le dodajati %s: napaka pri kraj?anju %s: napaka med pisanjem pri odmiku %s %s: velikost datoteke negativna %s: datoteka prevelika %s: trda pozezava ni dovoljena za imenik %s: nedovoljena izbira -- %c
 %s: neveljavna velikost datoteke %s: neveljaven tip datoteke %s: neveljavno ?tevilo prehodov %s: neveljavna izbira -- %c
 %s: izbira ,%c%s` ne dovoljuje argumenta
 %s: izbira ,%s` je dvoumna
 %s: izbira ,%s` zahteva argument
 %s: izbira ,--%s` ne dovoljuje argumenta
 %s: izbira ,-W %s` ne dovoljuje argumenta
 %s: izbira ,-W %s` je dvoumna
 %s: izbira zahteva argument -- %c
 %s: prehod %lu/%lu (%s)... %s: prehod %lu/%lu (%s)...%s %s: prehod %lu/%lu (%s)...%s%s %s: odstranjeno %s: bri?emo %s: neprepoznana izbira ,%c%s`
 %s: neprepoznana izbira ,--%s`
 %s: opozorilo: trda povezava na simbolno povezavo ni prenosljiva %s:%lu: neveljavna vrstica;  manjka drugi element %stabela priklopljenih datote?nih sistemov ni berljiva ` <interno> Vsem DATOTEKAM spremenimo ?lanstvo v navedeno SKUPINO. 

  -c, --changes           kot ,verbose`, a samo ob spremembah
      --deferefence       deluje na ciljne datoteke, ne na simbolne povezave
  -h, --no-dereference    deluje na simbolne povezave, ne na ciljne datoteke
                          (na voljo samo na sistemih, ki dovoljujejo spremembo
                          lastni?tva simbolne povezave)
  -f, --silent, --quiet   brez ve?ine opozoril o napakah
      --reference=ZGLED   skupino nastavimo enako, kot jo ima ZGLED
  -R, --recursive         rekurzivno obdelaj imenike in datoteke
  -v, --verbose           z diagnostiko za vsako obdelano datoteko
      --help              ta navodila
      --version           razli?ica programa
 Spremenimo ZA??ITO za DATOTEKO.

  -c, --changes           kot ,verbose`, a samo ob izvedenih spremembah
  -f, --silent, --quiet   brez ve?ine opozoril o napakah
  -v, --verbose           z diagnostiko za vsako obdelano datoteko
      --reference=ZGLED   za??ito nastavimo enako, kot jo ima ZGLED
  -R, --recursive         rekurzivno obdelaj imenike in datoteke
      --help              ta navodila
      --version           razli?ica programa

ZA??ITA je ena ali ve? ?rk iz ,ugoa`, eden od znakov +-= in
ena ali ve? ?rk iz ,rwxXstugo`.
 Ustvarimo povezavo do dolo?enega CILJA z neobveznim imenom POVEZAVE. ?e je
ime POVEZAVE izpu??eno, se ustvari povezava z enakim golim imenom datoteke
(brez poti) kot CILJ v trenutnem imeniku. ?e uporabimo drugo obliko z ve?
CILJI, mora biti zadnji argument imenik; tedaj v tem IMENIKU ustvarimo
povezave do CILJEV. Privzeti tip povezav so trde povezave; simbolne zahtevamo
z izbiro --symbolic. Pri ustvarjanju trdih povezav morajo CILJI obstajati.

      --backup[=TIP]           pred pisanjem prek obstoje?e ciljne datoteke 
                                 izdelamo varnostno kopijo podanega TIPA
  -b                           enako kot --backup, vendar ne sprejema argumenta
  -d, -F, --directory          trde povezave imenikov (samo naduporabnik)
  -f, --force                  brez vpra?anj pobri?emo morebitne ciljne datoteke
  -n, --no-dereference         simbolne povezave na imenik obravnavamo kot
                                 navadne datoteke
  -i, --interactive            zahtevamo potrditev, preden pobri?emo datoteko
  -s, --symbolic               simbolne povezave namesto trdih
  -S, --suffix=PRIPONA         izrecno dolo?ena pripona varnostne kopije
      --target-directory=IMENIK  izrecna navedba IMENIKA, v katerem ustvari
                                 povezave
  -v, --verbose                z izpisom imen datotek, ki jih povezujemo
      --help                   ta navodila
      --version                razli?ica programa

 Ustvarimo poimenovano cev (FIFO) z navedenim IMENOM.

  -m, --mode=ZA??ITA  nastavi za??ito (kot pri chmod) namesto a=rw - umask
      --help        ta navodila
      --version     razli?ica programa
 Ustvari IMENIK (ali ve? imenikov), ?e ta ?e ne obstaja.

  -m, --mode=ZA??ITA  nastavi za??ito (kot pri chmod) namesto privzete
                      rwxrwxrwx - umask
  -p, --parents     brez opozorila ?e imenik obstaja; po potrebi ustvari
                      ?e star?evske imenike
  -v, --verbose     z obvestilom o vsakem ustvarjenem imeniku
      --help        ta navodila
      --version     razli?ica programa
 Ustvarimo posebno datoteko navedenega TIPA z navedenim IMENOM.

  -m, --mode=ZA??ITA  nastavi za??ito (kot pri chmod) namesto a=rw - umask
      --help          ta navodila
      --version       razli?ica programa

GLAVNI in POMO?NI ?tevili nista dovoljeni za TIP p, za ostale pa sta obvezni.
TIP je lahko:

  b      ustvarimo blo?no enoto (z medpomnilnikom)
  c, u   ustvarimo znakovno enoto (brez medpomnilnika)
  p      ustvarimo FIFO
 Stanje na disku uskladimo s stanjem v diskovnem medpomnilniku.

  --help      ta navodila
  --version   razli?ica programa
 V prvih dveh oblikah prepi?emo IZVOR na CILJ ali ve? IZVOROV v IMENIK,
in obenem nastavimo za??ito, lastnika in skupino. V tretji obliki
ustvarimo nov(e) IMENIK(E) s podanimi lastnostmi.

      --backup[=TIP]  pred pisanjem prek obstoje?e ciljne datoteke 
                        izdelamo varnostno kopijo podanega TIPA
  -b                  enako kot --backup, vendar ne sprejema argumenta
  -c                  (ignorirano)
  -d, --directory     vse argumente obravnavamo kot imena imenikov; ustvarimo
                        vse komponente podanih imenikov
  -D                  ustvarimo vse vodilne komponente CILJA razen zadnje,
                        zatem prepi?emo IZVOR na CILJ (uporabno v prvi obliki)
  -g, --group=SKUPINA uporabni?ka skupina, namesto skupine trenutnega procesa
  -m, --mode=ZA??ITA  za??ita (kot v chmod), namesto privzete rwxr-xr-x
  -o, --owner=LASTNIK lastnik (samo nadzorni uporabnik)
  -p, --preserve-timestamps   ohranimo ?as dostopa/spremembe, kot jih ima IZVOR
  -s, --strip         ogulimo simbolne tabele (samo prva in druga oblika)
  -S, --suffix=PRIPONA   izrecno navedemo pripono varnostnih kopij
      --verbose       z izpisom imen vseh ustvarjenih imenikov
      --help          ta navodila
      --version       razli?ica programa

 Ukaz za nastavitev spremenljivke LS_COLORS.

Dolo?itev oblike izhoda:
  -b, --sh, --bourne-shell    oblika ukazne lupine Bourne za nastavitev LS_COLORS
  -c, --csh, --c-shell        oblika ukazne lupine C za nastavitev LS_COLORS
  -p, --print-database        izpis privzeth vrednosti
      --help                  ta navodila
      --version               razli?ica programa

?e je DATOTEKA podana, iz nje preberemo, katero barvo uporabimo za kateri tip
datotek oziroma pripon. Sicer se uporabi vgrajena tabela. Za podrobnosti o 
skladnji datoteke po?enite ,,dircolors --print-database``.
 Odstrani IMENIK ali IMENIKE, ?e so prazni.

      --ignore-fail-on-non-empty
                  nadaljujemo kljub napaki, ?e je do te pri?lo zgolj zato, ker
                    kak?en od navedenih imenikov ni prazen
  -p, --parents   pobri?emo tudi imenike nad navedenim, ?e so prazni.
                    Zgled: ,rmdir -p a/b/c` naredi isto kot ,rmdir a/b/c a/b a`
      --verbose   z diagnosti?nim sporo?ilom za vsak obdelan imenik
      --help      ta navodila
      --version   razli?ica programa
 Informacija o datote?nem sistemu, na katerem se nahaja DATOTEKA,
ali o vseh datote?nih sistemih.

  -a, --all             vklju?no s praznimi datote?nimi sistemi
      --block-size=VELIKOST  uporabljamo VELIKOST zlogov velike bloke
  -h, --human-readable  velikosti v ?loveku berljivem zapisu (npr. 1K 234M 2G)
  -H, --si              podobno kot -h, vendar z bazo 1000 namesto 1024
  -i, --inodes          izpis informacije o inode namesto o porabi blokov
  -k, --kilobytes       isto kot --block-size=1024
  -l, --local           omejimo seznam na lokalni datote?ni sistem
  -m, --megabytes       isto kot --block-size=1048576
      --no-sync         brez klica sync() pred izpisom porabe (privzeto)
  -P, --portability     izhodni format POSIX
      --sync            klic sync() pred izpisom porabe
  -t, --type=TIP        samo datote?ni sistemi tipa TIP
  -T, --print-type      izpis datote?nega sistem
  -x, --exclude-type=TIP     brez datote?nih sistemov tipa TIP
  -v                    (ignorirano)
      --help            ta navodila
      --version         razli?ica programa
 Povzetek porabe diska za datoteko DATOTEKA, rekurzivno po podimenikih.

  -a, --all             izpis za vse datoteke, ne le za imenike
      --block-size=VELIKOST  ?tejemo v VELIKOST zlogov velikih blokih
  -b, --bytes           velikost v zlogih (bajtih)
  -c, --total           skupni povzetek
  -D, --dereference-args  razre?imo poti, ?e so simbolne povezave
  -h, --human-readable  velikosti v ?loveku berljivem zapisu (npr. 1K 234M 2G)
  -H, --si              podobno kot -h, vendar v bazi 1000 namesto 1024
  -k, --kilobytes       isto kot --block-size=1024
  -l, --count-links     trde povezeva ?tejemo po ve?krat
  -L, --dereference     razre?imo vse simbolne povezave, ?tejemo ciljne datoteke
  -m, --megabytes       isto kot --block-size=1048576
  -S, --separate-dirs   brez velikosti podimenikov
  -s, --summarize       za vsak argument samo povzetek
  -x, --one-file-system  brez imenikov na drugih datote?nih sistemih
  -X DATOTEKA, --exclude-from=DATOTEKA  ne ?tejemo datotek, ki jih pokriva
                        vzorec, podan v DATOTEKI
      --exclude=VZOREC  ne ?tejemo datotek, ki jih pokriva VZOREC
      --max-depth=N     raz?lenjeni izpis samo za imenike (in tudi datoteke pri
                        izbiroi --all), ki so N ali manj ravni pod trenutnim
                        imenikom; --max-depth=0 je isto kot --summarize
      --help            ta navodila
      --version         razli?ica programa
 Varnostna kopija ima pripono ,~`, razen ?e ni s --suffix ali SIMPLE_BACKUP_SUFFIX
nastavljeno druga?e. Tip varnostnih kopij lahko nastavimo z izbiro --backup ali
spremenljivko VERSION_CONTROL. Mo?nosti so:

  none, off       nikoli ne delamo varnostne kopije, niti z izbiro --backup
  numbered, t     o?tevil?ene varnostne kopije
  existing, nil   o?tevil?ene varnostne kopije, ?e take ?e obstajajo,
                  sicer enostavne
  simple, never   vedno enostavne varnostne kopije
 To je prost program; pogoji, pod katerimi ga lahko razmno?ujete in
raz?irjate so navedeni v izvorni kodi. Za program ni NOBENEGA jamstva,
niti jamstev USTREZNOSTI ZA PRODAJO ali PRIMERNOSTI ZA UPORABO.
 Poskusite ,,%s --help`` za iz?rpnej?a navodila.
 U+%04X: koda znaka izven obsega Neznana sistemska napaka ?as zadnjega dostopa in modifikacije za DATOTEKO postavimo na trenutni ?as.

  -a                     spremeni samo ?as zadnjega dostopa
  -c, --no-create        brez ustvarjanja novih datotek
  -d, --date=NIZ         raz?leni NIZ in uporabi ta ?as namesto trenutnega
  -f                     (ignorirano)
  -m                     spremeni samo ?as zadnje spremembe
  -r, --reference=DATOTEKA  uporabi ?as podane DATOTEKE namesto trenutnega
  -t ?IG                 uporabi [[CC]YY]MMDDhhmm[.ss] namesto trenutnega ?asa
      --time=BESEDA      access -a, atime -a, mtime -m, modify -m, use -a
      --help             ta navodila
      --version          razli?ica programa

Tri oblike datuma/ure, ki jih uporabljata opciji -d in -t ter stara razli?ica
so si med seboj razli?ne.
 Uporaba: %s [IZBIRE]... DATOTEKA [...]
 Uporaba: %s [IZBIRA]
 Uporaba: %s [IZBIRA] IMENIK...
 Uporaba: %s [IZBIRA] IME...
 Uporaba: %s [IZBIRA]...
 Uporaba: %s [IZBIRA]... IMENIK...
 Uporaba: %s [IZBIRA]... DATOTEKA...
 Uporaba: %s [IZBIRA]... SKUPINA DATOTEKA...
  ali:   %s [IZBIRA]... --reference=ZGLED DATOTEKA...
 Uporaba: %s [IZBIRA]... ZA??ITA[,ZA??ITA]... DATOTEKA...
  ali:   %s [IZBIRA]... OKTALNA_KODA DATOTEKA...
  ali:   %s [IZBIRA]... --reference=ZGLED DATOTEKA...
 Uporaba: %s [IZBIRA]...  IME TIP [GLAVNO POMO?NO]
 Uporaba: %s [IZBIRA]... LASTNIK[:[SKUPINA]] DATOTEKA...
  ali:   %s [IZBIRA]... :SKUPINA DATOTEKA...
  ali:   %s [IZBIRA]... --reference=ZGLED DATOTEKA...
 Uporaba: %s [IZBIRA]... IZVOR CILJ
  ali:   %s [IZBIRA]... IZVOR... IMENIK
  ali:   %s [IZBIRA]... --target-directory=IMENIK IZVOR...
 Uporaba: %s [IZBIRA]... IZVOR CILJ        (prva oblika)
  ali:   %s [IZBIRA]... IZVOR... IMENIK   (druga oblika)
  ali:   %s -d [IZBIRA]... IMENIK...      (tretja oblika)
 Uporaba: %s [IZBIRA]... CILJ [POVEZAVA]
  ali:   %s [IZBIRA]... CILJ... IMENIK
  ali:   %s [IZBIRA]... --target-directory=IMENIK CILJ...
 Uporaba: %s [IZBIRA]... [DATOTEKA]...
 Uporaba: %s [IZBIRA]... [DATOTEKA]...
 Veljavni argumenti so: POZOR: Cirkularna struktura imenikov.
To skoraj gotovo pomeni resno napako v datote?nem sistemu.
OBVESTITE UPRAVITELJA SISTEMA.
Naslednja dva imenika imata isto ?tevilo inode:
 Opozorilo:  Avtor(ica): %s.
 ^[nN] ^[jJdD] , dvoumen argument %s za ,%s` vrsta varnostne kopije velikost bloka blo?ne enote niso podprte mo?nosti se izklju?ujeta - ali izpis vseh, ali povzetek v imenik %s se ne moremo vrniki prek ,..` iz imenika %s imenik ,..` ni dosegljiv imenik %s ni dosegljiv klic chdir do imenika %s ni mo?en znaka s kodo U+%04X ni mogo?e pretvoriti v lokalni nabor znakov ni mogo?e ustvariti FIFO ,%s` vejitev ni mogo?a imena skupine, ki pripada ?tevil?nemu UID, ni mogo?e ugotoviti hkratne trde in simbolne povezave niso mogo?e imenika ne moremo premakniti v ne-imenik: %s -> %s navesti je potrebno vsaj uporabnika ali skupino ni mogo?e izpisati U+%04X: funkcija iconv ni na voljo ni mogo?e izpisati U+%04X: funkcija iconv ni uporabna ni mo?no odstraniti imenikov ,.` ali ,..` ni mogo?e pognati ,strip` hkrati lahko navedemo samo en vir znakovne enote niso podprte naj nadaljujemo?  zamenjava skupine z %s na %s ni uspela
 poskus spremembe za??ite datoteke %s v %04lo (%s) neuspe?en
 datoteke FIFO niso podprte datoteka ni podana odmik izven obmo?ja ?lan skupine skupina datoteke %s ohranjen kot %s
 ignoriramo vse argumente ignoriram neveljavni tabulator v spremenljivki TABSIZE: %s ignoriram neveljavno ?irino v spremenljivki COLUMNS: %s neveljaven argument %s za ,%s` neveljavno ime skupine neveljavna ?irina vrstice: %s napa?na za??ita neveljaven tabulator: %s neveljavno ime uporabnika niti GLAVNO niti POMO?NO ?tevilo ne sme biti podani za FIFO zmanjkalo pomnilnika manjka ciljna datoteka datoteka ni podana datoteka ni podana za??ita datoteke %s spremenjena v %04lo (%s)
 za??ita datoteke %s ohranjena kot %04lo (%s)
 tako simbolna povezava %s kot sklicevana datoteka/imenik sta nespremenjena
 pri izpisu privzetih vrednosti (izbira --print-data-base, -p) ni dovoljeno
podati argumenta DATOTEKA spremenljivka SHELL ni nastavljena, niti ni podan tip ukazne lupine samo eno od {ascii,ebcdic,ibm}, {lcase,ucase}, {block,unblock}, {unblock,sync} ohranjeno lastni?tvo za %s ohranjena dovoljenja za %s ohranjeni ?asi za %s odstranjujemo %s
 bri?emo vse vnose v imeniku ,%s`
 bri?emo imenik, %s bri?emo sam imenik: ,%s`
 nastavljena dovoljenja za %s standardni vhod standardni izhod ,strip` ni uspel ta sistem ne podpira simbolnih povezav izpis privzetih vrednosti (izbira --print-data-base, -p) ni zdru?ljiv
z izbiro sintakse ukazne lupine opcija ,strip` ni dovoljena pri namestitvi imenika premalo argumentov preve? argumentov skupno odrezan zapis odrezani zapisi vrednosti v spremenljivki LS_COLORS ni mo? raztolma?iti neprepoznana predpona: %s opozorilo: --version-control (-V) je zastarela oblika izbire, ki bo v
eni od naslednjih izdaj odpravljena. Uporabljajte --backup=%s. opozorilo: povzetek se izklju?uje z --max-depth=%d opozorilo: povzetek je isto kot izbira --max-depth=0 pri ustvarjanju blo?nih enot mora biti podano GLAVNO in POMO?NO ?tevilo pri ustvarjanju znakovnih enot mora biti podano GLAVNO in POMO?NO ?tevilo pri ve?ih povezavah mora biti zadnji argument imenik pri premikanju ve?ih datotek mora biti zadnji argument imenik pri ohranitvi poti mora biti cilj imenik napaka pri pisanju napa?no ?tevilo argumentov 