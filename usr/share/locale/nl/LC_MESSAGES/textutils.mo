??    ?      <  ?   \
      ?  ?  ?  ?  ?     ?     ?  /   ?     /     H  '   b  #   ?  )   ?  "   ?  8   ?     4     R     r     ?  "   ?  )   ?     ?  2        6     E     d  )   t  =   ?  ;   ?  A    ?  Z  ?  X     C     J  b  M  ?   ?!  O  >"  ?  ?#  ?  u&  &   @(  *   g(     ?(  $   ?(  &   ?(  "   ?(  +   )  "   K)      n)  V   ?)  '   ?)  +   *  .   :*  ?  i*    (,  ?  *2  <   ?3  :   4  8   S4  #   ?4     ?4  &   ?4  !   ?4     5  	   5     $5  @   85  >   y5     ?5  "   ?5     ?5     ?5  :   6     K6     P6     _6     e6     s6     ?6  )   ?6     ?6  *   ?6     7  *   17  -   \7  %   ?7  %   ?7     ?7      ?7     8  '   08  %   X8  #   ~8     ?8  #   ?8  (   ?8  %   ?8     $9  &   D9  G   k9  ,   ?9  1   ?9  "   :     5:  T   N:  N   ?:     ?:     ;  -   ;  &   E;     l;     ?;  -   ?;  -   ?;     ?;     	<     <  4   *<  5   _<  D   ?<  &   ?<      =      "=      C=      d=     ?=  B   ?=  
   ?=     ?=     >  \   >     n>     }>     ?>  L   ?>  @   ?>  J   4?     ?  &   ??     ??  H   ??  ?    @  7   `@  =   ?@  >   ?@  3   A  (   IA  F   rA     ?A     ?A  /   ?A     B     +B     IB  B   OB  *   ?B     ?B  ,   ?B  >   C  e   CC  3   ?C  j   ?C  Y   HD     ?D     ?D     ?D  7   ?D  7  E  3  GF  H  {K     ?M     ?M  6   ?M     +N  $   JN  $   oN  -   ?N  7   ?N  &   ?N  <   !O  #   ^O  !   ?O     ?O     ?O  %   ?O  (   ?O     P  ;   :P     vP     ?P     ?P  -   ?P  I   ?P  D   3Q  ?  xQ  .  )S  <  XU     ?W     ?W  ?  ?W  ?   ^\  ?  
]  B  ?^  ?  ?a  *   ?c  /   ?c  !   d  ,   8d  *   ed  )   ?d  )   ?d  #   ?d  $   e  \   -e  *   ?e  7   ?e  9   ?e  ?  'f  G  
h  ?  Rn  A   *p  C   lp  8   ?p  1   ?p      q  9   <q  (   vq     ?q     ?q     ?q  >   ?q  ;   r     Vr  "   or     ?r     ?r  7   ?r     ?r     ?r  	   s     s     *s      ;s  /   \s     ?s  *   ?s     ?s  5   ?s  8   ,t  '   et  '   ?t     ?t      ?t  !   ?t  2   u  '   Eu  *   mu     ?u  %   ?u  *   ?u  ,   ?u     &v  -   Ev  D   sv  3   ?v  5   ?v      "w     Cw  N   ]w  H   ?w     ?w     x  6   x  1   Ux     ?x     ?x  <   ?x  9   ?x     1y     >y     Ly  >   ^y  ?   ?y  J   ?y  /   (z      Xz     yz     ?z      ?z     ?z  :   ?z     .{  '   ={     e{  e   w{     ?{     ?{     
|  H   |  <   d|  M   ?|     ?|  '   }     5}  G   O}  9   ?}  ;   ?}  7   ~  9   E~  <   ~  )   ?~  C   ?~     *     ?  3   _     ?     ?     ?  =   ?  &   ?     /?  /   E?  @   u?  i   ??  3    ?  i   T?  g   ??     &?     ;?     N?  4   j?            ?           	      _   &   k   ?           6   ?   ?   a   f   ?   ?   [       R           o       b       X   0   l   J           =       ?      U      ?   7   )   #   ?   Y   !   N   ?                G           r   |   "   >   E   @               B   9                  ?       ?   i   ,   ^   t   1   q          -       '   ?   h       %   p       {       y   :       `       2   ?   ?   I   V      m   K       5      ?         ~          C      ?   A   u              ?       s   L           c       j       ]          ?   n   S         (   /   H                 ?   ?   w   O          ?       +   M   ?   ?       d   P   8   ?       <   Z   ?           ?      T   W       D       Q   ?   z       x   4       F      ?   ?          g   }         ?   $   .      ?   ?   ?       *       ?   ?   ?   e       v       
   \   3       ?          ;        
