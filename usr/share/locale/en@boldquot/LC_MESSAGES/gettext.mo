Þ    w      Ô  £         
  ã   
    ý
  ß    t  ø  ¸  m  Ü  &  &    ö  *     !  ,   )     V      Z     {       ,   ¯     Ü  %   ú  ,      -   M      {  &        Ã     ã       e     3   w  9   «  -   å  /      +   C   T   o   .   Ä   4   ó   ?   (!  !   h!  /   !     º!  c   Â!  X   &"  ]   "  O   Ý"  '   -#     U#  Ç   h#  R   0$  (   $  &   ¬$     Ó$  4  è$    )    ·+  Z  @.  ,  0  #  È2  Ô  ì6  2  Á9     ô=     >  >   ">  <   a>  8   >  6   ×>  <   ?  :   K?  $   ?     «?  *   Ê?  ;   õ?     1@     N@     k@     @  $   @  $   Ä@     é@     A      A  *   ?A  .   jA  "   A     ¼A  #   ÐA  7   ôA  *   ,B     WB  3   tB  "   ¨B  5   ËB     C  G   C     `C     yC     C     ©C     ¿C     ÐC     ïC     D     #D     5D     ID  F   ^D     ¥D     ÁD  7   ÝD     E     $E  +   4E  1   `E  *   E  '   ½E     åE     øE  8   F  !   KF     mF     F  1   F  X  ÐF  ã   )H    I  ë  (J  t  L  ¸  N  è  BR  J  +U    vX     [  ,   [     º[      ¾[     ß[     ù[  8   \  )   L\  1   v\  8   ¨\  9   á\  ,   ]  &   H]  +   o]  +   ]     Ç]  e   Õ]  3   ;^  9   o^  -   ©^  /   ×^  +   _  T   3_  .   _  4   ·_  ?   ì_  !   ,`  /   N`     ~`  o   `  p   ö`  i   ga  O   Ña  '   !b     Ib  Ç   \b  R   $c  (   wc  2    c     Óc  4  èc    h    ·j  Z  @m  ,  o  ;  Èq  Ô  v  2  Ùx     }  )   }  b   F}  `   ©}  \   
~  Z   g~  `   Â~  ^   #  $     *   §  6   Ò  G   	     Q  (   n          ±  0   Ë  0   ü  $   -  )   R     |  6     :   Ò  .        <  #   \  7     *   ¸  (   ã  ?     .   L  5   {     ±  S   È          5      P  !   q       *   ¤  $   Ï  &   ô          -     A  ^   V     µ  '   Ñ  7   ù     1     @  +   P  =   |  *   º  '   å             P   :  !        ­     Ç  1   Þ     ]       f   p       c   L   1      v   ^   ,       b   .       s   9   "   F               
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
PO-Revision-Date: 2001-03-11 00:36+0100
Last-Translator: Bruno Haible <haible@clisp.cons.org>
Language-Team: English <en@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=2; plural=(n != 1);
 
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
When used with the -s option the program behaves like the â[1mecho[0mâ command.
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
      --no-location              do not write â[1m#: filename:line[0mâ lines
   -i, --indent                   write the .po file using indented style
      --no-location              do not write â[1m#: filename:line[0mâ lines
  -n, --add-location             generate â[1m#: filename:line[0mâ lines (default)
      --omit-header              don't write header with â[1mmsgid ""[0mâ entry
  -o, --output=FILE              write output to specified file
  -p, --output-dir=DIR           output files will be placed in directory DIR
  -s, --sort-output              generate sorted output and remove duplicates
      --strict                   write out strict Uniforum conforming .po file
  -T, --trigraphs                understand ANSI C trigraphs for input
  -u, --unique                   shorthand for --less-than=2, requests
                                 that only unique messages be printed
   -n, --add-location             generate â[1m#: filename:line[0mâ lines (default)
      --omit-header              don't write header with â[1mmsgid ""[0mâ entry
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
 %s: option â[1m%c%s[0mâ doesn't allow an argument
 %s: option â[1m%s[0mâ is ambiguous
 %s: option â[1m%s[0mâ requires an argument
 %s: option â[1m--%s[0mâ doesn't allow an argument
 %s: option â[1m-W %s[0mâ doesn't allow an argument
 %s: option â[1m-W %s[0mâ is ambiguous
 %s: option requires an argument -- %c
 %s: unrecognized option â[1m%c%s[0mâ
 %s: unrecognized option â[1m--%s[0mâ
 %s: warning:  %s: warning: PO file header missing, fuzzy, or invalid
%*s  warning: charset conversion will not work %s: warning: source file contains fuzzy translation %s:%d: warning: keyword between outer keyword and its arg %s:%d: warning: keyword nested in keyword arg %s:%d: warning: unterminated character constant %s:%d: warning: unterminated string literal %sRead %ld old + %ld reference, merged %ld, fuzzied %ld, missing %ld, obsolete %ld.
 , %d fuzzy translation , %d fuzzy translations , %d untranslated message , %d untranslated messages --join-existing cannot be used when output is written to stdout ...but this definition is similar ...this is the location of the first definition <stdin> Charset â[1m%s[0mâ is not a portable encoding name.
Message conversion to user's charset might not work.
 Charset â[1m%s[0mâ is not supported. %s relies on iconv(),
and iconv() does not support â[1m%s[0mâ.
 Charset â[1m%s[0mâ is not supported. %s relies on iconv().
This version was built without iconv().
 Charset missing in header.
Message conversion to user's charset will not work.
 Continuing anyway, expect parse errors. Continuing anyway. Copyright (C) %s Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 Installing GNU libiconv and then reinstalling GNU gettext
would fix this problem.
 Report bugs to <bug-gnu-utils@gnu.org>.
 Try â[1m%s --help[0mâ for more information.
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
      --no-location           suppress â[1m#: filename:line[0mâ lines
      --add-location          preserve â[1m#: filename:line[0mâ lines (default)
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
 â[1mdomain %s[0mâ directive ignored â[1mmsgid[0mâ and â[1mmsgid_plural[0mâ entries do not both begin with â[1m\n[0mâ â[1mmsgid[0mâ and â[1mmsgid_plural[0mâ entries do not both end with â[1m\n[0mâ â[1mmsgid[0mâ and â[1mmsgstr[0mâ entries do not both begin with â[1m\n[0mâ â[1mmsgid[0mâ and â[1mmsgstr[0mâ entries do not both end with â[1m\n[0mâ â[1mmsgid[0mâ and â[1mmsgstr[%u][0mâ entries do not both begin with â[1m\n[0mâ â[1mmsgid[0mâ and â[1mmsgstr[%u][0mâ entries do not both end with â[1m\n[0mâ at least two files must be specified cannot create output file â[1m%s[0mâ domain name â[1m%s[0mâ not suitable as file name domain name â[1m%s[0mâ not suitable as file name: will use prefix duplicate message definition empty â[1mmsgstr[0mâ entry ignored end-of-file within string end-of-line within string error while opening â[1m%s[0mâ for reading error while opening â[1m%s[0mâ for writing error while reading â[1m%s[0mâ error while writing â[1m%s[0mâ file exactly 2 input files required field â[1m%s[0mâ still has initial default value file â[1m%s[0mâ contains a not NUL terminated string file â[1m%s[0mâ is not in GNU .mo format file â[1m%s[0mâ truncated first plural form has nonzero index format specifications for argument %lu are not the same found %d fatal error found %d fatal errors fuzzy â[1mmsgstr[0mâ entry ignored header field â[1m%s[0mâ should start at beginning of line headerfield â[1m%s[0mâ missing in header impossible selection criteria specified (%d < n < %d) inconsistent use of #~ internationalized messages should not contain the â[1m\%c[0mâ escape sequence invalid control sequence invalid multibyte sequence keyword â[1m%s[0mâ unknown language â[1m%s[0mâ unknown memory exhausted missing â[1mmsgid_plural[0mâ section missing â[1mmsgstr[0mâ section missing â[1mmsgstr[][0mâ section missing arguments no input file given no input files given number of format specifications in â[1mmsgid[0mâ and â[1mmsgstr[0mâ does not match plural form has wrong index seek â[1m%s[0mâ offset %ld failed some header fields still have the initial default value standard input standard output this file may not contain domain directives this message has no definition in the â[1m%s[0mâ domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: file â[1m%s[0mâ extension â[1m%s[0mâ is unknown; will try C warning: this message is not used while creating hash table while preparing output xgettext cannot work without keywords to look for 