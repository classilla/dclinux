??    ?      T  ?   ?
        ?   	  -  I  ?  w  W     ?  X  ?   ?     ?  -  ?  #   ?  7  ?         (  7   -  ?   e  ?   ?     ?  ?   ?  *   \   "   ?   $   ?      ?      ?   #   ?   "   !     @!     Q!     k!  ,   ?!     ?!  %   ?!  ,   ?!  -   #"      Q"  &   r"     ?"     ?"     ?"     ?"     ?"     #      #  )   7#  ,   a#  +   ?#  F   ?#  *   $  "   ,$  5   O$  0   ?$     ?$     ?$  0   ?$     $%     @%  !   ^%  (   ?%  +   ?%  !   ?%  #   ?%  "   &     >&     X&  "   q&     ?&     ?&      ?&  ,   ?&     '      &'     G'     ]'  !   x'  '   ?'  #   ?'  ,   ?'     (  {   %(  2   ?(     ?(  ,   ?(  !   )     3)  Y  ?)     ?*     ?*     ?*     ?*     ?*     +     '+     ;+     N+     l+     ?+     ?+     ?+  +   ?+     ?+     ,     ,  1   .,  )   `,  /   ?,  2   ?,  4   ?,  (   "-  1   K-  %   }-  0   ?-  1   ?-     .  *   .     G.     Z.     f.  %   .     ?.     ?.     ?.     ?.     ?.     /      /  %   3/  ?   Y/  ?   ?/     ?0     ?0     ?0  %   ?0  &    1     G1  &   S1     z1     ?1     ?1     ?1     ?1  ?   ?1  -   ?2     ?2     ?2     ?2     ?2     3     +3     E3  )   Y3  3   ?3  .   ?3     ?3     ?3  
   4     4     14     N4     n4  #   ?4     ?4     ?4     ?4     ?4     ?4     ?4     5  0   (5  2  Y5  ?   ?6  8  ?6    8  ?  ;  ?  ?<  ?   ?@    9A  ,  MC  '   zE  ?  ?E     ?G    ?G  ;   ?H  ?   I  ?   ?I     ?J  ?   ?J  .   lK  )   ?K  )   ?K     ?K     L  *   L  <   JL     ?L     ?L     ?L  ,   ?L     M  *   #M  +   NM  -   zM  #   ?M  +   ?M     ?M     N     4N     6N     SN     pN     ?N  ,   ?N  )   ?N  (   ?N  =   !O  )   _O  $   ?O  9   ?O  ?   ?O  ,   (P  '   UP  :   }P  "   ?P  )   ?P  -   Q  >   3Q  8   rQ  &   ?Q  &   ?Q  4   ?Q  !   .R      PR  ;   qR  4   ?R     ?R  "   ?R     S     ;S  $   PS     uS  /   ?S  ,   ?S  ;   ?S  -   -T  F   [T     ?T  ?   ?T  A   CU     ?U  .   ?U  !   ?U  "   ?U  N  V  .   ]W     ?W     ?W     ?W  #   ?W      ?W     X     (X  "   9X     \X  !   wX     ?X     ?X  ,   ?X     ?X     Y     8Y  3   PY  +   ?Y  1   ?Y  4   ?Y  6   Z  *   NZ  <   yZ  .   ?Z  ?   ?Z  <   %[     b[  1   y[     ?[  	   ?[     ?[  0   ?[     \  +   ,\  2   X\     ?\     ?\  &   ?\  $   ?\  )   ]  ?   :]  ?   ?]  #   ?^  (   ?^     _  0   _  )   N_  #   x_  2   ?_  !   ?_  .   ?_  8    `     Y`     q`  ?   ?`  ?   Ma     ?a     ?a     ?a     ?a     ?a  !   b     *b  .   Bb  3   qb  +   ?b     ?b  !   ?b  
   ?b  !    c     "c  "   Bc      ec  7   ?c      ?c     ?c     ?c     d  
   d     (d  (   Hd  9   qd         [   ?   (       U          q         I   N   ^      ?          %   P          H   T   ?       x   d       ?   b   |   ?   ?   {   h       ?   &           ?   2   y   J   `   E   K   ?   ?   ?       ?       ?       n      ?                  m   i       ?   =      ]       $      ?   r       ?                 ?              u   ?   !      <   1   W   f       6      o       Z   ?             l   ?       G           c   -   .   
       )   e       v   ;   F   3   :   ?   4   S         s   R           ?           ?   ?   '       0   z       j      ?      8   w   ?   }   A   Q   /      ?   X   k       ?   C   \       ?   _               7      5   ,                  t   ?      ?   M           ~   ?   a   +       p                      ?   #   V       @   >   g   B   ?   ?          9       ?       	   ?   "      *   ?   O   Y   L      ?   ?       D    
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
Handling of file attributes:
      --owner=NAME             force NAME as owner for added files
      --group=NAME             force NAME as group for added files
      --mode=CHANGES           force (symbolic) mode CHANGES for added files
      --atime-preserve         don't change access times on dumped files
  -m, --modification-time      don't extract file modified time
      --same-owner             try extracting files with the same ownership
      --no-same-owner          extract files as yourself
      --numeric-owner          always use numbers for user/group names
  -p, --same-permissions       extract permissions information
      --no-same-permissions    do not extract permissions information
      --preserve-permissions   same as -p
  -s, --same-order             sort names to extract to match archive
      --preserve-order         same as -s
      --preserve               same as both -p and -s
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
Report bugs to <bug-tar@gnu.org>.
 
The backup suffix is `~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.
The version control may be set with --backup or VERSION_CONTROL, values are:

  t, numbered     make numbered backups
  nil, existing   numbered if numbered backups exist, simple otherwise
  never, simple   always make simple backups
 
Usage: %s [OPTION]...
 
Usage: %s [OPTION]... [FILE]...

Examples:
  %s -cf archive.tar foo bar  # Create archive.tar from files foo and bar.
  %s -tvf archive.tar         # List all files in archive.tar verbosely.
  %s -xf archive.tar          # Extract all files from archive.tar.
 
Written by Fran?ois Pinard <pinard@iro.umontreal.ca>.
       --backup[=CONTROL]       backup before removal, choose version control
      --suffix=SUFFIX          backup before removal, override usual suffix
   -N, --newer=DATE             only store files newer than DATE
      --newer-mtime            compare date and time when data changed only
      --after-date=DATE        same as -N
  link to %s
  n [name]   Give a new file name for the next (and subsequent) volume(s)
 q          Abort tar
 !          Spawn a subshell
 ?          Print this list
 %d garbage bytes ignored at end of archive %s is not continued on this volume %s is the wrong size (%s != %s + %s) %s: Deleting %s
 %s: Not found in archive %s: Unknown file type; file ignored %s: Was unable to backup this file %s: door ignored %s: illegal option -- %c
 %s: invalid option -- %c
 %s: option `%c%s' doesn't allow an argument
 %s: option `%s' is ambiguous
 %s: option `%s' requires an argument
 %s: option `--%s' doesn't allow an argument
 %s: option `-W %s' doesn't allow an argument
 %s: option `-W %s' is ambiguous
 %s: option requires an argument -- %c
 %s: unrecognized option `%c%s'
 %s: unrecognized option `--%s'
 ' --Continued at byte %s--
 --Mangled file names--
 --Volume Header--
 Ambiguous pattern `%s' Archive base-256 value is out of %s range Archive contains obsolescent base-64 headers Archive octal value %.*s is out of %s range Archive octal value %.*s is out of %s range; assuming two's complement Archive value %s is out of %s range %s..%s At beginning of tape, quitting now Attempting extraction of symbolic links as hard links Blanks in header where numeric %s value expected Cannot allocate buffer space Cannot change working directory Cannot combine --listed-incremental with --newer Cannot execute remote shell Cannot save working directory Cannot update compressed archives Cannot use compressed or remote archives Cannot use multi-volume compressed archives Cannot verify compressed archives Cannot verify multi-volume archives Cannot verify stdin/stdout archive Child died with signal %d Child returned status %d Conflicting archive format options Conflicting compression options Contents differ Could only read %lu of %lu bytes Cowardly refusing to create an empty archive Creating directory: Deleting non-header from archive Device number differs Device number out of range EOF where user reply was expected Error exit delayed from previous errors Error in writing to standard output Extracting contiguous files as regular files File type differs GNU `tar' saves many files together into a single tape or disk archive, and
can restore individual files from the archive.
 GNU features wanted on incompatible archive format Garbage command Generate data files for GNU tar test suite.
 Generating negative octal headers Gid differs If a long option shows an argument as mandatory, then it is mandatory
for the equivalent short option also.

  -l, --file-length=LENGTH   LENGTH of generated file
  -p, --pattern=PATTERN      PATTERN is `default' or `zeros'
      --help                 display this help and exit
      --version              output version information and exit
 Inode number out of range Invalid blocking factor Invalid device number Invalid inode number Invalid mode given on option Invalid record size Invalid tape length Invalid time stamp Invalid value for record_size Missing file name after -C Mod time differs Mode differs More than one threshold date Multiple archive files requires `-M' option No archive name given No new volume; exiting.
 Not linked to %s Obsolete option name replaced by --absolute-names Obsolete option name replaced by --backup Obsolete option name replaced by --block-number Obsolete option name replaced by --blocking-factor Obsolete option name replaced by --read-full-records Obsolete option name replaced by --touch Obsolete option, now implied by --blocking-factor Old option `%c' requires an argument. Options `-%s' and `-%s' both want standard input Options `-[0-7][lmh]' not supported by *this* tar Premature end of file Prepare volume #%d for %s and hit return:  Read checkpoint %d Reading %s
 Record size = %lu blocks Record size must be a multiple of %d. Renamed %s to %s Seek direction out of range Seek offset out of range Size differs Skipping to next header Symlink differs Symlinked %s to %s This does not look like a tar archive This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 This program comes with NO WARRANTY, to the extent permitted by law.
You may redistribute it under the terms of the GNU General Public License;
see the file named COPYING for details. This volume is out of sequence Time stamp out of range Too many errors, quitting Total bytes written: %s (%sB, %sB/s)
 Try `%s --help' for more information.
 Uid differs Unaligned block (%lu bytes) in archive Unexpected EOF in archive Unexpected EOF in mangled names Unknown demangling command %s Unknown pattern `%s' Unknown system error Usage: %s [OPTION]
Manipulate a tape drive, accepting commands from a remote process.

  --version  Output version info.
  --help  Output this help.
 VERIFY FAILURE: %d invalid header(s) detected Valid arguments are: Verify  Visible long name error Visible longname error WARNING: Archive is incomplete WARNING: No volume header Write checkpoint %d Written by John Gilmore and Jay Fenlason. You may not specify more than one `-Acdtrux' option You must specify one of the `-Acdtrux' options ` ambiguous argument %s for `%s' block %s:  block %s: ** Block of NULs **
 block %s: ** End of File **
 exec/tcp: Service not available invalid argument %s for `%s' rmtd: Cannot allocate buffer space
 rmtd: Garbage command %c
 rmtd: Premature eof
 stdin stdout tar (child) tar (grandchild) value %s out of %s range %s..%s value %s out of %s range %s..%s; substituting %s Project-Id-Version: tar 1.13.15
POT-Creation-Date: 2001-01-12 23:36-0800
PO-Revision-Date: 1999-12-07 11:22+01:00
Last-Translator: Christian Kirsch <ck@held.mind.de>
Language-Team: German <de@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
Version: 1
 
Copyright (C) 1995, 1996, 1997 Free Software Foundation, Inc.
 
Blockung des Ger?tes:
  -b, --block-size=BL?CKE    BL?CKE ? 512 Bytes pro Record
      --record-size=GR?SSE   GR?SSE Bytes pro Record, Vielfaches von 512
  -i, --ignore-zeros         Bl?cke mit Nullen im Archiv ignorieren (hei?t EOF)
  -B, --read-full-blocks     Blockung beim Lesen ?ndern (f?r 4.2BSD "Pipes")
 
Ger?teauswahl und -einstellung:
  -f, --file=ARCHIV              Ger?t oder Datei ARCHIV benutzen
      --force-local              Archiv-Datei ist lokal, auch wenn der Name
                                 einen Doppelpunkt enth?lt
      --rsh-command=BEFEHL       statt ?rsh? den BEFEHL benutzen
  -[0-7][lmh]                    Laufwerk und Schreibdichte angeben
  -M, --multi-volume             mehrteiliges Archiv anlegen/listen/herausholen
  -L, --tape-length=ZAHL         Medium wechseln, wenn ZAHL KBytes geschrieben sind
  -F, --info-script=DATEI        am Ende jedes Mediums das Skript DATEI
                                 ausf?hren (impliziert '-M')
      --new-volume-script=DATEI  wie '-F DATEI'
      --volno-file=DATEI         Teil-Nummer in DATEI benutzen/aktualisieren
 
GNU ?tar? kann keine '--posix'-Archive lesen.  Wenn die
Umgebungsvariable POSIXLY_CORRECT gesetzt ist, sind GNU-Erweiterungen
mit '--posix' nicht zul?ssig.
Unterst?tzung f?r POSIX ist nur teilweise implementiert, rechne derzeit noch
nicht damit!
ARCHIV kann DATEI, RECHNER:DATEI oder BENUTZER@RECHNER:DATEI sein; DATEI kann
eine Datei oder ein Ger?t (z.B. ein Streamer) sein. 
Die Voreinstellung f?r _dieses_ ?tar? ist '-f%s -b%d'.
 
Datei-Eigenschaften:
      --owner=NAME             Eigent?mer f?r hinzugef?gte Dateien auf NAME setzen
      --group=NAME             Gruppe f?r hinzugef?gte Dateien auf NAME setzen
      --mode=RECHTE            Zugriffsrechte f?r hinzugef?gte Dateien auf RECHTE setzen
      --atime-preserve         Zugriffszeit beim Auspacken erhalten
  -m, --modification-time      ?nderungszeit beim Auspacken erhalten
      --same-owner             Eigent?mer beim Auspacken erhalten
      --no-same-owner          Eigent?mer beim Auspacken auf Ausf?hrenden setzen
      --numeric-owner          Zahlen f?r Benutzer bzw. Gruppen benutzen
  -p, --same-permissions       Zugriffsrechte beim Auspacken erhalten
      --no-same-permissions    Keine Zugriffsrechte erhalten
      --preserve-permissions   wie '-p'
  -s, --same-order             zu entpackende Dateinamen wie im Archiv sortieren
      --preserve-order         wie '-s'
      --preserve               wie '-p' und '-s' zusammen
 
Wenn eine lange Option ein Argument erfordert, ist es f?r die entsprechende
kurze Option auch erforderlich. Das gleich gilt f?r optionale Argumente.
 
Informationen:
      --help            Hilfe anzeigen und ?tar? beenden
      --version         Versionsnummer anzeigen und ?tar? benden
  -v, --verbose         zu bearbeitende Dateien ausf?hrlich listen
      --checkpoint      Verzeichnisnamen beim Lesen des Archivs zeigen
      --totals          geschriebene Bytes beim Schreiben des Archivs zeigen
  -R, --block-number    Blocknummer innerhalb des Archivs mit jeder Meldung zeigen
  -w, --interactive     Best?tigung f?r jede Aktion verlangen
      --confirmation    wie '-w'
 
Aktionen:
  -t, --list              Inhalt eines Archivs anzeigen
  -x, --extract, --get    Dateien aus Archiv holen
  -c, --create            neues Archiv erzeugen
  -d, --diff, --compare   Dateien im Archiv und im Dateisystem vergleichen
  -r, --append            Dateien an das Archiv anh?ngen
  -u, --update            nur Dateien anh?ngen, die j?nger sind als ihre Archiv-Version
  -A, --catenate          ?tar?-Dateien an ein Archiv anh?ngen
      --concatenate       wie '-A'
      --delete            aus Archiv l?schen (nicht auf Magnetb?ndern!)
 
Fehlermeldungen an <bug-tar@gnu.org>.
 
Die Namenserweiterung f?r Sicherheitskopien ist `~', wenn nicht mit --suffix oder
der Umgebungsvariablen SIMPLE_BACKUP_SUFFIX etwas anderes eingestellt ist.
Die Versionskontrolle kann mit --backup oder der Umgebungsvariablen VERSION_CONTROL
gesetzt werden. M?gliche Werte sind:

  t, numbered     nummerierte Sicherheitskopien
  nil, existing   nummerierte Sicherheitskopien, wenn schon nummerierte vorhanden sind,
                  sonst einfache
  never, simple   immer einfache Sicherheitskopien
 
Aufruf: %s [OPTION]...
 
Verwendung: %s [OPTION]... [Datei]...

Beispiele:
  %s -cf archiv.tar foo bar  # archiv.tar mit den Dateien foo und bar erzeugen.
  %s -tvf archiv.tar         # Inhalt von archiv.tar ausf?hrlich anzeigen.
  %s -xf archiv.tar          # Alle Dateien aus archiv.tar extrahieren
 
Entwickelt von Fran?ois Pinard <pinard@iro.umontreal.ca>.
       --backup[=CONTROL]       Sicherheitskopie vor dem L?schen, w?hlt Versionskontrolle
      --suffix=SUFFIX          Sicherheitskopie vor dem L?schen, Namenserweiterung SUFFIX
   -N, --newer=DATUM          nur Dateien j?nger als DATUM sichern
      --newer-mtime          Datum und Zeit nur vergleichen, wenn sich der
                             Datei-Inhalt ge?ndert hat
      --after-date=DATUM     wie '-N'
  Link auf '%s'.
  n [NAME]   F?r die n?chsten (und folgenden) Medien neuen Dateinamen angeben
 q          ?tar? abbrechen
 !          Shell in einem Unterproze? starten
 ?          Diese Liste ausgeben
 %d Bytes 'M?ll' am Ende des Archivs ignoriert. Dieser Teil ist keine Fortsetzung von %s. %s hat die falsche Gr??e (%s != %s + %s). %s: L?sche '%s'.
 %s: Nicht im Archiv gefunden. %s: Unbekannter Dateityp; Datei ignoriert. %s: Konnte keine Sicherheitskopie von dieser Datei erstellen %s: Klappe ignoriert %s: Unzul?ssige Option -- %c
 %s: Ung?ltige Option -- %c
 %s: Option `%c%s' erlaubt keinen Parameter.
 %s: Option `%s' ist mehrdeutig
 %s: Option `%s' ben?tigt einen Parameter.
 %s: Option `--%s' erlaubt keinen Parameter
 %s: Option `-W %s' erlaubt keinen Parameter.
 %s: Option `-W %s' ist mehrdeutig.
 %s: Option ben?tigt einen Parameter -- %c.
 %s: Unbekannte Option `%c%s'
 %s: Unbekannte Option `--%s'
 ' --Fortgesetzt bei Byte %s--
 --Verst?mmelte Dateinamen--
 --Vorspann des Teils--
 Mehrdeutiges Muster `%s' Base-256-Wert ist au?erhalb des %s Bereichs. Archiv enth?lt veraltete Base64-Kopfteile Oktalzahl %.*s au?erhalb des %s-Bereichs Oktalzahl %.*s au?erhalb des %s-Bereichs, vermutlich negativ? Wert %s au?erhalb des %s-Bereichs %s..%s. Am Anfang des Mediums, beende jetzt. Versuche symbolische Links als harte Links herauszuholen. Leerzeichen im Kopfteil, wo numerische %s-Werte stehen sollten. Kann keinen Speicher f?r Puffer reservieren. Kann Arbeitsverzeichnis nicht wechseln. --listed-incremental kann nicht mit --newer benutzt werden Kann Remote-Shell nicht ausf?hren. Kann aktuelles Verzeichnis nicht sichern. Kann komprimierte Archive nicht aktualisieren Kann keine komprimierten oder nicht-lokalen Archive verwenden. Kann keine mehrteiligen komprimierten Archive verwenden. Kann komprimierte Archive nicht pr?fen Kann mehrteilige Archive nicht pr?fen. Kann Archive auf Standard-Ein-/Ausgabe nicht pr?fen. Kindproze? mit Signal %d beendet. Kindproze? gab Status %d zur?ck. Optionen des Archiv-Formats schlie?en sich gegenseitig aus. Kompressionsoptionen schlie?en sich gegenseitig aus. Unterschiedliche Inhalte Konnte nur %lu von %lu Bytes lesen Kein leeres Archiv angelegt. Erzeuge Verzeichnis: L?sche nicht-Kopfteil aus dem Archiv Unterschiedliche Ger?tenummern Ger?tenummer au?erhalb des zul?ssigen Bereichs. Dateiende gefunden, Benutzereingabe erwartet Fehler beim Beenden, verursacht durch vorhergehende Fehler. Fehler beim Schreiben auf die Standardausgabe Extrahiere zusammenh?ngende Dateien (`contiguous files') als regul?re. Unterschiedliche Dateitypen  GNU ?tar? schreibt mehrere Dateien in ein Archiv auf Band oder Festplatte und
kann einzelne Dateien aus diesem Archiv herausholen.
 GNU-Erweiterungen bei einem inkompatiblen Archiv-Format verlangt. Ung?ltiges Kommando. Dateien f?r die Tests von GNU-?tar? erzeugen.
 Erzeuge negative oktale Kopfteile Gruppenkennung ist unterschiedlich Notwendige Argumente f?r Optionen in Langform sind auch f?r die
Kurzform notwendig.
  -l, --file-length=GROESSE  GROESSE der erzeugten Datei
  -p, --pattern=MUSTER       MUSTER ist \"default\" oder \"zeros\"	
      --help                 zeige nur diese Hilfe an
      --version              zeige nur die Versionsnummer von ?tar? an
 Inode-Nummer au?erhalb des zul?ssigen Bereichs Ung?ltige Blockgr??e Ung?ltige Ger?tenummer Ung?ltige Inode-Nummer Ung?ltige Zugriffsrechte angegeben. Ung?ltiger Wert f?r Recordgr??e. Ung?ltige Bandl?nge Ung?ltiges Datum Ung?ltiger Wert f?r "record_size". Dateiname nach '-C' fehlt. ?nderungszeit ist unterschiedlich `mode' ist unterschiedlich Mehr als ein Datum angegeben. Verteilte Archive verlangen die Option '-M'. Kein Archiv-Name angegeben Kein neues Medium; halte an.
 Nicht auf `%s' gelinkt. Veraltete Option, ersetzt durch '--absolute-names'. Veraltete Option, ersetzt durch '--backup'. Veraltete Option, ersetzt durch '--block-number'. Veraltete Option, ersetzt durch '--blocking-factor'. Veraltete Option, ersetzt durch '--read-full-records'. Veraltete Option, ersetzt durch '--touch'. Veraltete Option, jetzt bei '--blocking-factor' inbegriffen. Die alte Option '%c' ben?tigt einen Parameter. Die beiden Optionen '-%s' und '-%s' verlangen Standard-Eingabe. Die Optionen '-[0-7][lmh]' unterst?tzt _dieses_ ?tar? nicht. Vorzeitiges Dateiende. Medium #%d f?r %s einlegen und "Return" dr?cken:  Lese Checkpoint %d. Lese %s.
 Recordgr??e = %lu blocks Die Recordgr??e  mu? ein Vielfaches von %d sein. Benenne '%s' in '%s' um. Richtung f?r Positionierung nicht zul?ssig. Anfangsposition au?erhalb des zul?ssigen Bereichs. Gr??e ist unterschiedlich Springe zum n?chsten Kopfteil. Symbolischer Link ist unterschiedlich. Symbolischer Link von '%s' auf '%s'. Das sieht nicht wie ein ?tar?-Archiv aus. Dieses Programm ist freie Software; die Quellen enthalten die Kopierbedingungen.
Es gibt KEINE Garantie, auch nicht hinsichtlich des Einsatzes f?r einen bestimmten
Zweck.
 Dieses Programm wird ohne Gew?hrleistung geliefert, soweit dies gesetzlich zul?ssig ist.
Sie k?nnen es unter den Bedingungen der GNU General Public License weitergeben.
Details dazu enth?lt die Datei COPYING. Dieser Teil ist nicht an der Reihe. Datum au?erhalb des zul?ssigen Bereichs. Zu viele Fehler, beende. Gesamtzahl geschriebener Bytes: %s (%sB, %sB/s)
 `%s --help' zeigt weitere Informationen.
 Benutzerkennung ist unterschiedlich Falsch positionierter Block (%lu Bytes) im Archiv. Unerwartetes Dateiende im Archiv. Unerwartetes Dateiende in verst?mmelten Namen. Unbekanntes Kommando ?%s? beim Zusammensetzen von Namen. Unbekanntes Muster `%s' Unbekannter Systemfehler. Benutzung: %s [OPTION]
Arbeiten mit einem Bandlaufwerk, Kommandos k?nnen von einem anderen Prozess stammen.

  --version    Verionsinformation ausgeben
  --help       Diesen Hilfetext ausgeben
 FEHLER BEI PR?FUNG: %d ung?ltiger Kopfteil bzw. -teile erkannt. Zul?ssige Argumente sind: Pr?fe  Fehler bei langem Dateinamen. Fehler bei langem Dateinamen. WARNUNG: Archiv unvollst?ndig WARNUNG: Kein Kopfteil vorhanden. Schreibe Checkpoint %d. Geschrieben von John Gilmore und Jay Fenlason. Von den Optionen '-Acdtrux' ist nur _eine_ erlaubt. Eine der Optionen '-Acdtrux' ist notwendig. ` Mehrdeutiges Argument %s f?r `%s' Block %s:  Block %s: ** Block aus NULlen **
 Block %s: ** Ende der Datei **
 exec/tcp: Service nicht verf?gbar. Ung?ltiges Argument %s f?r `%s'. rmtd: Kann Speicherplatz f?r Puffer nicht reservieren.
 rmtd: Ung?ltiges Kommando '%c'.
 rmtd: Vorzeitiges Dateiende.
 Standardeingabe Standardausgabe tar (Kind) tar Enkel (`tar (grandchild)'). Wert %s au?erhalb des %s-Bereichs %s..%s Wert %s au?erhalb des %s-Bereich %s..%s; ersetze durch %s 