SETs are specified as strings of characters.  Most represent themselves.
Interpreted sequences are:

  \NNN            character with octal value NNN (1 to 3 octal digits)
  \\              backslash
  \a              audible BEL
  \b              backspace
  \f              form feed
  \n              new line
  \r              return
  \t              horizontal tab
  \v              vertical tab
  CHAR1-CHAR2     all characters from CHAR1 to CHAR2 in ascending order
  [CHAR1-CHAR2]   same as CHAR1-CHAR2, if both SET1 and SET2 use this
  [CHAR*]         in SET2, copies of CHAR until length of SET1
  [CHAR*REPEAT]   REPEAT copies of CHAR, REPEAT octal if starting with 0
  [:alnum:]       all letters and digits
  [:alpha:]       all letters
  [:blank:]       all horizontal whitespace
  [:cntrl:]       all control characters
  [:digit:]       all digits
  [:graph:]       all printable characters, not including space
  [:lower:]       all lower case letters
  [:print:]       all printable characters, including space
  [:punct:]       all punctuation characters
  [:space:]       all horizontal or vertical whitespace
  [:upper:]       all upper case letters
  [:xdigit:]      all hexadecimal digits
  [=CHAR=]        all characters which are equivalent to CHAR
 
Translation occurs if -d is not given and both SET1 and SET2 appear.
-t may be used only when translating.  SET2 is extended to length of
SET1 by repeating its last character as necessary.  Excess characters
of SET2 are ignored.  Only [:lower:] and [:upper:] are guaranteed to
expand in ascending order; used in SET2 while translating, they may
only be used in pairs to specify case conversion.  -s uses SET1 if not
translating nor deleting; else squeezing uses SET2 and occurs after
translation or deletion.
  on repetition %d
 %d: fmt="%s" width=%d
 %s: %lu: improperly formatted MD5 checksum line %s: FAILED open or read
 %s: `%s': match not found %s: `+' or `-' expected after delimeter %s: `}' is required in repeat count %s: cannot follow end of non-regular file %s: closing delimeter `%c' missing %s: equivalence class operand must be a single character %s: input file is output file %s: integer expected after `%c' %s: invalid number %s: invalid pattern %s: invalid regular expression: %s %s: line number must be greater than zero %s: line number out of range %s: no properly formatted MD5 checksum lines found %s: read error %s: unrecognized option `-%c'
 %s: write error %s}: integer required between `{' and `}' Cannot specify both printing across and printing in parallel. Cannot specify number of columns when printing in parallel. Compare sorted files LEFT_FILE and RIGHT_FILE line by line.

  -1              suppress lines unique to left file
  -2              suppress lines unique to right file
  -3              suppress lines unique to both files
      --help      display this help and exit
      --version   output version information and exit
 Convert spaces in each FILE to tabs, writing to standard output.
With no FILE, or when FILE is -, read standard input.

  -a, --all           convert all whitespace, instead of initial whitespace
  -t, --tabs=NUMBER   have tabs NUMBER characters apart instead of 8
  -t, --tabs=LIST     use comma separated list of explicit tab positions
      --help          display this help and exit
      --version       output version information and exit

Instead of -t NUMBER or -t LIST, -NUMBER or -LIST may be used.
 Convert tabs in each FILE to spaces, writing to standard output.
With no FILE, or when FILE is -, read standard input.

  -i, --initial       do not convert TABs after non whitespace
  -t, --tabs=NUMBER   have tabs NUMBER characters apart, not 8
  -t, --tabs=LIST     use comma separated list of explicit tab positions
      --help          display this help and exit
      --version       output version information and exit

Instead of -t NUMBER or -t LIST, -NUMBER or -LIST may be used.
 FAILED OK Output pieces of FILE separated by PATTERN(s) to files `xx01', `xx02', ...,
and output byte counts of each piece to standard output.

  -b, --suffix-format=FORMAT use sprintf FORMAT instead of %%d
  -f, --prefix=PREFIX        use PREFIX instead of `xx'
  -k, --keep-files           do not remove output files on errors
  -n, --digits=DIGITS        use specified number of digits instead of 2
  -s, --quiet, --silent      do not print counts of output file sizes
  -z, --elide-empty-files    remove empty output files
      --help                 display this help and exit
      --version              output version information and exit

Read standard input if FILE is -.  Each PATTERN may be:

  INTEGER            copy up to but not including specified line number
  /REGEXP/[OFFSET]   copy up to but not including a matching line
  %%REGEXP%%[OFFSET]   skip to, but not including a matching line
  {INTEGER}          repeat the previous pattern specified number of times
  {*}                repeat the previous pattern as many times as possible

A line OFFSET is a required `+' or `-' followed by a positive integer.
 Print CRC checksum and byte counts of each FILE.

  --help      display this help and exit
  --version   output version information and exit
 Print checksum and block counts for each FILE.

  -r              defeat -s, use BSD sum algorithm, use 1K blocks
  -s, --sysv      use System V sum algorithm, use 512 bytes blocks
      --help      display this help and exit
      --version   output version information and exit

With no FILE, or when FILE is -, read standard input.
 Print first 10 lines of each FILE to standard output.
With more than one FILE, precede each with a header giving the file name.
With no FILE, or when FILE is -, read standard input.

  -c, --bytes=SIZE         print first SIZE bytes
  -n, --lines=NUMBER       print first NUMBER lines instead of first 10
  -q, --quiet, --silent    never print headers giving file names
  -v, --verbose            always print headers giving file names
      --help               display this help and exit
      --version            output version information and exit

SIZE may have a multiplier suffix: b for 512, k for 1K, m for 1 Meg.
If -VALUE is used as first OPTION, read -c VALUE when one of
multipliers bkm follows concatenated, else read -n VALUE.
 Translate, squeeze, and/or delete characters from standard input,
writing to standard output.

  -c, --complement        first complement SET1
  -d, --delete            delete characters in SET1, do not translate
  -s, --squeeze-repeats   replace sequence of characters with one
  -t, --truncate-set1     first truncate SET1 to length of SET2
      --help              display this help and exit
      --version           output version information and exit
 Try `%s --help' for more information.
 Usage: %s [-DIGITS] [OPTION]... [FILE]...
 Usage: %s [OPTION] [FILE]...
 Usage: %s [OPTION] [INPUT [PREFIX]]
 Usage: %s [OPTION]... FILE PATTERN...
 Usage: %s [OPTION]... FILE1 FILE2
 Usage: %s [OPTION]... LEFT_FILE RIGHT_FILE
 Usage: %s [OPTION]... SET1 [SET2]
 Usage: %s [OPTION]... [FILE]...
 Usage: %s [OPTION]... [FILE]...
  or:  %s --traditional [FILE] [[+]OFFSET [[+]LABEL]]
 Usage: %s [OPTION]... [INPUT [OUTPUT]]
 WARNING: %d of %d computed %s did NOT match WARNING: %d of %d listed %s could not be read
 Write each FILE to standard output, last line first.
With no FILE, or when FILE is -, read standard input.

  -b, --before             attach the separator before instead of after
  -r, --regex              interpret the separator as a regular expression
  -s, --separator=STRING   use STRING as the separator instead of newline
      --help               display this help and exit
      --version            output version information and exit
 Write each FILE to standard output, with line numbers added.
With no FILE, or when FILE is -, read standard input.

  -b, --body-numbering=STYLE      use STYLE for numbering body lines
  -d, --section-delimiter=CC      use CC for separating logical pages
  -f, --footer-numbering=STYLE    use STYLE for numbering footer lines
  -h, --header-numbering=STYLE    use STYLE for numbering header lines
  -i, --page-increment=NUMBER     line number increment at each line
  -l, --join-blank-lines=NUMBER   group of NUMBER empty lines counted as one
  -n, --number-format=FORMAT      insert line numbers according to FORMAT
  -p, --no-renumber               do not reset line numbers at logical pages
  -s, --number-separator=STRING   add STRING after (possible) line number
  -v, --first-page=NUMBER         first line number on each logical page
  -w, --number-width=NUMBER       use NUMBER columns for line numbers
      --help                      display this help and exit
      --version                   output version information and exit

By default, selects -v1 -i1 -l1 -sTAB -w6 -nrn -hn -bt -fn.  CC are
two delimiter characters for separating logical pages, a missing
second character implies :.  Type \\ for \.  STYLE is one of:

  a         number all lines
  t         number only nonempty lines
  n         number no lines
  pREGEXP   number only lines that contain a match for REGEXP

FORMAT is one of:

  ln   left justified, no leading zeros
  rn   right justified, no leading zeros
  rz   right justified, leading zeros

 Write lines consisting of the sequentially corresponding lines from
each FILE, separated by TABs, to standard output.
With no FILE, or when FILE is -, read standard input.

  -d, --delimiters=LIST   reuse characters from LIST instead of TABs
  -s, --serial            paste one file at a time instead of in parallel
      --help              display this help and exit
      --version           output version information and exit

 [=c=] expressions may not appear in string2 when translating a delimiter may be specified only when operating on fields at least one string must be given when squeezing repeats both files cannot be standard input cannot do ioctl on `%s' cannot skip past end of combined input cannot split in more than one way checksum checksums creating file `%s'
 ending field number argument to the `-k' option must be positive ending field spec has `.' but lacks following character offset error closing file error in regular expression search error reading %s error writing %s field specification has `,' but lacks following field spec file file truncated files flushing file input disappeared invalid backslash escape `\%c' invalid backslash escape at end of string invalid byte or field list invalid character `%c' in type string `%s' invalid character class `%s' invalid conversion specifier in suffix: %c invalid conversion specifier in suffix: \%.3o invalid field number for file 1: `%s' invalid field number for file 2: `%s' invalid field number: `%s' invalid field specification `%s' invalid field specifier: `%s' invalid file number in field spec: `%s' invalid line number field width: `%s' invalid line number increment: `%s' invalid number invalid number of blank lines: `%s' invalid number of bytes to compare: `%s' invalid number of bytes to skip: `%s' invalid number of columns: `%s' invalid number of fields to skip: `%s' invalid output address radix `%c'; it must be one character from [doxn] invalid repeat count `%s' in [c*n] construct invalid second operand in compatibility mode `%s' invalid starting line number: `%s' invalid type string `%s' invalid type string `%s';
this system doesn't provide a %lu-byte floating point type invalid type string `%s';
this system doesn't provide a %lu-byte integral type limit argument minimum string length missing %% conversion specification in suffix missing conversion specifier in suffix missing list of fields missing list of positions no files may be specified when using --string no type may be specified when dumping strings number of bytes number of lines old-style offset only one [c*] repeat construct may appear in string2 only one argument may be specified when using --check only one string may be given when deleting without squeezing repeats only one type of list may be specified option `-T' requires an argument option `-k' requires an argument option `-o' requires an argument option `-t' requires an argument page width too narrow range-endpoints of `%s-%s' are in reverse collating sequence order read error separator cannot be empty skip argument specified number of bytes `%s' is larger than the maximum
representable value of type `long' standard input standard input is closed standard output starting field character offset argument to the `-k' option
must be positive starting field spec has `.' but lacks following character offset suppressing non-delimited lines makes sense
	only when operating on fields tab size cannot be 0 tab size contains an invalid character tab sizes must be ascending the --binary and --text options are meaningless when verifying checksums the --status option is meaningful only when verifying checksums the --string and --check options are mutually exclusive the --warn option is meaningful only when verifying checksums the [c*] construct may appear in string2 only when translating the [c*] repeat construct may not appear in string1 the delimiter must be a single character the starting field number argument to the `-k' option must be positive too few arguments too few non-option arguments too many %% conversion specifications in suffix too many arguments too many non-option arguments total two strings must be given when both deleting and squeezing repeats two strings must be given when translating unrecognized option `-%c' warning: invalid width %lu; using %d instead warning: line number `%s' is the same as preceding line number warning: the ambiguous octal escape \%c%c%c is being
	interpreted as the 2-byte sequence \0%c%c, `%c' when not truncating set1, string2 must be non-empty when translating with complemented character classes,
string2 must map all characters in the domain to one when using the old-style +POS and -POS key specifiers,
the +POS specifier must come first width specification write error write error for `%s' you must specify a list of bytes, characters, or fields Project-Id-Version: GNU textutils 1.19m
POT-Creation-Date: 1999-08-06 02:10+0200
PO-Revision-Date: 1996-10-09 09:15 MET DST
Last-Translator: Erick Branderhorst <branderh@debian.org>
Language-Team: Dutch <nl@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
SETs zijn gespecificeerd als strings van karakters. De meeste stellen
zichzelf voor. De volgende wijken daarvan af en worden geinterpreteerd:

  \NNN            karakter met octaal nummer NNN (1 tot 3 octale getallen)
  \\              backslash
  \a              hoorbare BEL
  \b              backspace
  \f              form feed
  \n              nieuwe regel
  \r              return
  \t              horizontale tab
  \v              verticale tab
  CHAR1-CHAR2     alle karakters van CHAR1 tot CHAR2 in oplopende volgorde
  [CHAR1-CHAR2]   zelfde als CHAR1-CHAR2, als SET1 en SET2 dit gebruiken
  [CHAR*]         in SET2, kopieer CHAR tot lengte van SET1
  [CHAR*HERHAAL]  HERHAAL kopieen van CHAR, HERHAAL octaal als gestart met 0
  [:alnum:]       alle letters en cijfers
  [:alpha:]       alle letters
  [:blank:]       alle horizontal witruimte
  [:cntrl:]       alle controle karakters
  [:digit:]       alle cijfers
  [:graph:]       alle printbare karakters, uitgezonderd spatie
  [:lower:]       alle kleine letters
  [:print:]       alle printbare karakters, inklusief spatie
  [:punct:]       alle interpunctie karakters
  [:space:]       alle horizontale of verticale witruimte
  [:upper:]       alle hoofdletters
  [:xdigit:]      alle hexadecimale cijfers
  [=CHAR=]        alle karakters equivalent aan CHAR
 
Vertaling treedt op als -d niet gegeven is en SET1 en SET2 beide voorkomen.
-t mag alleen gebruikt worden bij vertaling.  SET2 zal, indien nodig, verlengd
 worden tot de lengte van SET1 door herhaling van het laatste karakater.
Excess karakters van SET2 worden genegeerd.  Alleen [:lower:] en [:upper:]
worden zeker geexpandeerd in oplopende volgorde; gebruikt in SET2 bij
vertaling, alleen gebruikt worden in paren om case conversie te specificeren.
-s gebruikt SET1 als niet vertaald noch verwijderd wordt; anders gebruikt
squeezing SET2 en treedt op na vertaling of verwijdering.
  tijdens herhaling %d
 %d: fmt="%s" breedte=%d
 %s: %lu: onjuist geformateerde MD5 kontrolle-som-regel %s: falen bij openen of lezen
 %s: `%s': geen overeenkomst gevonden %s: verwacht `+' of `-' na begrenzer %s: `}' is verplicht bij een herhalingsaantal %s: kan het einde van niet-regulier bestand niet volgen %s: afsluitende begrenzer `%c' afwezig %s: equivalente klasse operator moet een enkel karakter zijn %s: invoerbestand is uitvoerbestand %s: verwacht geheel getal na `%c' %s: ongeldig nummer %s: ongeldig patroon %s: ongeldige reguliere expressie: %s %s: regelnummer moet groter zijn dan nul %s: regelnummer buiten bereik %s: geen korrekt geformateerde MD5 checksom regels gevonden %s: fout bij lezen %s: onbekende optie `-%c'
 %s: fout bij schrijven %s}: geheel getal verplicht tussen `{' en `}' Bij parallel uitvoer kan kruisgewijze uitvoer niet worden gespecificeerd. Bij parallel printen kan aantal kollomen niet worden gespecificeerd. Vergelijk gesorteerde bestanden BESTAND1 en BESTAND2 regel voor regel.

  -1              onderdruk regels welke alleen in BESTAND1 voorkomen
  -2              onderdruk regels welke alleen in BESTAND2 voorkomen
  -3              onderdruk regels welke slechts in een van beide bestanden
                  voorkomen
      --help     toon hulptekst en be?indig programma
      --version  toon versie-informatie en be?indig programma
 Vervang spaties in elk BESTAND door tabs, uitvoer naar standaard-uitvoer.
