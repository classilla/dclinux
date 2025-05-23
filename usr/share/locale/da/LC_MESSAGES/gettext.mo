��    K      t  e   �      `  �   a  �  E  t  %	  �  �     �      �     �     �  ,   �       %   9  ,   _  -   �      �  &   �          "  3   B  /   v  +   �  ?   �  !     /   4  �   d  (   ,  &   U     |  �  �  ,    �  G          ,  8   J  6   �     �  *   �  ;        @     ]     z     �  $   �  $   �     �          /  *   N  "   y     �     �  3   �  "     G   $     l     �     �     �     �     �  F   �     2  7   N     �     �  +   �  1   �  *     '   .     V     i  8   �  !   �     �     �  `     �   p!  �  ="  �  "$  �  �&     �)     �)     �)     �)  ,   *  )   2*  &   \*  ,   �*  ,   �*  )   �*  &   +     .+     I+  C   d+  5   �+  /   �+  G   ,     V,     p,  �   �,  7   a-      �-     �-  n  �-  _  ;0  4  �2     �5     �5  :   �5  9   :6     t6  (   �6  E   �6     7     #7  7   C7  -   {7     �7  &   �7     �7  !   8      (8  4   I8  #   ~8     �8      �8  -   �8     
9  =   (9     f9     {9     �9     �9     �9     �9  0   �9      ":  ?   C:     �:     �:  /   �:  /   �:  ,   ;  *   1;     \;  +   q;  H   �;  '   �;     <     -<     	          ,         @   ?   )   8   *   H                 A           4   =       -   /               C            6           D   %           !   &       7      <   :   B   0                    E   9       '       "   #          
   2   1       I           J   K   5       $                 3          .          +      >             G      ;       (                F    
Convert binary .mo files to Uniforum style .po files.
Both little-endian and big-endian .mo files are handled.
If no input file is given or it is -, standard input is read.
By default the output is written to standard output.
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
 %s: warning: source file contains fuzzy translation %s:%d: warning: unterminated character constant %s:%d: warning: unterminated string literal --join-existing cannot be used when output is written to stdout ...but this definition is similar ...this is the location of the first definition Copyright (C) %s Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 Report bugs to <bug-gnu-utils@gnu.org>.
 Try `%s --help' for more information.
 Unknown system error Usage: %s [OPTION] [FILE]...
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
  -D, --directory=DIRECTORY   add DIRECTORY to list for input files search
  -h, --help                  display this help and exit
  -V, --version               output version information and exit

Compare two Uniforum style .po files to check that both contain the same
set of msgid strings.  The def.po file is an existing PO file with the
old translations.  The ref.po file is the last created PO file
(generally by xgettext).  This is useful for checking that you have
translated each and every message in your program.  Where an exact match
cannot be found, fuzzy matching is used to produce better diagnostics.
 Written by %s.
 `domain %s' directive ignored `msgid' and `msgstr' entries do not both begin with '\n' `msgid' and `msgstr' entries do not both end with '\n' cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix duplicate message definition empty `msgstr' entry ignored end-of-file within string end-of-line within string error while opening "%s" for reading error while opening "%s" for writing error while reading "%s" error while writing "%s" file exactly 2 input files required field `%s' still has initial default value file "%s" is not in GNU .mo format file "%s" truncated fuzzy `msgstr' entry ignored header field `%s' should start at beginning of line headerfield `%s' missing in header internationalized messages should not contain the `\%c' escape sequence keyword "%s" unknown language `%s' unknown missing `msgstr' section missing arguments no input file given no input files given number of format specifications in `msgid' and `msgstr' does not match seek "%s" offset %ld failed some header fields still have the initial default value standard input standard output this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: file `%s' extension `%s' is unknown; will try C warning: this message is not used while creating hash table while preparing output Project-Id-Version: GNU gettext 0.10.31
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 1997-08-29 07:21 MDT
Last-Translator: Thorbjoern Ravn Andersen <ravn@mip.ou.dk>
Language-Team: Danish <da@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=2; plural=(n != 1);
 
Omform bin�re .mo filer til Uniforum .po filer.  B�de 'little-endian'
og 'big-endian' .mo filer kan h�ndteres.  Hvis inddatafilen er -,
l�ses standard inddata.  Som standard skrives til standard uddata.
 
Hvis TEKSTDOM�NE parameteren ikke angives, bestemmes dom�net ud fra v�rdien af
milj�variablen TEXTDOMAIN.  Hvis tekstkataloget ikke kan findes i det
s�dvanlige filkatalog, kan en anden placering angives vha milj�variablen
TEXTDOMAINDIR.
N�r tilvalget -s bruges, opf�rer programmet sig som 'echo' kommandoen, men
argumenterne bliver ikke blot kopieret til standard uddata.  I stedet
overs�ttes de tekster der findes i det valgte tekstkatalog.
Standard filkataloget for s�gning er: %s
 
Kombinerer to .po filer i Uniforum-stil.  `def.po' filen (som allerede findes)
indholder gamle overs�ttelser som vil blive overf�rt til den nye PO fil under
foruds�tning af at de stadig passer.  Kommentarer vil blive bevaret i
mods�tning til fil-udtr�kskommentarer og filpositioner. `ref.po' filen er den
sidst oprettede PO fil (s�dvanligvis af xgettext), hvorfra alle overs�ttelser
og kommentarer vil blive bortkastet, men 'punktum'-kommentarer og
filpositioner vil blive bevaret.  N�r der ikke kan findes en n�jagtig
overensstemmelse, vil 'l�s s�gning' (fuzzy matching) blive brugt til at give
bedre resultater.  Med mindre en uddatafil er angivet, vil resultaterne blive
skrevet til standard uddata.
   -n, --add-location             skriv '#: filenavn:linie' linier (standard)
      --omit-header              undlad skrivning af `msgid' teksten i hovedet
  -o, --output=FIL               uddata skrives til FIL
  -p, --output-dir=FILKATALOG    uddatafiler placeres i FILKATALOG
  -s, --sort-output              sort�r uddata og fjern gentagelser
      --strict                   uddata overholder 'streng Uniforum'-stil
  -T, --trigraphs                forst� ANSI C trigrafer i inddata
  -V, --version                  vis versionsinformation og afslut
  -w, --width=TAL		 angiv uddatabredde
  -x, --exclude-file=FIL         tekster i FIL benyttes ikke

Hvis INPUTFIL er -, l�ses fra standard inddata.
  afsluttet.
 %s og %s udelukker hinanden %s: ulovligt tilvalg -- %c
 %s: ugyldigt tilvalg -- %c
 %s: tilvalget `%c%s' tager ikke et argument
 %s: tilvalget '%s' kan betyde flere ting
 %s: tilvalget `%s' kr�ver et argument
 %s: tilvalget '--%s' tager ikke et argument
 %s: tilvalget '--%s' tager ikke et argument
 %s: tilvalget '%s' kan betyde flere ting
 %s: tilvalget '%c' kr�ver et argument
 %s: ukendt tilvalg `%c%s'
 %s: ukendt tilvalg `--%s'
 %s: advarsel: kildetekstfilen indeholder l�se overs�ttelser (fuzzy) %s:%d: advarsel:  tegnkonstant ikke afsluttet korrekt %s:%d: advarsel: streng'literal' ikke afsluttet --join-existing kan ikke benyttes n�r uddata sendes til standard uddata ...men denne tekst ligner ... her er den f�rste erkl�ring Copyright (C) %s Free Software Foundation, Inc.
Dette er frit programmel; kildeteksten indeholder kopibetingelser.  Der er
INGEN garanti -- end ikke for SALGBARHED eller VELEGNETHED TIL NOGET S�RLIGT
FORM�L.
 Rapport�r fejl p� engelsk til <bug-gnu-utils@gnu.org>.
 Information f�s med `%s --help'
 Ukendt systemfejl Brug: %s [TILVALG] def.po ref.po
Hvis et langt tilvalg kr�ver et argument, g�lder det ogs� for det tilsvarende
korte tilvalg.
  -e, --no-escape          brug ikke C-escapesekvenser i uddata (standard)
  -E, --escape             brug C-escapesekvenser i uddata.  Ingen specialtegn
  -h, --help               vis denne hj�lp og afslut
  -i, --indent             benyt indrykket stil for uddata
  -o, --output-file=FIL    uddata skrives til FIL
      --strict             benyt 'streng Uniforum' stil for uddata
  -V, --version            vis versionsinformation og afslut
  -w, --width=TAL          angiv udskrivningsbredde
 Brug: %s [TILVALG] [[[TEKSTDOM�NE] TEKSTID] | [-s [TEKSTID]...]]
  -d, --domain=TEKSTDOM�NE  hent oversatte tekster fra TEKSTDOM�NE
  -e                        aktiv�r fortolkning af visse escape-sekvenser
  -E                        (ignoreret af hensyn til kompabilitet)
  -h, --help                vis denne hj�lp og afslut
  -n                        undertryk afsluttende linieskift
  -V, --version             vis versionsinformation og afslut
  [TEKSTDOM�NE] TEKSTID     hent den oversatte tekst fra TEKSTDOM�NE
                            svarende til TEKSTID

(TEKSTID svarer til 'msgid' felterne)
 Brug: %s [TILVALG] def.po ref.po
Hvis et langt tilvalg tager et argument, g�lder det ogs� for den
tilsvarende korte udgave.
  -D, --directory=FILKATALOG  gennems�g ogs� FILKATALOG efter inddatafiler
  -h, --help                  vis denne hj�lpetekst og afslut
  -V, --version               vis versions information og afslut

Sammenlign to .po filer i Uniforum format for at kontrollere at de begge
indeholder det samme s�t af msgid tekststrenge.  PO-filen 'def.po' indeholder
de gamle overs�ttelser og PO-filen 'ref.po' er den nyeste udgave (s�dvanligvis
oprettet af xgettext).  Dette er en praktisk m�de at kontrollere at hver
eneste tekst i programmet er oversat.  Hvis der ikke er n�jagtigt sammenfald
mellem msgid-tekststrengene, benyttes en upr�cis sammenligningsmetode til at
give bedre fejlretningsinformation.
 Skrevet af %s.
 `domain %s'-kommando ignoreres `msgid' og `msgstr' teksterne begynder ikke begge med '\n' `msgid' og `msgstr' teksterne slutter ikke begge med '\n' kan ikke oprette uddatafil '%s' dom�net '%s' kan ikke bruges som filnavn dom�net '%s' er ikke brugbart som filnavn.  Vil bruge pr�fiks istedet tekst erkl�ret mere end en gang tom `msgstr'-kommando ignoreret tekststreng ikke afsluttet da filens slutning blev n�et tekststreng var ikke afsluttet ved linieskift fejl ved l�se-�bning af '%s' fejl opst�et ved skrive-�bning af '%s' fejl ved l�sning af '%s' fejl ved skrivning til filen '%s' der kr�ves netop to inddatafiler feltet `%s' har stadig den oprindelige standardv�rdi filen '%s' er ikke i GNU .mo format filen '%s' blev afkortet "fuzzy" `msgstr'-tekst ignoreret feltet `%s' b�r starte ved liniens begyndelse feltet `%s' mangler i hovedet overs�ttelige tekster m� ikke indeholde `\%c' escapesekvensen ukendt n�gleord '%s' ukendt sprog `%s' `msgstr' afsnit mangler argumenter mangler ingen inddatafil angivet ingen filer angivet som inddata forskelligt antal formater i `msgid' og `msgstr' seek '%s' offset %ld mislykkedes nogle felter i hovedet har stadig den oprindelige standardv�rdi standard inddata standard uddata denne fil m� ikke indeholde 'domain' kommandoer denne besked har ingen erkl�ring i '%s' dom�net denne tekst er brugt, men ikke erkl�ret i %s denne tekst bruges men er ikke erkl�ret... for mange argumenter afbryder k�rslen p� grund af for mange fejl advarsel: ukendt type for fil `%s' med endelse `%s'; C benyttes i stedet advarsel: denne tekst bliver ikke brugt under oprettelsen af hashtabel under udskriftsforberedelse 