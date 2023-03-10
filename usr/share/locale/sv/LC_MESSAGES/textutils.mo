??    ?      ?  ?   l      0  ?  1  ?  .     -  2   @     s     ?  /   ?     ?     ?  '   ?  #   $  )   H  "   r  8   ?     ?     ?               ;     W  "   k  )   ?     ?  2   ?               6  )   F  =   p  ;   ?  A  ?  ?  ,  ?  )  ?  '      "  X  "     r'  b  u'  ?   ?+  O  f,  ?  ?-    ?0  ?  ?3  &   u5  *   ?5     ?5  $   ?5  &   
6  "   16  +   T6  "   ?6      ?6  V   ?6  '   7  +   C7  .   o7  G  ?7  ?  ?<    ?>  ?  ?D  <   XF  >   ?F  .   ?F  .   G  %   2G  :   XG  8   ?G  #   ?G     ?G  &   H  !   /H     QH  	   ZH     dH  @   xH  >   ?H     ?H  "   I     .I     ?I  :   PI     ?I     ?I     ?I     ?I     ?I     ?I  )   ?I     J  *   )J     TJ  *   qJ  -   ?J  %   ?J  %   ?J     K      1K     RK  '   pK  ?   ?K  %   VL  #   |L     ?L  #   ?L     ?L  (   ?L  %   M     :M  &   ZM     ?M  G   ?M  ,   ?M  1   N  "   @N     cN  T   |N  N   ?N      O     /O  /   EO  -   uO  &   ?O     ?O     ?O  -   ?O  -   )P     WP     gP     wP  4   ?P  5   ?P  D   ?P  &   8Q      _Q      ?Q      ?Q      ?Q     ?Q  B   ?Q  
   <R     GR     aR  \   oR     ?R     ?R     ?R  L   S  @   QS  J   ?S     ?S  &   ?S     T  H   5T  ?   ~T  7   ?T  =   ?T  >   4U  3   sU  (   ?U  F   ?U     V     )V  /   FV     vV     ?V     ?V  B   ?V  *   ?V     W  ,   5W  >   bW  e   ?W  3   X  j   ;X  _   ?X  Y   Y     `Y     tY     ?Y  7   ?Y  -  ?Y  0  ?Z  ^  ,`     ?b  /   ?b     ?b     ?b  3   ?b  "   )c     Lc  ,   bc  /   ?c  .   ?c  %   ?c  7   d     Ld     _d     d     ?d     ?d     ?d  #   ?d  '   e  !   )e  :   Ke  
   ?e     ?e     ?e  $   ?e  D   ?e  ;    f  l  \f  ?  ?g    ?j  ?  ?l     ?n  ?  ?n     .t  ?  1t  ?   	y  e  ?y  ?  {    ?}  ?  	?  ,   ??  0   ?  !   A?  )   c?  +   ??  %   ??  1   ߃  -   ?  $   ??  e   d?  +   ʄ  ,   ??  .   #?  W  R?  ?  ??  L  k?  ?  ??  <   p?  >   ??  ,   ??  *   ?  )   D?  =   n?  <   ??  '   ??     ?  6   /?      f?     ??     ??     ??  H   ??  ^   ??     ]?  #   x?     ??     ??  M   ʗ     ?     ?     (?     .?     L?     \?  *   z?     ??  %   Ę     ??  '   ?  *   +?  $   V?  $   {?     ??     ??  $   ۙ  $    ?  ?   %?  '   ??  "   