Bij geen BESTAND of BESTAND is -, lees standaard-invoer.

  -a, --all           vervang alle, in plaats van alleen de initiele, witruimte
  -t, --tabs=NUMMER   maak tabs NUMMER character breed in plaats van 8
  -t, --tabs=LIJST    gebruik komma gesepereerde lijst van tab posities
      --help          toon hulptekst en be?indig programma
      --version       toon versie-informatie en be?indig programma

In plaats van -t NUMMER of -t LIJST, kan -NUMMER of -LIJST gebruikt worden.
 Verander tabs in elk BESTAND naar spaties, uitvoer naar standaard-uitvoer.
Bij geen BESTAND of BESTAND is -, lees standaard-invoer.

  -i, --initial       converteer geen TABs na geen witruimte
  -t, --tabs=NUMMER   have tabs NUMBER characters apart, not 8
  -t, --tabs=LIJST    gebruik door komma's geseperareerde lijst of
                      explicite tab posities
      --help          toon hulptekst en be?indig programma
      --version       toon versie-informatie en be?indig programma

In plaats van -t NUMMER of -t LIJST, kan -NUMMER of -LIJST worden gebruikt.
 gefaald ok Maak van BESTAND deelbestanden `xx01', `xx02', ... gescheiden op basis van
PATROON en stuur het aantal bytes voor ieder deel naar standaard-uitvoer.

  -b, --suffix-format=FORMAAT gebruik sprint-FORMAAT in plaats van %%d
  -f, --prefix=VOORVOEGSEL    gebruik VOORVOEGSEL in plaats van `xx'
  -k, --keep-files            bewaar uitvoerbestanden bij fouten
  -n, --digits=CIJFER         gebruik CIJFER in plaats van 2
  -s, --quiet, --silent       geen informatie over grootte uitvoer-bestanden
  -z, --elide-empty-files     verwijder lege uitvoer-bestanden
      --help                  toon hulptekst en be?indig programma
      --version               toon versie-informatie en be?indig programma

Bij geen BESTAND of BESTAND is -, lees standaard-invoer. Patronen mogen het
volgende zijn:

  GEHEEL GETAL         kopieer tot regelnummer GEHEEL GETAL
  /REGEXP/[OFFSET]   kopieer tot overeenkomstige expressie
  %%REGEXP%%[OFFSET]   negeer alles tot aan overeenkomstige expressie
  {GEHEEL GETAL}       herhaal het voorgaande patroon GEHEEL GETAL maal
  {*}                  herhaal het voorgaande patroon zo vaak als mogelijk

Een regel-OFFSET is een verplichte `+' of `-' gevolgd door een
positief geheel getal
 Toon CRC-check-som en aantal bytes van ieder BESTAND.

      --help     toon hulptekst en be?indig programma
      --version  toon versie-informatie en be?indig programma
 Print kontrolesom en aantal blokken voor elk BESTAND.

  -r              defeat -s, gebruik BSD somatie algoritme, gebruik 1K blokken
  -s, --sysv      gebruik System V somatie algoritme, gebruik 512 bytes blokken
  --help          toon hulptekst en be?indig programma
  --version       toon versie-informatie en be?indig programma

