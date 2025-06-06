��    M      �  g   �      �  �   �  t  m  �  �	     �      �     �     �  ,   �     %  %   C  ,   i  -   �      �  &   �          ,  3   L  /   �  +   �  ?   �  !     /   >  �   n  (   6  &   _     �  4  �  �  �  �  j  ,  �  �     2  �     ($     8$  $   V$     {$  *   �$  ;   �$     %     %     ;%     U%  $   o%  $   �%     �%     �%     �%  *   &  "   :&     ]&     q&  3   �&  "   �&  5   �&  G   '     c'     x'     �'     �'     �'     �'  F   �'     )(  7   E(     }(     �(  +   �(  1   �(  *   �(  '   %)     M)     `)  8   z)  !   �)     �)     �)  j  *  �   q+  �  U,  �  �.  	   �2     �2     �2     �2  ,   3     >3  $   ]3  ,   �3  ,   �3     �3  #   �3      4     94  1   R4  (   �4  )   �4  G   �4  !   5  3   A5  �   u5  ,   F6  &   s6     �6  ~  �6  �  +;  �  �=  :  �@  �  �B  N  �E     J     *J     IJ     aJ  )   �J  9   �J     �J     K      K     ;K  $   XK  &   }K     �K  !   �K     �K  -   �K  #   +L     OL     fL  <   �L  "   �L  +   �L  G   M     YM     oM     �M     �M     �M     �M  H   �M  "   %N  2   HN     {N     �N  0   �N  3   �N  0   �N  .   *O     YO     nO  F   �O  '   �O     �O     P     1   F                J   
   G   ,             =      .         %   I                *      5      K   (   C      +   6              0         "                                          @   )                   3              	       $   4   L   A   2             ?   >   #   !   -       E   M   9       <   D           &       '          8                 B   :   7   /   ;   H    
Convert binary .mo files to Uniforum style .po files.
Both little-endian and big-endian .mo files are handled.
If no input file is given or it is -, standard input is read.
By default the output is written to standard output.
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
 `domain %s' directive ignored at least two files must be specified cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix duplicate message definition empty `msgstr' entry ignored end-of-file within string end-of-line within string error while opening "%s" for reading error while opening "%s" for writing error while reading "%s" error while writing "%s" file exactly 2 input files required field `%s' still has initial default value file "%s" is not in GNU .mo format file "%s" truncated fuzzy `msgstr' entry ignored header field `%s' should start at beginning of line headerfield `%s' missing in header impossible selection criteria specified (%d < n < %d) internationalized messages should not contain the `\%c' escape sequence keyword "%s" unknown language `%s' unknown missing `msgstr' section missing arguments no input file given no input files given number of format specifications in `msgid' and `msgstr' does not match seek "%s" offset %ld failed some header fields still have the initial default value standard input standard output this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: file `%s' extension `%s' is unknown; will try C warning: this message is not used while creating hash table while preparing output Project-Id-Version: GNU gettext 0.10.12
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 1999-08-06 22:38+02:00
Last-Translator: Trond Endrest�l <endrestol@hotmail.com>
Language-Team: Norwegian-bokm�l <no@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=2; plural=(n != 1);
 
Konverter bin�re .mo-filer til Uniforum .po-filer.
B�de �little-endian� og �big-endian� .mo-filer blir h�ndtert.
Dersom innfil er -, blir standard inn lest.
Dersom intet annet er spesifisert, blir det skrevet til standard ut.
 
Fletter sammen to Uniforum .po-filer.  def.po-filen er en eksisterende
PO-fil med gamle oversettelser, som vil bli overf�rt til den nye filen
dersom de fremdeles stemmer.  Kommentarer blir tatt med, men kommentarer om
selve ekstraheringen og fil-posisjoner blir slettet.  ref.po-filen er den
sist genererte PO-filen (vanligvis generert med xgettext).  Oversettelser
eller kommentarer i denne filen blir slettet, men punktum-kommentarer og
fil-posisjoner blir ivaretatt.  Der det ikke lar seg gj�re � finne en
eksakt overensstemmelse, blir �fuzzy� sammenligning brukt for � f� bedre
resultater.  Resultatet blir skrevet til standard ut, med mindre en utfil
er spesifisert.
   -V, --version                  skrive ut programversjon og avslutte
  -w, --width=ANTALL             sett sidebredden i utdata
  -<, --less-than=ANTALL         skrive ut meldinger med mindre enn ANTALL
                                 definisjoner, standard er uendelig dersom
                                 ikke satt
  ->, --more-than=ANTALL         skrive ut meldinger med mer enn ANTALL
                                 definisjoner, standard er 1 dersom ikke satt

Finne meldinger som er felles i to eller flere av de angitt PO-filene.
Ved � bruke --more-than-flagget, kan �kt fellesskap bli anmodet
f�r meldingene blir skrevet ut.  Omvendt kan --less-than-flagget brukes
for � angi mindre fellesskap for meldingene blir skrevet ut (eks.
--less-than=2 vil bare skrive ut unike meldinger).  Oversettelser,
kommentarer og uttrekkskommentarer bevares, men bare fra den f�rste
PO-filen som definerer dem.  Filposisjonene fra alle PO-filene vil
bli bevart.
  ferdig.
 %s og %s utelukker hverandre %s: ulovlig flagg -- %c
 %s: ugyldig flagg -- %c
 %s: flagget �%c%s� tillater ikke argumenter
 %s: flagget �%s� er flertydig
 %s: flagget �%s� krever et argument
 %s: flagget �--%s� tillater ikke argumenter
 %s: flagg �-W %s� tillater ikke et argument
 %s: flagg �-W %s� er flertydig
 %s: flagg krever et argument -- %c
 %s: ukjent flagg �%c%s�
 %s: ukjent flagg �--%s�
 %s: advarselL: kildefil har antatte oversettelser %s:%d: advarsel: uavsluttet tegnkonstant %s:%d: advarsel: uavsluttet strengliteral --join-existing kan ikke brukes n�r utdata blir skrevet til standard ut ... men denne definisjonen ligner ... dette er lokasjonen til den f�rste definisjonen Copyright (C) %s Free Software Foundation, Inc.
Dette er fri pogramvare; se kildekoden for kopieringsbetingelser.  Det finnes
INGEN garanti; ikke engang for SALGBARHET eller SKIKKETHET FOR ET BESTEMT FORM�L.
 Rapporter feil til <bug-gnu-utils@gnu.org>.
 Pr�v �%s --help� for mer informasjon.
 Ukjent systemfeil Bruksm�te: %s [FLAGG] INNFIL ...
Ekstrahere oversettbare strenger fra angitte innfiler.

Obligatoriske argumenter for lange flagg er ogs� obligatoriske for korte flagg.
  -a, --extract-all              ekstrahere alle strengene
  -c, --add-comments[=TAG]       lagre kommentarblokker med TAG (eller kommentarer
                                 i linjer som kommer foran n�kkelord) i utfilen
  -C, --c++                      kortform for --language=C++
      --debug                    mer detaljert resultat fra gjenkjenning av formatstreng
  -d, --default-domain=NAVN      bruk NAVN.po for utdata (istedet for messages.po)
  -D, --directory=KATALOG        legg KATALOG til s�kelisten for innfiler
  -e, --no-escape                ikke bruk C-escapesekvenser i utdata (standard)
  -E, --escape                   bruke C-escapekoder i utdata, ingen utvidede tegn
  -f, --files-from=FIL           hent liste over innfiler fra FIL
      --force-po                 skriv ut PO-fil selv om den vil bli tom
      --foreign-user             utelat FSF-copyright i utdata for fremmede brukere
  -F, --sort-by-file             sorter utdata etter fillokasjon
 Bruksm�te: %s [FLAGG] INNFIL ...
Obligatoriske argumenter til lange flagg er ogs� obligatorisk for korte flagg.
  -d, --default-domain=NAVN      bruk NAVN.po som resultatfil (istedet for messages.po)
  -D, --directory=KATALOG        legge til KATALOG til s�kelisten for innfiler
  -e, --no-escape                ikke bruk C-escapekoder i utdata (standard)
  -E, --escape                   bruk C-escapekoder i utdata, ingen utvidede tegn
  -f, --files-from=FIL           hent liste av innfiler fra FIL
      --force-po                 skriv PO-fil selv om den vil bli tom
  -F, --sort-by-file             sorter utdata etter fillokasjon
  -h, --help                     vise denne hjelpen og avslutte
 Bruksm�te: %s [FLAGG] [FIL]...
Obligatoriske argumenter til lange flagg er ogs� obligatoriske for korte flagg.
  -e, --no-escape          ikke bruk C-escapekoder i utdata (standard)
  -E, --escape             bruk C-escapekoder i utdata, ingen utvidede tegn
      --force-po           skriv PO-fil selv om deb vil bli tom
  -h, --help               vise denne hjelpen og avslutte
  -i, --indent             skriv utdata med innrykk
  -o, --output-file=FIL    skriv utdata til FIL istedet for standard ut
      --strict             lag streng Uniforum-konform .po-fil
  -V, --version            skriv ut programversjon og avslutt
  -w, --width=ANTALL       sett sidebredden i utdata
 Bruk: %s [FLAGG] [[[TEXTDOMAIN] MSGID] | [-s [MSGID]...]]
  -d, --domain=TEXTDOMAIN   hent oversatte meldinger fra TEXTDOMAIN
  -e                        sl� p� ekspandering av noen escape-sekvenser
  -E                        (tillatt av kompatibilitetshensyn)
  -h, --help                vis denne hjelpeteksten og avslutt
  -n                        undertrykk etterf�lgende linjeskift
  -v, --version             vis programversjon og avslutt
  [TEXTDOMAIN] MSGID        hent oversatt melding som stemmer overens med MSGID
                            fra TEXTDOMAIN
 Bruksm�te: %s [FLAGG] def.po ref.po
Obligatoriske argumenter til lange flagg er ogs� obligatoriske for korte flagg.
  -D, --directory=KATALOG     legge til KATALOG til s�kelisten for innfiler
  -h, --help                  vise denne hjelpen og avslutte
  -V, --version               skrive ut programversjon og avslutte

Sammenligne to Uniforum-aktige .po-filer for � sjekke at begge inneholder
det samme settet med msgid-strenger.  def.po-filen er en eksisterende PO-fil
med de gamle oversettelsene.  ref.po-filen er det sist lagde PO(T)-filen
(som regel av xgettext).  Dette er nyttig for � sjekke at du har oversatt
alle meldingene i programmet ditt.  N�r en eksakt overensstemmelse ikke
finnes, blir �fuzzy�-sammenligning brukt for � f� en bedre diagnostikk.
 Bruksm�te: %s [FLAGG] filnavn.po ...
Lage bin�r meldingskatalog fra tekstbasert beskrivelse.

Obligatoriske argumenter for lange flagg er ogs� obligatoriske for korte flagg.
  -a, --alignment=ANTALL      juster strengene til ANTALL byter (standard: %d)
  -c, --check                 utf�r spr�kavhengige tester p� strengene
  -D, --directory=KATALOG     legge KATALOG til s�kelisten for innfiler
  -f, --use-fuzzy             bruk antatte linjer i utdata
  -h, --help                  vis denne hjelpeteksten og avslutt
      --no-hash               bin�r vil ikke bli inkludert i hash-tabellen
  -o, --output-file=FIL       angi FIL som filnavn for utdata
      --statistics            skrive ut statistikk om oversettelsene
      --strict                lag streng Uniforum-konform .po-fil
  -v, --verbose               list alle avvik i innfil
  -V, --version               skriv ut programversjon og avslutt

Dersom -v-flagget blir gitt flere ganger, gis mer fyldige meldinger.

Dersom innfil er -, vil inndata bli lest fra standard inn.  Dersom utfil er -,
vil utdata bli skrevet til standard ut.
 Skrevet av %s.
 n�kkelord �domain %s� ignorert minst to filer m� angis kan ikke opprette utfilen �%s� domenenavnet �%s� passer ikke som filnavn domenenavnet �%s� passer ikke som filnavn: bruker prefiks duplisert definisjon av melding tom �msgstr�-linje ignorert slutt-p�-fil inne i streng slutt-p�-linje inne i streng feil under �pning av �%s� for lesing feil under �pning av �%s� for skriving feil under lesing av �%s� feil under skriving av filen �%s� trenger n�yaktig to innfiler feltet �%s� har fremdeles sin forvalgte verdi filen �%s� er ikke i GNU .mo-format filen �%s� er avkuttet antatt �msgstr�-linje ignorert filhodefelt �%s� skulle ha startet ved begynnelsen av linjen filhodefelt �%s� mangler i filhode umulig utvalgskriterie angitt (%d < n < %d) internasjonaliserte meldinger b�r ikke inneholde escape-sekvensen �\%c� n�kkelord �%s� ukjent spr�ket �%s� er ukjent mangler �msgstr�-seksjon mangler argumenter ingen innfil angitt ingen innfiler angitt antall format-spesifiseringer i �msgid� og �msgstr� stemmer ikke overens �seek� �%s� posisjon %ld mislyktes noen filhodefelt har fremdeles sin initielle verdi standard inn standard ut denne filen kan ikke inneholde domene-direktiver denne meldingen har ingen definisjon i �%s�-domenet denne meldingen er brukt, men ikke definert i %s denne meldingen er brukt, men ikke definert... for mange argumenter for mange feil, avbryter advarsel: typen til fil �%s� med utvidelsen �%s� er ukjent, fors�ker C advarsel: denne meldingen er ikke brukt mens hash-tabellen ble laget under klargj�ring av utdata 