?     -?  !   <?     ^?  %   s?  (   ??       (   ??     
?  J    ?  4   k?  /   ??      М     ??  D   	?  C   N?     ??     ??  5   ??  $   ??  !   ?     8?  $   I?  (   n?  '   ??  
   ??     ʞ     ֞  D   ??  1   7?  M   i?  "   ??      ڟ     ??      ?      <?     ]?  6   w?     ??     ??     ՠ  \   ??     F?     R?     e?  `   q?  Z   ҡ  L   -?      z?  0   ??  )   ̢  R   ??  D   I?  :   ??  C   ɣ  E   ?  ?   S?  (   ??  A   ??     ??  #   ?  )   2?     \?  &   o?     ??  K   ??  '   ??     ?  1   $?  <   V?  a   ??  -   ??  g   #?  P   ??  Q   ܧ     .?     E?     N?  9   `?     0          ?       Q       8       ?   x       ?                 d       w   7   ?       E   J       *   ?       ?   }   ?   r                   2       c       X   ?      Y   j       ?   f   ?   R                     Z   ?   ?   (   ?           <         u   ?   ?       ?      ?   ?         N   ?              ?   z   ?   5   ?      W   B   ?      P   L       A   m   n   V      T   ;   ?   M   [   ?          ?               
   ?   _   `   D   o       9   i   ?   -   ?      3   ?   +   @       	   .      G   &   4   ^   ?       ?   ?              ?   e       ?   )   $   ,       b   I          s      |   =   a       ?   ?                  U   S   6   ?       C      {   q   ?                    ]   ?   %       ?   k   ?       ~   K   ?   p   y   ?   v          ?           ?       g   #   h       /   \   ?   ?          !   ?   O          ?   '   >   ?       :       1   ?       "       l       ?   H   F   ?   t   ?        
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
 %c: invalid suffix character in obsolescent option %d: fmt="%s" width=%d
 %s%*s%s%*sPage %s: %lu: improperly formatted MD5 checksum line %s: FAILED open or read
 %s: `%s': match not found %s: `+' or `-' expected after delimeter %s: `}' is required in repeat count %s: cannot follow end of non-regular file %s: closing delimeter `%c' missing %s: equivalence class operand must be a single character %s: input file is output file %s: integer expected after `%c' %s: invalid number %s: invalid number of bytes %s: invalid number of lines %s: invalid pattern %s: invalid regular expression: %s %s: line number must be greater than zero %s: line number out of range %s: no properly formatted MD5 checksum lines found %s: read error %s: unrecognized option `-%c'
 %s: write error %s}: integer required between `{' and `}' Cannot specify both printing across and printing in parallel. Cannot specify number of columns when printing in parallel. Compare sorted files LEFT_FILE and RIGHT_FILE line by line.

  -1              suppress lines unique to left file
  -2              suppress lines unique to right file
  -3              suppress lines unique to both files
      --help      display this help and exit
      --version   output version information and exit
 Concatenate FILE(s), or standard input, to standard output.

  -A, --show-all           equivalent to -vET
  -b, --number-nonblank    number nonblank output lines
  -e                       equivalent to -vE
  -E, --show-ends          display $ at end of each line
  -n, --number             number all output lines
  -s, --squeeze-blank      never more than one single blank line
  -t                       equivalent to -vT
  -T, --show-tabs          display TAB characters as ^I
  -u                       (ignored)
  -v, --show-nonprinting   use ^ and M- notation, except for LFD and TAB
      --help               display this help and exit
      --version            output version information and exit

With no FILE, or when FILE is -, read standard input.
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
 FAILED For each pair of input lines with identical join fields, write a line to
standard output.  The default join field is the first, delimited
by whitespace.  When FILE1 or FILE2 (not both) is -, read standard input.

  -a SIDE           print unpairable lines coming from file SIDE
  -e EMPTY          replace missing input fields with EMPTY
  -i, --ignore-case ignore differences in case when comparing fields
  -j FIELD          (obsolescent) equivalent to `-1 FIELD -2 FIELD'
  -j1 FIELD         (obsolescent) equivalent to `-1 FIELD'
  -j2 FIELD         (obsolescent) equivalent to `-2 FIELD'
  -o FORMAT         obey FORMAT while constructing output line
  -t CHAR           use CHAR as input and output field separator
  -v SIDE           like -a SIDE, but suppress joined output lines
  -1 FIELD          join on this FIELD of file 1
  -2 FIELD          join on this FIELD of file 2
      --help        display this help and exit
      --version     output version information and exit

Unless -t CHAR is given, leading blanks separate fields and are ignored,
else fields are separated by CHAR.  Any FIELD is a field number counted
from 1.  FORMAT is one or more comma or blank separated specifications,
each being `SIDE.FIELD' or `0'.  Default FORMAT outputs the join field,
the remaining fields from FILE1, the remaining fields from FILE2, all
separated by CHAR.
 OK Output pieces of FILE separated by PATTERN(s) to files `xx01', `xx02', ...,
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
 Reformat each paragraph in the FILE(s), writing to standard output.
If no FILE or if FILE is `-', read standard input.

Mandatory arguments to long options are mandatory for short options too.
  -c, --crown-margin        preserve indentation of first two lines
  -p, --prefix=STRING       combine only lines having STRING as prefix
  -s, --split-only          split long lines, but do not refill
  -t, --tagged-paragraph    indentation of first line different from second
  -u, --uniform-spacing     one space between words, two after sentences
  -w, --width=NUMBER        maximum line width (default of 75 columns)
      --help                display this help and exit
      --version             output version information and exit

In -wNUMBER, the letter `w' may be omitted.
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
 Write an unambiguous representation, octal bytes by default, of FILE
to standard output.  With no FILE, or when FILE is -, read standard input.

  -A, --address-radix=RADIX   decide how file offsets are printed
  -j, --skip-bytes=BYTES      skip BYTES input bytes first on each file
  -N, --read-bytes=BYTES      limit dump to BYTES input bytes per file
  -s, --strings[=BYTES]       output strings of at least BYTES graphic chars
  -t, --format=TYPE           select output format or formats
  -v, --output-duplicates     do not use * to mark line suppression
  -w, --width[=BYTES]         output BYTES bytes per output line
      --traditional           accept arguments in pre-POSIX form
      --help                  display this help and exit
      --version               output version information and exit

