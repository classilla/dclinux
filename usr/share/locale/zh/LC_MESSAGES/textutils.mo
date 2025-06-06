��    �      �  �   l      0  �  1  �  .     -  2   @     s     �  /   �     �     �  '   �  #   $  )   H  "   r  8   �     �     �               ;     W  "   k  )   �     �  2   �               6  )   F  =   p  ;   �  A  �  �  ,  �  )  �  '      "  X  "     r'  b  u'  �   �+  O  f,  �  �-    �0  �  �3  &   u5  *   �5     �5  $   �5  &   
6  "   16  +   T6  "   �6      �6  V   �6  '   7  +   C7  .   o7  G  �7  �  �<    �>  �  �D  <   XF  >   �F  .   �F  .   G  %   2G  :   XG  8   �G  #   �G     �G  &   H  !   /H     QH  	   ZH     dH  @   xH  >   �H     �H  "   I     .I     ?I  :   PI     �I     �I     �I     �I     �I     �I  )   �I     J  *   )J     TJ  *   qJ  -   �J  %   �J  %   �J     K      1K     RK  '   pK  �   �K  %   VL  #   |L     �L  #   �L     �L  (   �L  %   M     :M  &   ZM     �M  G   �M  ,   �M  1   N  "   @N     cN  T   |N  N   �N      O     /O  /   EO  -   uO  &   �O     �O     �O  -   �O  -   )P     WP     gP     wP  4   �P  5   �P  D   �P  &   8Q      _Q      �Q      �Q      �Q     �Q  B   �Q  
   <R     GR     aR  \   oR     �R     �R     �R  L   S  @   QS  J   �S     �S  &   �S     T  H   5T  ?   ~T  7   �T  =   �T  >   4U  3   sU  (   �U  F   �U     V     )V  /   FV     vV     �V     �V  B   �V  *   �V     W  ,   5W  >   bW  e   �W  3   X  j   ;X  _   �X  Y   Y     `Y     tY     �Y  7   �Y  2  �Y  �   [    �_     b  (   b     Bb     Yb  2   fb     �b     �b  (   �b  !   �b     c     :c  A   Wc     �c  "   �c     �c     �c     �c     
d     d     2d     Ed  '   Vd     ~d     �d     �d  #   �d     �d     e  +   e  �  Lf  �  i  �  �j     �l  �  �l     �q  �  �q  y   eu  A  �u  �  !w  �  �y  �  v|  $   ~  +   -~     Y~  !   v~  #   �~     �~  (   �~          %  R   C  $   �  )   �  #   �  �  	�  �  ��  i  8�  �  ��  .   3�  .   b�      ��  !   ��      ԍ  $   ��  5   �     P�  $   o�     ��      ��     Ԏ     ݎ     �  *   ��  4   $�     Y�     p�     ��     ��  2   ��     �     �     ��     �  
   �     �     8�     W�  *   n�     ��     ��     ʐ  %   �  %   �     6�     K�     c�  "   z�  �   ��     B�     [�  
   p�     {�     ��     ��     ��     ݒ     �  
   �  8   �  %   Q�  *   w�     ��     ��  <   ͓  9   
�     D�     M�  $   Z�     �     ��     ��       &   є     ��  
   �      �     %�  *   4�  #   _�  ;   ��     ��     ڕ     �     �     %�  
   >�  $   I�     n�     {�     ��  7   ��     ϖ     ؖ     �  1   �  4   $�  .   Y�     ��     ��  &   ��  :   ߗ  .   �  +   I�  ,   u�  .   ��  $   ј     ��  *   �  
   <�     G�     Z�  
   u�     ��     ��  =   ��     ֙     �  #   �      (�  J   I�  4   ��  K   ɚ  D   �  G   Z�     ��     ��     ��  &   ϛ     0          �       Q       8       �   x       �                 d       w   7   �       E   J       *   �       �   }   ?   r                   2       c       X   �      Y   j       �   f   �   R                     Z   �   �   (   �           <         u   �   �       �      �   �         N   �              �   z   �   5   �      W   B   �      P   L       A   m   n   V      T   ;   �   M   [   �          �               
   �   _   `   D   o       9   i   �   -   �      3   �   +   @       	   .      G   &   4   ^   �       �   �              �   e       �   )   $   ,       b   I          s      |   =   a       �   �                  U   S   6   �       C      {   q   �                    ]   �   %       �   k   �       ~   K   �   p   y   �   v          �           �       g   #   h       /   \   �   �          !   �   O          �   '   >   �       :       1   �       "       l       �   H   F   �   t   �        
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
PO-Revision-Date: 1998-04-23 16:27+06:00
Last-Translator: Yuan-Chung Cheng <platin@ms.ccafps.khc.edu.tw>
Language-Team: Chinese <zh@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=big5
Content-Transfer-Encoding: 8-bit
 
