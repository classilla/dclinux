��    K      t  e   �      `  �   a  �  E  t  %	  �  �     �      �     �     �  ,   �       %   9  ,   _  -   �      �  &   �          "  3   B  /   v  +   �  ?   �  !     /   4  �   d  (   ,  &   U     |  �  �  ,    �  G          ,  8   J  6   �     �  *   �  ;        @     ]     z     �  $   �  $   �     �          /  *   N  "   y     �     �  3   �  "     G   $     l     �     �     �     �     �  F   �     2  7   N     �     �  +   �  1   �  *     '   .     V     i  8   �  !   �     �     �  b     �   r!    l"  �  y$    `'     m*      u*     �*     �*  (   �*     �*  %   +  (   8+  *   a+  "   �+  &   �+     �+     �+  )   ,  4   8,  0   m,  ^   �,  %   �,  ,   #-  �   P-  )   &.  *   P.     {.  �  �.  a  p1  o  �3     B7     W7  ;   w7  ;   �7  %   �7  /   8  J   E8     �8     �8     �8     �8  (   9  (   +9     T9     l9  '   �9  7   �9  $   �9     :     ':  ;   F:  +   �:  K   �:     �:     ;     (;     E;     \;     w;  D   �;     �;  G   �;     ><     O<  /   a<  4   �<  5   �<  5   �<     2=     E=  =   `=  +   �=     �=     �=     	          ,         @   ?   )   8   *   H                 A           4   =       -   /               C            6           D   %           !   &       7      <   :   B   0                    E   9       '       "   #          
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
PO-Revision-Date: 1997-03-11 22:38 
Last-Translator: Erick Branderhorst <Erick.Branderhorst@asml.nl>
Language-Team: Dutch <nl@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=2; plural=(n != 1);
 
Konverteer binaire .mo bestanden naar Uniforum-stijl .po bestanden.
Zowel klein-endian en groot-endian .mo bestanden zijn toegestaan.
Als invoerbestand - is of leeg, lees standaardinvoer.
Standaard wordt de uitvoer gescreven naar standaarduitvoer.
 
Als de TEKSTDOMEIN parameter niet gegeven is, zal het domein worden bepaald
door de omgevings variabele TEXTDOMAIN.  Als de meldingen katalogus niet
gevonden is in de gebruikelijke directory, kan een andere lokatie worden
gespecificeerd met de omgevings variabele TEXTDOMAINDIR.
Als optie `-s' gegeven is, gedraagt het programma zich als het `echo' commando.
Maar het kopieert niet de argumenten naar standaard uitvoer.  In plaats daarvan
worden de in de katalogus gevonden meldingen vertaald.
Standaard zoek directory: %s
 
Voeg twee Uniforum stijl .po bestanden samen.  Het def.po bestand is een
bestaand PO bestand met de oude vertaling welke overgenomen zal worden in het
nieuwe bestand als ze overeenkomen; kommentaren worden bewaard, maar
extractie kommentaar en bestandspositie's worden buiten beschouwing gelaten.
Het ref.po bestand is het laatst gekreeerd PO bestand (in het algemeen door
xgettext), vertaling of kommentaren in dit bestand worden buiten beshouwing
gelaten, maar punt kommentaar en bestandspositie's blijven bewaard.
Als geen precieze overeenkomst gevonden kan worden, zal fuzzy matching gebruikt
worden om betere resultaten te verkrijgen.  De resultaten worden naar 
standaarduitvoer geschreven tenzij een uitvoerbestand is gespecificeerd.
   -n, --add-location             voeg '#: filename:line' regels toe (standaard)
      --omit-header              don't write header with `msgid ""' entry
  -o, --output=BESTAND           schrijf uitvoer naar gespecificeerd bestand
  -p, --output-dir=DIR           plaats uitvoerbestanden in directory DIR
  -s, --sort-output              sorteer uitvoer en verwijder dubbelen
      --strict                   uitvoer volgens strikte Uniforum stijl
  -T, --trigraphs                accepteer ANSI C trigraphs als invoer
  -V, --version                  toon hulp-tekst en bekindig programma
  -w, --width=NUMMER             stel pagina uitvoer breedte in
  -x, --exclude-file=BESTAND     ingangen van BESTAND worden niet gekxtraheerd

Als INVOERBESTAND - is, lees standaardinvoer.
  done.
 %s en %s zijn mutually exclusive %s: ongeldige optie -- %c
 %s: ongeldige optie -- %c
 %s: optie `%c%s' verwacht geen argument
 %s: optie `%s' is ambiguous
 %s: optie `%s' verwacht een argument
 %s: optie `--%s' verwacht geen argument
 %s: optie `-W %s' staat geen argument toe
 %s: optie `-W %s' is dubbelzinnig
 %s: optie verwacht een argument -- %c
 %s: onbekende optie `%c%s'
 %s: onbekende optie `--%s'
 %s: let op: broncode bevat vage vertaling %s:%d: let op: niet getermineerde karakter konstante %s:%d: let op: niet getermineerde string literal --join-existing kan niet gebruikt worden indien uitvoer naar standaarduitvoer