Pre-POSIX format specifications may be intermixed, they accumulate:
  -a   same as -t a,  select named characters
  -b   same as -t oC, select octal bytes
  -c   same as -t c,  select ASCII characters or backslash escapes
  -d   same as -t u2, select unsigned decimal shorts
  -f   same as -t fF, select floats
  -h   same as -t x2, select hexadecimal shorts
  -i   same as -t d2, select decimal shorts
  -l   same as -t d4, select decimal longs
  -o   same as -t o2, select octal shorts
  -x   same as -t x2, select hexadecimal shorts
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

 [=c=] expressions may not appear in string2 when translating `-%c' extra characters or invalid number in the argument: `%s' `-N NUMBER' invalid starting line number: `%s' `-l PAGE_LENGTH' invalid number of lines: `%s' `-o MARGIN' invalid line offset: `%s' a delimiter may be specified only when operating on fields at least one string must be given when squeezing repeats both files cannot be standard input cannot do ioctl on `%s' cannot skip past end of combined input cannot split in more than one way checksum checksums creating file `%s'
 ending field number argument to the `-k' option must be positive ending field spec has `.' but lacks following character offset error closing file error in regular expression search error reading %s error writing %s field specification has `,' but lacks following field spec file file truncated files flushing file input disappeared invalid backslash escape `\%c' invalid backslash escape at end of string invalid byte or field list invalid character `%c' in type string `%s' invalid character class `%s' invalid conversion specifier in suffix: %c invalid conversion specifier in suffix: \%.3o invalid field number for file 1: `%s' invalid field number for file 2: `%s' invalid field number: `%s' invalid field specification `%s' invalid field specifier: `%s' invalid file number in field spec: `%s' invalid identity mapping;  when translating, any [:lower:] or [:upper:]
construct in string1 must be aligned with a corresponding construct
([:upper:] or [:lower:], respectively) in string2 invalid line number field width: `%s' invalid line number increment: `%s' invalid number invalid number of blank lines: `%s' invalid number of bytes invalid number of bytes to compare: `%s' invalid number of bytes to skip: `%s' invalid number of columns: `%s' invalid number of fields to skip: `%s' invalid number of lines invalid output address radix `%c'; it must be one character from [doxn] invalid repeat count `%s' in [c*n] construct invalid second operand in compatibility mode `%s' invalid starting line number: `%s' invalid type string `%s' invalid type string `%s';
this system doesn't provide a %lu-byte floating point type invalid type string `%s';
this system doesn't provide a %lu-byte integral type limit argument minimum string length misaligned [:upper:] and/or [:lower:] construct missing %% conversion specification in suffix missing conversion specifier in suffix missing list of fields missing list of positions no files may be specified when using --string no type may be specified when dumping strings number of bytes number of lines old-style offset only one [c*] repeat construct may appear in string2 only one argument may be specified when using --check only one string may be given when deleting without squeezing repeats only one type of list may be specified option `-T' requires an argument option `-k' requires an argument option `-o' requires an argument option `-t' requires an argument page width too narrow range-endpoints of `%s-%s' are in reverse collating sequence order read error separator cannot be empty skip argument specified number of bytes `%s' is larger than the maximum
representable value of type `long' standard input standard input is closed standard output starting field character offset argument to the `-k' option
must be positive starting field spec has `.' but lacks following character offset suppressing non-delimited lines makes sense
	only when operating on fields tab size cannot be 0 tab size contains an invalid character tab sizes must be ascending the --binary and --text options are meaningless when verifying checksums the --status option is meaningful only when verifying checksums the --string and --check options are mutually exclusive the --warn option is meaningful only when verifying checksums the [c*] construct may appear in string2 only when translating the [c*] repeat construct may not appear in string1 the delimiter must be a single character the starting field number argument to the `-k' option must be positive too few arguments too few non-option arguments too many %% conversion specifications in suffix too many arguments too many non-option arguments total two strings must be given when both deleting and squeezing repeats two strings must be given when translating unrecognized option `-%c' warning: invalid width %lu; using %d instead warning: line number `%s' is the same as preceding line number warning: the ambiguous octal escape \%c%c%c is being
	interpreted as the 2-byte sequence \0%c%c, `%c' when not truncating set1, string2 must be non-empty when translating with complemented character classes,
