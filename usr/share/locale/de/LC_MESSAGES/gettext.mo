��    w      �  �   �      
  �   
    �
  �    t  �  �  m  �  &  &    �  *     !  ,   )     V      Z     {     �  ,   �     �  %   �  ,      -   M      {  &   �     �     �       e     3   w  9   �  -   �  /      +   C   T   o   .   �   4   �   ?   (!  !   h!  /   �!     �!  c   �!  X   &"  ]   "  O   �"  '   -#     U#  �   h#  R   0$  (   �$  &   �$     �$  4  �$  �  )  �  �+  Z  @.  ,  �0  #  �2  �  �6  2  �9     �=     >  >   ">  <   a>  8   �>  6   �>  <   ?  :   K?  $   �?     �?  *   �?  ;   �?     1@     N@     k@     �@  $   �@  $   �@     �@     A      A  *   ?A  .   jA  "   �A     �A  #   �A  7   �A  *   ,B     WB  3   tB  "   �B  5   �B     C  G   C     `C     yC     �C     �C     �C     �C     �C     D     #D     5D     ID  F   ^D     �D     �D  7   �D     E     $E  +   4E  1   `E  *   �E  '   �E     �E     �E  8   F  !   KF     mF     �F  1   �F  U  �F  $  &H  @  KI    �J  �  �L  �  �O  �  DS  �  �V  F  �Y  	   ]  -   ]     L]  (   P]     y]     �]  )   �]     �]  &   �]  )   $^  *   N^  "   y^  '   �^     �^     �^      _  �   _  6   �_  X   �_  E   *`  6   p`  2   �`  g   �`  5   Ba  5   xa  W   �a  $   b  ,   +b     Xb  �   `b  g   �b  m   Tc  r   �c  8   5d     nd  �   �d  p   re  z   �e  (   ^f     �f  �  �f  �  ?l  R  o  �  ir  y  iu  �  �w  g  l}  4  Ԁ     	�  $   �  D   C�  A   ��  =   ʆ  :   �  A   C�  >   ��  2   ć  +   ��  2   #�  J   V�     ��  &   ��  &   �  '   �  .   6�  2   e�     ��  $   ��  ,   ؉  5   �  >   ;�  &   z�     ��  .   ��  5   �  I   !�  )   k�  =   ��  "   Ӌ  ,   ��  #   #�  M   G�     ��     ��      ˌ  !   �     �     ,�     G�     `�     {�     ��     ��  F   ��  #   �  ;   '�  J   c�     ��     ��  3   Ύ  2   �  7   5�  4   m�     ��     ��  J   Ώ  &   �     @�     ^�  G   {�     ]       f   p       c   L   1      v   ^   ,       b   .       s   9   "   F               
   _       Q   B   u           W                          3       !              C       >   7   5      n          2      G   ?   @   D       %   w   `           &      H   h          Z            4   N   )   *   a   U       \       O   	   j                              T   S      8   r           /   +           <   $   d   m   [   M      o          X   J   q   =          -   g   i             R          E   V   A   ;       k   '   I          l   (   :   Y       0       e                     K   #          t   P   6       
Convert binary .mo files to Uniforum style .po files.
Both little-endian and big-endian .mo files are handled.
If no input file is given or it is -, standard input is read.
By default the output is written to standard output.
 
If the TEXTDOMAIN parameter is not given, the domain is determined from the
environment variable TEXTDOMAIN.  If the message catalog is not found in the
regular directory, another location can be specified with the environment
variable TEXTDOMAINDIR.
Standard search directory: %s
 
If the TEXTDOMAIN parameter is not given, the domain is determined from the
environment variable TEXTDOMAIN.  If the message catalog is not found in the
regular directory, another location can be specified with the environment
variable TEXTDOMAINDIR.
When used with the -s option the program behaves like the `echo' command.
But it does not simply copy its arguments to stdout.  Instead those messages
found in the selected catalog are translated.
Standard search directory: %s
 
Merges two Uniforum style .po files together.  The def.po file is an
existing PO file with the old translations which will be taken over to
the newly created file as long as they still match; comments will be
preserved, but extract comments and file positions will be discarded.
The ref.po file is the last created PO file (generally by xgettext), any
translations or comments in the file will be discarded, however dot
comments and file positions will be preserved.  Where an exact match
cannot be found, fuzzy matching is used to produce better results.  The
results are written to stdout unless an output file is specified.
   -V, --version                  output version information and exit
  -w, --width=NUMBER             set output page width
  -<, --less-than=NUMBER         print messages with less than this many
                                 definitions, defaults to infinite if not
                                 set
  ->, --more-than=NUMBER         print messages with more than this many
                                 definitions, defaults to 1 if not set

Find messages which are common to two or more of the specified PO files.
By using the --more-than option, greater commonality may be requested
before messages are printed.  Conversely, the --less-than option may be
used to specify less commonality before messages are printed (i.e.
--less-than=2 will only print the unique messages).  Translations,
comments and extract comments will be preserved, but only from the first
PO file to define them.  File positions from all PO files will be
preserved.
   -h, --help                     display this help and exit
  -i, --indent                   write the .po file using indented style
  -j, --join-existing            join messages with existing file
  -k, --keyword[=WORD]           additonal keyword to be looked for (without
                                 WORD means not to use default keywords)
  -L, --language=NAME            recognise the specified language (C, C++, PO),
                                 otherwise is guessed from file extension
  -m, --msgstr-prefix[=STRING]   use STRING or "" as prefix for msgstr entries
  -M, --msgstr-suffix[=STRING]   use STRING or "" as suffix for msgstr entries
      --no-location              do not write '#: filename:line' lines
   -i, --indent                   write the .po file using indented style
      --no-location              do not write '#: filename:line' lines
  -n, --add-location             generate '#: filename:line' lines (default)
      --omit-header              don't write header with `msgid ""' entry
  -o, --output=FILE              write output to specified file
  -p, --output-dir=DIR           output files will be placed in directory DIR
  -s, --sort-output              generate sorted output and remove duplicates
      --strict                   write out strict Uniforum conforming .po file
  -T, --trigraphs                understand ANSI C trigraphs for input
  -u, --unique                   shorthand for --less-than=2, requests
                                 that only unique messages be printed
   -n, --add-location             generate '#: filename:line' lines (default)
      --omit-header              don't write header with `msgid ""' entry
  -o, --output=FILE              write output to specified file
  -p, --output-dir=DIR           output files will be placed in directory DIR
  -s, --sort-output              generate sorted output and remove duplicates
      --strict                   write out strict Uniforum conforming .po file
  -T, --trigraphs                understand ANSI C trigraphs for input
  -V, --version                  output version information and exit
  -w, --width=NUMBER             set output page width
  -x, --exclude-file=FILE        entries from FILE are not extracted

If INPUTFILE is -, standard input is read.
  done.
 %d translated message %d translated messages %s
 %s and %s are mutually exclusive %s: illegal option -- %c
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
 %s: warning:  %s: warning: PO file header missing, fuzzy, or invalid
%*s  warning: charset conversion will not work %s: warning: source file contains fuzzy translation %s:%d: warning: keyword between outer keyword and its arg %s:%d: warning: keyword nested in keyword arg %s:%d: warning: unterminated character constant %s:%d: warning: unterminated string literal %sRead %ld old + %ld reference, merged %ld, fuzzied %ld, missing %ld, obsolete %ld.
 , %d fuzzy translation , %d fuzzy translations , %d untranslated message , %d untranslated messages --join-existing cannot be used when output is written to stdout ...but this definition is similar ...this is the location of the first definition <stdin> Charset "%s" is not a portable encoding name.
Message conversion to user's charset might not work.
 Charset "%s" is not supported. %s relies on iconv(),
and iconv() does not support "%s".
 Charset "%s" is not supported. %s relies on iconv().
This version was built without iconv().
 Charset missing in header.
Message conversion to user's charset will not work.
 Continuing anyway, expect parse errors. Continuing anyway. Copyright (C) %s Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 Installing GNU libiconv and then reinstalling GNU gettext
would fix this problem.
 Report bugs to <bug-gnu-utils@gnu.org>.
 Try `%s --help' for more information.
 Unknown system error Usage: %s [OPTION] INPUTFILE ...
Extract translatable string from given input files.

Mandatory arguments to long options are mandatory for short options too.
  -a, --extract-all              extract all strings
  -c, --add-comments[=TAG]       place comment block with TAG (or those
                                 preceding keyword lines) in output file
  -C, --c++                      shorthand for --language=C++
      --debug                    more detailed formatstring recognision result
  -d, --default-domain=NAME      use NAME.po for output (instead of messages.po)
  -D, --directory=DIRECTORY      add DIRECTORY to list for input files search
  -e, --no-escape                do not use C escapes in output (default)
  -E, --escape                   use C escapes in output, no extended chars
  -f, --files-from=FILE          get list of input files from FILE
      --force-po                 write PO file even if empty
      --foreign-user             omit FSF copyright in output for foreign user
  -F, --sort-by-file             sort output by file location
 Usage: %s [OPTION] INPUTFILE ...
Mandatory arguments to long options are mandatory for short options too.
  -d, --default-domain=NAME      use NAME.po for output (instead of messages.po)
  -D, --directory=DIRECTORY      add DIRECTORY to list for input files search
  -e, --no-escape                do not use C escapes in output (default)
  -E, --escape                   use C escapes in output, no extended chars
  -f, --files-from=FILE          get list of input files from FILE
      --force-po                 write PO file even if empty
  -F, --sort-by-file             sort output by file location
  -h, --help                     display this help and exit
 Usage: %s [OPTION] [FILE]...
Mandatory arguments to long options are mandatory for short options too.
  -e, --no-escape          do not use C escapes in output (default)
  -E, --escape             use C escapes in output, no extended chars
      --force-po           write PO file even if empty
  -h, --help               display this help and exit
  -i, --indent             write indented output style
  -o, --output-file=FILE   write output into FILE instead of standard output
      --strict             write strict uniforum style
  -V, --version            output version information and exit
  -w, --width=NUMBER       set output page width
 Usage: %s [OPTION] [TEXTDOMAIN] MSGID MSGID-PLURAL COUNT
  -d, --domain=TEXTDOMAIN   retrieve translated message from TEXTDOMAIN
  -e                        enable expansion of some escape sequences
  -E                        (ignored for compatibility)
  -h, --help                display this help and exit
  -V, --version             display version information and exit
  [TEXTDOMAIN]              retrieve translated message from TEXTDOMAIN
  MSGID MSGID-PLURAL        translate MSGID (singular) / MSGID-PLURAL (plural)
  COUNT                     choose singular/plural form based on this value
 Usage: %s [OPTION] [[[TEXTDOMAIN] MSGID] | [-s [MSGID]...]]
  -d, --domain=TEXTDOMAIN   retrieve translated messages from TEXTDOMAIN
  -e                        enable expansion of some escape sequences
  -E                        (ignored for compatibility)
  -h, --help                display this help and exit
  -n                        suppress trailing newline
  -V, --version             display version information and exit
  [TEXTDOMAIN] MSGID        retrieve translated message corresponding
                            to MSGID from TEXTDOMAIN
 Usage: %s [OPTION] def.po ref.po
Mandatory arguments to long options are mandatory for short options too.
  -C, --compendium=FILE       additional library of message translations,
                              may be specified more than once
  -D, --directory=DIRECTORY   add DIRECTORY to list for input files search
  -e, --no-escape             do not use C escapes in output (default)
  -E, --escape                use C escapes in output, no extended chars
      --force-po              write PO file even if empty
  -h, --help                  display this help and exit
  -i, --indent                indented output style
  -o, --output-file=FILE      result will be written to FILE
      --no-location           suppress '#: filename:line' lines
      --add-location          preserve '#: filename:line' lines (default)
      --strict                strict Uniforum output style
  -v, --verbose               increase verbosity level
  -V, --version               output version information and exit
  -w, --width=NUMBER          set output page width
 Usage: %s [OPTION] def.po ref.po
Mandatory arguments to long options are mandatory for short options too.
  -D, --directory=DIRECTORY   add DIRECTORY to list for input files search
  -h, --help                  display this help and exit
  -V, --version               output version information and exit

Compare two Uniforum style .po files to check that both contain the same
set of msgid strings.  The def.po file is an existing PO file with the
old translations.  The ref.po file is the last created PO file
(generally by xgettext).  This is useful for checking that you have
translated each and every message in your program.  Where an exact match
cannot be found, fuzzy matching is used to produce better diagnostics.
 Usage: %s [OPTION] filename.po ...
Generate binary message catalog from textual translation description.

Mandatory arguments to long options are mandatory for short options too.
  -a, --alignment=NUMBER      align strings to NUMBER bytes (default: %d)
  -c, --check                 perform language dependent checks on strings
  -D, --directory=DIRECTORY   add DIRECTORY to list for input files search
  -f, --use-fuzzy             use fuzzy entries in output
  -h, --help                  display this help and exit
      --no-hash               binary file will not include the hash table
  -o, --output-file=FILE      specify output file name as FILE
      --statistics            print statistics about translations
      --strict                enable strict Uniforum mode
  -v, --verbose               list input file anomalies
  -V, --version               output version information and exit

Giving the -v option more than once increases the verbosity level.

If input file is -, standard input is read.  If output file is -,
output is written to standard output.
 Written by %s.
 `domain %s' directive ignored `msgid' and `msgid_plural' entries do not both begin with '\n' `msgid' and `msgid_plural' entries do not both end with '\n' `msgid' and `msgstr' entries do not both begin with '\n' `msgid' and `msgstr' entries do not both end with '\n' `msgid' and `msgstr[%u]' entries do not both begin with '\n' `msgid' and `msgstr[%u]' entries do not both end with '\n' at least two files must be specified cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix duplicate message definition empty `msgstr' entry ignored end-of-file within string end-of-line within string error while opening "%s" for reading error while opening "%s" for writing error while reading "%s" error while writing "%s" file exactly 2 input files required field `%s' still has initial default value file "%s" contains a not NUL terminated string file "%s" is not in GNU .mo format file "%s" truncated first plural form has nonzero index format specifications for argument %lu are not the same found %d fatal error found %d fatal errors fuzzy `msgstr' entry ignored header field `%s' should start at beginning of line headerfield `%s' missing in header impossible selection criteria specified (%d < n < %d) inconsistent use of #~ internationalized messages should not contain the `\%c' escape sequence invalid control sequence invalid multibyte sequence keyword "%s" unknown language `%s' unknown memory exhausted missing `msgid_plural' section missing `msgstr' section missing `msgstr[]' section missing arguments no input file given no input files given number of format specifications in `msgid' and `msgstr' does not match plural form has wrong index seek "%s" offset %ld failed some header fields still have the initial default value standard input standard output this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: file `%s' extension `%s' is unknown; will try C warning: this message is not used while creating hash table while preparing output xgettext cannot work without keywords to look for Project-Id-Version: GNU gettext 0.10.36
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 2001-04-11 06:44+02:00
Last-Translator: Karl Eichwalder <ke@suse.de>
Language-Team: German <de@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=2; plural=(n != 1);
 
Bin�re .mo-Dateien zur�ckwandeln in .po-Dateien im Uniforum-Format.  Es
werden sowohl �big-endian�- als auch �little-endian�-Dateien behandelt.  Wenn
die Eingabedatei �-� ist, wird von Standardeingabe gelesen.  Die Voreinstellung
ist, dass die Ausgabe nach Standardausgabe geschrieben wird.
 
Wenn der Parameter BEREICH nicht gegeben wurde, wird der Bereich durch die
Umgebungsvariable TEXTDOMAIN bestimmt.  Wenn der Katalog dieses Bereiches
sich nicht im Standardverzeichnis des Systems befindet, kann durch die
Umgebungsvariable TEXTDOMAINDIR ein anderes Verzeichnis angegeben werden.

Standardverzeichnis: %s
 
Wenn der Parameter TEXTBEREICH nicht angegeben wurde, wird der Bereich durch
die Umgebungsvariable TEXTDOMAIN bestimmt.  Wenn der Katalog dieses Bereiches
sich nicht im Standardverzeichnis des Systems befindet, kann durch die
Umgebungsvariable TEXTDOMAINDIR ein anderes Verzeichnis angegeben werden.

Wenn die Option �-s� angeschaltet ist, verh�lt sich das Programm wie das
Kommando �echo�.  Aber anstatt alle Argumente einfach auszugeben, werden
diese �bersetzt, falls sie im Textbereich vorhanden sind.

Standardverzeichnis: %s
 
Zwei Uniforum-konforme .po-Dateien verschmelzen.  Die Datei Def.po ist eine
PO-Datei mit alten �bersetzungen, die - solange sie immer noch passen - in die
neu zu erzeugende Datei �bernommen werden; Kommentare des �bersetzers werden
�bernommen, aber extrahierte Kommentare und Stellenangaben werden verworfen.
Die Datei Ref.po ist die letzte (i.�A. durch xgettext) erzeugte PO-Datei,
�bersetzungen und �bersetzerkommentare werden verworfen, die mit #. und #:
gekennzeichneten Kommentare werden aber �bernommen.  Wo es keine exakte
�bereinstimmung bei Meldungen gibt, wird mittels inexakter Suche versucht, ein
besseres Ergebnis zu erzielen.  Solange keine Ausgabedatei angegeben ist, wird
das Ergebnis nach Standardausgabe geschrieben.
   -V, --version              Versionsnummer anzeigen und beenden
  -w, --width=ANZAHL         Breite der Ausgabeseite setzen
  -<, --less-than=ANZAHL     Meldungen mit weniger als ANZAHL Definitionen
                               anzeigen (Vorgabe: unendlich)
  ->, --more-than=ANZAHL     Meldungen mit mehr als ANZAHL Definitionen
                               anzeigen (Vorgabe: 1)

Meldungen suchen, die in zwei oder mehr der angegebenen PO-Dateien vorkommen.
Wenn die Option �--more-than� verwendet wird, kann eine gr��ere Verbreitung
gefordert werden.  Auf der anderen Seite k�nnen mit �--less-than� nur Meldungen
mit geringerer Verbreitung angezeigt werden.  Dies bedeutet, �--less-than=2�
wird nur Meldungen anzeigen, die nur einmal vorkommen.  �bersetzungen,
Kommentare und extrahierte Kommentare werden beibehalten, aber nur von der
ersten PO-Datei, die sie definiert.  Positionen der Meldungen in den Quellen
werden f�r alle PO-Dateien festgehalten.
   -h, --help                     diese Hilfe anzeigen und beenden
  -i, --indent                   .po-Datei mit Einger�ckungen darstellen
  -j, --join-existing            Meldungen an existierende Datei anh�ngen
  -k, --keyword[=WORT]           zus�tzliches Schl�sselwort, nach dem gesucht
                                   wird (ohne WORT-Angabe wird nicht nach den
                                   vorgegebenen Schl�sselw�rtern gesucht)
  -L, --language=NAME            angegebene Programmiersprache NAME bearbeiten
                                   (C, C++, PO); bei fehlender Angabe anhand
                                   des Dateisuffixes die Sprache annehmen
  -m, --msgstr-prefix[=KETTE]    KETTE oder "" als Pr�fix f�r msgstr nehmen
  -M, --msgstr-suffix[=KETTE]    KETTE oder "" als Suffix f�r msgstr nehmen
      --no-location              Zeilen mit �#: Datei:Zeilennr.� nicht erzeugen
   -i, --indent               .po-Datei mit Einr�ckungen erzeugen
      --no-location          Zeilen mit �#: Datei:Zeilennr.� nicht schreiben
  -n, --add-location         Zeilen mit �#: Datei:Zeilennr.� erzeugen (Vorgabe)
      --omit-header          �msgid ""�-Eintrag im Kopfteil nicht erzeugen
  -o, --output=DATEI         Ausgabe in DATEI schreiben
  -p, --output-dir=VERZ      Ausgabedateien kommen in das VERZ
  -s, --sort-output          Ausgabe sortieren und Dubletten entfernen
      --strict               .po-Datei streng nach Uniforum-Format erzeugen
  -T, --trigraphs            Trigraph-Zeichen von ANSI C erkennen
  -u, --unique               Abk�rzung f�r �--less-than=2�; Meldungen
                               anfordern, die nur einmal vorkommen
   -n, --add-location             Zeilen mit �#: Datei:Zeilennr.' erzeugen
                                   (Vorgabe)
      --omit-header              �msgid ""�-Eintrag in Kopfteil nicht erzeugen
  -o, --output=DATEI             Ausgabe in DATEI schreiben
  -p, --output-dir=VERZEICHNIS   Ausgabedateien kommen in das VERZEICHNIS
  -s, --sort-output              Ausgabe sortieren und Dubletten entfernen
      --strict                   .po-Datei streng nach Uniforum-Format erzeugen
  -T, --trigraphs                Trigraph-Zeichen von ANSI C erkennen
  -V, --version                  Versionsnummer anzeigen und beenden
  -w, --width=ANZAHL             Breite der Ausgabe auf ANZAHL Spalten festlegen
  -x, --exclude-file=DATEI       Eintr�ge aus DATEI nicht bearbeiten

Wenn EINGABEDATEI �-� ist, wird von Standardeingabe gelesen.
  fertig.
 %d �bersetzte Meldung %d �bersetzte Meldungen %s
 %s und %s schlie�en sich gegenseitig aus %s: unzul�ssige Option -- %c
 %s: ung�ltige Option -- %c
 %s: Option �%c%s� erwartet kein Argument
 %s: Option �%s� ist mehrdeutig
 %s: Option �%s� erwartet ein Argument
 %s: Option �--%s� erwartet kein Argument
 %s: Option �-W %s� erwartet kein Argument
 %s: Option �-W %s� ist mehrdeutig
 %s: Option erwartet ein Argument -- %c
 %s: unbekannte Option �%c%s�
 %s: unbekannte Option �--%s�
 %s: Warnung:  %s: Warnung: Kopfteil der PO-Datei fehlt, ist ungenau oder ung�ltig
%*s  Warnung: Zeichensatz-Konvertierung der Meldungen wird fehlschlagen %s: Warnung: Quelldatei enth�lt ungenaue �bersetzungen %s:%d: Warnung: Schl�sselwort zwischen �u�erem Schl�sselwort und
        dessen Argument %s:%d: Warnung: Schl�sselwort in Schl�sselwort-Argument verschachtelt %s:%d: Warnung: Zeichenkonstante nicht korrekt beendet %s:%d: Warnung: Zeichenkette nicht korrekt beendet %s%ld alte + %ld Referenzeintr�ge gelesen,
%ld stimmen �berein, %ld ungenau, %ld fehlen, %ld veraltet.
 , %d ungenaue �bersetzung , %d ungenaue �bersetzungen , %d un�bersetzte Meldung , %d un�bersetzte Meldungen �--join-existing� kann nicht benutzt werden, wenn nach Standardausgabe
geschrieben wird ...aber diese Definition ist �hnlich ...dies ist die Stelle der ersten Definition <stdin> Zeichensatz �%s� ist ein nicht portabler Kodierungsname.
Konvertierung der Meldungen in den Zeichensatz des Anwenders
k�nnte fehlschlagen.
 Zeichensatz �%s� wird nicht unterst�tzt.  %s h�ngt von iconv() ab,
und iconv() unterst�tzt �%s� nicht.
 Zeichensatz �%s� wird nicht unterst�tzt.  %s h�ngt von iconv() ab.
Diese Version wurde ohne iconv() erzeugt.
 Zeichensatz fehlt im Kopfeintrag.
Konvertierung der Meldungen in den Zeichensatz des Anwenders
wird fehlschlagen.
 Gleichwohl Fortsetzung; Parsing-Fehler sind zu erwarten. Gleichwohl Fortsetzung. Copyright � %s Free Software Foundation, Inc.
Dies ist freie Software; in den Quellen befindet sich die Lizenzbedingung.
Es gibt KEINERLEI Garantie; nicht einmal f�r die TAUGLICHKEIT oder
die VERWENDBARKEIT ZU EINEN ANGEGEBENEN ZWECK.
 Dieses Problem l�sst sich beheben, wenn Sie GNU libiconv installieren
und dann GNU�gettext erneut installieren.
 Fehler bitte an <bug-gnu-utils@gnu.org> melden.

F�r die deutsche �bersetzung ist die Mailingliste <de@li.org> zust�ndig.
 �%s --help� gibt weitere Informationen.
 Unbekannter Systemfehler Benutzung: %s [OPTION] EINGABEDATEI ...
Aus den Eingabedateien alle zu �bersetzenden Meldungen herausschreiben.

Notwendige Argumente f�r Optionen in Langform sind auch f�r die
Kurzform notwendig.

  -a, --extract-all              alle Zeichenketten herausschreiben
  -c, --add-comments[=KENNUNG]   Kommentare mit KENNUNG (oder die aus Zeilen
                                   vor einem Schl�sselwort) herausschreiben
  -C, --c++                      auch C++-Kommentare behandeln; Kurzform f�r
                                   �--language=C++�
      --debug                    detaillierte Formatstringbewertung in Ausgabe
  -d, --default-domain=NAME      Ausgabe in NAME.po (anstatt in messages.po)
  -D, --directory=VERZEICHNIS    VERZEICHNIS in Liste f�r Verzeichnisse
                                   mit PO-Dateien einf�gen
  -e, --no-escape                keine C-Ersatzdarstellungen in Ausgabe
                                   verwenden (Vorgabe)
  -E, --escape                   C-Ersatzdarstellungen und keine erweiterten
                                   Zeichen in Ausgabe verwenden\n"
  -f, --files-from=DATEI         Namen der Eingabedateien aus DATEI holen
      --force-po                 PO-Datei auch bei Fehlern schreiben
      --foreign-user             keine Zeile mit FSF-Copyright in Ausgabe
                                   einf�gen
  -F, --sort-by-file             Ausgabe nach Dateivorkommen sortieren
 Benutzung: %s [OPTION] EINGABEDATEI ...

Notwendige Argumente f�r Optionen in Langform sind auch f�r die Kurzform
notwendig.

  -d, --default-domain=NAME  Ausgabe in NAME.po (anstatt in messages.po)
  -D, --directory=VERZ       VERZ in Liste f�r Verzeichnisse mit PO-Dateien
                               einf�gen
  -e, --no-escape            keine C-Ersatzdarstellung in Ausgabe (Vorgabe)
  -E, --escape               Ersatzdarstellung f�r nicht-ASCII Zeichen
  -f, --files-from=DATEI     Namen der Eingabedateien aus DATEI holen
      --force-po             PO-Datei auch bei Fehlern schreiben
  -F, --sort-by-file         Ausgabe nach Dateivorkommen sortieren
  -h, --help                 diese Hilfe anzeigen und beenden
 Benutzung: %s [OPTION] [DATEI]...
Notwendige Argumente f�r Optionen in Langform sind auch f�r die
Kurzform notwendig.

  -e, --no-escape           keine C-Ersatzdarstellungen in Ausgabe verwenden
                              (Vorgabe)
  -E, --escape              C-Ersatzdarstellungen und keine erweiterten
"                             Zeichen in Ausgabe verwenden
      --force-po            PO-Datei erzeugen, auch wenn sie leer ist
  -h, --help                diese Hilfe anzeigen und beenden
  -i, --indent              Ausgabe einger�ckt darstellen
  -o, --output-file=DATEI   Ausgabe in DATEI schreiben anstatt Standardausgabe
      --strict              .po-Datei streng nach Uniforum-Format erzeugen
  -V, --version             Versionsnummer anzeigen und beenden
  -w, --width=ANZAHL        Breite der Ausgabe auf ANZAHL Spalten festlegen
 Benutzung: %s [OPTION] [TEXTBEREICH] SCHL�SSEL SCHL�SSEL-PLURAL ZAHL

  -d, --domain=TEXTBEREICH     �bersetzungen kommen aus TEXTBEREICH
  -e                           �bersetzung von Sonderzeichendarstellung
                                 anschalten
  -E                           (aus Kompatibilit�tsgr�nden ignoriert)
  -h, --help                   diese Hilfe anzeigen und beenden
  -V, --version                Versionsnummer anzeigen und beenden
  [TEXTBEREICH]                die �bersetzung aus dem TEXTBEREICH holen
  SCHL�SSEL SCHL�SSEL-PLURAL   SCHL�SSEL (Singular) / SCHL�SSEL-PLURAL (Plural)
                                 �bersetzen
  ZAHL                         Singular-/Pluralform anhand des Wertes ZAHL
                                 w�hlen
 Benutzung: %s [OPTION] [[[TEXTBEREICH] SCHL�SSEL] | [-s [MSGID]...]]
  -d, --domain=TEXTBEREICH   �bersetzungen kommen aus TEXTBEREICH
  -e                         �bersetzung von Sonderzeichendarstellung
                               anschalten
  -E                         (aus Kompatibilit�tsgr�nden ignoriert)
  -h, --help                 diese Hilfe anzeigen und beenden
  -n                         kein abschlie�endes Zeilenendezeichen ausgeben
  -V, --version              Versionsnummer anzeigen und beenden
  [TEXTBEREICH] SCHL�SSEL    die �bersetzung zu SCHL�SSEL aus dem TEXTBEREICH
                               holen
 Benutzung: %s [OPTION] Def.po Ref.po

Notwendige Argumente f�r Optionen in Langform sind auch f�r die Kurzform
notwendig.

  -C, --compendium=DATEI        zus�tzliche Bibliothek mit �bersetzungen, es
                                  k�nnen mehrere angegeben werden
  -D, --directory=VERZEICHNIS   VERZEICHNIS in Liste f�r Verzeichnisse mit
                                  PO-Dateien einf�gen
  -e, --no-escape               keine C-Ersatzdarstellungen in Ausgabe
                                  verwenden (Vorgabe)
  -E, --escape                  C-Ersatzdarstellungen und keine erweiterten
                                  Zeichen in Ausgabe verwenden
      --force-po                PO-Datei erzeugen, auch wenn sie leer ist
  -h, --help                    diese Hilfe anzeigen und beenden
  -i, --indent                  Ausgabe einger�ckt darstellen
  -o, --output-file=DATEI       Ausgabe nach DATEI schreiben
      --no-location             Zeilen mit �#: Datei:Zeilennr.� nicht schreiben
      --add-location            Zeilen mit �#: Datei:Zeilennr.� erhalten
                                  (Vorgabe)
      --strict                  .po-Datei streng nach Uniforum-Format erzeugen
  -v, --verbose                 Unregelm��igkeiten in Eingabe aufzeigen
  -V, --version                 Versionsnummer anzeige und beenden
  -w, --width=ANZAHL            Breite der Ausgabe auf ANZAHL Spalten festlegen
 Benutzung: %s [OPTION] Datei1.po Def.po Ref.po

Notwendige Argumente f�r Optionen in Langform sind auch f�r die Kurzform
notwendig.

  -D, --directory=VERZEICHNIS   VERZEICHNIS in Liste f�r Verzeichnisse mit
                                  PO-Dateien einf�gen
  -h, --help                    diese Hilfe anzeigen und beenden
  -V, --version                 Versionsnummer anzeigen und beenden

Zwei .po-Dateien im Uniforum-Format vergleichen um zu sicherzustellen, dass
beide die gleichen �msgid�-Eintr�ge enthalten.  Die Datei Def.po enth�lt die
alten �bersetzungen, die Datei Ref.po ist die letzte (i.�A. durch xgettext)
erzeugte PO-Datei.  Mit Hilfe diese Programms l�sst sich also �berpr�fen, ob
jede Meldung im Programm �bersetzt wurde.  Wenn keine exakte �bereinstimmung
gefunden wurde, wird mittels inexakter Suche versucht, eine bessere
Hilfestellung zu geben.
 Benutzung: %s [OPTION] Dateiname.po ...
Bin�re Dateien mit Meldungen aus der textuellen Beschreibung erzeugen.

Notwendige Argumente f�r Optionen in Langform sind auch f�r die Kurzform
notwendig.

  -a, --alignment=ZAHL          Ausgaben an ZAHL (Vorgabe: %d) Bytegrenze
                                  ausrichten
  -c, --check                   Formatelemente in Meldungen �berpr�fen
  -D, --directory=VERZEICHNIS   VERZEICHNIS in Liste f�r Verzeichnisse mit
                                  PO-Dateien einf�gen
  -f, --use-fuzzy               auch ungenaue �bersetzungen verwenden
  -h, --help                    diese Hilfe anzeigen und beenden
      --no-hash                 Bin�rdatei soll keine Hash-Tabelle enthalten
  -o, --output-file=DATEI       DATEI als Ausgabedatei festlegen
      --statistics              Statistik f�r �bersetzungen anzeigen
      --strict                  strikt nach Uniforum-Spezifikation verfahren
  -v, --verbose                 Unregelm��igkeiten in der Eingabe aufzeigen
  -V, --version                 Versionsnummer anzeigen und beenden

Bei mehrfacher Angabe der Option �-v� erh�hen sich die Hinweise zu etwaigen
Unregelm��igkeiten.

Wenn die Eingabedatei �-� ist, wird die Eingabe von der Standardeingabe
gelesen.  Ist die Ausgabedatei �-�, wird nach der Standardausgabe geschrieben.
 Geschrieben von %s.
 �domain %s�-Anweisung wird ignoriert �msgid�- und �msgstr_plural�-Eintrag beginnen nicht jeweils mit �\n� �msgid�- und �msgstr_plural�-Eintrag enden nicht jeweils mit �\n� �msgid�- und �msgstr�-Eintrag beginnen nicht jeweils mit �\n� �msgid�- und �msgstr�-Eintrag enden nicht jeweils mit �\n� �msgid�- und �msgstr[%u]�-Eintrag beginnen nicht jeweils mit �\n� �msgid�- und �msgstr[%u]�-Eintrag enden nicht jeweils mit �\n� es m�ssen mindestens zwei Dateien angegeben werden Ausgabedatei �%s� kann nicht erzeugt werden Bereichsname �%s� ist nicht als Dateiname geeignet Bereichsname �%s� ist nicht als Dateiname geeignet; Pr�fix wird verwendet. Mehrfachdefinition der Meldung leerer �msgstr�-Eintrag wird ignoriert Dateiende innerhalb einer Zeichenkette Zeilenende innerhalb einer Zeichenkette �ffnen der Datei �%s� zum Lesen fehlgeschlagen �ffnen der Datei �%s� zum Schreiben fehlgeschlagen Fehler beim Lesen von �%s� Fehler beim Schreiben von Datei �%s� es werden genau zwei Eingabedateien ben�tigt Feld �%s� hat immer noch den anf�nglichen Vorgabewert Datei �%s� beinhaltet eine nicht mit NUL beendete Zeichenkette Datei �%s� ist nicht im GNU .mo-Format Datei �%s� ist verst�mmelt erste Pluralform hat einen Index ungleich Null Formatelemente f�r Argument %lu stimmen nicht �berein es ist %d fataler Fehler aufgetreten es sind %d fatale Fehler aufgetreten ungenauer �msgstr�-Eintrag wird ignoriert Feld �%s� im Kopfeintrag sollte in der ersten Spalte anfangen Im Kopfeintrag fehlt das Feld �%s� Auswahlkriterium nicht m�glich (%d < n < %d) Nicht konsistente Verwendung von #~ Zu �bersetzende Meldungen sollten nicht die Ersatzdarstellung �\%c� enthalten ung�ltige Kontrollsequenz ung�ltige Multibyte-Sequenz Schl�sselwort �%s� ist unbekannt Programmiersprache �%s� unbekannt virtueller Speicher ersch�pft �msgstr[]�-Abschnitt fehlt �msgstr�-Abschnitt fehlt �msgstr[]�-Abschnitt fehlt Argumente fehlen Eingabedatei fehlt keine Eingabedateien gegeben Anzahl der Formatelemente in �msgid� and �msgstr� stimmt nicht �berein Pluralform hat einen falschen Index Positionieren in Datei �%s� auf Position %ld fehlgeschlagen Einige Felder im Kopfeintrag haben immer noch den anf�nglichen Vorgabewert Standardeingabe Standardausgabe diese Datei darf keine �domain�-Anweisung enthalten diese Meldung hat im Bereich �%s� keine Definition diese Meldung kommt vor, ist aber in %s nicht definiert diese Meldung kommt vor, ist aber nicht definiert... zu viele Argumente zu viele Fehler: Abbruch Warnung: Typ der Datei �%s� mit Suffix �%s� ist unbekannt; C wird versucht Warnung: diese Meldung kommt nicht vor beim Anlegen der Hash-Tabelle beim Vorbereiten der Ausgabe ohne Angabe zu ber�cksichtigender Schl�sselw�rter schl�gt xgettext fehl 