wordt geschreven ...maar de definitie is gelijksoortig ...dit is de lokatie van de eerste definitie Kopierecht (C) %s Free Software Foundation, Inc.  Dit is vrije
programmatuur; zie de broncode voor kopieervoowaarden.  Er is GEEN
garantie; zelfs niet voor VERKOOPBAARHEID of GESCHIKTHEID VOOR EEN
SPECIFIEK DOEL.
 Meld fouten via <bug-gnu-utils@gnu.org>.
 Probeer `%s --help' voor meer informatie.
 Onbekende systeemfout Gebruik: %s [OPTIE] [BESTAND]...
Verplichte argumenten voor lange opties zijn ook verplicht voor korte opties.
  -e, --no-escape          gebruik geen C escapes in uitvoer (standaard)
  -E, --escape             gebruik C escapes in uitvoer, geen extended
                           karakters
      --force-po           schrijf PO bestand zelfs als het leeg is
  -h, --help               laat hulp-tekst zien en bekindig programma
  -i, --indent             gebruik geindenteerde uitvoer-stijl
  -o, --output-file=FILE   uitvoer gaat naar BESTAND

      --strict             gebruik strikte Uniforum-stijl
  -V, --version            toon versie-informatie en bekindig programma
  -w, --width=NUMMER       stel uitvoer paginabreedte in
 Gebruik: %s [OPTIE] [[[TEXTDOMEIN] MSGID] | [-s [MSGID]...]]
  -d, --domain=TEKSTDOMEIN  haal vertaalde meldingen uit TEKSTDOMEIN
  -e                        maak expansie van enkele escape sequences mogelijk
  -E                        (genegeerd voor compatibiliteit)
  -h, --help                toon hulp-tekst en bekindig programma
  -n                        onderdruk achtergevoegd nieuwe regel teken
  -V, --version             toon versie-informatie en bekindig programma
  [TEXTDOMEIN] MSGID        ontvang vertaalde meldingen corresponderend aan
                            MSGID vanuit TEKSTDOMEIN
 Gebruik: %s [OPTION] def.po ref.po
Verplicht argumenten bij lange opties zijn ook verplicht bij korte opties.
  -D, --directory=DIRECTORY   voeg DIRECTORY toe aan lijst waar invoerbestanden
                              gezocht worden
  -h, --help                toon hulp-tekst en bekindig programma
  -V, --version             toon versie-informatie en bekindig programma

Vergelijk twee Uniforum-stijl .po bestanden en kontroleer of beide dezelfde
set van msgid strings bevatten.  Het def.po bestand is een bestaand PO bestand
met de oude vertalingen.  Het ref.po bestand is het meest recente PO bestand
(over het algemeen aangemaakt door xgettext).  Het is belangrijk om te
kontroleren of elke melding is vertaald in het programma.  Wanneer een precieze
overeenkomst niet gevonden kan wrden, zal fuzzy(vage) matching worden gebruikt,
ter verkrijging van een betere diagnose.
 Geschreven door %s.
 `domein %s' directive genegeerd `msgid' en `msgstr' ingangen beginnen niet allebei met '\n' `msgid' en `msgstr' ingangen eindigen niet allebei met '\n' kan uitvoerbestand "%s" niet aanmaken domeinnaam "%s" niet bruikbaar als bestandsnaam domeinnaam "%s" niet bruikbaar als bestandsnaam: zal voorvoegsel gebruiken dubbele melding definitie lege `msgstr' entry genegeerd einde-bestand-teken in string einde-regel-teken in string fout tijdens openen om te lezen van "%s" fout bij openen om te schrijven van "%s" fout tijdens lezen "%s" fout bij schrijven bestand "%s" precies 2 invoerbestanden zijn benodigd veld `%s' heeft nog de oorspronkelijke standaard waarde bestand "%s" is geen GNU .mo bestand bestand "%s" ingekort lege `msgstr' ingang genegeerd header(??)veld `%s' moet starten aan het begin van de regel header(??)veld `%s' ontbreekt in header(??) geonternationaliseerde meldingen mogen geen `\%c' escape sequences bevatten sleutelwoord "%s" onbekend taal `%s' onbekend ontbrekend `msgstr' gedeelte ontbrekende argumenten geen invoerbestand gegeven geen invoerbestanden gegeven aantal formaat specificaties in `msgid' en `msgstr' zijn niet gelijk zoek "%s" offset %ld gefaald sommige header(??)velden hebben nog de oorspronkelijke standaard waarde standaard invoer standaard uitvoer dit bestand mag geen domein directives bevatten deze melding heeft geen definitie in het "%s" domein deze melding is gebruikt maar niet gedefinieerd in %s deze melding is gebruikt maar is niet gedefinieerd... te veel argumenten te veel fouten, afgebroken let op: bestand `%s' extensie `%s' is onbekend; ga C proberen waarschuwing: deze melding is niet gebruikt tijdens aanmaken hash tabel bij voorbereiden uitvoer 