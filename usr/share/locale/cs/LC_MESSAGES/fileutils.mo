??    ?      L  ?   |
      ?  ?   ?  (   ?  D  ?     	          ,     A     S     f  >   v     ?     ?     ?  ,   ?     %     :     Y     t  '   ?     ?     ?     ?     ?       ,   ,     Y  %   w  ,   ?  -   ?      ?  &        @     Y     t     ?     ?     ?     ?  B   ?  +   .  *   Z     ?  
   ?  f  ?  Z  ?  U  T  ?   ?$  y  ?%  ?  '  ?   ?(  4  B)  i  w.  !  ?0  K  3  r  O7  ?  ?<  ?   {>  &   ?     :?     Y?  `  n?     ?B     ?B      C     $C     @C  #   WC     {C  T   ?C  ?   ?C  .   vD  ?   ?D  ?   )E  ?   ?E  ?   _F     ?F      G     /G  ?   DG  	   H     H     H     %H     +H     -H     LH  
   XH  !   cH  *   ?H  +   ?H  '   ?H     I     "I  ,   @I     mI     ?I  +   ?I  (   ?I  2   ?I     J  2   9J  /   lJ     ?J     ?J  .   ?J  %   ?J  
   K  #   'K  *   KK     vK     ?K     ?K     ?K     ?K     ?K  =   ?K  :   =L     xL     ?L     ?L     ?L     ?L     ?L  B   ?L     ,M     =M     VM     lM  !   ?M  "   ?M  7   ?M  T    N  =   UN  S   ?N     ?N     O     !O     9O  %   FO     lO  "   ?O     ?O     ?O     ?O     ?O  /   ?O  f   P  <   ?P     ?P     ?P     ?P     ?P     ?P  3   Q     CQ  ~   [Q  2   ?Q  7   R  S   ER  W   ?R  =   ?R  =   /S  :   mS     ?S     ?S  1  ?S  ?    U  ?   ?U  z  BV     ?]     ?]     ?]     ?]     ^     8^  F   L^     ?^     ?^      ?^  ?   ?^     _  !   8_     Z_     z_  '   ?_     ?_     ?_     ?_     `     /`  1   K`  #   }`  $   ?`  1   ?`  3   ?`  &   ,a  %   Sa     ya     ?a      ?a  
   ?a     ?a     ?a     b  L   ,b  )   yb  7   ?b     ?b  	   ?b  8  ?b  ?   f  ?  ?h  $  [o  ?  ?p  ?  @r  ?   +t    ?t    ?y  ?  ?{  B  ?}  ?  ?    ??  ?   ??  -   o?     ??     ??  b  ̌  $   /?     T?  "   l?      ??     ??  %   ː  $   ??  d   ?  ?   {?  6   ?  ?   T?  ?   ??  ?   ??  ?   ??  #   Ҕ  &   ??  "   ?  ?   @?  
    ?     ?     ?     ?     &?  %   (?  
   N?     Y?  ,   h?  T   ??  &   ??  ,   ?     >?     [?  5   x?     ??     ȗ  (   ߗ  /   ?  /   8?  +   h?  7   ??  8   ̘     ?      ?  +   >?  ,   j?     ??  .   ??  4   ә     ?  %   '?     M?     i?     w?     ??  M   ??  ?   ?      A?     b?     s?     ??     ??     ??  ;   Ǜ     ?     ?     +?     H?  '   `?  $   ??  B   ??  Y   ??  ;   J?  e   ??      ??     ?     '?  
   A?  #   L?     p?     ??     ??     ??     О      ??  *   ?  _   .?  4   ??     ß     ٟ     ??     ??     ?  5   ?     N?  ?   a?  2   ??  9   ?  ]   W?  ^   ??  =   ?  A   R?  9   ??     ΢     ߢ             ,   ?   #           ?   ;       k   ?   D   ?   g   ?   F   ?   '          I               ?       i   h   ?   ?   /      V   O       Y   f   +   s   m   W           l   ?   T   H   d       ?                  ?   .   [      c       %   G   R         0   8   (   <   ?   &   }   x      A   X   t   ?   ?   q      )       ?   @              v   _   J   ?           U       ~   ?         !      ?   ?   Z   ?           C          7              E       9   "      e   K   =   w       ^   ?   $       1   ?      ?   j       ?   ?   n       *                 ?   ?   {   ?       ?   ?                 ?   ?   u       
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
PO-Revision-Date: 2000-12-20 10:21+01:00
Last-Translator: Vladimir Michl <Vladimir.Michl@seznam.cz>
Language-Team: Czech <cs@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8-bit
 
  Speci?ln?m p??padem je, m?-li m? cp tvo?it z?lo?n? kopii ZDROJe, kdy? jsou
zad?ny p?ep?na?e --force a --backup, a ZDROJ a C?L jsou stejn?ho jm?na jednoho
oby?ejn?ho souboru.
 
  Chyby v programu oznamujte na adrese <bug-fileutils@gnu.org> (pouze
anglicky), p?ipom?nky k p?ekladu zas?lejte na adresu <cs@li.org> (?esky)   -S                         v?stup se?ad? podle d?lky soubor?
      --sort=SLOVO           v?stup se?ad? podle SLOVA:
                             extension (-X), none (-U), size (-S), time (-t)
                             version (-v)
                             status (-c), time (-t), atime (-u), access (-u),
                             use (-u)
      --time=SLOVO           vypisuje ?as podle SLOVA:
                             atime, access, use, ctime nebo status (-c);
                             jestli?e je zad?n p?ep?na? --sort=time, pou?ije
                             se tento ?as jako ?ad?c? kl??
  -t                         v?stup se?ad? podle ?asu posledn? zm?ny souboru
  -T, --tabsize=SLOUPC?      pozice tabel?toru ka?d?ch SLOUPC? znak? (impl. 8)
  -u                         s -lt: ?ad? podle atime a tak? jej vypisuje;
                             s -l: vypisuje atime, ale ?ad? podle n?zv? soubor?
                             jinak: ?ad? podle atime
  -U                         zak??e se?azen? v?stupu, n?zvy soubor? budou
                             vyps?ny v tom po?ad? v jak?m jsou v adres??i
  -v                         se?ad? v?stup podle verz? soubor?
  -w, --width=SLOUPC?        pou?ije tuto ???ku obrazovky p?i vypisov?n?
  -x                         jm?na soubor? vyp??e po ??dc?ch m?sto po sloupc?ch
  -X                         v?stup se?ad? podle p??pon soubor?
  -1                         vyp??e jeden soubor na jeden ??dek
      --help                 vyp??e tuto n?pov?du a skon??
      --version              vyp??e ozna?en? verze a skon??

  Implictn? nen? k rozli?ov?n? typ? soubor? barva pou??v?na. To je rovnocenn?
s pou?it?m p?ep?na?e --color=none. Pou?it? p?ep?na?e --color bez argumentu
KDY je rovnocenn? s pou?it?m p?ep?na?e --color=always. P?ep?na? --color=auto
zp?sob?, ?e barvy budou pou?ity pouze, je-li standardn? v?stup p?ipojen
k termin?lu (tty).
  (z?loha: %s)  (nemus? b?t pr?zdn?) %s -> %s (obnoven ze z?lohy)
 %s+%s vstoupiv??ch z?znam?
 %s+%s vystoupiv??ch z?znam?
 %s: Soubor existuje %s: relativn? symbolick? odkaz lze vytvo?it pouze v aktu?ln?m adres??i %s: adres?? nelze p?epsat %s: nelze smazat %s: chyba p?i p?esunu na za??tek %s: shred nelze pou??t na popisova? souboru pouze pro p?id?v?n? %s: chyba p?i zkracov?n? %s: chyba p?i z?pisu na pozici %s %s: soubor m? z?pornou velikost %s: soubor je p??li? dlouh? %s: pevn? odkaz na adres?? nen? dovolen %s: nezn?m? p?ep?na? -- %c
 %s: chybn? velikost souboru %s: nevhodn? typ souboru %s: chybn? ??slo po?tu pr?chod? %s: nezn?m? p?ep?na? -- %c
 %s: p?ep?na? `%c%s' mus? b?t zad?n bez argumentu
 %s: p?ep?na? `%s' nen? jednozna?n?
 %s: p?ep?na? `%s' vy?aduje argument
 %s: p?ep?na? `--%s' mus? b?t zad?n bez argumentu
 %s: p?ep?na? ` -W %s' mus? b?t zad?n bez argumentu
 %s: p?ep?na? `-W %s' nen? jednozna?n?
 %s: p?ep?na? vy?aduje argument -- %c
 %s: pr?chod %lu/%lu (%s)... %s: pr?chod %lu/%lu (%s)...%s %s: pr?chod %lu/%lu (%s)...%s/%s %s: smaz?n %s: prob?h? maz?n? %s: nezn?m? p?ep?na? `%c%s'
 %s: nezn?m? p?ep?na? `--%s'
 %s: varov?n?: vytvo?en? pevn?ho odkazu na symbolick? odkaz
nen? p?enositeln? %s:%lu: neplatn? ??dek; chyb? druh? token %stabulku p?ipojen?ch souborov?ch syst?m? nelze p?e??st ' <intern?> M?n? skupinu zadan?ch SOUBOR? na SKUPINU.

  -c, --changes           vyp??e soubory, jejich? skupina byla zm?n?na
      --dereference       p?sob? na soubor, na n?j? se odkazuje symbolick?
                          odkaz
  -h, --no-dereference    p?sob? na symbolick? odkaz m?sto na soubor,
                          na kter? odkaz odkazuje (funguje pouze na syst?mech,
                          kter? mohou m?nit vlastn?ky symbolick?ch odkaz?)
  -f, --silent, --quiet   potla?? v?t?inu chybov?ch zpr?v
      --reference=RSOUBOR m?sto hodnoty SKUPINA pou?ije skupinu souboru RSOUBOR
  -R, --recursive         vykon? se i v podadres???ch
  -v, --verbose           vyp??e informaci o ka?d?m zpracov?van?m souboru
      --help              vyp??e tuto n?pov?du a skon??
      --version           vyp??e ozna?en? verze a skon??
 Zm?na pr?v zadan?ch SOUBOR? na PR?VA.

  -c, --changes           vypisuje pouze soubory, jejich? pr?va byla zm?n?na
  -f, --silent, --quiet   potla?? v?t?inu chybov?ch zpr?v
  -v, --verbose           vypisuje informaci o ka?d?m zpracovan?m souboru
      --reference=RSOUBOR m?sto hodnoty PR?VA pou?ije pr?va souboru RSOUBOR
  -R, --recursive         pracuje i se soubory a adres??i v podadres???ch
      --help              vyp??e tuto n?pov?du a skon??
      --version           vyp??e ozna?en? verze a skon??

  Ka?d? PR?VA jsou slo?ena z jednoho nebo v?ce p?smen z 'ugoa' n?sledovan?ho
jedn?m ze symbol? '+-=' a jedn?m nebo v?ce p?smeny z 'rwxXstugo'.
   Tvo?? odkaz na zadan? C?L s voliteln?m N?ZVEM_ODKAZU. Jestli?e N?ZEV_ODKAZU
nen? zad?n, je vytvo?en odkaz v aktu?ln?m adres??i, se stejn?m n?zvem jako m?
C?L. P?i pou?it? druh? formy s v?ce ne? jedn?m C?Lem, posledn? argument mus?
b?t ADRES??em; v tomto p??pad?, jsou pak vytvo?eny odkazy v adres??i ADRES?? na
C?Le. Implicitn? jsou tvo?eny pevn? odkazy, symbolick? pomoc? p?ep?na?e
--symbolic. P?i tvorb? pevn?ho odkazu mus? v?echny C?Le existovat.

      --backup=[TYP]           vytvo?? z?lohu ka?d?ho souboru, kter? m? b?t
                               odkazem p?eps?n
  -b                           jako --backup, ale bez argumentu
  -d, -F, --directory          pevn? odkaz na adres?? (pouze superu?ivatel)
  -f, --force                  vytv??? odkaz i tehdy, existuje-li soubor t?ho?
                               n?zvu (soubor bude smaz?n)
  -n, --no-dereference         m?-li b?t p?eps?n symbolick? odkaz na adres??,
                               pak jej sma?e a vytvo?? po?adovan? odkaz. Pokud
                               by nebyl tento p?ep?na? zad?n, pak by byl odkaz
                               vytvo?en v adres??i, na kter? se odkaz odkazuje.
  -i, --interactive            pt? se, zda smazat ji? existuj?c? soubor
  -s, --symbolic               tvo?? symbolick? odkaz m?sto pevn?ho
  -S, --suffix=P??PONA         m?n? obvyklou p??ponu pro z?lo?n? soubory
      --target-directory=ADRES?? zad?n? ADRES??e, ve kter?m vytvo?it odkazy
  -v, --verbose                p?ed vytvo?en?m odkazu na soubor, vyp??e n?zev
                               tohoto souboru
      --help                   vyp??e tuto n?pov?du a skon??
      --version                vyp??e ozna?en? verze a skon??

 Tvo?? pojmenovan? roury (FIFO) se jm?ny JM?NO.

  -m, --mode=PR?VA  nastav? p??stupov? pr?va (zad?na jako p??kazu 'chmod'),
                    m?sto toho, aby byla nastavena na 0666 - umask
      --help        vyp??e tuto n?pov?du a skon??
      --version     vyp??e ozna?en? verze a skon??
 Vytvo?? ADRES??(e), jestli?e je?t? neexistuje(?).

  -m, --mode=PR?VA  nastav? p??stupov? pr?va (zad?ny jako p??kazu 'chmod'),
                    m?sto toho, aby byla pr?va nastavena na rwxrwxrwx - umask
  -p, --parents     vytvo?? neexistuj?c? rodi?ovsk? adres??e zadan?ho adres??e
  -v, --verbose     vyp??e zpr?vu pro ka?d? vytvo?en? adres??
      --help        vyp??e tuto n?pov?du a skon??
      --version     vyp??e ozna?en? verze a skon??
 Vytvo?? speci?ln? soubor JM?NO zadan?ho TYPu.

  -m, --mode=PR?VA  nastav? p??stupov? pr?va (zad?na jako p??kazu 'chmod'),
                    m?sto toho, aby byla nastavena na 0666 - umask
      --help        vyp??e tuto n?pov?du a skon??
      --version     vyp??e ozna?en? verze a skon??

HLAVN? a VEDLEJ?? ??slo nen? dovoleno u TYPu p, jinak povinn?. TYP m??e b?t:

  b      blokov? (bufferovan?) speci?ln? soubor
  c, u   znakov? (nebufferovan?) speci?ln? soubor
  p      roura (FIFO)
 Ulo?? zm?n?n? bloky na disk a aktualizuje super blok.

  --help      vyp??e tuto n?pov?du a skon??
  --version   vyp??e ozna?en? verze a skon??
   V prvn?ch dvou form?tech kop?rov?n? ZDROJe do C?Le nebo v?ce ZDROJ?
do ADRES??e, s nastaven?m u?ivatelsk?ch pr?v a u?ivatele/skupiny. Ve t?et?m
form?tu, vytvo?en? v?ech komponent zadan?ho ADRES??E(?).

      --backup=[TYP]    vytvo?? z?lo?n? kopii p?ed smaz?n?m
  -b                    jako --backup, ale bez argumentu
  -c                    (ignorov?n)
  -d, --directory       v?echny argumenty jsou br?ny jako n?zvy adres???.
                        V?echny neexistuj?c? komponenty t?chto adres???
                        jsou vytvo?eny.
  -D                    vytvo?? v?echy ?vodn? komponenty C?Le, krom? posledn?
  -g, --group=SKUPINA   nastav? skupinu souboru na SKUPINU
  -m, --mode=PR?VA      nastav? p??stupov? pr?va souboru na PR?VA (zad?na jako
                        pro chmod)
  -o, --owner=VLASTN?K  nastav? vlastn?ka souboru (pouze superu?ivatel - root)
  -p, --preserve-timestamps ?asy c?lov?ho souboru nastav? tak, jak byly
                        nastaveny u zdrojov?ho
  -s, --strip           odstran? tabulky symbol?, pouze 1 a 2 form?t
  -S, --suffix=P??PONA  nastav? novou p??ponu z?lo?n?ch soubor?
  -v, --verbose         vypisuje jm?na v?ech vytv??en?ch adres???
      --help            vyp??e tuto n?pov?du a skon??
      --version         vyp??e ozna?en? verze a skon??

 V?stupem jsou p??kazy, kter? zajist? nastaven? prom?nn? prost?ed? LS_COLOR.

Specifikace v?stupn?ho form?tu:
  -b, --sh, --bourne-shell    v?stupem je Bourne shellov? k?d
                              pro nastaven? LS_COLORS
  -c, --csh, --c-shell        v?stupem je C shellov? k?d
                              pro nastaven? LS_COLORS
  -p, --print-database        v?stupem je vnit?n? datab?ze
      --help                  vyp??e tuto n?pov?du a skon??
      --version               vyp??e ozna?en? verze a skon??
 Smaz?n? ADRES??e(?), pouze jsou-li pr?zdn?.

      --ignore-fail-on-non-empty
                  ignoruje v?echny chyby zp?soben? nepr?zdnost? adres??e
  -p, --parents   ma?e ADRES?? a v?echny rodi?ovsk? adres??e, ze zadan?
                  cesty. Nap?: `rmdir -p a/b/c' je podobn? 
                  `rmdir a/b/c a/b a'
  -v, --verbose   vypisuje ozn?men? o ka?d?m zpravov?van?m adres??i
      --help      vyp??e tuto n?pov?du a skon??
      --version   vyp??e ozna?en? verze a skon??
   Vyp??e informace o souborov?ch syst?mech, ve kter?ch ka?d? SOUBOR le??,
nebo implicitn? v?ech souborov?ch syst?mech.

  -a, --all             tak? souborov? syst?my maj?c? 0 blok?
      --block-size=VELIKOST pou?ije tuto velikost bloku
  -h, --human-readable  velikosti ve form?tu ?iteln?m pro ?lov?ka
                        (nap?. 1K 234M 2G)
  -H, --si              podobn? jako p?edchoz?, ale n?sobky 1000 ne 1024
  -i, --inodes          v?pis informac? o i-uzlech m?sto o bloc?ch
  -k, --kilobytes       jako --block-size=1024. Implicitn? 512 bajt?,
                        kter? odpov?daj? norm? POSIX
  -l, --local           omezen? v?pisu na lok?ln? souborov? syst?m
  -m, --megabytes       jako --block-size=1048576. Implicitn? 512 bajt?,
                        kter? odpov?daj? norm? POSIX
      --no-sync         nevol? 'sync' p?ed z?sk?n?m informac? (implicitn?)
  -P, --portability     pou?ije form?t definovan? normou POSIX
      --sync            zavol? 'sync' p?ed z?sk?n?m informac?
  -t, --type=TYP        ve v?stupu pouze souborov? syst?my typu TYP
  -T, --print-type      vypisuje typ souborov?ho syst?mu
  -x, --exclude-type=TYP   ve v?stupu nebudou souborov? syst?my typu TYP
  -v                    (ignorov?n)
      --help            vyp??e tuto n?pov?du a skon??
      --version         vyp??e ozna?en? verze a skon??
   S??t? diskov? prostor zabran? ka?d?m SOUBORem, pro adres??e i s obsahem
podadres???.

  -a, --all             vyp??e sou?et velikosti v?ech soubor?,
                        ne pouze adres???
      --block-size=VELIKOST  pou?ije tuto velikost bloku
  -b, --bytes           velikosti vyp??e v bajtech
  -c, --total           vyp??e i celkov? sou?et
  -D, --dereference-args  n?sleduje symbolick? odkaz, kdy? jako argument zad?n
  -h, --human-readable  vypisuje velikosti ve form?tu ?iteln?m pro lidi
                        (nap?. 1K 234M 2G)
  -H, --si              jako p?edchoz?, ale jednotky jsou n?sobkem 1000
  -k, --kilobytes       jako --block-size=1024
  -l, --count-links     jestli?e jsou soubory pevn?mi odkazy na jeden soubor,
                        s??t? velikosti, jako by to byly oby?ejn? soubory
  -L, --dereference     n?sleduje v?echny symbolick? odkazy
  -m, --megabytes       jako --block-size=1048576
  -S, --separate-dirs   nepo??t? do velikosti adres??? velikosti jejich
                        podadres???
  -s, --summarize       vyp??e pouze celkov? sou?et pro ka?d? argument
  -x, --one-file-system p?esko?? adres??e na jin?ch souborov?ch syst?mech
  -X SOUBOR, --exclude-from=SOUBOR p?esko?? soubory, kter? vyhovuj? libovoln?mu
                        reg.v?r. ze souboru SOUBOR
      --exclude=REGV?R  p?esko?? soubory vyhovuj?c? REGV?R
      --max-depth=N     vypisuje n?zvy adres??? a celkov? sou?ty pouze
                        do N-t? ?rovn? adres???. Argument --max-depth=0
                        je rovnocenn? se --sumarize.
      --help            vyp??e tuto n?pov?du a skon??
      --version         vyp??e ozna?en? verze a skon??
   Pokud nen? p??pona z?lo?n?ch soubor? nastavena p?ep?na?em --suffix nebo 
prom?nnou SIMPLE_BACKUP_SUFFIX, je pou??v?na p??pona `~'. Zp?sob vytv??en?
z?lo?n?ch soubor? lze ovlivnit nastaven?m prom?nn? VERSION_CONTROL, hodnoty
mohou b?t:

  none, off       z?lo?n? kopie nevytv??et (i kdy? je zad?n p?ep?na? --backup)
  numbered, t     ??slovan? z?lo?n? kopie
  existing, nil   ??slovan?, jestli?e ji? ??slovan? z?lo?n? kopie existuje,
                  jinak jednoduch?
  simple, never   jednoduch? z?lo?n? kopie
   Toto je voln? programov? vybaven?; podm?nky pro kop?rov?n? a roz?i?ov?n?
naleznete ve zdrojov?ch textech. Toto programov? vybaven? je zcela BEZ Z?RUKY,
a to i bez z?ruky PRODEJNOSTI nebo VHODNOSTI PRO N?JAK? KONKR?TN? ??EL.
 V?ce informac? z?sk?te p??kazem `%s --help'.
 U+%04X: znak mimo rozsah Nezn?m? chyba syst?mu   Nastav? ?as posledn?ho p??stupu a posledn? zm?ny ka?d?ho zadan?ho SOUBORU
na aktu?ln? ?as.

  -a                     zm?n? pouze ?as posledn?ho p??stupu
  -c, --no-create        nevytvo?? nov? soubory
  -d, --date=?ET?ZEC     analyzuje ?ET?ZEC a pou?ije ho m?sto aktu?ln?ho ?asu
  -f                     (ignorov?n)
  -m                     zm?n? pouze ?as posledn? zm?ny souboru
  -r, --reference=SOUBOR pou?ije ?asy SOUBORu m?sto aktu?ln?ho ?asu
  -t ?AS                 pou?ije [[CC]YY]MMDDhhmm[.ss] m?sto aktu?ln?ho ?asu
      --time=SLOVO       nastav? ?AS zadan? SLOVEM: 
                         access, atime, use (jako -a)
                         modify, mtime (jako -m)
      --help             vyp??e tuto n?pov?du a skon??
      --version          vyp??e ozna?en? verze a skon??

Form?ty ?as? pro p?ep?na?e -d, -t a pro zastaralou syntaxi jsou r?zn?.
 Pou?it?: %s [P?EP?NA?] SOUBOR [...]
 Pou?it?: %s [P?EP?NA?]
 Pou?it?: %s [P?EP?NA?] ADRES??...
 Pou?it?: %s [P?EP?NA?] JM?NO...
 Pou?it?: %s [P?EP?NA?]...
 Pou?it?: %s [P?EP?NA?]... ADRES??...
 Pou?it?: %s [P?EP?NA?]... SOUBOR...
 Pou?it?: %s [P?EP?NA?]... SKUPINA SOUBOR...
  nebo   %s [P?EP?NA?]... --reference=RSOUBOR SOUBOR...
 Pou?it?: %s [P?EP?NA?]... PR?VA[,PR?VA]... SOUBOR...
  nebo   %s [P?EP?NA?]... PR?VA_OSMI?KOV? SOUBOR...
  nebo   %s [P?EP?NA?]... --reference=RSOUBOR SOUBOR...
 Pou?it?: %s [P?EP?NA?]... JM?NO TYP [HLAVN? VEDLEJ??]
 Pou?it?: %s [P?EP?NA?]... VLASTN?K[:[SKUPINA]]... SOUBOR...
  nebo   %s [P?EP?NA?]... :SKUPINA SOUBOR...
  nebo   %s [P?EP?NA?]... --reference=RSOUBOR SOUBOR...
 Pou?it?: %s [P?EP?NA?]... ZDROJ C?L
 nebo:   %s [P?EP?NA?]... ZDROJ... ADRES??
 nebo:   %s [P?EP?NA?]... --target-directory=ADRES??... ZDROJ...
 Pou?it?: %s [P?EP?NA?]... ZDROJ C?L            (1-n? form?t)
 nebo:   %s [P?EP?NA?]... ZDROJ... ADRES??     (2-h? form?t)
 nebo:   %s -d [P?EP?NA?]... ADRES??...        (3-t? form?t)
 Pou?it?: %s [P?EP?NA?]... C?L [N?ZEV_ODKAZU]
 nebo:   %s [P?EP?NA?]... C?L... ADRES??
 nebo:   %s [P?EP?NA?]... --target-directory=ADRES?? C?L...
 Pou?it?: %s [P?EP?NA?]... [SOUBOR]
 Pou?it?: %s [P?EP?NA?]... [SOUBOR]...
 Platn? argumenty (p?ep?na?e) jsou: VAROV?N?: Zacyklen? struktura adres???.
To t?m?? jist? znamen?, ?e m?te poru?en souborov? syst?m.
INFORMUJTE VA?EHO ADMINISTR?TORA SYST?MU.
N?sleduj?c? dva adres??e maj? stejn? ??slo i-uzlu:
 Varov?n?:  Auto?i: %s.
 ^[nN] ^[yYaA] ` argument %s nen? pro `%s' jednozna?n? typ z?lohy velikost bloku speci?ln? blokov? soubory nejsou podporov?ny nen? mo?n? oboje, po??tat celkov? sou?ty pro ka?d? argument a uk?zat
v?echny polo?ky do adres??e `%s' nelze p?es `..' doj?t z adres??e `%s' nelze vej?t do adres??e `..' do adres??e `%s' nelze vej?t do adres??e `%s' nelze vej?t znak U+%04X nelze konvertovat do lok?ln? znakov? sady rouru `%s' nelze vytvo?it nelze vytvo?it potomka k UID nelze zjistit p?ihla?ovac? skupinu symbolick? a pevn? odkaz nelze vytvo?it z?rove? adres?? nelze p?em?stit do neadres??e: %s -> %s nem??ete vynechat jak u?ivatele tak skupinu znak U+%04X nelze vypsat: funkce iconv nen? k dispozici znak U+%04X nelze vypsat: funkce iconv nen? pou??vateln? `.' nebo `..' nelze smazat program 'strip' nelze spustit ?as nelze zad?vat z v?ce ne? jednoho zdroje speci?ln? znakov? soubory nejsou podporov?ny pokra?ovat?  skupinu souboru %s se nepoda?ilo zm?nit na %s
 pr?va souboru %s se nepoda?ila zm?nit na %04lo (%s)
 tento syst?m nepodporuje roury argument ud?vaj?c? soubor nebyl zad?n posun v souboru mimo rozsah ??slo skupiny skupina souboru %s z?stala %s
 v?echny argumenty ignorov?ny ?patn? velikost tabel?rotu (%s) v prom?nn? prost?ed? TABSIZE, bude ignorov?na ?patn? ???ka (%s) v prom?nn? prost?ed? COLUMNS, bude ignorov?na argument %s nen? pro `%s' platn? neplatn? skupina ?patn? ???ka ??dku: %s neplatn? pr?va ?patn? velikost tabulky: %s neplatn? u?ivatel pro roury nesm? b?t hlavn? a vedlej?? ??slo za??zen? zad?no pam?? vy?erp?na chyb?j?c? c?lov? soubor postr?d?n souborov? argument chyb?j?c? n?zvy soubor? pr?va souboru %s zm?n?na na %04lo (%s)
 pr?va souboru %s z?stala %04lo (%s)
 symbolick? odkaz %s ani soubor na n?j? se odkazuje nebyly zm?n?ny
 s p?ep?na?em pro v?pis vnit?n? datab?ze 'dircolors' nem??e
b?t pou?it argument pro soubor prom?nn? prost?ed? SHELL neexistuje a nen? zad?b typ shellu m??e b?t pou?it v?dy pouze jeden z {ascii,ebcdic,ibm}, {lcase,ucase},
{block,unblock}, {unblock,sync} zachov?n? vlastnictv? souboru %s zachov?n? pr?v souboru %s zachov?n? ?as? souboru %s maz?n? %s
 maz?n? v?ech polo?ek adres??e `%s'
 maz?n? adres??e `%s' maz?n? vlastn?ho adres??e `%s'
 nastaven? pr?v souboru %s standardn? vstup standardn? v?stup program `strip' skon?il s chybou tento syst?m nepodporuje symbolick? odkazy p?ep?na?e pro v?pis vnit?n? datab?ze 'dircolors' a v?b?r
syntaxe pro shell se vz?jemn? vylu?uj? p?i instalaci adres??e nelze p?ep?na? 'strip' pou??t p??li? m?lo argument? p??li? mnoho argument? celkem zkr?cen? z?znam zkr?cen? z?znamy nesrozumiteln? hodnota v prom?nn? prost?ed? LS_COLORS nezn?m? prefix: %s varov?n?: --version-control (-V) je zastaral?; podpora p?ep?na?e bude
v n?kter? z dal??ch verz? odstran?na. Rad?ji pou?ijte --backup=%s. varov?n?: sumarizace je v rozporu s --max-depth=%d varov?n?: sumarizace je stejn? jako pou?it? --max-depth=0 p?i vytv??en? speci?ln?ho blokov?ho souboru, mus? b?t hlavn?
a vedlej?? ??slo za??zen? zad?no p?i vytv??en? speci?ln?ho znakov?ho za??zen?, mus? b?t zad?no hlavn?
a vedlej?? ??slo za??zen? p?i vytv??en? v?ce odkaz?, mus? b?t posledn? argument adres?? p?i p?em?s?ov?n? v?ce soubor?, mus? b?t posledn? argument adres?? jestli?e maj? b?t zachov?ny cesty, c?lem mus? b?t adres?? chyba p?i z?pisu ?patn? po?et argument? 