Bij geen BESTAND of BESTAND is -, lees standaard-invoer.
 Print eerste 10 regels van elk BESTAND naar standaard-uitvoer.
Bij meer dan een BESTAND, uitvoer vooraf laten gaan door bestandsnaam.
Bij geen BESTAND of BESTAND is -, lees standaard-invoer.

  -c, --bytes=GROOTTE      print eerste GROOTTE bytes
  -n, --lines=AANTAL       print eerste AANTAL regels in plaats van eerste 10
  -q, --quiet, --silent    print nooit bestandsnamen als headers
  -v, --verbose            print altijd bestandsnamen als headers
      --help               toon hulptekst en be?indig programma
      --version            toon versie-informatie en be?indig programma

GROOTTE mag een vermenigvuldigings achtervoegsel hebben: b voor 512,
k voor 1 Kilobyte, m voor 1 Megabyte.
Als -GROOTTE de eerste OPTIE is, lees -c GROOTTE wanneer een van de
vermunigvuldigingsachtervoegsels bkm volgt, ander lees -n GROOTTE.
 Vertaal, squeeze, en/of verwijder karakters vanuit standaard-invoer,
uitvoer naar standaard-uitvoer.

  -c, --complement        eerste complementaire SET1
  -d, --delete            verwijder karakters in SET1, niet vertalen
  -s, --squeeze-repeats   vervang herhaling van karakters met een
  -t, --truncate-set1     verkort SET1 tot de lengte van SET2
      --help              toon hulptekst en be?indig programma
      --version           toon versie-informatie en be?indig programma
 Probeer `%s --help' voor meer informatie.
 Aanroep: %s [-NUMMERS] [OPTIE]... [BESTAND]...
 Aanroep: %s [OPTIE] [BESTAND]...
 Aanroep: %s [OPTIE] [INVOER] [VOORVOEGSEL]]
 Aanroep: %s [OPTIE]... BESTAND PATROON...
 Aanroep: %s [OPTIE]... BESTAND1 BESTAND2
 Aanroep: %s [OPTIE]... BESTAND1 BESTAND2
 Aanroep: %s [OPTIE]... SET1 [SET2]
 Aanroep: %s [OPTIE]... [BESTAND]...
 Aanroep: %s [OPTIE]... [BESTAND]...
  of: %s --traditional [BESTAND] [[+]OFFSET [[+]LABEL]]
 Aanroep: %s [OPTIE]... [INVOER [UITVOER]]
 LET OP: %d van %d berekende %s zijn NIET overeenkomstig LET OP: %d van %d getoonde %s kunnen niet gelezen worden
 Print elk BESTAND naar standaard uitvoer, de laatste regel als eerste.
Bij geen BESTAND of BESTAND is -, lees standaard-invoer.

  -b, --before             plaats scheider voor i.p.v. achter de regel
  -r, --regex              interpreteer de scheider als reguliere expressie
  -s, --separator=STRING   gebruik STRING als scheider (nieuwe regel)
  --help                   toon hulptekst en be?indig programma
  --version                toon versie-informatie en be?indig programma
 Stuur elk BESTAND naar standaard-uitvoer, regels voorafgegaan door
regelnummers. Bij geen BESTAND of BESTAND is -, lees standaard-invoer.

  -b, --body-numbering=STIJL      gebruik STIJL voor nummering bodyregels
  -d, --section-delimiter=CC      gebruik CC voor seperatie logische pagina's
  -f, --footer-numbering=STIJL    gebruik STIJL voor nummering voetregels
  -h, --header-numbering=STIJL    gebruik STIJL voor nummering hoofdregels
  -i, --page-increment=NUMMER     regelnummer toename bij elke regel
  -l, --join-blank-lines=NUMMER   groep van NUMMER lege regels telt voor een
  -n, --number-format=FORMAAT     voeg regelnummers in volgens FORMAAT
  -p, --no-renumber               geen hernummering bij logische pagina's
  -s, --number-separator=STRING   voeg STRING toe na (mogelijk) regelnummer
  -v, --first-page=NUMMER         eerste regelnummer op elke logische pagina
  -w, --number-width=NUMMER       gebruik NUMMER kolommen voor regelnummers
      --help     toon hulptekst en be?indig programma
      --version  toon versie-informatie en be?indig programma

Standaard opties: -v1 -i1 -l1 -sTAB -w6 -nrn -hn -bt -fn.  CC zijn
twee begrenzingskarakters voor onderscheiden logisch pagina's, een missend
tweede karakter impliceert:.  Gebruik \\ voor \.  STIJL is een van:

  a         nummer alle regels
  t         nummer alle niet lege regels
  n         number geen enkele regel
  pREGEXP   nummer de regels welke een REGEXP bevatten

FORMAAT is een van:

  ln   links uitgelijnd, geen voorloopnullen
  rn   rechts uitgelijnd, geen voorloopnullen
  rz   rechts uitgelijnd, voorloopnullen

 Schrijf regels welke sequentieel corresponderende regels bevatten vanuit
BESTAND, gescheiden door TABs, naar standaard-uitvoer.
Bij geen BESTAND of BESTAND is -, lees standaard-invoer.

  -d, --delimiters=LIJST  hergebruik karakters uit LIJST in plaats van TABs
  -s, --serial            paste one file at a time instead of in parallel
      --help              toon hulptekst en be?indig programma
      --version           toon versie-informatie en be?indig programma

 [=c=] expressies mogen niet voorkomen in string2 tijdens vertalen een begrenzingsteken moet gespecificeerd zijn bij werking op velden minstens een string benodigd bij squeezing herhalingen?? beide bestanden kunnen niet standaard-invoer zijn kan geen ioctl op `%s' toepassen kan niet verder dan het einde van de gekombineerde invoer kan niet op meer dan een manier splitsen kontrollesom kontrollesommen bestand `%s' wordt aangemaakt
 einde veldnummer argument bij de `-k' optie moet positief zijn einde veld specifikatie heeft `.' maar mist karakter offset fout bij sluiten bestand fout in reguliere expressie search fout bij lezen %s fout bij schrijven %s veld specifikatie heeft `,' maar mist veld specifikatie bestand bestand ingekort bestanden wegschrijven bestand invoer verdwenen ongeldige backslash escape `\%c' ongeldige backslash escape aan einde van string ongeldige byte- of velden-lijst ongeldig karakter `%c' in type string `%s' ongeldige karakter klasse `%s' ongeldige conversie specifikatie in achtervoegsel: %c ongeldige conversie specifikatie in achtervoegsel: \%.3o ongeldig veldnummer bij bestand 1: `%s' ongeldig veldnummer bij bestand 2: `%s' ongeldig veldnummer: `%s' ongeldige veld specifikatie `%s' ongeldige veld specificatie: `%s' ongeldig bestandsnummer in veld specifikatie: `%s' ongeldig regelnummer veld breedte: `%s' ongeldige regelnummer incrementering: `%s' ongeldig nummer ongeldig aantal van lege regels: `%s' ongeldig aantal bytes te vergelijken: `%s' ongeldig aantal bytes om over te slaan: `%s' ongeldig aantal kolommen: `%s' ongeldig aantal velden om over te slaan: `%s' ongeldig uitvoer adres radix `%c'; dit moet een karakter zijn [doxn] ongeldig herhalingsaantal `%s' in [c*n] konstruktie ongeldige tweede operand in compatibilteits mode `%s' ongeldig start regelnummer: `%s' ongeldig type string `%s' ongeldig string-type `%s';