string2 must map all characters in the domain to one when translating, the only character classes that may appear in
string2 are `upper' and `lower' when using the old-style +POS and -POS key specifiers,
the +POS specifier must come first width specification write error write error for `%s' you must specify a list of bytes, characters, or fields Project-Id-Version: textutils 1.22
POT-Creation-Date: 1999-08-06 02:10+0200
PO-Revision-Date: 1997-04-16 11:54 MET DST
Last-Translator: Peter Antman <peter.antman@abc.se>
Language-Team: Swedish <sv@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
 
STR?NGar anges som en str?ng tecken. De flesta representerar sig sj?lva.
F?ljande sekvenser tolkas:

  \NNN            tecken med det oktala v?rdet NNN (1 till 3 oktala siffror)
  \\              bakstreck
  \a              ljudsignal
  \b              baksteg
  \f              sidmatning
  \n              nyrad
  \r              vagnretur
  \t              horisontal tabulator
  \v              vertikal tabulator
  TECK1-TECK2     alla tecken fr?n TECK1 till TECK2 i stigande ordning
  [TECK1-TECK2]   samma som TECK1-TECK2, om b?de STR?NG1 och STR?NG2 anv?nder
                  denna
  [TECK*]         i STR?NG2, repetera TECK upp till l?ngden av STR?NG1
  [TECK*N]        N kopior av TECK, N ?r oktalt om det startar med 0
  [:alnum:]       alla bokst?ver och siffror
  [:alpha:]       alla bokst?ver
  [:blank:]       alla horisontala blanktecken
  [:cntrl:]       alla styrtecken
  [:digit:]       alla siffror
  [:graph:]       alla utskrivbara tecken, ej mellanrum
  [:lower:]       alla gemena bokst?ver
  [:print:]       alla utskrivbara bokst?ver, inklusive mellanrum
  [:punct:]       alla tecken f?r interpunktion
  [:space:]       alla horisontala och vertikala mellanslag
  [:upper:]       alla versala bokst?ver
  [:xdigit:]      alla hexidecimala siffror
  [=TECK=]        alla tecken som ?r lika med TECK
 
?vers?ttning sker om -d inte ges och b?de STR?NG1 och STR?NG2 finns. -t kan 
endast anv?ndas vid ?vers?ttning. STR?NG2 expanderas till l?ngden av STR?NG1
genom att dess sista tecken ?terupprepas tillr?ckligt m?nga g?nger. F?r
m?nga tecken i STR?NG2 ignoreras. Endast [:lower:] och [:upper:] expanderas
garanterat i stigande ordning; anv?nds de i STR?NG2 vid ?vers?ttning kan de
endast anv?ndas parvis f?r att specificera ?ndring mellan gemener/VERSALER.
-s anv?nder STR?NG1 om det ej ?r ?vers?ttning eller borttagning; annars 
anv?nder sammanpressning STR?NG2 och sker efter ?vers?ttning och borttagning.
  vid upprepning %d
 %c: ogiltigt ?ndelsetecken i gammalmodig flagga %d: fmt="%s" bredd=%d
 %s%*s%s%*sSida %s: %lu: felaktigt formaterad MDM5-kontrollsummerad %s: MISSLYCKADES ?ppna eller l?sa
 %s: "%s": ingen tr?ff %s: "+" eller "-" f?rv?ntat efter avskiljare %s: upprepningsoperatorn m?ste avslutas med "}" %s: kan inte f?lja slutet av icke-regulj?r fil %s: avslutande avskiljare "%c" saknas %s: lika med klass-operand f?r bara best? av ett tecken %s: infil ?r utfil %s: heltal f?rv?ntat efter "%c" %s: felaktigt nummer %s: felaktigt antal byte %s: felaktigt antal rader %s: felaktigt m?nster %s: felaktigt regulj?rt uttryck: %s %s: radnummer m?ste vara st?rre ?n noll %s: radnummer utanf?r intervallet %s: inga korrekt formaterade MDM5-kontrollsummerader funna %s: l?sfel %s: ok?nd flagga "-%c"
 %s: skrivfel %s}: heltal kr?vs mellan "{" och "}" Kan inte specificera b?de utskrift p? tv?ren och parallell utskrift. Kan inte specificera antal kolumner vid parallell utskrift. J?mf?r de sorterade filerna V?NSTER_FIL och H?GER_FIL rad f?r rad.

  -1              skriv ej rader som ?r unika f?r v?nster fil
  -2              skriv ej rader som ?r unika f?r h?ger fil
  -3              skriv ej rader som ?r gemensamma f?r b?da filerna
      --help      visa denna hj?lptext och avsluta
      --version   visa versionsinformation och avsluta
 Sammanfoga FIL(er), eller standard in, till standard ut.

  -A, --show-all           som -vET
  -b, --number-nonblank    numrera icke-tomma rader
  -e                       som -vE
  -E, --show-ends          visa $ i slutet av varje rad
  -n, --number             numrera alla rader
  -s, --squeeze-blank      sl? samman multipla tomma rader till en
  -t                       som -vT
  -T, --show-tabs          visa TAB-tecken som ^I
  -u                       (ignorerad)
  -v, --show-nonprinting   anv?nd "^"- och "M"-notation, utom f?r LFD och TAB
      --help               visa denna hj?lptext och avsluta
      --version            visa versionsinformation och avsluta

Utan FIL eller n?r FIL ?r -, l?s standard in.
 Konverterar mellanrum i varje FIL till tab, skriv till standard ut.
Utan FIL eller om FIL ?r -, l?s standard in.

  -a, --all           konvertera alla mellanrum, i st?llet f?r inledande
  -t, --tabs=NUMMER   tabulatorstegen ?r NUMMER l?nga i st?llet f?r 8
  -t, --tabs=LISTA    anv?nd kommaseparerad lista med angivna tab-positioner
      --help          visa denna hj?lptext och avsluta
      --version       visa versionsinformation och avsluta

I st?llet f?r -t NUMMER eller -t LISTA kan -NUMMER eller -LISTA anv?ndas.
 Konvertera tabbar i varje FIL till mellanslag, skriv till standard ut.
Utan FIL eller om FIL ?r -, l?s standard in.

  -i, --initial       konvertera inte TABBAR efter icke-blanktecken
  -t, --tabs=ANTAL    ANTAL tecken mellan tabbar, ej 8
  -t, --tabs=LISTA    lista med tabbpositioner, separerad med komma
      --help          visa denna hj?lptext och avsluta
      --version       visa versionsinformation och avsluta

I st?llet f?r -t ANTAL eller -t LISTA, kan -ANTAL eller -LISTA anv?ndas.
 MISSLYCKADES F?r varje par av inmatade rader med identiska JOIN-f?lt, skriv en rad till
standard ut. Om inget annat anges anv?nds det f?rsta f?ltet som JOIN-f?lt och
f?lt avskiljs med mellanslag. N?r FIL1 eller FIL2 (inte b?da) ?r -, l?s 
standard in.

  -a SIDA          skriv omatchade rader fr?n fil SIDA
  -e TOM           ers?tt tomma inmatningsf?lt med TOM
  -i, --ignore-case ignorera gemener/VERSALER n?r f?lt j?mf?rs
  -j F?LT          (F?rlegad) samma som "-1 F?LT -2 F?LT"
  -j1 F?LT         (F?rlegad) samma som "-1 F?LT"
  -j2 F?LT         (F?rlegad) samma som "-2 F?LT"
  -o FORMAT        f?lj FORMAT vid skapandet av de utamatade raderna
  -t TECKEN        anv?nd TECKEN som f?ltseparator f?r in- och utmatning
  -v SIDA          som -a SIDA, men undertrycker f?renade utmatade rader
  -1 F?LT          f?rena vid F?LT i fil 1
  -2 F?LT          f?rena vid F?LT i fil 2
     --help        visa denna hj?lptext och avsluta
     --version     visa versionsinformation och avsluta

Om inte -t TECKEN ?r givet, separeras f?lt av ett f?reg?ende mellanslag, vilket
ignoreras. Annars separeras f?lt av TECKEN. Varje F?LT ?r ett f?ltnummer
r?knat fr?n 1.  FORMAT ?r en eller flera specifikationer separerade med komma
eller mellanslag, var och en ?r "SIDA.F?LT" eller "0".  Normalv?rdet f?r
FORMAT matar ut de f?renade f?lten, de kvarvarande f?lten fr?n FIL1, de
kvarvarande f?lten fr?n FIL2, allt separerat med TECKEN.
 OK Mata ut delar av FIL ?tskilda av M?NSTER till filerna "xx01", "xx02", ...,
och mata ut antal byte f?r varje del till standard ut.

  -b, --suffix-format=FORMAT anv?nd sprintf FORMAT i st?llet f?r %%d
  -f, --prefix=PREFIX        anv?nd PREFIX i st?llet f?r "xx"
  -k, --keep-files           ta inte bort utfiler vid fel
  -n, --digits=SIFFROR       anv?nd angivet antal siffror ist?llet f?r 2
  -s, --quiet, --silent      skriv inte ut storleken p? utmatningsfiler
  -z, --elide-empty-files    ta bort tomma utmatningsfiler
      --help                 visa denna hj?lptext och avsluta
      --version              visa versionsinformation och avsluta

L?s standard in om FIL ?r -. Varje M?NSTER kan vara: 

  HELTAL                     kopiera till men inkludera ej angivet radnummer
  /REGUTTR/[F?RSKJUTNING]    kopiera till en rad som st?mmer med m?nster
  %%REGUTTR%%[F?RSKJUTNING]  hoppa ?ver till, men inkludera ej, en rad som 
                             st?mmer med m?nster
  {HELTAL}                   upprepa f?reg?ende m?nster HELTAL g?nger
  {*}                        upprepa f?reg?ende m?nster s? m?nga g?nger som 
                             m?jligt

En rad-F?RSKJUTNING ?r ett "+" eller "-" f?ljt av ett positivt heltal.
 Skriv CRC-kontrollsumma och antalet byte f?r varje FIL.

  --help      visa denna hj?lptext och avsluta
  --version   visa versionsinformation och avsluta
 Skriv kontrollsumma och antal block f?r varje FIL.

  -r              ?verge -s, anv?nd BSD summeringsalgoritm, anv?nd 1K block
  -s, --sysv      anv?nd System V summerings algoritm, anv?nd 512 byte block
      --help      visa denna hj?lptext och avsluta
      --version   visa versionsinformation och avsluta

Utan FIL eller om FIL ?r -, l?s standard in.
 Skriv de 10 f?rsta raderna av varje FIL till standard ut.
Vid fler ?n en FIL, f?reg? varje fil med ett huvud med filens namn.
Utan FIL eller n?r FIL ?r -, l?s standard in.

  -c, --bytes=STORLEK      skriv de f?rsta STORLEKen byte
  -n, --lines=ANTAL        skriv de f?rsta ANTALet rader i st?llet f?r 10
  -q, --quiet, --silent    skriv aldrig huvuden med filnamn
  -v, --verbose            skriv alltid huvuden med filnamn
      --help               visa denna hj?lptext och avsluta
      --version            visa versionsinformation och avsluta

STORLEK kan ha en multiplikator som ?ndelse: b f?r 512, k f?r 1K, m f?r 1 Meg.
Om -V?RDE anv?nds som f?rsta FLAGGA, l?s -c V?RDE n?r n?gon av 
multiplikatorerna bkm f?ljer, annars l?s -n V?RDE.
 Formatera om varje stycke i FIL(er), skriv till standard ut.
Utan FIL eller om FIL ?r -, l?s standard in.

Obligatoriska argument till l?nga flaggor ?r obligatoriska ?ven f?r de
korta.
  -c, --crown-margin        bibeh?ll indragning av de tv? f?rsta raderna
  -p, --prefix=STR?NG       kombinera endast rader som har STR?NG som prefix
  -s, --split-only          dela l?nga rader, men justera ej
  -t, --tagged-paragraph    indrag av f?rsta raden inte samma som andra raden
  -u, --uniform-spacing     ett mellanslag mellan ord, tv? efter meningar
  -w, --width=NUMMER        maximal radl?ngd (standardv?rde 75 kolumner)
      --help                visa denna hj?lptext och avsluta
      --version             visa versionsinformation och avsluta

I -wNUMMER kan bokstaven "w" utel?mnas.
 ?vers?tt, pressa ihop och/eller ta bort tecken fr?n standard in, skriv till
standard ut.

  -c, --complement        komplementera f?rst STR?NG1
  -d, --delete            ta bort tecken i STR?NG1, ?vers?tt inte
  -s, --squeeze-repeats   ers?tt en sekvens av tecken med ett tecken
  -t, --truncate-set1     stympa f?rst STR?NG1 till l?ngden hos STR?NG2
      --help              visa denna hj?lptext och avsluta
      --version           visa versionsinformation och avsluta
 F?rs?k med "%s --help" f?r mer information.
 Anv?ndning: %s [-SIFFROR] [FLAGGOR]... [FIL]...
 Anv?ndning: %s [FLAGGA] [FIL]...
 Anv?ndning: %s [FLAGGA] [INFIL [PREFIX]]
 Anv?ndning: %s [FLAGGOR]... FIL M?NSTER...
 Anv?ndning: %s [FLAGGA]... FIL1 FIL2
 Anv?ndning: %s [FLAGGA]... V?NSTER_FIL H?GER_FIL
 Anv?ndning: %s [FLAGGA]... STR?NG1 [STR?NG2]
 Anv?ndning: %s [FLAGGA]... [FIL]...
 Anv?ndning: %s [FLAGGA]... [FIL]...
     eller: %s --traditional [FIL] [[+]F?RSKJUTNING [[+]ETIKETT]
 Anv?ndning: %s [FLAGGA]... [INFIL [UTFIL]]
 VARNING: %d av %d ber?knad(e) %s st?mde INTE VARNING: %d av %d listade %s kunde inte l?sas
 Skriv en otvetydig representation av FIL (oktala byte i normall?ge) till
standard ut. Utan FIL eller om FIL ?r -, l?s standard in.

  -A, --address-radix=RADIX   avg?r hur fil-indrag skrivs
  -j, --skip-bytes=BYTE       hoppa f?rst ?ver antal BYTE  fr?n varje fil
  -N, --read-bytes=BYTE       begr?nsa utmatning till BYTE per fil
  -s, --strings[=BYTE]        mata ut ?tminstone BYTE grafiska tecken
  -t, --format=TYP            v?lj format f?r utmatning
  -v, --output-duplicates     anv?nd inte * f?r att markera undertryckning
                              av rader
  -w, --width[=BYTE]          mata ut antal BYTE per rad
      --traditional           acceptera argument av f?r-POSIX format
      --help                  visa denna hj?lptext och avsluta
      --version               visa versionsinformation och avsluta

Specifikationer av f?r-POSIX format kan blandas, de ackumuleras:
  -a   samma som -t a,  v?lj namngivna tecken
  -b   samma som -t oC, v?lj oktala byte
  -c   samma som -t c,  v?lj ASCII-tecken eller kontrollsekvenser
  -d   samma som -t u2, v?lj korta, utan tecken, decimalt
  -f   samma som -t fF, v?lj flyttal
  -h   samma som -t x2, v?lj korta hexadecimala
  -i   samma som -t d2, v?lj korta decimalt
  -l   samma som -t d4, v?lj l?nga decimalt
  -o   samma som -t o2, v?lj korta oktala
  -x   samma som -t x2, v?lj korta hexadecimala
 Skriv varje fil till standard ut, sista raden f?rst.
Utan FIL eller om FIL ?r -, l?s standard in.

  -b, --before             s?tt in skiljetecken f?re i st?llet f?r efter
  -r, --regex              tolka skiljetecknet som ett regulj?rt uttryck
  -s, --separator=STR?NG   anv?nd STR?NG som skiljetecken i st?llet f?r ny rad
      --help               visa denna hj?lptext och avsluta
      --version            visa versionsinformation och avsluta
 Skriv varje FIL till standard ut och l?gg till radnummer.
Utan FIL eller om FIL ?r -, l?s standard in.

  -b, --body-numbering=STIL       anv?nd STIL f?r att numrera rader i kroppen
  -d, --section-delimiter=CC      anv?nd CC f?r att avgr?nsa logiska sidor
  -f, --footer-numbering=STIL     anv?nd STIL f?r att numrera rader i fot
  -h, --header-numbering=STIL     anv?nd STIL f?r att numrera rader i huvud
  -i, --page-increment=NUMMER     ?ka radnummer med NUMMER f?r varje rad
  -l, --join-blank-lines=NUMMER   antal tomma rader efter varandra som r?knas
                                  som en rad
  -n, --number-format=FORMAT      f?lj FORMAT n?r radnummer s?tts in
  -p, --no-renumber               ?terst?ll inte radnummer vid logiska sidor
  -s, --number-separator=STR?NG   l?gg till STR?NG efter (m?jligt) radnummer
  -v, --first-page=NUMMER         f?rsta radnumret p? varje logisk sida
  -w, --number-width=ANTAL        anv?nd ANTAL kolumner f?r radnummer
      --help                      visa denna hj?lptext och avsluta
      --version                   visa versionsinformation och avsluta

I normall?ge anv?nds -v1 -i1 -l1 -sTAB -w6 -nrn -hn -bt -fn.  CC best?r
av tv? tecken f?r avskiljning av logiska sidor. Saknas det andra tecknet
menas :. Skriv \\ f?r \. STIL ?r n?gon av:

  a         numrerar alla rader
  t         numrera endast icke tomma rader
  n         numrera inga rader
  pREGUTTR  numrera endast rader som st?mmer med REGUTTR

FORMAT ?r n?gon av:

  ln   v?nsterjusterat, inga inledande nollor
  rn   h?gerjusterat, inga inledande nollor
  rz   h?gerjusterat, inledande nollor

 Skriver rader som best?r av sekventiellt korresponderande rader fr?n varje 
FIL, separerade med TAB, till standard ut.
Utan FIL eller om FIL ?r -, l?s standard in.

  -d, --delimiters=LISTA  ?teranv?nd tecken fr?n LISTA inst?ller f?r TABs
  -s, --serial            klistra in en fil i taget i st?llet f?r parallellt
      --help              visa denna hj?lptext och avsluta
      --version           visa versionsinformation och avsluta

 [=c=] expansion f?r inte f?rekomma i tr?ng2 vid ?vers?ttning "-%c"  extra tecken eller felaktigt nummer  i argumentet: "%s" "-N NUMMER" felaktigt f?rsta radnummer: "%s" "-l "SIDL?NGD" felaktigt antal rader: "%s" "-o MAGINAL felaktigt indrag av rad: "%s" en avskiljare kan endast specificeras n?r man arbetar p? f?lt minst en str?ng m?ste anges vid ?terupprepad sammanpressning b?gge filerna kan inte vara standard in Kan inte g?ra "ioctl" p? "%s" kan inte hoppa f?rbi slutet p? en kombinerad inmatning kan inte dela p? mer ?n ett s?tt kontrollsumma kontrollsummor skapar fil "%s"
 avslutande argument f?r f?ltnummer till flaggan "-k" m?ste vara positivt avslutande f?ltspecifikationen inneh?ller "." men saknar efterf?ljande
tecken f?r f?rskjutning fel vid st?ngning av filen fel i s?kning med regulj?rt uttryck fel vid l?sning av %s fel vid skrivning av %s f?ltspecifikationen inneh?ller "," men saknar efterf?ljande
f?ltspecifikation fil fil stympad filer fel vid t?mning av filbuffert indata f?rsvann ogiltig kontrollsekvens "\%c" ogiltig kontrollsekvens vid str?ngens slut felaktig byte- eller f?ltlista ogiltigt tecken "%c" i typstr?ng "%s" ogiltig teckenklass "%s" felaktig formatbeskrivning i suffix: %c felaktig formatbeskrivning i suffix: \%.3o felaktigt f?ltnummer f?r fil 1: "%s" felaktigt f?ltnummer f?r fil 2: "%s" felaktigt f?ltnummer: "%s" felaktig f?ltspecifikation "%s" felaktig specifikation av f?lt: "%s" felaktigt filnummer i f?ltspec: "%s" ogiltig identitets?vers?ttning; vid ?vers?ttning m?ste [:lower:] eller
[:upper:] konstruktioner i str?ng1 st?llas mot en motsvarande konstruktion
([:upper:] respektive [:lower:]) i str?ng2 felaktig bredd p? radnumrets f?lt: "%s" felaktig ?kning av radnummer: "%s" ogiltigt antal felaktigt antal tomma rader: "%s" felaktigt antal byte ogiltigt antal byte att j?mf?ra: "%s" ogiltigt antal byte att hoppa ?ver: "%s" felaktigt antal kolumner: "%s" ogiltigt antal f?lt att hoppa ?ver: "%s" felaktigt antal rader ogiltig radix f?r utmatningsadress "%c"; m?ste vara ett tecken fr?n [doxn] ogiltig ?terupprepning "%s" i sammans?ttningen [c*n] andra operanden ogiltig i kompatibelt l?ge "%s" felaktigt f?rsta radnummer: "%s" ogiltig typ-str?ng "%s" ogiltig typ-str?ng "%s";
detta system har ingen %lu-byte flyttalstyp ogiltig typ-str?ng "%s";
detta system har ingen %lu-byte heltalstyp begr?nsa argument minsta l?ngd p? str?ng [:upper:] och/eller [:lower:] ?r felaktigt uppst?llda saknar %%-formatbeskrivning i suffix saknar formatbeskrivning i suffix saknar f?ltlista saknar lista med positionsangivelser ingen fil kan anges n?r --string anv?nds ingen typ kan anges n?r str?ngar sparas antal byte antal rader f?rskjutning p? gammal s?tt endast en [c*] ?terupprepningssammans?ttning kan f?rekomma i str?ng2 endast ett argument kan anges n?r --check anv?nds endast en str?ng f?r anges n?r man tar bort utan ?terupprepad
sammanpressning endast en sorts lista f?r anv?ndas flaggan "-T" kr?ver ett argument flagga "-k" kr?ver ett argument flaggan "-o" kr?ver ett argument flaggan "-t" kr?ver ett argument bredden p? sidan f?r smal intervallets ?ndpunkter f?r "%s-%s"?r i omv?nd ordning l?sfel skiljetecken kan inte vara tomt hoppa ?ver argument antalet angivna byte "%s" ?r st?rre ?n det maximala v?rdet
som typen "long" kan representera standard in standard in st?ngd standard ut tecknet f?r f?rsta f?ltets f?rskjutning givet som argument till flaggan
"-k" m?ste vara positivt f?rsta f?ltspecifikationen inneh?ller "." men saknar efterf?ljande tecken
f?r f?rskjutning att undertrycka ej avskilda rader ?r endast rimligt
	n?r man arbetar p? f?lt storleken p? tab kan inte vara 0 storleken p? tab inneh?ller ett felaktigt tecken storleken p? tabbarna m?ste vara stigande flaggorna --binary och --text ?r meningsfulla enbart n?r kontrollsummor
verifieras flaggan --status ?r meningsfull enbart n?r kontrollsummor verifieras flaggorna --string och --check kan inte anv?ndas samtidigt flaggan --warn ?r meningsfull enbart n?r kontrollsummor verifieras  sammans?ttningen [c*] f?r f?rekomma i str?ng2 endast vid ?vers?ttning ?terupprepningssammans?ttningen [c*] f?r ej f?rekomma i str?ng1 avskiljaren m?ste vara endast ett tecken f?rsta f?ltnumret som anges till flaggan "-k" m?ste vara positivt f?r f? argument f?r f? argument som inte ?r flaggor f?r m?nga %%-formatbeskrivningar i suffix f?r m?nga argument f?r m?nga argument som inte ?r flaggor totalt tv? str?ngar m?ste ges n?r man b?de tar bort och sammanpressar
upprepningar tv? str?ngar m?ste ges vid ?vers?ttning ok?nd flagga "-%c" varning: ogiltig bredd %lu; anv?nder %d i st?llet varning: radnummer "%s" ?r detsamma som f?reg?ende radnummer varning: den tvetydiga oktala kontrollsekvensen \%c%c%c tolkas som
en 2-byte sekvens \0%c%c, "%c" n?r set1 inte stympas f?r str?ng2 ej vara tom vid ?vers?ttning med kompleterande teckenklasser m?ste str?ng2
?vers?tta alla tecken i dom?nen till ett vid ?vers?ttning f?r endast teckenklasserna "upper" och "lower"
finnas i str?ng2 n?r +POS och -POS specifikationer av ?ldre modell anv?ndes
m?ste +POS komma f?rst specifikation av bredd skrivfel skrivfel f?r "%s" du m?ste specificera en lista med byte, tecken eller f?lt 