�r���� SETs �O�@�Ӧr��A���ܥX�{�b�o�Ӧr��̭��Ҧ��r���Һc�������X�C
�t�~�A�٦��@�ǧt���S���N�q���r��G

  \NNN            �K�i��s�X�� NNN ���r�� (1 �� 3 �ӤK�i����ԧB�Ʀr)
  \\              �ϱ׽u
  \a              ��z�n (BEL)
  \b              �h��r�� (backspace)
  \f              �����r�� (form feed)
  \n              ����r�� (new line)
  \r              ��^�r�� (return)
  \t              �������� (horizontal tab)
  \v              �������� (vertical tab)
  CHAR1-CHAR2     �Ҧ��s�X�b CHAR1 �� CHAR2 �������r���A�̤ɧǱƦC
  [CHAR1-CHAR2]   �b SET1 �P SET2 ���� `[]' ���ɭԡA�� CHAR1-CHAR2 �ۦP
  [CHAR*]         �Φb SET2�A���Ʀr�� CHAR ����P SET1 ���׬ۦP
  [CHAR*REPEAT]   ���Ʀr�� CHAR�A���� REPEAT ��
  [:alnum:]       �Ҧ����r���P���ԧB�Ʀr
  [:alpha:]       �Ҧ����r��
  [:blank:]       �Ҧ��������ťզr�� (space�Btab... ����)
  [:cntrl:]       �Ҧ�������r��
  [:digit:]       �Ҧ����ԧB�Ʀr
  [:graph:]       �Ҧ��i�C�L�r���A���]�A�Ů�r��
  [:lower:]       �Ҧ��p�g�r��
  [:print:]       �Ҧ��i�C�L�r���A�]�A�Ů�r��
  [:punct:]       �Ҧ����I�Ÿ� (punctuation characters)
  [:space:]       �Ҧ��������Ϋ����ťզr��
  [:upper:]       �Ҧ��j�g�r��
  [:xdigit:]      �Ҧ��Q���i��Ʀr ([0-9A-Fa-f])
  [=CHAR=]        �Ҧ���r�� CHAR �۵����r��
 
�� SET1 �P SET2 �������A�ӥB�S�����w�ﶵ -d �ɡA�{���N�i��������u�@�F�ﶵ -t
�u��b�i������ɨϥΡCSET2 �� SET1 �u�ɡA�{���|�۰ʨϥ� SET2 ���̫�@�Ӧr��
�ɺ� SET2�A�� SET1 �P SET2 ���׬۵��CSET2 �� SET1 ���ɡA�h���r���|�Q�����C
�o�Ǧr�����̭��A�u�� [:lower:] �P [:upper:] �Φb SET2 �ɷ|�O���̻��W�����Ǯi
�}�A�� [:lower:] �P [:upper:] �@�w�n���諸�X�{�A�Ψӧ@�j�p�g���ഫ�C
�ϥοﶵ -s �A�B���@�����ΧR���ɡA�|�ϥ� SET1 �����Y���Ъ��C
���ݭn���Y�æP�ɧ@�����ΧR���ɡA�|�ϥ� SET2 �����Y���Ъ��A�åB�b�����ΧR����
�A�@���Y���ʧ@�C
 �b�� %d �����Ю�
 %c: �b�Y�N�o�󪺿ﶵ���t���L�Ī��r���r�� %d: �榡="%s" �e��=%d
 %s%*s%s%*s�� %s: %lu: �o�@�椣�O�g�L�A���榡�ƪ� MD5 �`�M�ˬd�� %s: �b�}�ҩ�Ū���ɵo���Y�����~
 %s: `%s': �䤣��ŦX���r�� %s: �b���ɲŸ��᭱���Ӧ� `+' �� `-' �r�� %s: �b���Эp�Ƥ������Ӧ� `}' �r�� %s: ������H�D�`�W�ɮ׵��� %s: �䤣��ʳ����ɲŸ� `%c'  %s: �������O�B��� (equivalence class operand) �����O�@�ӳ�@�r�� %s: ��X�M��J�ɮ׬O�ۦP�� %s: �b `%c' �᭱���Ӧ��@�Ӿ�Ƥ޼� %s: �L�Ī����X %s: �L�Ī��줸�ռƥ� %s: �L�Ī���� %s: �L�Ī��˦� %s: �L�Ī����W�B�⦡�G%s %s: �渹�����j��s %s: �渹�W�X�d�� %s: ��쥼�g�A���榡�ƪ� MD5 �`�M�ˬd�� %s: Ū���ɵo�Ϳ��~ %s: �L�k���Ѫ��ﶵ `-%c'
 %s: �g�J�ɵo�Ϳ��~ %s}: �b `{' �M `}' �������ӧt����� ����P�ɫ��w����C�L�P����C�L ������C�L�ɡA������w���ƥ� �@��@�檺��� LEFT_FILE �� RIGHT_FILE �o��ӱƧǹL���ɮסC

  -1              ����ܥu�b�Ĥ@���ɮ� LEFT_FILE �X�{�L����
  -2              ����ܥu�b�ĤG���ɮ� RIGHT_FILE �X�{�L����
  -3              ����ܦb����ɮפ��P�ɥX�{�L����
      --help      ��ܳo�q�����T��
      --version   ��ܪ�����T
 ��� FILE(s) �μзǿ�JŪ������Ƴs���_�ӡA��X��зǿ�X�C

  -A, --show-all           �� -vET �ۦP
  -b, --number-nonblank    ��X�ɼХX�D�ťզ檺�渹
  -e                       �� -vE �ۦP
  -E, --show-ends          �b�C�@�檺�̫���� `$' �O�� 
  -n, --number             ��X�ɼХX�渹
  -s, --squeeze-blank      ����X�W�L�@�檺�ťզ�
  -t                       �� -vT �ۦP
  -T, --show-tabs          �N����r�� (TAB) ��ܬ�  ^I
  -u                       (�o�ﶵ���Q�B�z)
  -v, --show-nonprinting   ���F����δ���r���~�A�ϥ� ^ �� M- ���ܪk��ܦr��
      --help               ��ܳo�q�����T��
      --version            ��ܪ�����T

���p�S�����޼� FILE�B�ε��w�� FILE �� `-' ���ܡA�h�q�зǿ�JŪ����ơC
 ��C���ɮ� FILE �̭����Ů�r����������� (TAB)�A��X��зǿ�X�C
���p�S�����޼� FILE�B�ε��w�� FILE �� `-' ���ܡA�h�q�зǿ�JŪ����ơC

  -a, --all           ���F�ɮ׶}�Y���ťզr���~�A�����Ҧ����ťզr��
  -t, --tabs=NUMBER   ����Щw�����j NUMBER �Ӧr�� (�w�]�Ȭ� 8)
  -t, --tabs=LIST     �� LIST ����Ъ���m�ALIST �O�γr�����j����C
      --help          ��ܳo�q�����T��
      --version       ��ܪ�����T

�i�H�Τ��²�檺 -NUMBER�B -LIST �ӥN�� -t NUMBER�B -t LIST�C
 ��C���ɮ� FILE �̭�������ഫ���Ů�r���A��X��зǿ�X�C
���p�S�����޼� FILE�B�ε��w�� FILE �� `-' ���ܡA�h�q�зǿ�JŪ����ơC

  -i, --initial       ���n�ഫ�b�D�ťզr���᭱�����
  -t, --tabs=NUMBER   ������ഫ�� NUMBER �Ӧr�� (�w�]�O�K��)
  -t, --tabs=LIST     �γr�����j����C LIST �@����Ъ���m
      --help          ��ܳo�q�����T��
      --version       ��ܪ�����T

�ϥήɥi�H�� -NUMBER �N�� -t NUMBER�A�� -LIST �N�� -t LIST �C
 �Y�����~ ���ɮ� FILE1�BFILE2 �̭��Y����줺�e�ۦP����s�����@��A��X��зǿ�X�C
�w�]�ȬO����ɮת��Ĥ@�����A�Ϊťզr�������ɲŸ��C
���p�S�����޼� FILE�B�ε��w�� FILE �� `-' ���ܡA�h�q�зǿ�JŪ����ơC

  -a SIDE           ���ɮ� SIDE �������諸��]�L�X�� (SIDE = 1 �� 2)
  -e EMPTY          ��䤣����쪺��� EMPTY �N��
  -i, --ignore-case �����줺�e�ɡA�����j�p�g�����P
  -j FIELD          (�Y�N�o��) �P `-1 FIELD -2 FIELD' �ۦP
  -j1 FIELD         (�Y�N�o��) �P `-1 FIELD' �ۦP
  -j2 FIELD         (�Y�N�o��) �P `-2 FIELD' �ۦP
  -o FORMAT         ���`�榡 FORMAT �ӿ�X���G
  -t CHAR           �Φr�� CHAR ����J��X�����ɲŸ�
  -v SIDE           �� -a SIDE �ۦ��A���O����ۦP����L�X��
  -1 FIELD          �ĥβĤ@���ɮת��� FIELD �����
  -2 FIELD          �ĥβĤG���ɮת��� FIELD �����
      --help        ��ܳo�q�����T��
      --version     ��ܪ�����T

Unless -t CHAR is given, leading blanks separate fields and are ignored,
else fields are separated by CHAR.  Any FIELD is a field number counted
from 1.  FORMAT is one or more comma or blank separated specifications,
each being `SIDE.FIELD' or `0'.  Default FORMAT outputs the join field,
the remaining fields from FILE1, the remaining fields from FILE2, all
separated by CHAR.
 OK ���ɮ� FILE �̷Ӽ˦� PATTERN(s) ���Φ��ƭӤp�ɮ� `xx01'�A`xx02'�A...�A
�åB�N�C�Ӥp�ɮת��j�p��X��зǿ�X�h�C

  -b, --suffix-format=FORMAT �ο�X�榡 FORMAT �N�� %%d (sprintf ���榡)
  -f, --prefix=PREFIX        �Φr�� PREFIX �N�� `xx'
  -k, --keep-files           �o�Ϳ��~�ɤ��n�����w��X���ɮ�
  -n, --digits=DIGITS        ��X�ɦW�̥� DIGITS �ӼƦr�Х� (�w�]�Ȭ� 2)
  -s, --quiet, --silent      ���n�C�L��X�ɮת��j�p
  -z, --elide-empty-files    �����Ū���X�ɮ�
      --help                 ��ܳo�q�����T��
      --version              ��ܪ�����T

���w�� FILE �� `-' ���ܡA�h�q�зǿ�JŪ����ơC�ϥΪ��˦� (PATTERN) �i�H�O�G

  INTEGER            �渹�F�|��o�Ǧ渹���e���������ΥX��
  /REGEXP/[OFFSET]   ���W�B�⦡�F�|��ŦX�����@�椧�e���������ΥX��
  %%REGEXP%%[OFFSET]   ���W�B�⦡�F���L�u��X�ŦX���᪺����
  {INTEGER}          ���Ыe�@�Ӽ˦� INTEGER ��
  {*}                �@�����Ыe�@�Ӽ˦�

�氾���q OFFSET �O�H�[���δ�᭱���ۤ@�ӥ���ƨӪ��� (�p `+3')�C
 �L�X�C���ɮת� CRC �`�M�ˬd�H���`�줸�ռƥ�

  --help               ��ܳo�q�����T��
  --version            ��ܪ�����T
 ��C���ɮ� FILE ���`�X�ˬd���G�H�ΰ϶��ƥئL�X�ӡC

  -r              �\�L -s�A�ϥ� BSD ���t��k�B�� 1K ���϶��j�p
  -s, --sysv      �ϥ� System V ���t��k�B�� 512 �Ӧ줸�ժ��϶��j�p
      --help      ��ܳo�q�����T��
      --version   ��ܪ�����T

���p�S�����޼� FILE�B�ε��w�� FILE �� `-' ���ܡA�h�q�зǿ�JŪ����ơC
 ��C�@���ɮ� FILE �̫e���� 10 ���X��зǿ�X�C
�ҵ����޼� FILE �W�L�@�ӮɡA�|�b�C�@���ɮפ��e���e�ХܥX�ɦW�C
���p�S�����޼� FILE�B�ε��w�� FILE �� `-' ���ܡA�h�q�зǿ�JŪ����ơC

  -c, --bytes=SIZE         �L�X�̫e���� SIZE �Ӧ줸��
  -n, --lines=NUMBER       �L�X�̫e���� NUMBER �� (�w�]�ȬO 10 ��)
  -q, --quiet, --silent    ���n�b�ɮפ��e���e�ХܥX�ɦW
  -v, --verbose            �`�O�b�ɮפ��e���e�ХܥX�ɦW
      --help               ��ܳo�q�����T��
      --version            ��ܪ�����T

���w�� SIZE �i�H�O�@�ӭ��Ʀr���G b ���� 512�Ak ���� 1K�Am ���� 1 Meg�C
�i�H�Τ@�Ӽƥئr -VALUE ���Ĥ@�ӿﶵ�A���p VALUE ���t�����Ʀr�� [bkm] ���ܡA
�{���|�⥦������ -c VALUE�A�_�h�N���� -n VALUE �B�z�C 
 ���ɮ� FILE(s) �̭����C�@�q���s�榡�ƫ�A��X��зǿ�X�C
���p�S�����޼� FILE�B�ε��w�� FILE �� `-' ���ܡA�h�q�зǿ�JŪ����ơC

 (�u�ﶵ�Ϊ��ѼƩM���ﶵ�Ϊ��O�@�˪�) 
  -c, --crown-margin        �O�d�̶}�Y��檺�Y��
  -p, --prefix=STRING       �u�X�֥� STRING �}�Y����
  -s, --split-only          �u��Ӫ������}�A����ӵu����ɺ�
  -t, --tagged-paragraph    �ХܥX�C�@�q�A�C�@�q���Ĥ@��M�ĤG�檺�Y�Ƥ��P
  -u, --uniform-spacing     �r�P�r�����Τ@�ӪŮ���}�A�y�l�����h�Ψ��
  -w, --width=NUMBER        �̤j��e (�w�]�� 75 ��)
      --help                ��ܳo�q�����T��
      --version             ��ܪ�����T
