��    �      |  �   �      �  ?   �  -    �  G  W  �  �   (     �  -  �  #   �  7       D  7   \  �   �     K  �   X  "   �  $        9     J  #   c  "   �     �     �  ,   �       %   )  ,   O  -   |  &   �     �     �               -     E     X  "   o  5   �     �  0   �       !   2  (   T  +   }  !   �  #   �  "   �          ,  "   E     h     �      �  ,   �     �      �          1  !   L  '   n  ,   �     �  {   �  2   Q     �  ,   �     �  Y  �     '!     A!     Y!     v!     �!     �!     �!     �!     �!     �!  +   "     >"     T"     m"  1   ~"  )   �"  /   �"  2   
#  4   =#  (   r#  1   �#  %   �#  0   �#  1   $$     V$  *   l$     �$     �$     �$  %   �$     �$     %     "%     ;%     H%     `%     p%  %   �%  �   �%     A&     `&  &   z&     �&     �&     �&     �&     '     '  -   /'     ]'     r'     z'     �'     �'     �'     �'  3   �'  .   *(     Y(     [(  
   z(     �(     �(     �(     �(  #   �(     ")     <)     Q)     W)     ^)     j)  %  {)  ?   �*  3  �*  �  ,  �  /  N   �0    �0  Q  �2  ,   E5  R  r5     �6  <   �6  �   7     �7  �   �7     �8  ,   �8     �8     �8  ,   9  3   H9     |9     �9  )   �9     �9  $   �9  )   !:  *   K:  %   v:     �:     �:     �:     �:     �:     ;      ;     :;  H   W;     �;  6   �;  !   �;  +   <  B   E<  6   �<  ,   �<  (   �<  4   =     J=     e=  $   �=      �=     �=  #   �=  4   �=     1>  %   ?>     e>     ~>  0   �>  ,   �>  8   �>     2?  }   I?  ;   �?     @  4   @     H@  E  _@     �A     �A  !   �A  #   �A      B  #   5B     YB     xB     �B     �B  0   �B     �B     C     "C  4   8C  ,   mC  2   �C  5   �C  7   D  +   ;D  5   gD  &   �D  3   �D  <   �D     5E  .   QE     �E  	   �E     �E  ,   �E     �E     �E     F     2F     DF     dF  /   �F  (   �F  �   �F     G     �G  "   �G     �G  #   �G  +   H  '   CH     kH     �H  1   �H     �H  
   �H     �H     I     I     :I     VI  /   oI  )   �I     �I  "   �I  	   �I     �I  #   J  !   <J     ^J  &   }J     �J  "   �J     �J     �J  
   K     K     B      p   E   [       u   \   I          |   
   .   3   �      (           l      x   H          ]      �          *   c      h      )   /       @   U   _   K   W           q           7   T       5   w   {   d       A   0       4   :       Y   ~   D           N   s   -      X          e             �   b          S   ;   L              �       =      "   t   	          J      ^              y   9              �   g         C       V   O   a      �           #       �   1   M   R   �               i   ,   �   k   �   $       2   '      z                  �       F   !   o   }       v         6      <   P   8          n   &   >               r       %       Z       �   +           �   Q   ?   f   `   G   m           j    
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
Written by Fran�ois Pinard <pinard@iro.umontreal.ca>.
   -N, --newer=DATE             only store files newer than DATE
      --newer-mtime            compare date and time when data changed only
      --after-date=DATE        same as -N
  link to %s
  n [name]   Give a new file name for the next (and subsequent) volume(s)
 q          Abort tar
 !          Spawn a subshell
 ?          Print this list
 %s is not continued on this volume %s is the wrong size (%s != %s + %s) %s: Deleting %s
 %s: Not found in archive %s: Unknown file type; file ignored %s: Was unable to backup this file %s: illegal option -- %c
 %s: invalid option -- %c
 %s: option `%c%s' doesn't allow an argument
 %s: option `%s' is ambiguous
 %s: option `%s' requires an argument
 %s: option `--%s' doesn't allow an argument
 %s: option `-W %s' doesn't allow an argument
 %s: option requires an argument -- %c
 %s: unrecognized option `%c%s'
 %s: unrecognized option `--%s'
 ' --Continued at byte %s--
 --Mangled file names--
 --Volume Header--
 Ambiguous pattern `%s' At beginning of tape, quitting now Attempting extraction of symbolic links as hard links Cannot allocate buffer space Cannot combine --listed-incremental with --newer Cannot execute remote shell Cannot update compressed archives Cannot use compressed or remote archives Cannot use multi-volume compressed archives Cannot verify compressed archives Cannot verify multi-volume archives Cannot verify stdin/stdout archive Child died with signal %d Child returned status %d Conflicting archive format options Conflicting compression options Contents differ Could only read %lu of %lu bytes Cowardly refusing to create an empty archive Creating directory: Deleting non-header from archive Device number differs Device number out of range EOF where user reply was expected Error exit delayed from previous errors Extracting contiguous files as regular files File type differs GNU `tar' saves many files together into a single tape or disk archive, and
can restore individual files from the archive.
 GNU features wanted on incompatible archive format Garbage command Generate data files for GNU tar test suite.
 Gid differs If a long option shows an argument as mandatory, then it is mandatory
for the equivalent short option also.

  -l, --file-length=LENGTH   LENGTH of generated file
  -p, --pattern=PATTERN      PATTERN is `default' or `zeros'
      --help                 display this help and exit
      --version              output version information and exit
 Inode number out of range Invalid blocking factor Invalid mode given on option Invalid record size Invalid tape length Invalid value for record_size Missing file name after -C Mod time differs Mode differs More than one threshold date Multiple archive files requires `-M' option No archive name given No new volume; exiting.
 Not linked to %s Obsolete option name replaced by --absolute-names Obsolete option name replaced by --backup Obsolete option name replaced by --block-number Obsolete option name replaced by --blocking-factor Obsolete option name replaced by --read-full-records Obsolete option name replaced by --touch Obsolete option, now implied by --blocking-factor Old option `%c' requires an argument. Options `-%s' and `-%s' both want standard input Options `-[0-7][lmh]' not supported by *this* tar Premature end of file Prepare volume #%d for %s and hit return:  Read checkpoint %d Reading %s
 Record size = %lu blocks Record size must be a multiple of %d. Renamed %s to %s Seek direction out of range Seek offset out of range Size differs Skipping to next header Symlink differs Symlinked %s to %s This does not look like a tar archive This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 This volume is out of sequence Too many errors, quitting Try `%s --help' for more information.
 Uid differs Unexpected EOF in archive Unexpected EOF in mangled names Unknown demangling command %s Unknown pattern `%s' Unknown system error VERIFY FAILURE: %d invalid header(s) detected Valid arguments are: Verify  Visible long name error Visible longname error WARNING: Archive is incomplete WARNING: No volume header Write checkpoint %d You may not specify more than one `-Acdtrux' option You must specify one of the `-Acdtrux' options ` ambiguous argument %s for `%s' block %s:  block %s: ** Block of NULs **
 block %s: ** End of File **
 exec/tcp: Service not available invalid argument %s for `%s' rmtd: Cannot allocate buffer space
 rmtd: Garbage command %c
 rmtd: Premature eof
 stdin stdout tar (child) tar (grandchild) Project-Id-Version: tar 1.13.7
POT-Creation-Date: 2001-01-12 23:36-0800
PO-Revision-Date: 1999-09-25 13:46:41
Last-Translator: Andr� van Dijk <ady@unseen.demon.nl>
Language-Team: Dutch <nl@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Copyright (C) 1995, 1996, 1997 Free Software Foundation, Inc.
 
Apparaat blokken:
  -b, --blocking-factor=BLOCKS   BLOCKS x 512 bytes per record
      --record-size=GROOTTE      GROOTTE bytes per record, veelvoud van 512
  -i, --ignore-zeros             negeer genulde blokken (zelfde als EOF)
  -B, --read-full-records        herblok tijdens lezen (voor 4.2BSD pijpen)
 
Apparaat selectie en omschakeling:
  -f, --file=ARCHIEF             gebruik archiefbestand of apparaat ARCHIEF
      --force-local              archiefbestand is lokaal zelfs al heeft 
                                 het een dubbele punt
      --rsh-command=COMMAND      gebruik `remote' COMMAND in plaats van rsh
  -[0-7][lmh]                    specificeer station en dichtheid
  -M, --multi-volume             maak/toon/extraheer meerdelige archieven
  -L, --tape-length=NUM          verander tape na schrijven NUM x 1024 bytes
  -F, --info-script=BESTAND      voer script uit aan einde van elke tape (-M)
      --new-volume-script=BESTAND  zelfde als -F BESTAND
      --volno-file=BESTAND       gebruik/actualiseer het deel nummer in BESTAND
 
GNU tar kan geen `--posix' archieven lezen of maken.  Als POSIXLY_CORRECT
is gezet als omgevingsvariable zijn GNU uitbreidingen niet toegestaan met
`--posix'.  Ondersteuning voor POSIX is slechts gedeeltelijk ge�mplementeerd,
reken er nog niet op.  ARCHIEF kan zijn BESTAND, HOST:BESTAND of
GEBRUIKER@HOST:BESTAND; en BESTAND kan een bestand zijn of een apparaat.
*Deze* `tar' gebruikt standaard `-f%s -b%d'.
 
Verplichte argumenten voor lange opties zijn ook verplicht bij korte opties.
 
Informatieve uitvoer:
      --help            toon hulp-tekst en be�indig programma
      --version         toon versie-informatie en be�indig programma
  -v, --verbose         toon verwerkte bestanden woordenrijk
      --checkpoint      toon mapnaam tijdens lezen archief
      --totals          toon aantal geschreven bytes tijdens aanmaken archief
  -R, --block-number    toon bloknummer in archief bij elke melding
  -w, --interactive     vraag om bevestiging bij elke aktie
      --confirmation    zelfde als -w
 
Hoofdwerkingsmodus:
  -t, --list              toon de inhoud van een archief
  -x, --extract, --get    extraheer bestanden uit een archief
  -c, --create            maak een nieuw archief aan
  -d, --diff, --compare   zoek verschillen tussen archief en bestandssysteem
  -r, --append            voeg bestanden toe aan het einde van een archief
  -u, --update            voeg alleen nieuwere bestanden toe aan archief
  -A, --catenate          voeg tar bestanden toe aan archief
      --concatenate       zelfde als -A
      --delete            verwijder uit het archief (niet op mag. tapes!)
 
Meld fouten aan <tar-bugs@gnu.ai.mit.edu>.
 
Het backup achtervoegsel is `~', tenzij ingesteld met --suffix of
SIMPLE_BACKUP_SUFFIX.
Het versie beheer kan worden ingesteld met --backup of VERSION_CONTROL,
waarden zijn:

  t, numbered     maak genummerde backups
  nil, existing   genummerd als genummerde backups bestaat, anders simpel
  never, simple   maak altijd simpele backups
 
Aanroep: %s [OPTIE]...
 
Geschreven door Fran�ois Pinard <pinard@iro.umontreal.ca>.
   -N, --newer=DATUM          bewaar alleen bestanden nieuwer dan DATUM
      --newer-mtime          vergelijk datum en tijd alleen bij gewijzigde data
      --after-date=DATUM     zelfde als -N
  koppelen aan %s
  n [name]   Geef een nieuwe bestandsnaam voor de volgende (en daaropvolgende) delen
 q          Breek tar af
 !          Splits een subshell af
 ?          Toon deze lijst
 %s gaat niet verder op dit deel %s heeft de onjuiste grootte (%s != %s + %s) %s: Verwijderen %s
 %s: Niet gevonden in archief %s: Onbekend bestandstype; bestand genegeerd %s: Kon geen veiligheidskopie maken van dit bestand %s: ongeldige optie -- %c
 %s: ongeldige optie -- %c
 %s: optie `%c%s' staat geen argument toe
 %s: optie `%s' is dubbelzinnig
 %s: optie `%s' vereist een argument
 %s: optie `--%s' staat geen argument toe
 %s: optie `-W %s' staat geen argument toe
 %s: optie vereist een argument -- %c
 %s: onbekende optie `%c%s'
 %s: onbekende optie `--%s'
 ' --Vervolgd bij byte %s--
 --Verminkte bestandsnamen--
 --Deelkopregels--
 Dubbelzinnig patroon `%s' Begin van `tape', ik stop nu Poging tot extractie van symbolische koppelingen als `harde' koppelingen Kan geen bufferruimte vrijmaken Ongeldige combinatie: --listed-incremental met --newer Kan `remote shell' niet uitvoeren Kan gecomprimeerde archieven niet bijwerken Kan geen gebruik maken van gecomprimeerde of niet lokale archieven Kan meerdelige gecomprimeerde archieven niet gebruiken Kan gecomprimeerde archieven niet verifi�ren Kan meerdelige archieven niet verifi�ren Kan standaard-invoer/uitvoer archief niet verifi�ren Kind stierf met signaal %d Kind retourneerde status %d Conflicterende archiefformaat opties Conflicterende compressie opties Inhoud verschilt Kon slechts %lu van %lu bytes lezen Angstvallige weigering een leeg archief aan te maken Aanmaken map: Verwijderen niet-kopregel uit archief Apparaatnummer verschilt Apparaatnummer buiten bereik Bestandseinde waar gebruiksreactie werd verwacht Fout afsluiting uitgesteld na eerdere fouten Extraheren aaneengesloten bestanden als gewone bestanden Bestandstype verschilt GNU `tar' bewaart meerdere bestanden in een tape of disk archief en
kan afzonderlijke bestanden terugzetten uit het archief.
 GNU extras gevraagd voor een niet compatibel archiefformaat Rommel commando Genereer data bestanden voor GNU tar test omgeving.
 Groepsnummer verschilt Verplichte argumenten voor lange opties zijn ook verplicht bij korte opties.

  -l, --file-length     lengte van het gegenereerde bestand
  -p, --pattern=PATROON PATROON is `default' of `zeros'
      --help            toon hulp-tekst en be�indig programma
      --version         toon versie-informatie en be�indig programma
 Inode nummer buiten bereik Ongeldige blocking faktor Ongeldige modus gegeven bij optie Ongeldige waarde voor `record_size' Ongeldige tapelengte Ongeldige waarde voor `record_size' Ontbrekende bestandsnaam na -C Aanpassingstijd verschilt Modus verschilt Meer dan een drempel datum Meerdere archiefbestanden verwacht de `-M' optie Geen archiefnaam gegeven Geen nieuw deel; ik stop.
 Niet gekoppeld aan %s Overbodige optienaam vervangen door --absolute-names Overbodige optienaam vervangen door --backup Overbodige optienaam vervangen door --block-number Overbodige optienaam vervangen door --blocking-factor Overbodige optienaam vervangen door --read-full-records Overbodige optienaam vervangen door --touch Overbodige optienaam vervangen door --blocking-factor Oude optie `%c' verwacht een argument. Opties `-%s' en `-%s' willen beiden standaardinvoer Opties `-[0-7][lmh]' worden niet ondersteund door *deze* tar Prematuur einde van bestand Maak deel #%d klaar voor %s en druk op enter:  Lees controllepunt %d Lezen %s
 Recordgrootte = %lu blokken Recordgrootte moet een veelvoud zijn van %d. %s hernoemd naar %s Zoekrichting buiten bereik Zoek offset buiten bereik Grootte verschilt Overslaan tot volgende kopregel Symbolische koppeling verschilt Symbolische koppeling aangemaakt van %s naar %s Dit ziet er niet uit als een tar archief Dit is vrije programmatuur; zie de broncode voor kopieervoorwaarden.
Er is GEEN garantie; zelfs niet voor VERKOOPBAARHEID of GESCHIKTHEID
VOOR EEN BEPAALD DOEL.
 Dit deel is buiten het bereik Te veel fouten, ik stop `%s --help' voor meer informatie.
 Gebruikersnummer verschilt Onverwacht bestandseinde in archief Onverwacht bestandseinde in verminkte namen Onbekende verminkingsherstelopdracht %s Onbekend patroon `%s' Onbekende systeemfout VERIFICATIE FOUT: %d ongeldige kopregels gevonden Geldige argumenten: Verifieer  Zichtbare lange name fout Zichtbare lange naam fout LET OP: Archief is onvolledig LET OP: Geen deel-kopregels Schrijf controllepunt %d Niet meer specificeren dan ��n `-Acdtrux' optie Een van de `-Acdtrux' opties specificeren ` dubbelzinnig argument %s voor `%s' blok %s:  blok %s: ** Blok met nullen **
 blok %s: ** Bestandseinde (EOF) **
 exec/tcp: Dients niet beschikbaar ongeldig argument %s voor `%s' rmtd: Kan bufferruimte niet alloceren
 rmtd: Rommel commando %c
 rmtd: Prematuur einde van bestand
 standaardinvoer standaarduitvoer tar (kind) tar (kleinkind) 