??    i      d  ?   ?       	  ?   	  -  A	  ?  o
  W  ?  ?   P     ?  -  ?  7       H  7   `  ?   ?     O  ?   \  "   ?          )  #   B  "   f     ?     ?     ?  "   ?  5   ?     $     A  !   ]  (     +   ?  !   ?  #   ?  "        =  "   V     y  ,   ?     ?      ?  !   ?  '     ,   E  {   r  2   ?     !  ,   1     ^  Y  j     ?     ?     ?          +     8  +   U     ?     ?     ?  1   ?  )   ?  /     2   M  4   ?  (   ?  1   ?  %     0   6  1   g     ?  *   ?     ?     ?  %   ?          0     =     U     e  %   x  ?   ?     6      U   &   o      ?      ?      ?      ?      ?      !  -   $!     R!     Z!     r!     ?!     ?!     ?!  3   ?!  .   
"     9"  #   Y"     }"     ?"     ?"     ?"     ?"     ?"  :  ?"  ?   $  h  Q$  ?  ?%    ?(  ?   *  ?  ?*  ,  ?,  ?  ?.     Z0  6   p0  ?   ?0     j1  ?   x1  "   2     .2     >2  &   X2  1   2     ?2     ?2     ?2  &   ?2  7   3  "   K3  !   n3  &   ?3  C   ?3  9   ?3  '   54  2   ]4  &   ?4     ?4  $   ?4     ?4  !   5     95  "   K5  %   n5  )   ?5  2   ?5  [   ?5  4   M6     ?6  *   ?6     ?6  L  ?6     8     28     P8     i8     ?8     ?8  )   ?8     ?8     ?8     9  .   9  &   J9  ,   q9  /   ?9  1   ?9  %    :  1   &:  '   X:  2   ?:  F   ?:     ?:  2   ;     A;  	   X;  %   b;     ?;     ?;     ?;     ?;     ?;  "   <  ?   $<  &   ?<     ?<  &   =     7=     C=      ^=  -   =     ?=     ?=  /   ?=     >     >     (>  !   >>     `>     ~>  3   ?>  %   ?>  (   ?>     ?     :?     U?     p?     v?  
   }?     ??         e       X   (   W                     i       #      ]           F   f   ;   2      P       M          B   +       _   1   '   :   4   7   6   %   Q   ^   c       /                   h      8      U      S           `                .           [   &      \      a   K       G          -   g               D   Z       =                         H   d                  *   L   b   Y      3   !   N          )   I       9   @   C       R   ,   	   5             <   "   O       A             T   E   
           J      $         V   0   ?      >                   
Copyright (C) 1995, 1996, 1997 Free Software Foundation, Inc.
 
Device blocking:
  -b, --blocking-factor=BLOCKS   BLOCKS x 512 bytes per record
      --record-size=SIZE         SIZE bytes per record, multiple of 512
  -i, --ignore-zeros             ignore zeroed blocks in archive (means EOF)
  -B, --read-full-records        reblock as we read (for 4.2BSD pipes)
 
Device selection and switching:
  -f, --file=ARCHIVE             use archive file or device ARCHIVE
      --force-local              archive file is local even if has a colon
      --rsh-command=COMMAND      use remote COMMAND instead of rsh
  -[0-7][lmh]                    specify drive and density
  -M, --multi-volume             create/list/extract multi-volume archive
  -L, --tape-length=NUM          change tape after writing NUM x 1024 bytes
  -F, --info-script=FILE         run script at end of each tape (implies -M)
      --new-volume-script=FILE   same as -F FILE
      --volno-file=FILE          use/update the volume number in FILE
 
GNU tar cannot read nor produce `--posix' archives.  If POSIXLY_CORRECT
is set in the environment, GNU extensions are disallowed with `--posix'.
Support for POSIX is only partially implemented, don't count on it yet.
ARCHIVE may be FILE, HOST:FILE or USER@HOST:FILE; and FILE may be a file
or a device.  *This* `tar' defaults to `-f%s -b%d'.
 
If a long option shows an argument as mandatory, then it is mandatory
for the equivalent short option also.  Similarly for optional arguments.
 
Informative output:
      --help            print this help, then exit
      --version         print tar program version number, then exit
  -v, --verbose         verbosely list files processed
      --checkpoint      print directory names while reading the archive
      --totals          print total bytes written while creating archive
  -R, --block-number    show block number within archive with each message
  -w, --interactive     ask for confirmation for every action
      --confirmation    same as -w
 
Main operation mode:
  -t, --list              list the contents of an archive
  -x, --extract, --get    extract files from an archive
  -c, --create            create a new archive
  -d, --diff, --compare   find differences between archive and file system
  -r, --append            append files to the end of an archive
  -u, --update            only append files newer than copy in archive
  -A, --catenate          append tar files to an archive
      --concatenate       same as -A
      --delete            delete from the archive (not on mag tapes!)
 
The backup suffix is `~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.
The version control may be set with --backup or VERSION_CONTROL, values are:

  t, numbered     make numbered backups
  nil, existing   numbered if numbered backups exist, simple otherwise
  never, simple   always make simple backups
 
Usage: %s [OPTION]...
 
Written by Fran?ois Pinard <pinard@iro.umontreal.ca>.
   -N, --newer=DATE             only store files newer than DATE
      --newer-mtime            compare date and time when data changed only
      --after-date=DATE        same as -N
  link to %s
  n [name]   Give a new file name for the next (and subsequent) volume(s)
 q          Abort tar
 !          Spawn a subshell
 ?          Print this list
 %s is not continued on this volume %s: Deleting %s
 %s: Not found in archive %s: Unknown file type; file ignored %s: Was unable to backup this file --Mangled file names--
 --Volume Header--
 Ambiguous pattern `%s' At beginning of tape, quitting now Attempting extraction of symbolic links as hard links Cannot allocate buffer space Cannot execute remote shell Cannot update compressed archives Cannot use compressed or remote archives Cannot use multi-volume compressed archives Cannot verify compressed archives Cannot verify multi-volume archives Cannot verify stdin/stdout archive Child returned status %d Conflicting archive format options Conflicting compression options Cowardly refusing to create an empty archive Creating directory: Deleting non-header from archive EOF where user reply was expected Error exit delayed from previous errors Extracting contiguous files as regular files GNU `tar' saves many files together into a single tape or disk archive, and
can restore individual files from the archive.
 GNU features wanted on incompatible archive format Garbage command Generate data files for GNU tar test suite.
 Gid differs If a long option shows an argument as mandatory, then it is mandatory
for the equivalent short option also.

  -l, --file-length=LENGTH   LENGTH of generated file
  -p, --pattern=PATTERN      PATTERN is `default' or `zeros'
      --help                 display this help and exit
      --version              output version information and exit
 Invalid mode given on option Invalid value for record_size Missing file name after -C Mod time differs Mode differs More than one threshold date Multiple archive files requires `-M' option No archive name given No new volume; exiting.
 Not linked to %s Obsolete option name replaced by --absolute-names Obsolete option name replaced by --backup Obsolete option name replaced by --block-number Obsolete option name replaced by --blocking-factor Obsolete option name replaced by --read-full-records Obsolete option name replaced by --touch Obsolete option, now implied by --blocking-factor Old option `%c' requires an argument. Options `-%s' and `-%s' both want standard input Options `-[0-7][lmh]' not supported by *this* tar Premature end of file Prepare volume #%d for %s and hit return:  Read checkpoint %d Reading %s
 Record size must be a multiple of %d. Renamed %s to %s Size differs Skipping to next header Symlink differs Symlinked %s to %s This does not look like a tar archive This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 This volume is out of sequence Too many errors, quitting Try `%s --help' for more information.
 Uid differs Unexpected EOF in archive Unexpected EOF in mangled names Unknown demangling command %s Unknown pattern `%s' Unknown system error VERIFY FAILURE: %d invalid header(s) detected Verify  Visible long name error Visible longname error WARNING: Archive is incomplete WARNING: No volume header Write checkpoint %d You may not specify more than one `-Acdtrux' option You must specify one of the `-Acdtrux' options exec/tcp: Service not available rmtd: Cannot allocate buffer space
 rmtd: Garbage command %c
 rmtd: Premature eof
 stdin stdout tar (child) tar (grandchild) Project-Id-Version: GNU tar 1.12
POT-Creation-Date: 2001-01-12 23:36-0800
PO-Revision-Date: 1997-06-05 19:39 MET DST
Last-Translator: Espen Skjelnes Johnsen <espejohn@sn.no>
Language-Team: Norwegian-bokm?l <no@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Copyright (C) 1995, 1996, 1997 Free Software Foundation, Inc.
 
Blokkh?ndtering:
  -b, --blocking-factor=ENHETER  sett blokkst?rrelse ENHETER x 512 bytes
      --record-size=ST?RRELSE    ST?RRELSE bytes per enhet (delbart p? 512)
  -i, --ignore-zeros             ignor?r blokker som inneholder nuller
                                 (betyr filslutt)
  -B, --read-full-records        blokk om ved lesing (for 4.2BSD pipes)
 
Enhetsvalg og enhetsskifte:
  -f, --file=ARKIV               bruk arkivfil eller enhet ARKIV
      --force-local              arkivfil er lokal selv om den har et kolon
      --rsh-command=KOMMANDO     bruk KOMMANDO i stedet for rsh
  -[0-7][lmh]                    angi enhet og tetthet
  -M, --multi-volume             behandle arkivet som et flervolumsarkiv
  -L, --tape-length=NUMMER       bytt b?nd etter at NUMMER x 1024 bytes er
                                 skrevet
  -F, --info-script=FIL          kj?r kommandofil FIL ved slutten av hvert
                                 b?nd (setter -M automatisk)
      --new-volume-script=FIL    samme som -F FIL
      --volno-file=FIL           bruk/oppdater volumnummeret i FIL
 
GNU tar kan hverken lese eller skrive ?--posix?-arkiver.  Dersom
milj?variabelen POSIXLY_CORRECT er satt, er GNU-funksjoner ikke tillatt
sammen med ?--posix?.  St?tte for POSIX er bare delvis implementert, s?
stol ikke p? den enn?.
ARKIV kan v?re FIL, MASKIN:FIL eller BRUKER@MASKIN:FIL; og FIL kan v?re en
fil eller en enhet.  *Denne* versjonen av tar har ?-f%s -b%d? som forvalg.
 
Dersom et langt flagg har et obligatorisk argument, er argumentet ogs?
obligatorisk for det korte flagget.  Tilsvarende gjelder dersom argumentet
kan sl?yfes.
 
Utskrift av informasjon:
      --help            vis denne hjelpeteksten og avslutt
      --version         vis programversjon og avslutt
  -v, --verbose         vis hver fil som behandles
      --checkpoint      vis filkatalognavn n?r arkivet leses
      --totals          vis totalt antall bytes skrevet
  -R, --block-number    vis enhetsnummer i arkivet sammen med alle meldinger
  -w, --interactive     sp?r etter bekreftelse for hver operasjon
      --confirmation    samme som -w
 
Hovedoperasjonsmodi:
  -t, --list              list innholdet av arkivet
  -x, --extract, --get    ekstrah?r filer fra arkivet
  -c, --create            lage et nytt arkiv
  -d, --diff, --compare   vise forskjeller mellom arkivet og filsystemet
  -r, --append            legg til filer p? slutten av arkivet
  -u, --update            legg til bare filer som er nyere enn de i arkivet
  -A, --catenate          legg en arkivfil sammen med arkivet
      --concatenate       samme som -A
      --delete            slett fra arkivet (ikke for arkiv p? b?nd!)
 
Suffikset for sikkerhetskopiering er ?~?, med mindre det er satt med --suffix
eller SIMPLE_BACKUP_SUFFIX.  Versjonskontroll kan settes med --backup eller
VERSION_CONTROL.  Gyldige verdier er:

  t, numbered     lag nummererte sikkerhetskopier
  nil, existing   nummererte, dersom nummererte sikkerhetskopier eksisterer,
                  ellers enkle
  never, simple   lag enkle sikkerhetskopier
 
Bruk: %s [FLAGG]...
 
Skrevet av Fran?ois Pinard <pinard@iro.umontreal.ca>
   -N, --newer=DATO             arkiv?r bare filer som er nyere enn DATO
      --newer-mtime            sammenlign tidsstempel bare n?r data er endret
      --after-date=DATO        samme som -N
  link til %s
  n [navn]   Gi et filnavn for neste (og etterf?lgende) volum(er)
 q          Avbryt tar
 !          Start et shell
 ?          Skriv denne listen
 %s fortsetter ikke i dette volumet %s: Sletter %s
 %s: Finnes ikke i arkivet %s: Ukjent filtype; filen ble ignorert %s: Kunne ikke lage sikkerhetskopi av denne filen --?delagte filnavn--
 --Volumhode--
 Tvetydig m?nster ?%s? P? begynnelsen av b?ndet, avslutter n? Fors?ker ? ekstrahere symbolske linker som harde linker Kan ikke allokere plass til buffer Kan ikke eksekvere "remote shell" Kan ikke oppdatere komprimerte arkiver Kan ikke bruke komprimerte arkiver eller arkiver p? en annen maskin Kan ikke bruke komprimerte arkiv som g?r over flere volum Kan ikke verifisere komprimerte arkiver Kan ikke verifisere arkiv som g?r over flere volum Kan ikke verifisere stdin/stdout-arkiv Barnet avsluttet med status %d Konflikt i flaggene for arkiv-format Konflikt i kompresjonsflagg For feig til ? lage et tomt arkiv Lager filkatalog: Tar bort ikke-hodedata fra arkivet EOF der svar fra bruker var forventet Utsatt feil-avslutning for tidligere feil Ekstraherer sammenhengende filer som vanlige filer GNU ?tar? lagrer mange filer i ett arkiv, og kan hente ut enkeltst?ende
filer fra arkivet.
 GNU-funksjoner fors?kt p? inkompatibelt arkiv-format Ugyldig kommando Genrerer datafiler for GNU tar testpakke.
 Gid er ulik Obligatoriske argumenter for lange flagg er obligatoriske ogs? for korte flagg.

  -l, --file-length=LENGDE    lengde av generert fil
  -p, --pattern=M?NSTER       gyldige m?nster er ?default? eller ?zeros?
      --help                  vis denne hjelpeteksten og avslutt
      --version               vis programversjon og avslutt
 Ugyldig modus gitt i flagg Ugyldig verdi for record_size Mangler filnavn etter -C Modifiseringstid er ulik Modus er ulik Mer enn ?n grense-dato Ved flere arkivfiler beh?ves ?-M?-flagget Arkivnavn er ikke oppgitt Ikke nytt volum; avslutter.
 Ikke linket til %s Utdatert flagg skiftet ut med --absolute-names Utdatert flagg skiftet ut med --backup Utdatert flagg skiftet ut med --block-number Utdatert flagg skiftet ut med --blocking-factor Utdatert flagg skiftet ut med --read-full-records Utdatert flagg skiftet ut med --touch Utdatert flagg, n? implisert av --blocking-factor Gammelt flagg ?%c? beh?ver et argument. Flaggene ?-%s? and ?-%s? vil begge ta standard inn Flaggene ?-[0-7][lmh]? st?ttes ikke av *denne* implementasjonen av tar For tidlig filslutt Gj?r klar volum nummer %d for %s og trykk return:  Leser kontrollpunkt %d Leser %s
 Blokkst?rrelse m? v?re delbart p? %d. Endret navn p? %s til %s St?rrelse er ulik Hopper til neste startseksjon Symbolsk link er ulik %s symbolsk linket til %s Dette ser ikke ut som et tar-arkiv Dette er fri programvare.  Se kildekoden for kopieringsbetingelser.
Programvaren har ingen garanti, ikke en gang for SALGBARHET eller EGNETHET
TIL NOEN SPESIELL OPPGAVE.
 Dette volumet kommer ute av rekkef?lge For mange feil, avslutter Tast ?%s --help? for mer informasjon.
 Uid er ulik Uventet filslutt i arkivet Uventet filslutt i ?delagte navn Ukjent kommando %s ved rekonstruering av navn Ukjent m?nster ?%s? Unkjent systemfeil VERIFIKASJONSFEIL: %d ukjente arkivhoder funnet Verifisering  Feil p? et langt navn Feil p? et langt navn ADVARSEL: Arkivet er ufullstendig ADVARSEL: Manglende volumhode Skriver kontrollpunkt %d Du kan ikke angi mer enn ett av ?-Acdtrux?-flaggene Du m? angi ett av ?-Acdtrux?-flaggene exec/tcp: Tjenesten er ikke tilgjengelig rmtd: Kan ikke allokere buffer
 rmtd: Ugyldig kommando %c
 rmtd: For tidlig filslutt
 stdin stdout tar (barn) tar (barnebarn) 