�ﶵ -wNUMBER �̭��� `w' �i�H�������g�C
 �q�зǿ�JŪ����ơA�N��ƴ����B���Y�B�R���r����A��X��зǿ�X�C

  -c, --complement        �ɼơA�ΩҦ����b SET1 �̪��r���ӷ� SET1
  -d, --delete            ���������A������b SET1 �̭����r�����R��
  -s, --squeeze-repeats   ��s�򭫽ƪ��r�����R���u�Ѥ@��
  -t, --truncate-set1     ���� SET1 �����׺I���� SET2 �@�˪�
      --help              ��ܳo�q�����T��
      --version           ��ܪ�����T
 �Х� `%s --help' ����ܥ����O���Ϊk
 �Ϊk�G%s [-���ԧB�Ʀr] [�ﶵ]... [FILE]...
 �Ϊk�G%s [OPTION] [FILE]...
 �Ϊk�G%s [�ﶵ] [INPUT [PREFIX]]
 �Ϊk�G%s [�ﶵ]... FILE PATTERN...
 �Ϊk�G%s [�ﶵ]... FILE1 FILE2
 �Ϊk�G%s [�ﶵ]... LEFT_FILE RIGHT_FILE
 �Ϊk�G%s [�ﶵ]... SET1 [SET2]
 �Ϊk�G%s [�ﶵ]... [FILE]...
 �Ϊk�G%s [�ﶵ]... [FILE]...
  �ΡG%s --traditional [FILE] [[+]OFFSET [[+]LABEL]]
 �Ϊk�G%s [�ﶵ]... [INPUT [OUTPUT]]
 ĵ�i�G%d �� %d �p��X�Ӫ� %s �� `��' �ǰt ĵ�i�G�L�kŪ�� %d �� %d �C�X�� %s 
 ���ɮפ��e�ΤK�i��B�Q�i��ΤQ���i����ܥX�� (�w�]�O�K�i��)�C
���p�S�����޼� FILE�B�ε��w�� FILE �� `-' ���ܡA�h�q�зǿ�JŪ����ơC

  -A, --address-radix=RADIX   ����ɮװ����q�L�X���覡
  -j, --skip-bytes=BYTES      ���L�C�ӿ�J�ɳ̶}�Y�� BYTES �Ӧ줸��
  -N, --read-bytes=BYTES      �C���ɮ׳̦h�L�X BYTES �Ӧ줸��
  -s, --strings[=BYTES]       ��X�ܤ֧t�� BYTES ��ø�Ϧr�����r��
  -t, --format=TYPE           ��ܿ�X���榡
  -v, --output-duplicates     ���n�άP�� `*' �Хܩ���������
  -w, --width[=BYTES]         ��X�ɨC�@��L�X BYTES �Ӧ줸��
      --traditional           ���� "�e-POSIX" �Φ����޼�
      --help                  ��ܳo�q�����T��
      --version               ��ܪ�����T

�e-POSIX �Φ����޼ƥi�H�Q�V�b�@�_�ΡA�]�t�F�G
  -a   �� -t a  �ۦP�A�L�X�r���W��
  -b   �� -t oC �ۦP�A�ΤK�i����ܦ줸��
  -c   �� -t c  �ۦP�A��� ASCII �r���έ˱׽u�h�X�r��
  -d   �� -t u2 �ۦP�A��ܤQ�i�쪺�L�Ÿ��u��� (unsigned short)
  -f   �� -t fF �ۦP�A��ܯB�I��
  -h   �� -t x2 �ۦP�A��ܤQ���i�쪺�u���
  -i   �� -t d2 �ۦP�A��ܤQ�i�쪺�u���
  -l   �� -t d4 �ۦP�A��ܤQ�i�쪺�����
  -o   �� -t o2 �ۦP�A��ܤK�i��u���
  -x   �� -t x2 �ۦP�A��ܤQ���i�쪺�u���
 �q�̫�@��}�l�A��C���ɮ� FILE �����e�˹L�ӡA��X��зǿ�X�h�C
���p�S�����޼� FILE�B�ε��w�� FILE �� `-' ���ܡA�h�q�зǿ�JŪ����ơC

  -b, --before             ����j�ť[�b�e�� (�w�]�O�[�b�᭱)
  -r, --regex              ����j�Ÿ��������W�B�⦡
  -s, --separator=STRING   �Φr�� STRING �����j�� (�w�]�O����r��)
      --help               ��ܳo�q�����T��
      --version            ��ܪ�����T
 ��C���ɮת����e���ФW�渹�A��X��зǿ�X�h�C
