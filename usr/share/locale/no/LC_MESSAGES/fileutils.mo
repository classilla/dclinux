??    X      ?     ?      ?  ?   ?  (   ;     d     y     ?     ?  >   ?     ?  '   	  +   4	  ?   `	  i  ?	  K  ]  r  ?  &        C      W     x     ?  #   ?     ?  T   ?  .   C  ?   r           <  ?   ]          $  !   *  *   L  +   w  '   ?     ?  (   ?          ,  .   =  %   l  
   ?  #   ?     ?     ?     ?     
          3  =   J  :   ?     ?     ?     ?  B   ?     ?     X     n  7   ?  T   ?  =     S   P     ?     ?     ?     ?  %        )  "   @     c     ~     ?  /   ?  f   ?  <   4     q     ?     ?     ?     ?  3   ?     ?  2      7   >   S   v   W   ?   =   "!  =   `!     ?!  0  ?!  ?   ?"  ,   ?#     ?#     ?#     ?#     ?#  >   $  "   J$  .   m$  2   ?$  ?   ?$  ?  e%    '  X  %+  &   ~0     ?0     ?0     ?0     ?0  "   1     )1  R   E1  ,   ?1  ?   ?1     n2     ?2  ?   ?2     b3     h3  "   p3  ;   ?3  0   ?3  (    4     )4  ,   I4     v4     ?4  ,   ?4  $   ?4     ?4  *   
5     55     P5     f5     ?5     ?5     ?5  =   ?5  6   6     >6     V6     j6  4   ?6     ?6     ?6     ?6  8   ?6  N   +7  D   z7  Z   ?7     8     98     T8     i8     u8     ?8     ?8     ?8     ?8     ?8  2   9  p   79  ?   ?9     ?9     ?9     :     :     &:  -   9:     g:  4   z:  :   ?:  T   ?:  S   ?;  D   ?;  A   ?;     <                      X       +   ,   1   R           2       H                  -          <                 D               @      
   /       3       %   F   7                     "   >   O              8   '   &   N   B   Q                     ;   M   K                             (   V       6             )   C      P      	      *   W   5   T             =   :   0      A   !   .          U      9   $       L       S      G                 4   J   ?       E       I   #    
As a special case, cp makes a backup of SOURCE when the force and backup
options are given and SOURCE and DEST are the same name for an existing,
regular file.
 
Report bugs to <bug-fileutils@gnu.org>.  (might be nonempty) %s+%s records in
 %s+%s records out
 %s: File exists %s: can make relative symbolic links only in current directory %s: cannot overwrite directory %s: hard link not allowed for directory %s:%lu: invalid line;  missing second token Force changed blocks to disk, update the super block.

  --help      display this help and exit
  --version   output version information and exit
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
 Try `%s --help' for more information.
 Usage: %s [OPTION]
 Usage: %s [OPTION] DIRECTORY...
 Usage: %s [OPTION] NAME...
 Usage: %s [OPTION]...
 Usage: %s [OPTION]... DIRECTORY...
 Usage: %s [OPTION]... FILE...
 Usage: %s [OPTION]... GROUP FILE...
  or:  %s [OPTION]... --reference=RFILE FILE...
 Usage: %s [OPTION]... NAME TYPE [MAJOR MINOR]
 Usage: %s [OPTION]... SOURCE DEST           (1st format)
  or:  %s [OPTION]... SOURCE... DIRECTORY   (2nd format)
  or:  %s -d [OPTION]... DIRECTORY...       (3rd format)
 Usage: %s [OPTION]... [FILE]
 Usage: %s [OPTION]... [FILE]...
 WARNING: Circular directory structure.
This almost certainly means that you have a corrupted file system.
NOTIFY YOUR SYSTEM MANAGER.
The following two directories have the same inode number:
 ^[nN] ^[yY] block special files not supported cannot both summarize and show all entries cannot change back to directory %s via `..' cannot change to `..' from directory %s cannot change to directory %s cannot make both hard and symbolic links cannot remove `.' or `..' cannot run strip cannot specify times from more than one source character special files not supported continue?  failed to change group of %s to %s
 fifo files not supported file arguments missing file offset out of range group number group of %s retained as %s
 ignoring all arguments ignoring invalid tab size in environment variable TABSIZE: %s ignoring invalid width in environment variable COLUMNS: %s invalid line width: %s invalid mode invalid tab size: %s major and minor device numbers may not be specified for fifo files missing destination file missing file argument missing file arguments neither symbolic link %s nor referent has been changed
 no FILE arguments may be used with the option to output
dircolors' internal database no SHELL environment variable, and no shell type option given only one conv in {ascii,ebcdic,ibm}, {lcase,ucase}, {block,unblock}, {unblock,sync} preserving ownership for %s preserving permissions for %s preserving times for %s removing %s
 removing all entries of directory %s
 removing directory, %s removing the directory itself: %s
 setting permissions for %s standard input standard output symbolic links are not supported on this system the options to output dircolors' internal database and
to select a shell syntax are mutually exclusive the strip option may not be used when installing a directory too few arguments too many arguments total truncated record truncated records unparsable value for LS_COLORS environment variable unrecognized prefix: %s warning: summarizing conflicts with --max-depth=%d warning: summarizing is the same as using --max-depth=0 when creating block special files, major and minor device
numbers must be specified when creating character special files, major and minor device
numbers must be specified when making multiple links, last argument must be a directory when moving multiple files, last argument must be a directory wrong number of arguments Project-Id-Version: fileutils 4.0-b6
POT-Creation-Date: 2001-04-29 13:38+0200
PO-Revision-Date: 1998-11-05 13:07-0100
Last-Translator: Eivind Tagseth <eivindt@multinet.no>
Language-Team: Norwegian <no@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
 
Som et spesialtilfelle, gj?r cp en sikkerhetskopi av KILDE n?r flaggene for
force og backup er gitt, og KILDE og M?L er samme navn for en eksisterende,
vanlig fil.
 
Rapporter feil til <bug-fileutils@gnu.org>.  (er kanskje ikke tom) %s+%s blokker inn
 %s+%s blokker ut
 %s: Fil eksisterer %s: kan bare lage relative symbolske linker i aktiv filkatalog %s: kan ikke overskrive filkatalog %s: hard link er ikke tillatt for filkataloger %s:%lu: ugyldig linje;  mangler det andre symbolet Lagre endrede blokker til disk, oppdater superblokken.

  --help      vis denne hjelpeteksten og avslutt
  --version   vis programversjon og avslutt
 Skriv ut kommandoer for ? sette milj?variabelen LS_COLORS.

Bestem ut-format:
  -b, --sh, --bourne-shell    skriv ut Bourne shell-kode for ? sette LS_COLORS
  -c, --csh, --c-shell        skriv ut C shell-kode for ? sette LS_COLORS
  -p, --print-data-base       skriv ut den interne databasen
      --help                  vis denne hjelpeteksten og avslutt
      --version               vis programversjon og avslutt
 Vis informasjon om filsystemet som FIL ligger p?, eller alle filsystemer.

  -a, --all             ta med filsystemer med 0 blokker
      --block-size=ST?R bruke blokker p? ST?R bytes
  -h, --human-readable  skriv st?rrelser p? en form lesbar for mennesker
                        (f.eks. 1K 234M 2G)
  -H, --si              det samme, men bruk 1000 som base, ikke 1024
  -i, --inodes          skriv inodeinformasjon istedet for blokk-forbruk
  -k, --kilobytes       bruk 1024-byte blokker
  -m, --megabytes       bruk 1024K-byte blokker
      --no-sync         ikke kj?r sync f?r henting av informasjon (forvalgt)
  -P, --portability     bruk POSIX-format p? utdata
      --sync            kj?r sync f?r henting av informasjon
  -t, --type=TYPE       list filsystemer av type TYPE
  -T, --print-type      skriv ut typen p? filsystemet
  -x, --exclude-type=TYPE  list filsystemer som ikke er av type TYPE
  -v                    (ignorert)
      --help            vis denne hjelpeteksten og avslutt
      --version         vis programversjon og avslutt
 Summer diskforbruk for hver FIL, rekursivt for filkataloger.

  -a, --all             ta med filer, ikke bare filkataloger
      --block-size=ST?R bruk blokker p? ST?R bytes
  -b, --bytes           skriv st?rrelse i bytes
  -c, --total           skriv ut totalsum
  -D, --dereference-args  f?lg s?kestier n?r de er symbolske linker
  -h, --human-readable  skriv st?rrelser p? en form lesbar for mennesker
                        (f.eks. 1K 234M 2G)
  -H, --si              det samme, men bruk 1000 som base, ikke 1024
  -k, --kilobytes       bruk 1024-byte blokker
  -l, --count-links     regn med st?rrelsen flere ganger for harde linker
  -L, --dereference     f?lg symbolske linker
  -m, --megabytes       bruk 1024K-byte blokker
  -S, --separate-dirs   ta ikke med st?rrelsen p? underkataloger
  -s, --summarize       vis bare sum for hvert argument
  -x, --one-file-system  ta ikke med filkataloger p? andre filsystem
  -X FIL, --exclude-from=FIL  Eksluder filer som svarer til et hvilket som
                        helst m?nster i FIL.
      --exclude=M?N     eksluder filer som svarer til M?N.
      --max-depth=N     skriv totalen for en katalog (eller fil med --all)
                        bare hvis det er N eller f?rre niv? under kommandoen.
      --help            vis denne hjelpeteksten og avslutt
      --version         vis programversjon og avslutt
 Pr?v ?%s --help? for mer informasjon.
 Bruk: %s [FLAGG]
 Bruk: %s [FLAGG] FILKATALOG...
 Bruk: %s [FLAGG] NAVN...
 Bruk: %s [FLAGG]...
 Bruk: %s [FLAGG]... FILKATALOG...
 Bruk: %s [FLAGG]... FIL...
 Bruk:   %s [FLAGG]... GRUPPE FIL...
 eller: %s [FLAGG]... --reference=RFIL FIL...
 Bruk: %s [FLAGG]... NAVN TYPE [MAJOR MINOR]
 Bruk:   %s [FLAGG]... KILDE M?L             (1. format)
 eller: %s [FLAGG]... KILDE... FILKATALOG   (2. format)
 eller: %s -d [FLAGG]... FILKATALOG...      (3. format)
 Bruk: %s [FLAGG]... [FIL]
 Bruk: %s [FLAGG]... [FIL]...
 ADVARSEL: Sirkul?r katalogstruktur.
Dette betyr nesten helt sikkert at du har et skadet filsystem.
MELD IFRA TIL DIN SYSTEMADMININISTRATOR.
F?lgende to kataloger har samme inode-nummer:
 ^[nN] ^[jJyY] blokk-spesiell fil er ikke st?ttet kan ikke vise alle st?rrelser og bare vise summer samtidig. kan ikke g? tilbake til filkatalogen %s via ?..? kan ikke g? til ?..? fra filkatalogen %s kan ikke g? til filkatalogen %s kan ikke lage b?de harde og symbolske linker kan ikke slette ?.? eller ?..? kan ikke kj?re ?strip? kan ikke ta klokkeslett fra mer enn ?n kilde tegn-spesielle filer er ikke st?ttet fortsette?  klarte ikke ? endre gruppen til %s til %s
 fifo-filer er ikke st?ttet mangler filargumenter filposisjon ute av rekkevidde gruppenummer gruppe til %s beholdt som %s
 ignorerer alle argumenter ignorerer ugyldig tab-st?rrelse i milj?variabelen TABSIZE: %s ignorerer ugyldig lengde i milj?variabelen COLUMNS: %s ugyldig linjelengde: %s ugyldig beskyttelse ugyldig tab-st?rrelse: %s major- og minor-nummer kan ikke angis for fifo-filer mangler m?lfil mangler filargument mangler filargumenter verken symbolsk link %s eller referant har blitt endret
 flagget for ? skrive ut den interne databasen til dircolor tar
ikke argumenter ingen SHELL-milj?variabel, og ingen shell-type spesifisert med flagg kun ?n konvertering fra {ascii,ebcdic,ibm}, {lcase,ucase}, {block,unblock}, {unblock,sync} bevarer eierrettigheter for %s bevarer beskyttelse for %s bevarer tider for %s sletter %s
 fjerner alt i filkatalog ?%s?
 slettes filkatalog, %s sletter katalogen selv: %s
 setter beskyttelse for %s standard innkanal standard utkanal symbolske linker er ikke st?ttet p? dette systemet flaggene for ? skrive ut den interne databasen til dircolor og for ?
velge et shell-syntaks utelukker hverandre. strip-flagget kan ikke brukes ved installering av en filkatalog for f? argumenter for mange argumenter totalt forkortet blokk forkortede blokker ubegripelig verdi i milj?variabelen LS_COLORS ukjent prefiks: %s advarsel: summering er i konflikt med --max-depth=%d advarsel: summering er det samme som ? bruke --max-depth=0 ved oppretting av blokk-spesielle filer, m? major og minor enhetsnummer
spesifiseres ved oppretting av tegn spesielle filer, m? major og minor enhetsnummer
spesifiseres ved oppretting av flere linker, m? siste argument v?re en filkatalog ved flytting av flere filer, m? siste argument v?re en filkatalog feil antall argumenter 