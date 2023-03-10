??    ?      L  ?   |
      ?  ?   ?  (   ?  D  ?     	          ,     A     S     f  >   v     ?     ?     ?  ,   ?     %     :     Y     t  '   ?     ?     ?     ?     ?       ,   ,     Y  %   w  ,   ?  -   ?      ?  &        @     Y     t     ?     ?     ?     ?  B   ?  +   .  *   Z     ?  
   ?  f  ?  Z  ?  U  T  ?   ?$  y  ?%  ?  '  ?   ?(  4  B)  i  w.  !  ?0  K  3  r  O7  ?  ?<  ?   {>  &   ?     :?     Y?  `  n?     ?B     ?B      C     $C     @C  #   WC     {C  T   ?C  ?   ?C  .   vD  ?   ?D  ?   )E  ?   ?E  ?   _F     ?F      G     /G  ?   DG  	   H     H     H     %H     +H     -H     LH  
   XH  !   cH  *   ?H  +   ?H  '   ?H     I     "I  ,   @I     mI     ?I  +   ?I  (   ?I  2   ?I     J  2   9J  /   lJ     ?J     ?J  .   ?J  %   ?J  
   K  #   'K  *   KK     vK     ?K     ?K     ?K     ?K     ?K  =   ?K  :   =L     xL     ?L     ?L     ?L     ?L     ?L  B   ?L     ,M     =M     VM     lM  !   ?M  "   ?M  7   ?M  T    N  =   UN  S   ?N     ?N     O     !O     9O  %   FO     lO  "   ?O     ?O     ?O     ?O     ?O  /   ?O  f   P  <   ?P     ?P     ?P     ?P     ?P     ?P  3   Q     CQ  ~   [Q  2   ?Q  7   R  S   ER  W   ?R  =   ?R  =   /S  :   mS     ?S     ?S  -  ?S  ?   ?T  e   ?U  q  V     u\     ?\  !   ?\     ?\     ?\     ?\  ?   ?\      4]     U]     j]  G   ?]     ?]  %   ?]     ^     ,^  /   B^     r^     ?^     ?^     ?^     ?^  &   ?^     _  &   0_  &   W_  '   ~_      ?_  '   ?_     ?_     `     #`     A`     O`     \`     u`  K   ?`  +   ?`  1   a     8a     :a  )  Ca  u  md  _  ?f  ?   Cl  s  -m  ?  ?n  ?   Bp    ?p  ?  v    ?x    ?z  ?  ?~  ?  o?  ?   :?  ,   ن  (   ?     /?  Z  ??  #   ??     ??  #   ׊      ??     ?  &   8?  "   _?  [   ??  ?   ދ  1   ?  ?   ??  ?   B?  ?   ԍ  ?   ??  !   ?  $   7?     \?  ?   q?  	   !?     +?     ;?     A?     I?     K?     k?     }?     ??  6   ??  /   ސ  '   ?     6?     T?  7   s?     ??     đ  =   ӑ  .   ?  C   @?  *   ??  9   ??  7   ??     !?     A?  &   U?     |?  
   ??  .   ??  <   ԓ     ?     '?  %   :?     `?      l?     ??  >   ??  5   ??     ?     9?     G?     ]?     p?     ??  ;   ??     ڕ     ??     ??     ?  -   *?  .   X?  =   ??  X   Ŗ  C   ?  \   b?     ??     ӗ     ??     ?  "   ?     1?     F?     d?     }?     ??     ??  ,   ??  j   ՘  <   @?     }?     ??     ??     ??     ??  -   ę     ??  ?   ?  7   ??  >     E   ?  E   G?  @   ??  >   Λ  >   ?     L?     ^?             ,   ?   #           ?   ;       k   ?   D   ?   g   ?   F   ?   '          I               ?       i   h   ?   ?   /      V   O       Y   f   +   s   m   W           l   ?   T   H   d       ?                  ?   .   [      c       %   G   R         0   8   (   <   ?   &   }   x      A   X   t   ?   ?   q      )       ?   @              v   _   J   ?           U       ~   ?         !      ?   ?   Z   ?           C          7              E       9   "      e   K   =   w       ^   ?   $       1   ?      ?   j       ?   ?   n       *                 ?   ?   {   ?       ?   ?                 ?   ?   u       
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
numbers must be specified when making multiple links, last argument must be a directory when moving multiple files, last argument must be a directory when preserving paths, the destination must be a directory write error wrong number of arguments Project-Id-Version: fileutils 4.0t
POT-Creation-Date: 2001-04-29 13:38+0200
PO-Revision-Date: 2000-10-25 22:37+0200
Last-Translator: G?ran Uddeborg <g?ran@uddeborg.pp.se>
Language-Team: Swedish <sv@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
 
Som ett specialfall g?r cp en s?kerhetskopia av K?LLA n?r force- och
backup-flaggorna ?r givna, och K?LLA och DEST ?r samma namn p? en existerande
normal fil.
 
Rapportera fel till <bug-fileutils@gnu.org>.
Skicka anm?rkningar p? ?vers?ttningar till <sv@li.org>.   -S                         sortera efter filstorlek
      --sort=ORD             extension -X, none -U, size -S, time -t,
                               version -v
                             status -c, time -t, atime -u, access -u, use -u
      --time=ORD             visa tid som ORD ist?llet f?r modifieringstid:
                               atime, access, use, ctime eller status; anv?nd
                               angiven tid som sorteringsnyckel om --sort=time
  -t                         sortera efter modifieringstid
  -T, --tabsize=KOLUMN       antag tabulatorsteg varje KOLUMN, inte var 8:e
  -u                         med -lt: sortera efter och visa tid f?r ?tkomst av
                               filen
                             med -l: visa ?tkomsttid men sortera alfabetiskt
                             annars: sortera enligt ?tkomsttid
  -U                         sortera inte; lista poster i katalogordning
  -v                         sortera efter version
  -w, --width=KOLUMN         anta sk?rmbredd ist?llet f?r aktuellt v?rde
  -x                         lista poster radvis ist?llet f?r kolumnvis
  -X                         sortera alfabetiskt efter ?ndelser
  -1                         lista en fil per rad
      --help                 visa denna hj?lptext och avsluta
      --version              visa versionsinformation och avsluta

Normalt anv?nds inte f?rger f?r att s?rskilja filtyper.  Det ?r likv?rdigt
med att ange --color=none.  Att anv?nda flaggan --color utan n?got N?R ?r
detsamma som att ange --color=always.  Med --color=auto anv?nds f?rgkodning
endast om standard ut ?r en terminal (tty).
 (s?kerhetskopia: %s)  (?r kanske inte tom) %s -> %s (?terta s?kerhetskopia)
 %s+%s poster in
 %s+%s poster ut
 %s: filen finns %s: kan bara skapa relativa symboliska l?nkar i aktuell katalog %s: kan inte skriva ?ver katalog %s: kan inte ta bort %s: kan inte backa till b?rjan %s: kan inte skriva ?ver filidentiferare som bara ?r ?ppnad f?r till?gg %s: fel vid avhuggning %s: fel vid skrivning vid position %s %s: filen har negativ storlek %s: filen ?r f?r stor %s: h?rda l?nkar ?r inte till?tna f?r kataloger %s: otill?ten flagga -- %c
 %s: felaktig filstorlek %s: ogiltig filtyp %s: ogiltigt antal pass %s: ogiltig flagga -- %c
 %s: flaggan "%c%s" tar inget argument
 %s: flaggan "%s" ?r tvetydig
 %s: flaggan "%s" beh?ver ett argument
 %s: flaggan "--%s" tar inget argument
 %s: flaggan "-W %s" tar inget argument
 %s: flaggan "-W %s" ?r tvetydig
 %s: flaggan beh?ver ett argument -- %c
 %s: pass %lu/%lu (%s)... %s: pass %lu/%lu (%s)...%s %s: pass %lu/%lu (%s)...%s/%s %s: borttagen %s: tar bort %s: ok?nd flagga "%c%s"
 %s: ok?nd flagga "--%s"
 %s: varning: att g?ra en h?rd l?nk till en symbolisk l?nk ?r inte portabelt %s:%lu: felaktig rad; andra symbolen saknas %skan inte l?sa tabellen ?ver monterade filsystem " <intern> ?ndra grupptillh?righet p? varje FIL till GRUPP.

  -c, --changes           som "verbose" fast bara f?r ?ndrade filer
      --dereference       ?ndra det symboliska l?nkar pekar p?, och inte
                          sj?lva l?nken
  -h, --no-dereference    ?ndra symbolisk l?nk ist?llet f?r det den pekar p?
                          (endast p? system d?r det g?r att ?ndra ?gare p?
                          symboliska l?nkar)
  -f, --silent, --quiet   utel?mna de flesta felmeddelanden
      --reference=RFIL    anv?nd RFIL's grupp ist?llet f?r ett argument GRUPP
  -R, --recursive         ?ndra filer och kataloger rekursivt
  -v, --verbose           rapportera alla behandlade filer
      --help              visa denna hj?lptext och avsluta
      --version           visa versionsinformation och avsluta
 ?ndra r?ttigheterna f?r varje FIL till R?TTIGHET.

  -c, --changes           som "--verbose", men endast n?r en ?ndring g?rs
  -f, --silent, --quiet   utel?mna de flesta felmeddelanden
  -v, --verbose           rapportera alla behandlade filer
      --reference=RFIL    anv?nd RFILs r?ttigheter ist?llet f?r n?got argument
  -R, --recursive         ?ndra filer och kataloger rekursivt
      --help              visa denna hj?lptext och avsluta
      --version           visa versionsinformation och avsluta

Varje R?TTIGHET ?r en eller flera av bokst?verna ugoa, en av
symbolerna +-= och en eller flera av bokst?verna rwxXstugo.
 Skapa en l?nk till det angivna M?Let med namnet L?NKNAMN.  Om L?NKNAMN
utel?mnas skapas en l?nk med samma basnamn som M?L i aktuell katalog.  N?r man
anv?nder den andra formen med mer ?n ett M?L, skall det sista argumentet vara
en katalog; skapa l?nkar i KATALOG till varje M?L.  Skapa h?rda l?nkar om inget
annat anges, symboliska l?nkar med --symbolic.  N?r h?rda l?nkar skapas m?ste
varje M?L existera.

      --backup[=STYR]         s?kerhetskopiera varje existerande destination
  -b                          som --backup, fast tar inget argument
  -d, -F, --directory         g?r h?rda l?nkar f?r kataloger
                                (endast superanv?ndare)
  -f, --force                 ta bort existerande destinationsfiler
  -n, --no-dereference        behandla destination som ?r symbolisk l?nk till
                                en katalog som om det vore en vanlig fil
  -i, --interactive           fr?ga om destinationer skall tas bort
  -s, --symbolic              g?r symboliska l?nkar ist?llet f?r h?rda
  -S, --suffix=SUFFIX         ers?tt den vanliga s?kerhetskopie?ndelsen
      --target-directory=KATALOG  ange KATALOG som l?nkarna skall skapas i
  -v, --verbose               skriv namnet p? varje fil f?re l?nkning
      --help                  visa denna hj?lptext och avsluta
      --version               visa versionsinformation och avsluta

 Skapa namngivna r?r (FIFO) med de givna NAMNen.

  -m, --mode=R?TTIGHET s?tt r?ttigheter (enligt chmod), inte a=rw - umask
      --help        visa denna hj?lptext och avsluta
      --version     visa versionsinformation och avsluta
 Skapa KATALOG(er), om de inte redan finns.

  -m, --mode=R?TTIGHET s?tt r?ttigheter (enligt chmod), inte rwxrwxrwx - umask
  -p, --parents     inget fel om den finns, g?r f?r?ldrakataloger vid behov
  -v, --verbose     skriv meddelande f?r varje skapad katalog
      --help        visa denna hj?lptext och avsluta
      --version     visa versionsinformation och avsluta
 Skapa specialfilen NAMN av angiven TYP.

  -m, --mode=R?TTIGHET s?tt r?ttigheter (enligt chmod), inte a=rw - umask
      --help        visa denna hj?lptext och avsluta
      --version     visa versionsinformation och avsluta

?VRE UNDRE ?r inte till?tna f?r TYP p, obligatoriska annars.  TYP kan vara:

  b      skapa en (buffrad) blockspecialfil
  c, u   skapa en (obuffrad) teckenspecialfil
  p      skapa en FIFO
 Tvinga ut alla ?ndrade block till disk, uppdatera superblocket.

  --help      visa denna hj?lptext och avsluta
  --version   visa versionsinformation och avsluta
 De f?rsta tv? formaten kopierar K?LLA till DEST eller flera K?LLor till
en existerande KATALOG, samtidigt som r?ttigheter och ?gare/grupp s?tts.
Det tredje formatet skapar KATALOG(er) inklusive eventuella f?r?ldrakataloger.

      --backup[=STYR]  s?kerhetskopiera varje existerande destination
  -b                  som --backup, fast tar inget argument
  -c                  (ignoreras)
  -d, --directory     betrakta alla argument som kataloger; skapa dem
                        inklusive eventuella f?r?ldrakataloger
  -D                  skapa alla f?r?ldrakataloger till DEST; kopiera sedan
                        K?LLA till DEST; anv?ndbart i format 1
  -g, --group=GRUPP   s?tt grupptillh?righet, ist?llet f?r processens grupp
  -m, --mode=R?TTIGHET s?tt r?ttigheter (som f?r chmod), ist?llet f?r rwxr-xr-x
  -o, --owner=?GARE   s?tt ?gare (endast superanv?ndare)
  -p, --preserve-timestamps  s?tt K?LLors ?tkomst- och modifikationstid ?ven p?
                        destinationsfiler
  -s, --strip         ta bort symboltabeller, endast f?r format 1 och 2
  -S, --suffix=SUFFIX ers?tt den vanliga s?kerhetskopie?ndelsen
      --verbose       skriv namnet p? varje katalog som skapas
      --help          visa denna hj?lptext och avsluta
      --version       visa versionsinformation och avsluta

 Skriv ut kommandon f?r att s?tta milj?variabeln LS_COLORS.

Best?m utformat:
  -b, --sh, --bourne-shell    skriv kod f?r att s?tta LS_COLORS i Bourne-skal
  -c, --csh, --c-shell        skriv kod f?r att s?tta LS_COLORS i C-skal
  -p, --print-database        visa standardv?rden
      --help                  visa denna hj?lptext och avsluta
      --version               visa versionsinformation och avsluta

Om FIL anges, l?s den f?r att best?mma vilka f?rger som skall anv?ndas till
vilka filtyper och ?ndelser.  Annars anv?nds en f?rdefinierad databas.  F?r
detaljer om formatet p? dessa filer, k?r "dircolors --print-database".
detaljer om formatet p? dessa filer, k?r "dircolors --print-database".
 Ta bort KATALOG(er) om de ?r tomma.

      --ignore-fail-on-non-empty
                  ignorera alla fel som beror enbart p? att katalogen inte ?r
                    tom
  -p, --parents   ta bort KATALOG, f?rs?k sedan ta bort varje komponent i
                    s?kv?gen.  T.ex. "rmdir -p a/b/c" motsvarar
                    "rmdir a/b/c a/b a".
  -v, --verbose   skriv ett meddelande f?r varje behandlad katalog
      --help      visa denna hj?lptext och avsluta
      --version   visa versionsinformation och avsluta
 Visa information om filsystemet d?r varje FIL ligger, eller annars alla
filsystem.

  -a, --all             tag med filsystem som har 0 block
      --block-size=BYTE anv?nd BYTE byte stora block
  -h, --human-readable  skriv storlekar i l?sbart format (t.ex. 1K 234M 2G)
  -H, --si              d:o, men anv?nd multipler av 1000 ist?llet f?r 1024
  -i, --inodes          skriv inodinformation ist?llet f?r blockinformation
  -k, --kilobytes       som --block-size=1024
  -m, --megabytes       som --block-size=1048576
      --no-sync         anropa inte sync innan information h?mtas (normalfall)
  -P, --portability     anv?nd POSIX-format
      --sync            anropa sync innan information h?mtas
  -t, --type=TYP        begr?nsa listningen till filsystem av typen TYP
  -T, --print-type      skriv ut filsystemtyp
  -x, --exclude-type=TYP   utel?mna filsystem av typ TYP
  -v                    (ignorerad)
      --help            visa denna hj?lptext och avsluta
      --version         visa versionsinformation och avsluta
 Sammanfatta diskanv?ndningen f?r varje FIL, rekursivt f?r kataloger.

  -a, --all             skriv ut v?rden f?r alla filer, inte bara kataloger
      --block-size=BYTE anv?nd BYTE byte stora block
  -b, --bytes           skriv storlek i byte
  -c, --total           rapportera totalsumman
  -D, --dereference-args  f?lj S?KV?Gar n?r de ?r symboliska l?nkar
  -h, --human-readable  skriv storlekar i l?sbart format (t.ex. 1K 234M 2G)
  -H, --si              d:o, men anv?nd multipler av 1000 ist?llet f?r 1024
  -k, --kilobytes       som --block-size=1024
  -l, --count-links     r?kna storlek flera g?nger f?r h?rda l?nkar
  -L, --dereference     f?lj alla symboliska l?nkar
  -m, --megabytes       som --block-size=1048576
  -S, --separate-dirs   ta inte med storlek p? underkataloger
  -s, --summarize       visa bara summan f?r varje argument
  -x, --one-file-system hoppa ?ver kataloger p? andra filsystem
  -X FIL, --exclude-from=FIL  hoppa ?ver filer som matchar m?nster i FIL.
      --exclude=MSTR    hoppa ?ver filer som matchar MSTR.
      --max-depth=N     skriv summan f?r en katalog (eller fil, med --all)
                          endast om den ?r N eller f?rre niv?er nedanf?r
                          kommandoradsargumentet; --maxdepth=0 ?r detsamma som
                          --summarize
      --help            visa denna hj?lptext och avsluta
      --version         visa versionsinformation och avsluta
 ?ndelsen p? s?kerhetskopior ?r "~" om inte annat anges av --suffix eller
SIMPLE_BACKUP_SUFFIX.  Versionhanteringen kan styras med --backup-flaggan eller
med milj?variabeln VERSION_CONTROL.  Den kan ha f?ljande v?rden:

  none, off       g?r aldrig s?kerhetskopior (ens om --backup anges)
  numbered, t     g?r numrerade s?kerhetskopior
  existing, nil   numrerade om det redan finns numrerade, annars enkla
  simple, never   g?r alltid enkla s?kerhetskopior
 Detta ?r fri programvara; se k?llkoden f?r kopieringsvillkor.  Det finns
INGEN garanti; inte ens f?r S?LJBARHET eller L?MPLIGHET F?R N?GOT SPECIELLT
?NDAM?L.
 F?rs?k med "%s --help" f?r mer information.
 U+%04X: tecken utanf?r giltigt intervall Ok?nt systemfel Uppdatera ?tkomst- och modifikationstiderna p? varje FIL till aktuell tid.

  -a                     ?ndra bara ?tkomsttiden
  -c  --no-create        skapa inga filer
  -d, --date=STR?NG      tolka STR?NG och anv?nd det ist?llet f?r aktuell tid
  -f                     (ignorerad)
  -m                     ?ndra bara modifikationstiden
  -r, --reference=FIL    anv?nd FILs tider ist?llet f?r aktuell tid
  -t ST?MPEL             anv?nd [[??]??]MMDDhhmm[.ss] ist?llet f?r aktuell tid
      --time=ORD         s?tt tid som anges av ORD: access atime use (samma som
                           -a) modify mtime modify (samma som -m)
      --help             visa denna hj?lptext och avsluta
      --version          visa versionsinformation och avsluta

Observera att alla tre tidsformaten f?r -d- och -t-flaggorna och f?r det
?lderdomliga argumentet ?r olika.
 Anv?ndning: %s [FLAGGOR] FIL [...]
 Anv?ndning: %s [flagga]
 Anv?ndning: %s [FLAGGA] KATALOG...
 Anv?ndning: %s [FLAGGA] NAMN...
 Anv?ndning: %s [FLAGGA]...
 Anv?ndning: %s [FLAGGA]... KATALOG...
 Anv?ndning: %s [FLAGGA]... FIL...
 Anv?ndning: %s [FLAGGA]... GRUPP FIL...
    eller:  %s [FLAGGA]... --reference=RFIL FIL...
 Anv?ndning: %s [FLAGGA]... R?TTIGHET[,R?TTIGHET]... FIL...
    eller:  %s [FLAGGA]... OKTAL_R?TTIGHET FIL...
    eller:  %s [FLAGGA]... --reference=RFIL FIL...
 Anv?ndning: %s [FLAGGA]... NAMN TYP [?VRE L?GRE]
 Anv?ndning: %s [FLAGGA]... ?GARE[:[GRUPP]] FIL...
    eller:  %s [FLAGGA]... :[GRUPP] FIL...
    eller:  %s [FLAGGA]... --reference=RFIL FIL...
 Anv?ndning: %s [FLAGGA]... K?LLA DEST
    eller:  %s [FLAGGA]... K?LLA... KATALOG
    eller:  %s [FLAGGA]... --target-directory=KATALOG K?LLA...
 Anv?ndning: %s [FLAGGA]... K?LLA DEST          (format 1)
    eller:  %s [FLAGGA]... K?LLA... KATALOG    (format 2)
    eller:  %s -d [FLAGGA]... KATALOG...       (format 3)
 Anv?ndning: %s [FLAGGA]... M?L [L?NKNAMN]
    eller:  %s [FLAGGA]... M?L... KATALOG
    eller:  %s [FLAGGA]... --target-directory=KATALOG M?L...
 Anv?ndning: %s [FLAGGA]... [FIL]
 Anv?ndning: %s [FLAGGA]... [FIL]...
 Giltiga argument ?r: VARNING: Cirkul?r katalogstruktur.
Detta betyder n?stan s?kert att du har ett trasigt filsystem.
RAPPORTERA TILL SYSTEMANSVARIG.
F?ljande tv? kataloger har samma inodsnummer:
 Varning:  Skriven av %s.
 ^[nN] ^[yYjJ] " tvetydigt argument %s till "%s" s?kerhetskopietyp blockstorlek blockspecialfiler st?ds inte kan inte samtidigt bara visa summan och alla storlekar kan inte byta tillbaka till katalog %s via ".." kan inte byta till ".." fr?n katalog %s kan inte byta katalog till %s kan inte byta till katalog, %s kan inte konvertera U+%04X till lokal teckenupps?ttning kan inte skapa fifo "%s" kan inte grena kan inte ta fram logingrupp f?r en numerisk anv?ndaridentitet kan inte g?ra b?de h?rda och symboliska l?nkar kan inte flytta en katalog till n?got annat ?n en katalog: %s -> %s kan inte utel?mna b?de anv?ndare och grupp kan inte skriva U+%04X: iconv-funktionen inte tillg?nglig kan inte skriva U+%04X: iconv-funktionen inte anv?ndbar kan inte ta bort "." eller ".." kan inte k?ra strip kan inte ange tid fr?n mer ?n en k?lla teckenspecialfiler st?ds inte forts?tt?  misslyckades att ?ndra gruppen f?r %s till %s
 misslyckades att ?ndra r?ttigheterna hos %s till %04lo (%s)
 fifo-filer st?ds inte saknat filargument filposition utanf?r giltigt intervall gruppnummer %s tillh?r fortfarande grupp %s
 ignorerar alla argument ignorerar felaktigt tabulatorsteg i milj?variabeln TABSIZE: %s ignorerar felaktig bredd i milj?variabeln COLUMNS: %s ogiltigt argument %s till "%s" ogiltig grupp felaktig radl?ngd: %s felaktig r?ttighet felaktigt tabulatorsteg: %s ogiltig anv?ndare ?vre och undre enhetsnummer skall inte anges f?r fifo-filer minnet slut destinationsfil saknas utel?mnat filargument utel?mnade filargument r?ttigheterna hos %s ?ndrade till %04lo (%s)
 r?ttigheterna hos %s ?r of?r?ndrat %04lo (%s)
 varken symbolisk l?nk %s eller det den refererar har ?ndrats
 inget FILargument f?r ges tillsammans med flaggan f?r att visa dircolors
interna databas ingen SHELL-milj?variabel, och ingen flagga f?r skalvariant angiven endast en konvertering av {ascii,ebcdic,ibm}, {lcase,ucase}, {block,unblock}, {unblock,sync} bevarar ?gare av %s bevarar r?ttigheter p? %s bevarar tider p? %s tar bort %s
 tar bort alla poster i katalog %s
 tar bort katalog, %s tar bort katalogen sj?lv: %s
 s?tter r?ttigheter p? %s standard in standard ut strip misslyckades symboliska l?nkar st?ds inte p? detta system flaggorna f?r att visa dircolors interna databas och f?r att v?lja en
skalsyntax ?r ?msesidigt uteslutande flaggan "strip" kan inte anv?ndas n?r en katalog installeras f?r f? argument f?r m?nga argument totalt stympad post stympade poster obegripligt v?rde p? LS_COLORS-milj?variabeln ok?nt prefix: %s varning: --version-control (-V) ?r f?r?ldrat; st?d f?r det kommer att
tas bort i n?gon framtida version.  Anv?nd --backup=%s ist?llet. varning: att summera st?r i konflikt med --max-depth=%d varning: att summera ?r detsamma som att anv?nda --max-depth=0 n?r blockspecialfiler skapas, m?ste ?vre och undre enhetsnummer anges n?r teckenspecialfiler skapas, m?ste ?vre och undre enhetsnumer anges f?r att g?ra flera l?nkar m?ste sista argumentet vara en katalog n?r flera filer flyttas m?ste sista argumentet vara en katalog n?r s?kv?gen skall bevaras m?ste destinationen vara en katalog fel vid skrivning fel antal argument 