���p�S�����޼� FILE�B�ε��w�� FILE �� `-' ���ܡA�h�q�зǿ�JŪ����ơC

  -b, --body-numbering=STYLE      �ϥμ˦� STYLE �ӼХܤ��媺�渹
  -d, --section-delimiter=CC      �ϥ� CC �ӰϤ��޿譶 (logical pages)
  -f, --footer-numbering=STYLE    �ϥ� STYLE �ӼХܵ��}���渹
  -h, --header-numbering=STYLE    �ϥ� STYLE �ӼХܼ��Y���渹
  -i, --page-increment=NUMBER     ��P�椧���A�渹���W�[�q
  -l, --join-blank-lines=NUMBER   �� NUMBER �Ӫťզ�⦨�@��
  -n, --number-format=FORMAT      �̾� FORMAT ���J�渹
  -p, --no-renumber               �b��V�޿譶�ɡA���n��渹�j�p�k�s
  -s, --number-separator=STRING   ��X�ɡA��r�� STRING �[�b�渹����
  -v, --first-page=NUMBER         �C���޿譶�Ĥ@�檺�渹�j�p
  -w, --number-width=NUMBER       �� NUMBER �Ӧr���ӼХܦ渹
      --help                      ��ܳo�q�����T��
      --version                   ��ܪ�����T

�{������ɡA�w�]�|�ϥοﶵ -v1 -i1 -l1 -sTAB -w6 -nrn -hn -bt -fn�C
 CC �O��өw�ɦr�� (delimiter characters)�A�ΨӰϤ��޿譶�F���p�u���@��
 �w�ɦr�šA�|�۰ʧ�ĤG�ӳ]�� `:'�C
