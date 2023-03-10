??    ?      L  ?   |
      ?  ?   ?  (   ?  D  ?     	          ,     A     S     f  >   v     ?     ?     ?  ,   ?     %     :     Y     t  '   ?     ?     ?     ?     ?       ,   ,     Y  %   w  ,   ?  -   ?      ?  &        @     Y     t     ?     ?     ?     ?  B   ?  +   .  *   Z     ?  
   ?  f  ?  Z  ?  U  T  ?   ?$  y  ?%  ?  '  ?   ?(  4  B)  i  w.  !  ?0  K  3  r  O7  ?  ?<  ?   {>  &   ?     :?     Y?  `  n?     ?B     ?B      C     $C     @C  #   WC     {C  T   ?C  ?   ?C  .   vD  ?   ?D  ?   )E  ?   ?E  ?   _F     ?F      G     /G  ?   DG  	   H     H     H     %H     +H     -H     LH  
   XH  !   cH  *   ?H  +   ?H  '   ?H     I     "I  ,   @I     mI     ?I  +   ?I  (   ?I  2   ?I     J  2   9J  /   lJ     ?J     ?J  .   ?J  %   ?J  
   K  #   'K  *   KK     vK     ?K     ?K     ?K     ?K     ?K  =   ?K  :   =L     xL     ?L     ?L     ?L     ?L     ?L  B   ?L     ,M     =M     VM     lM  !   ?M  "   ?M  7   ?M  T    N  =   UN  S   ?N     ?N     O     !O     9O  %   FO     lO  "   ?O     ?O     ?O     ?O     ?O  /   ?O  f   P  <   ?P     ?P     ?P     ?P     ?P     ?P  3   Q     CQ  ~   [Q  2   ?Q  7   R  S   ER  W   ?R  =   ?R  =   /S  :   mS     ?S     ?S  [  ?S  ?   *U  .   ?U  ?  V     ?\     ?\     ?\     ?\     ]     (]  >   A]  +   ?]     ?]  "   ?]  J   ?]     8^  &   K^      r^     ?^  3   ?^     ?^     ?^      _      9_     Z_  *   t_     ?_  #   ?_  *   ?_  +   `     4`  $   Q`     v`     ?`     ?`     ?`     ?`     ?`     a  M   $a  .   ra  B   ?a     ?a  	   ?a  ?  ?a  ?  ?e    'h  ?   9m  ?  n  ?  ?o  ?   ?q  l  ?r  ,  ?w  ?   {  ?  `}    4?  ?  7?  ?   ??  )   ??     ??     ߋ  ?  ??  !   <?     ^?     o?     ??     ??      ??     ۏ  b   ??  ?   ]?  +   ??  ?   ?  ?   ??  ?    ?  ?   ̒      T?      u?     ??  ?   ??     ??     ??     ??     ??     ??     ??     Δ     ݔ  /   ??  A   ?  3   `?  0   ??  *   ŕ  *   ??  F   ?  "   b?     ??  :   ??  I   ޖ  A   (?  4   j?  >   ??  <   ޗ  "   ?     >?  ?   ]?  2   ??     И  /   ܘ  -   ?     :?  $   Y?  %   ~?     ??     ??     Ι  E   ??  >   2?     q?     ??     ??     ??     ̚     ??  [   ??     U?      f?     ??     ??  "   ??  #   ؛  .   ??  l   +?  a   ??  [   ??     V?     u?     ??     ??  ,   ??     ??  "   ?     %?     B?     Y?     o?  1   |?  ?   ??  9   :?     t?     ??     ??     ??     ??  @   ğ     ?  g   ?  /   ??  4   ??  a   ??  q   M?  O   ??  D   ?  G   T?     ??     ??             ,   ?   #           ?   ;       k   ?   D   ?   g   ?   F   ?   '          I               ?       i   h   ?   ?   /      V   O       Y   f   +   s   m   W           l   ?   T   H   d       ?                  ?   .   [      c       %   G   R         0   8   (   <   ?   &   }   x      A   X   t   ?   ?   q      )       ?   @              v   _   J   ?           U       ~   ?         !      ?   ?   Z   ?           C          7              E       9   "      e   K   =   w       ^   ?   $       1   ?      ?   j       ?   ?   n       *                 ?   ?   {   ?       ?   ?                 ?   ?   u       
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
PO-Revision-Date: 2000-10-27 15:56+02:00
Last-Translator: Rodrigo Stulzer Lopes <rodrigo@conectiva.com.br>
Language-Team: Brazilian Portuguese <ldp-br@bazar.conectiva.com.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Como caso especial, cp faz um backup de FONTE quando as op??es "force" e
"backup" s?o dadas e FONTE e DESTINO s?o iguais ao nome de um arquivo 
regular j? existente.
 
Avisar bug-fileutils@gnu.org em caso de bugs.   -S                         ordenar pelo tamanho do arquivo
      --sort=PALAVRA         ctime -c, extension -X, none -U, size -S,
                             status -c, time -t, atime -u, access -u, use
                             -u (veja a op??o de um caractere correspondente
                             a cada uma das palavras)
      --time=PALAVRA         mostra hora como PALAVRA em vez da hora de
                             altera??o: atime, access, use, ctime or status
  -t                         ordenar por tempo da ?ltima altera??o;
                             com -l: mostrar mtime
  -T, --tabsize=COLUNA       assumir que h? tabs de COLUNA em COLUNA 
                             colunas em vez de 8 em 8
  -u                         ordenar por tempo do ?ltimo acesso;
                             com -l: mostrar atime
  -U                         n?o ordenar; mostrar entradas na ordem do
                             diret?rio
  -v                         ordena por vers?o
  -w, --width=COLUNAS        assumir que a tela tem largura COLUNAS
  -x                         mostrar entradas por linhas em vez de colunas
  -X                         ordenar alfabeticamente pela extens?o da
                             entrada
  -1                         mostrar um arquivo por linha
      --help                 mostrar esta ajuda e sair
      --version              mostrar informa??o sobre vers?o e sair

Por padr?o n?o ? usada cor para distinguir entre os tipos de arquivos.
Isto ? equivalente a usar --color=none. Usar a op??o --color sem o argumento
opcional QUANDO ? equivalente a usar --color=always. Com --color=autousam-se
c?digos de cores s? se a sa?da padr?o for um terminal (tty)
 (backup: %s)  (pode n?o estar vazio) %s -> %s (unbackup)
 %s+%s registros de entrada
 %s+%s registros de sa?da
 %s: Arquivo j? existente %s: s? ? poss?vel fazer links simb?licos no diret?rio corrente %s: n?o ? poss?vel sobrescrever o diret?rio n?o foi poss?vel remover `%s' %s: n?o ? poss?vel voltar (rewind) %s: n?o foi poss?vel fragmentar (shred) descritor de arquivo (append-only) %s: erro truncando %s: erro escrevendo no deslocamento %s %s: arquivo tem tamanho negativo %s: arquivo muito grande %s: n?o ? permitido fazer links fixos de diret?rios %s: op??o ilegal -- %c
 %s: tamanho de arquivo inv?lido %s: tipo de arquivo desconhecido %s: n?mero de passagens inv?lido %s: op??o inv?lida -- %c
 %s: op??o `%c%s' n?o permite um par?metro
 %s: op??o `%s' ? ambig?a
 %s: op??o `%s' requer um par?metro
 %s: op??o `--%s' n?o permite um par?metro
 %s: op??o `-W %s' n?o permite um par?metro
 %s: op??o `-W %s' ? ambig?a
 %s: op??o requer um par?metro -- %c
 %s: passou %lu/%lu (%s)... %s: pass %lu/%lu (%s)...%s %s: passou %lu/%lu (%s)...%s/%s %s: removido removendo %s %s: op??o desconhecida `%c%s'
 %s: op??o desconhecida `--%s'
 %s: aviso: fazer uma liga??o (hard) para uma liga??o simb?lica n?o ? port?vel %s:%lu: linha inv?lida; faltando segundo token %s n?o foi poss?vel ler a tabela dos sistemas de arquivos montados ' <interno> Muda as permiss?es de grupo de cada ARQUIVO para GRUPO.

  -c, --changes         como o modo "verbose" mas s? avisa quando uma 
                        altera??o for feita
      --dereference     afeta a refer?ncia de cada liga??o simb?lica, ao inv?s
                        da pr?pria liga??o simb?lica
  -h, --no-dereference  afetar liga??es simb?licas (symlinks) em vez dos
                        arquivos referenciados (dispon?vel somente em sistemas
                        que podem trocar as permiss?es de liga??es simb?licas)
  -f, --silent, --quiet desligar a maior parte das mensagens de erro
      --reference=RARQ  usa grupo de RARQ inv?s do valor especificado em GRUPO
  -R, --recursive       mudar arquivos e diret?rios recursivamente
  -v, --verbose         mostrar um diagn?stico para cada arquivo processado
      --help            mostrar esta ajuda e sair
      --version         mostrar informa??o sobre vers?o e sair
 Troca o modo de cada ARQUIVO para MODO.

  -c, --changes         como o modo "verbose" mas s? avisa quando uma 
                        altera??o for feita
  -f, --silent, --quiet desligar a maior parte das mensagens de erro
  -v, --verbose         mostrar um diagn?stico para cada arquivo processado
    --reference=ARQUIVO usa o modo do ARQUIVO em vez dos valores de MODO
  -R, --recursive       mudar arquivos e diret?rios recursivamente
      --help            mostrar esta ajuda e sai
      --version         mostrar informa??o sobre vers?o e sai

Cada MODO ? uma ou mais das letras ugoa, um dos s?mbolos +-= e uma ou
mais das letras rwxXstugo.
 Cria um link para o DESTINO espec?fico com NOME_DE_LINK opcional. Se existir
mais de um DESTINO, o ?ltimo par?metro deve ser um diret?rio; cria links
em DIRET?RIO para cada DESTINO. Cria links por padr?o, ou simb?licos com 
--symbolic. Quando criando links, cada DESTINO deve existir.

     --backup[=CONTROLE]       fazer backup de arquivos de destino existentes
  -b                           o mesmo que --backup mas n?o aceita par?metros
  -d, -F, --directory          fazer links fixos para diret?rios
                               (s? superusu?rio)
  -f, --force                  remover destinos existentes
  -n, --no-dereference         tratar destinos que sejam links simb?licos
                               para um diret?rio como arquivos normais
  -i, --interactive            perguntar se deve apagar destinos
  -s, --symbolic               fazer links simb?licos em vez de links fixos
  -S, --suffix=SUFIXO          usar SUFIXO em vez do sufixo de backup usual
      --target-directory=DIR   move  os par?metros FONTE para o diret?rio DIR
  -v, --verbose                mostra o nome de cada arquivo antes de
                               criar o link
      --help                   mostrar esta ajuda e sair
      --version                mostrar informa??o sobre vers?o e sair

 Criar pipes com nome (FIFOs) com o NOME dado.

   -m, --mode=MODO   configurar permiss?es (como no chmod)
       --help        mostrar esta ajuda e sai
       --version     mostrar informa??o sobre vers?o e sai
 Criar o(s) DIRET?RIO(s), se ainda n?o existirem.

   -m, --mode=MODO   colocar permiss?es MODO (como no chmod) em vez
                     de rwxrwxrwx - umask
   -p, --parents     suprimir erros caso existam, criar diret?rios
                     pais ? medida que for necess?rio
   -v, --verbose     mostrar uma mensagem para cada diret?rio criado
       --help        mostrar esta ajuda e sair
       --version     mostrar informa??o sobre vers?o e sair
 Criar o arquivo especial NOME do TIPO dado.

   -m, --mode=MODO   colocar permiss?es MODO (como no chmod), em vez de 
                     0666-umask
       --help        mostrar esta ajuda e sai
       --version     mostrar informa??o sobre vers?o e sai

MAJOR e MINOR s?o proibidos para o TIPO p, obrigat?rios nos outros casos.
TIPO pode ser:
   b       criar um arquivo especial de tipo bloco (buffered)
   c, u    criar um arquivo especial de tipo caracter (n?o buffered)
   p       criar um "FIFO"
 For?ar os blocos de disco mudados a serem escritos no disco,
atualizando o superbloco.
   --help      mostrar esta ajuda e sair
   --version   mostrar informa??o sobre vers?o e sair
 Nos dois primeiros formatos, copia FONTE para DESTINO ou m?ltiplos
FONTE(s) para DIRET?RIO, ao mesmo tempo em que define permiss?es e
dono/grupo. No terceiro formato, cria todos os componentes do(s)
DIRET?RIO(s) dado(s).

   -b, --backup[=CONTROLE]     fazer backup antes da remo??o
   -c                  (ignorado)
   -d, --directory     trata todos os par?metros como nomes de diret?rios;
                       cria todos os componentes do diret?rio especificado
   -D                  cria todos os componentes iniciais do DESTINO exceto o 
                       ?ltimo, ent?o copia o FONTE para o DESTINO; ?til no
                       1o formato
   -g, --group=GRUPO   define o grupo como GRUPO em vez do grupo atual do processo
   -m, --mode=MODO     define as permiss?es como MODO (como no chmod)
                       em vez de rwxr-xr-x
   -o, --owner=DONO    define o dono (somente para o superusu?rio)
   -p, --preserve-timestamps aplica hor?rio de acesso/modifica??es dos arquivos
                       FONTE
   -s, --strip         retirar as tabelas de s?mbolos, s? para o 1? ou 2?
                       formato
   -S, --sufix=SUFIXO  usar SUFIXO em vez do sufixo habitual de backup
       --verbose       mostra o nome de cada diret?rio enquanto s?o criados
       --help          mostrar esta ajuda e sai
       --version       mostrar informa??o sobre vers?o e sai
 Emite comandos de sa?da para definir a vari?vel de ambiente LS_COLORS.

Para determinar o formato da sa?da:
   -b, --sh, --bourne-shell   emitir o c?digo para definir LS_COLORS em 
                              formato conhecido pela Bourne shell
   -c, --csh, --c-shell       emitir o c?digo para definir LS_COLORS em 
                              formato conhecido pela C shell
   -p, --print-data-base      emitir os c?digos default
       --help                 mostrar esta ajuda e sair
       --version              mostrar informa??o sobre vers?o e sair
Se o ARQUIVO ? especificado, ele ser? lido para determinar quais cores
usar para os tipos de arquivos e extens?es. Caso contr?rio, s?o usados
valores precompilados. Para detalhes sobre o formato destes arquivos,
execute `dircolors --print-database'.
 Remove o(s) DIRET?RIO(s), se eles estiverem vazios.

        --ignore-fail-on-non-empty
                   ignora cada falha causada somente se  o diret?rio n?o 
                   est? vazio
   -p, --parents   remove DIRET?RIO, depois tenta remover cada diret?rio
                   componente da rota. Ex. `rmdir -p a/b/c ? similar
                   a `rmdir a/b/c a/b a'.
       --verbose   mostra um diagn?stico para cada diret?rio processado
                   vazios
       --help      mostrar esta ajuda e sai
       --version   mostrar informa??o sobre vers?o e sai
 Mostrar informa??es sobre o sistema de arquivos onde cada ARQUIVO reside,
ou todos os sistemas de arquivos por default.

  -a, --all          incluir sistemas de arquivos com 0 blocos
      --block-size=SIZE usa blocos de SIZE-byte
  -h, --human-readable  mostrar tamanhos em formato leg?vel por humanos
                     (ex. 1K 234M 2G)
  -H, --si           como o anterior, mas usa o padr?o de 1000 e n?o 1024
  -i, --inodes       mostra informa??o sobre inodes em vez de blocos utilizados
  -k, --kilobytes    como  --block-size=1024
  -l, --local        limita a listagem ao sistema de arquivos local
  -m, --megabytes    como --block-size=1048576
      --no-sync      n?o chamar sync antes de obter as informa??es (default)
  -P, --portability  usar o formato POSIX de sa?da
      --sync         chamar sync antes de obter as informa??es
  -t, --type=TIPO    limitar a listagem a sistemas de arquivos do tipo TIPO
  -T, --print-type   mostrar o tipo do sistema de arquivos
  -x, --exclude-type=TIPO limitar a listagem a sistemas de arquivos que n?o
                     sejam do tipo TIPO
  -v                 (ignorado)
      --help         mostrar esta ajuda e sai
      --version      mostrar informa??o sobre vers?o e sai
 Mostrar o uso de disco de cada ARQUIVO, recursivamente para diret?rios.

   -a, --all             escreve a contagem para todos os arquivos, n?o
                         apenas diret?rios
       --block-size=SIZE usa blocos de SIZE-bytes
   -b, --bytes           imprimir o tamanho em bytes
   -c, --total           produzir um total final
   -D, --dereference-args  desreferenciar rotas se link simb?lico
   -h, --human-readable  imprimir tamanhos em formato leg?vel por humanos
                         (ex. 1K 234M 2G)
   -H, --si              como o anterior, mas usa o padr?o de 1000 em vez de 1024
   -k, --kilobytes       como --block-size=1024
   -l, --count-links     contar tamanho v?rias vezes se houver links f?sicos
                         (hard links)
   -L, --dereference     desreferenciar todos os links simb?licos
   -m, --megabytes       usar blocos de 1024K bytes em vez de 512,
                         apesar de POSIXLY_CORRECT
   -S, --separate-dirs   n?o incluir tamanho de sub-diret?rios
   -s, --summarize       mostrar s? um total para cada argumento
   -x, --one-file-sysyem desconsiderar diret?rios em sistemas de arquivos
                         diferentes
   -X ARQUIVO, --exclude-from=ARQUIVO Exclui arquivos que combinem com qualquer
                         padr?o em ARQUIVO.
       --exclude=PAD     Exclui arquivos que combinem com PAD.\n"
       --max-depth=N     mostra o total para um diret?rio (ou arquivo, com --all)"
                         somente se estiver N ou menos n?veis abaixo do par?metro
                         da linha de comando; --max-depth=0 ? o mesmo que 
                         --summarize                         
       --help            mostrar esta ajuda e sai
       --version         mostrar informa??o sobre vers?o e sai
 O sufixo de backup ? ~, a n?o ser que --suffix ou SIMPLE_BACKUP_SUFFIX esteja
definido. O controle de vers?o pode ser definido com --backup ou
VERSION_CONTROL, valores poss?veis s?o:

   none, off       nunca faz backups (mesmo que --backup for passado)
   numbered,t      fazer backups numerados
   existing,nil    numerados se j? existirem backups numerados, simples em
                   caso contr?rio
   simple,never    fazer backups simples sempre
 Este programa ? um programa livre; veja o fonte para as condi??es de c?pia.
N?o existe garantia; nem mesmo COMERCIAL ou PARA UM PROP?SITO ESPEC?FICO.
 Tente `%s --help' para mais informa??es.
 U+%04X: caractere fora de faixa Erro de sistema desconhecido Atualizar os tempos de acesso e modifica??o de cada ARQUIVO para o tempo
atual.

  -a                      mudar s? os tempos de acesso
  -c, --no-create         n?o criar arquivos
  -d, --date=STRING       analisar STRING e us?-la em vez do tempo atual
  -f                      (ignorado)
  -m                      mudar s? os tempos de modifica??o
  -r, --reference=ARQUIVO usar os tempos do ARQUIVO em vez do tempo atual
  -t TEMPO                usar MMDDhhmm[[CC]YY][.ss] em vez do tempo atual
      --time=PALAVRA      acess -a, atime -a, mtime -m, modify -m,
                          use -a
      --help              mostrar esta ajuda e sair
      --version           mostrar informa??o sobre vers?o e sair

Note que os tr?s formatos de data reconhecidos pelas op??es -d e -t e 
para o par?metro obsoleto s?o diferentes.
 Uso: %s [OP??O]... ARQUIVO [...]
 Uso: %s [OP??O]
 Uso: %s [OP??O] DIRET?RIO...
 Uso: %s [OP??O] NOME...
 Uso: %s [OP??O]...
 Uso: %s [OP??O]... DIRET?RIO...
 Uso: %s [OP??O]... ARQUIVO...
 Uso: %s [OP??O]... GRUPO ARQUIVO...
 ou: %s [OP??O]... --reference=ARQUIVO_REFER?NCIAS ARQUIVO...
 Uso: %s [OP??O]... MODO[,MODO]... ARQUIVO...
 ou: %s [OP??O]... MODO-OCTAL ARQUIVO...
 ou: %s [OP??O]... --reference=RARQUIVO ARQUIVO...
 Uso: %s [OP??O]... NOME TIPO [MAJOR MINOR]
 Uso: %s [OP??O]... DONO[:[GRUPO]] ARQUIVO...
 ou: %s [OP??O]... :GRUPO ARQUIVO...
 ou: %s [OP??O]... --reference=RARQUIVO ARQUIVO...
 Uso:  %s [OP??O]... FONTE DESTINO
 ou:  %s [OP??O]... FONTE... DIRET?RIO
 ou:  %s -d [OP??O]... --target-directory=DIRET?RIO FONTE...
 Uso:  %s [OP??O]... FONTE DESTINO           (1? formato)
 ou:  %s [OP??O]... FONTE... DIRET?RIO      (2? formato)
 ou:  %s -d [OP??O]... DIRET?RIO...         (3? formato)
 Uso:  %s [OP??O]... ALVO [NOME_LINK]
 ou:  %s [OP??O]... ALVO... DIRET?RIO
 ou:  %s -d [OP??O]... --target-directory=DIRET?RIO ALVO...
 Uso: %s [OP??O]... [ARQUIVO]...
 Uso: %s [OP??O]... [ARQUIVO]...
 Par?metros v?lidos s?o: %s: AVISO: Estrutura de diret?rios circular.
Isto quer dizer quase com certeza que o sistema de arquivos
est? corrompido.
NOTIFIQUE O ADMINISTRADOR DO SISTEMA.
Os pr?ximos dois diret?rios tem o mesmo n?mero de inode:
 Aviso:  Escrito por %s.
 ^[nN] ^[yY] ` par?metro ambig?o %s para `%s' tipo de backup tamanho de bloco arquivos especiais de tipo bloco n?o suportados n?o ? poss?vel resumir e mostrar todas as entradas ao mesmo tempo n?o foi poss?vel mudar para o diret?rio %s via `..' n?o foi poss?vel mudar para `..' do diret?rio %s n?o foi poss?vel mudar para o diret?rio %s n?o foi poss?vel mudar para o diret?rio %s n?o ? poss?vel converter U+%04X para configura??o de caracteres locais n?o foi poss?vel criar "fifo" `%s' n?o foi poss?vel fazer "fork" n?o ? poss?vel acessar o grupo de login de um UID num?rico n?o ? poss?vel fazer links simb?licos e fixos (hard links) ao mesmo tempo n?o ? poss?vel sobrescrever diret?rio com n?o-diret?rio: %s -> %s n?o ? poss?vel omitir usu?rio e grupo ao mesmo tempo n?o ? poss?vel gerar sa?da U+%04X: fun??o iconv n?o dispon?vel n?o ? poss?vel gerar sa?da U+%04X: fun??o iconv n?o ? us?vel n?o ? poss?vel remover `.' ou `..' n?o foi poss?vel rodar o strip n?o ? poss?vel especificar tempos a partir de mais de uma fonte arquivos especiais de tipo caracter n?o suportados continuar?  n?o foi poss?vel alterar o grupo de %s para %s
 falha na troca do modo de %s para %04lo (%s)
 arquivos "fifo" n?o suportados argumentos de arquivo n?o informados deslocamento do arquivo fora da faixa grupo n?mero grupo de %s mantido como %s
 ignorando todos os argumentos ignorando tamanho de tab inv?lido na vari?vel de ambiente TABSIZE: %s ignorando largura inv?lida na vari?vel de ambiente COLUMNS: %s par?metro inv?lido %s para `%s' grupo inv?lido largura de linha inv?lida: %s modo inv?lido tamanho de tab inv?lido: %s usu?rio inv?lido arquivos especiais de tipo "fifo" n?o podem ter os n?meros "major" e "minor"
do dispositivo mem?ria esgotada arquivo de destino n?o informado arquivo n?o informado arquivos n?o informados modo de %s mudado para %04lo (%s)
 modo de %s mantido como %04lo (%s)
 liga??o simb?lica %s e refer?ncia inalterados
 n?o se podem usar argumentos de tipo ARQUIVO com a op??o para mostrar a base
de dados interna do "dircolors" vari?vel de ambiente SHELL n?o existente e n?o se especificou nenhum
tipo de shell como argumento somente uma convers?o em {ascii,ebcdic,ibm}, {lcase,ucase}, {block,unblock},
{unblock,sync} preservando permiss?es para %s preservando permiss?es para %s preservando hor?rio para %s removendo %s
 removendo todas as entradas do diret?rio %s
 removendo diret?rio %s removendo o pr?prio diret?rio: %s
 definindo permiss?es para %s entrada padr?o (stdin) sa?da padr?o (stdout) strip falhou links simb?licos n?o s?o suportadas neste sistema as op??es para mostrar a base de dados interna do "dircolors" e para escolher
uma sintaxe entendida por uma shell s?o mutuamente exclusivas a op??o strip n?o pode ser usada ao instalar um diret?rio poucos argumentos muitos argumentos total registro truncado registros truncados o valor da vari?vel de ambiente LS_COLORS n?o pode ser analisado prefixo desconhecido: %s aviso: --version-control (-V) ? obsoleto; o suporte ser? removido
numa vers?o futura.  Use --backup=%s. alerta: summarizing conflita com --max-depth=%d alerta: summarizing ? o mesmo que usar --max-depth=0 ao criar arquivos especiais de bloco, s?o necess?rios os n?meros 
"major" e "minor do dispositivo ao criar arquivos especiais de tipo caracter ? necess?rio especificar
os n?meros "major" e "minor" do dispositivo quando h? v?rios links a serem feitos, o ?ltimo argumento deve ser um diret?rio ao mover m?ltiplos arquivos o ?ltimo argumento deve ser um diret?rio ao preservar caminhos (paths), o ?ltimo argumento deve ser um diret?rio erro de grava??o n?mero de argumentos inv?lido 