dit system biedt geen %lu-byte drijvende komma type ongeldig string-type `%s';
dit system biedt geen integraal %lu-byte type limiteer argument minimale string lengte ontbrekende %% conversie specificatie in achtervoegsel conversie specifikatie ontbreekt in achtervoegsel ontbrekende velden-lijst ontbrekende positie-lijst geen bestanden mogen gegeven worden bij gebruik van --string geen type mag zijn gespecificeerd bij dumping strings ??? aantal bytes aantal regels oude offset stijl enkel een [c*] herhalings konstruktie mag voorkomen in string2 slechts een argument mag gegeven worden bij gebruik van --check een string mag gegeven worden bij verwijderen zonder squeezing herhalingen slechts een lijsttype mag worden gespecificeerd optie `-T' benodigd een argument optie `-k' vereist een argument optie `-o' heeft argument nodig optie `-t' verwacht een argument te smalle pagina-breedte bereik-eindpunt van `%s-%s' zijn in tegengestelde volgorde fout bij lezen onderscheidingsteken kan niet leeg zijn sla argument over gespecificeerd aantal bytes `%s' is groter dan de maximale
representatieve waarde van het type `long' standaardinvoer standaard invoer is gesloten standaarduitvoer eerste veldkarakter offset argument bij de `-k' optie moet positief zijn eerste veld specificatie heeft `.' maar mist karakter offset onderdrukken van niet-begrensde regels is enkel
	zinvol bij werking op velden tab grootte mag geen nul zijn tab grootte bevat een ongeldig karakter tab grootte moet toenemen de --binary en --text opties werken niet bij verifieren kontrollesommen de --status optie werkt alleen bij verifieren checksommen de --string and --check opties zijn uitwisselbaar exclusief de --warn optie werkt alleen bij verifieren checksommen de [c*] mag alleen in string2 voorkomen tijdens vertaling de [c*] herhalings konstruktie mag niet voorkomen in string1 de begrenzer moet een enkel karakter zijn het eerste veldnummer argument bij de `-k' optie moet positief zijn te weinig argumenten te weinig niet-optie argumenten te veel %% conversie specificaties in achtervoegsel teveel argumenten te veel niet-optie argumenten totaal twee stringen moet worden gegeven wanneer bij verwijder ????? twee strings benodigd tijdens vertalen onbekende optie `-%c' let op: ongeldige breedte %lu; zal %d gebruiken let op: regelnummer `%s' is hetzelfde als voorgaande regelnummer let op: het ambiguous octale escape \%c%c%c wordt ge?nterpreteerd als
de 2-byte opeenvolging \0%c%c, `%c' bij niet inkorten set1, moet string2 niet leeg zijn bij vertalen met complementaire karakterklassen,
moet string2 alle karakter in het domein naar een mappen bij gebruik van oude-stijl +POS en -POS zoeksleutel,
dient de +POS sleutel als eerste gegeven te worden breedte specifikatie fout bij schrijven fout bij schrijven van `%s' specifieer een lijst van bytes, karakters, of velden 