�n����ӭ˱׽u `\\' �ӿ�J�˱׽u `\'�CSTYLE �O���G

  a         ��Ҧ����泣�ФW�渹
  t         �u�ЫD�ťզ�
  n         ���Ц渹
  pREGEXP   �u��ŦX���W�B�⦡ REGEXP ����ФW�渹

FORMAT �i�H�O�G

  ln   �渹�a������A�}�Y�S���s
  rn   �渹�a�k����A�}�Y�S���s
  rz   �渹�a�k����A�}�Y���s

 ��Ҧ��ɮ� FILE �X�֦b�@�_�A�C���ɮצ��@�����A���P�ɮת���Ƥ���
�H��� (TAB) �۹j�A��X��зǿ�X�C
�L�X�C���ɮ� FILE �̭�����ơB�r�ƤΦ줸�ơA���w�h���ɮת���

  -d, --delimiters=LIST   �Φ�C LIST �̭����r���N����Шӷ��@��X�����j
  -s, --serial            �H��C�覡�A�P�@�ɮת����e���֦��@��A�A���U�@���ɮ�
      --help              ��ܳo�q�����T��
      --version           ��ܪ�����T

 �i������ɡA[=c=] ���ܦ�����b�ĤG�Ӧr��̥X�{ `-%c' ���h�l���r���εL�Ī��Ʀr�b�޼� `%s' �̭� `-N NUMBER' �L�Ī��}�l�渹�G`%s' `-l PAGE_LENGTH' �L�Ī���ơG`%s' `-o MARGIN' �L�Ī��氾���q�G`%s' �u���b�w�����@�~�ɤ~����w���ɲŸ� �b�������Цr (squeezing repeats) �ɦܤֻݵ��w�@�Ӧr�� ���w������ɮפ��ೣ�O�зǿ�J �S��k�� `%s' �����X�J���� (ioctl) �L�k���L�X�ֿ�J���e�������Ÿ� ����ζW�L�@�ؤ覡�Ӷi����Τu�@ �`�M�ˬd �`�M�ˬd ���b�إ��ɮ� `%s'
 �b�ﶵ `-k' �̫��w��������츹�X�����O���� �b������컡���Ÿ̭��t�� `.'�A�o�S�����H���r�������q ���b�����ɮ׮ɵo�Ϳ��~ �b���W�B�⦡�j�M�ɵo�Ϳ��~ ���bŪ�� %s �ɵo�Ϳ��~ ���b�g�J %s �ɵo�Ϳ��~ �ҵ������W��̭��t�� `,'�A�o�S�����H����컡���� �ɮ� �ɮ׳Q�I�_�F �ɮ� ���b�N�ɮױƻ� ��J�����F �L�Ī��ϱ׽u�h�X�ǦC `\%c' �b�r�ꪺ�������L�Ī��ϱ׽u�h�X �L�Ī��줸�թ�����C `%c' �O�L�Ī��r�� (�b���O�r�� `%s' �̭�)�C �L�Ī��r�����O `%s' �b�r���̪��ഫ�����ŵL�ġG%c �b�r���̪��ഫ�����ŵL�ġG\%.3o �w�� 1 ���ɮת���츹�X�O�L�Ī��G`%s' �w�� 2 ���ɮת���츹�X�O�L�Ī��G`%s' �L�Ī���츹�X�G`%s' `%s' �O�L�Ī���컡���� �L�Ī���컡���šG`%s' �b��줤���w�F�L�Ī��ɮ׽s���G`%s' �L�Ī������M�g (identity mapping)�F�i������ɡA�r�� 1 ������
 [:lower:]�B[:upper:] ���c�A�b�r�� 2 �̳��������@�Ӭ۹��������c�~�i�H�C
 (���O�� [:upper:]�B[:lower:])  �L�Ī��渹���e�סG`%s' �L�Ī��渹�W�q�G`%s' �L�Ī��Ʀr �L�Ī��ťզ�ƥءG`%s' �L�Ī��줸�ռƥ� �n������줸�ռƥصL�ġG`%s' �n���L���줸�ռƥصL�ġG`%s' �L�Ī����ƥءG`%s' �n���L�����ƥصL�ġG`%s' �L�Ī���� ��X��}����� `%c' �O�L�Ī��F��ƥ����O [doxn] �䤤���@ �b [c*n] ���c�����L�Ī����Ц��� `%s'  �b�ۮe�ʼҦ� `%s' �U�A�ĤG�ӹB��ƬO�L�Ī� �L�Ī��}�l�渹�G`%s' `%s' �O�L�Ī����O�r�� `%s' �O�L�Ī����O�r��F
�o�Өt�ΨèS�� %lu-�줸���B�I�ƫ��O" `%s' �O�L�Ī����O�r��F
�o�Өt�ΨèS�� %lu-�줸����ƫ��O ����޼� �̤p�r����� �S������� [:upper:]�B[:lower:] ���c �b�r���̧䤣�� %% �ഫ�W�� �b�r���̧䤣���ഫ������ �䤣������C �䤣���m��C �ϥοﶵ --string �ɴN����A���w�ɮפF �b�ɦL�r�ꪺ�ɭԤ�����w���O �줸�ռƥ� ��� �¼˦��������q �ĤG�Ӧr��̥u��X�{�@�� [c*] �o�ح��Ƶ��c �ϥοﶵ --check �ɥu����w�@�Ӥ޼� �R�����O���������Цr (squeezing repeats) �ɥu�൹�w�@�Ӧr�� �@���u����w�@����������C �ﶵ `-T' �ݭn���@�Ӥ޼� �ﶵ `-k' �ݭn���@�Ӥ޼� �ﶵ `-o' �ݭn���@�Ӥ޼� �ﶵ `-t' �ݭn���@�Ӥ޼� ���e�ӯ��F `%s-%s' ���d�򵲧��I�b�ۤϪ��ƦC�ǦV Ū���o�Ϳ��~ ���j�Ť��i�H�O�Ū� ���L�޼� ���w���줸�ƥ� `%s' �j�󫬧O `long' ��
�̤j�i���ܼƭȡC �зǿ�X �зǿ�J�Q�����F �зǿ�X �b�ﶵ `-k' �̫��w���}�l���r�������q
�����O���� �b�}�l��컡���Ÿ̭��t�� `.'�A�o�S�����H���r�������q �u���b�w�����@�~�ɤ~�੿��
	�ʤֹ��ɲŸ����� ��Фj�p���i���s ���w����Фj�p�̧t���L�Ī��r�� ���w����Фj�p�����O�ɧǪ� (ascending) �������`�M�ˬd����ɡA�ﶵ --binary �� --text �O�S���N�q�� �ﶵ --status �u���b�����`�M�ˬd����ɤ~���N�q ����P�ɨϥ� --string �M --check �o��ӿﶵ �ﶵ --warn �u���b�����`�M�ˬd����ɤ~���N�q  [c*] ���c�u���b�����ɤ~��X�{�b�ĤG�Ӧr��̭� �Ĥ@�Ӧr��̤��঳ [c*] �o�ح��Ƶ��c ���ɲŸ������O�@�ӳ�@�r�� �b�ﶵ `-k' �̫��w���}�l��츹�X�����O���� �޼ƤӤ֤F �D�ﶵ���޼ƤӤ֤F �b�r���̦��Ӧh %% �ഫ�W�� �Ӧh�޼ƤF �D�ﶵ���޼ƤӦh�F �`�p �b�P�ɧR���B�������Цr (squeezing repeats) �ɥ������w��Ӧr�� �b�����ɥ������w��Ӧr�� �L�k���Ѫ��ﶵ `-%c' ĵ�i�G�e�� %lu �O�L�Ī��F�� %d �N�� ĵ�i�G�渹 `%s' ��e�ɦ渹�@�ˤj ĵ�i�G�N���q���K�i��h�X�ǦC \%c%c%c 
	��������Ӧ줸�ժ��ǦC \0%c%c, `%c' �b�������Ĥ@�Ӧr���� (set1) �ɡA�ĤG�Ӧr�ꤣ��O�Ū� �b�H���ɪ��r�������@�����ɡA�ĤG�Ӧr�ꪺ�d��
�����]�t�Ĥ@�Ӧr��̩Ҧ����r�� �b�����ɡA�ߤ@�i��X�{�b�ĤG�Ӧr�ꪺ�r������
�u�� `upper' �� `lower' ���ϥ��¦��� +POS �P -POS �� (key) �����ŮɡA
 +POS �����ť�����b�e��  �e�׳W�� �g�J�ɵo�Ϳ��~ �g�J `%s' �ɵo�Ϳ��~ �A�������w�@�Ӧ줸�աB�r������쪺��C 