Þ    ^           ü      ø  ã   ù  ß  Ý  t  ½
  ¸  2  &  ë  ö       	           2     L  ,   f       %   ±  ,   ×  -         2  &   S     z       e   º  3      9   T  -     /   ¼  +   ì  ?     !   X  /   z  Ç   ª  (   r  &        Â  4  ×         ¦"  ,  /%  #  \'  Ô  +  2  U.     2  >   2  8   ×2  6   3  <   G3  :   3  $   ¿3     ä3  *   4  ;   .4     j4     4     ¤4     ¾4  $   Ø4  $   ý4     "5     ;5     Y5  *   x5  .   £5  "   Ò5     õ5     	6  3   &6  "   Z6  5   }6  G   ³6     û6     7     )7     ?7     P7     o7     7     £7     µ7     É7  F   Þ7     %8  7   A8     y8     8  +   8  1   Ä8  *   ö8  '   !9     I9     \9  8   v9  !   ¯9     Ñ9     ë9  1   :  >  4:    s;  _  <  Õ  ó=  Þ  É?  Ö  ¨B  ¹  E     9H     HH     dH     H  '   H     ÃH  '   áH  %   	I  (   /I      XI  )   yI  #   £I  !   ÇI  g   éI  .   QJ  ?   J  9   ÀJ  )   úJ  %   $K  >   JK     K  #   §K  ¡   ËK  -   mL  )   L     ÅL  (  àL    	Q    S    'V  ð  :X    +\    É^     ^b  4   yb  .   ®b  2   Ýb  2   c  6   Cc  (   zc     £c  1   Ãc  D   õc      :d  $   [d  $   d     ¥d     Àd     Ød     ðd     e     *e  &   Be  7   ie  *   ¡e      Ìe  &   íe  2   f  "   Gf      jf  H   f  ,   Ôf      g     "g     ;g  $   Rg     wg  !   g  
   ¸g     Ãg      âg  1   h  2   5h  2   hh     h     ¤h  (   ­h  3   Öh  6   
i  1   Ai     si  &   i  >   «i  "   êi     j     ,j  4   ;j         4          U   O             6   :       H   5   *   V                      M                       T       Q   !   2         ?   +               
   $   /       J      	   "          %   Z          -   (   Y       C   S      8       B       ;   E       \   =      0      N   .      P   I   1   9           L         W   '   >   A               @             <   #   ]         ^   [      ,       )       &   D      G   R           F          K          X   7      3        
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
 %s: warning: PO file header missing, fuzzy, or invalid
%*s  warning: charset conversion will not work %s: warning: source file contains fuzzy translation %s:%d: warning: keyword between outer keyword and its arg %s:%d: warning: keyword nested in keyword arg %s:%d: warning: unterminated character constant %s:%d: warning: unterminated string literal --join-existing cannot be used when output is written to stdout ...but this definition is similar ...this is the location of the first definition Copyright (C) %s Free Software Foundation, Inc.
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
 `msgid' and `msgid_plural' entries do not both begin with '\n' `msgid' and `msgstr' entries do not both begin with '\n' `msgid' and `msgstr' entries do not both end with '\n' `msgid' and `msgstr[%u]' entries do not both begin with '\n' `msgid' and `msgstr[%u]' entries do not both end with '\n' at least two files must be specified cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix duplicate message definition empty `msgstr' entry ignored end-of-file within string end-of-line within string error while opening "%s" for reading error while opening "%s" for writing error while reading "%s" error while writing "%s" file exactly 2 input files required field `%s' still has initial default value file "%s" contains a not NUL terminated string file "%s" is not in GNU .mo format file "%s" truncated fuzzy `msgstr' entry ignored header field `%s' should start at beginning of line headerfield `%s' missing in header impossible selection criteria specified (%d < n < %d) internationalized messages should not contain the `\%c' escape sequence invalid control sequence keyword "%s" unknown language `%s' unknown memory exhausted missing `msgid_plural' section missing `msgstr' section missing `msgstr[]' section missing arguments no input file given no input files given number of format specifications in `msgid' and `msgstr' does not match seek "%s" offset %ld failed some header fields still have the initial default value standard input standard output this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: file `%s' extension `%s' is unknown; will try C warning: this message is not used while creating hash table while preparing output xgettext cannot work without keywords to look for Project-Id-Version: GNU gettext 0.10.35
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 1999-09-24 23:45+09:00
Last-Translator: JUN SAWATAISHI <jsawa@attglobal.net>
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=sjis
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=1; plural=0;
 
  oCiÌ MO t@Cð Uniform X^CÌ PO t@CÉÏ·µÜ·B
  MO t@CÍ little-endian È¢µ big-endian ÌÇ¿çÅà©Ü¢Ü¹ñB
  ÎÛt@CªÁè³êÈ¢©A é¢Ít@C¼ÆµÄ`-' ªwè³êéÆ
WüÍ©çÇÝÝÜ·BftHgÅWoÍÉ«oµÜ·B

 
p[^ TEXTDOMAIN ª^¦çêÈ¢ÍAÂ«Ï TEXTDOMAIN Éæè
è³êéBbZ[WJ^OªÊíÌfBNgÉÈ¢êÍ
Â«Ï TEXTDOMAINDIR ÅÝèÅ«é.

IvV -s ÉæèvOÍ echo R}hÌæ¤É®ì·éªA
PÉøðWoÍÉRs[·éÌÅÍÈ­AIð³ê½J^OÌ
bZ[WÍ|ó³êÄ¢é
õfBNg: %s
 
  ñÂÌ Uniform X^CÌ PO t@CðZ·éB
  ù¶Ìt@C def.po Ì|óÓÌ¤¿Vµ¢àÌÆv·éÆ±ëÍ»ÌÜÜ
p³³êARgÍ¶«±¯éàÌÌt@CÌÊuÍ³³êé
  Vµ¢t@C ref.po (Êí xgettextÉæè¶¬) Ì·×ÄÌ|ó¨æÑRg
Í³³êéªAhbgRg(#,)Æ»ÌÊuÍÛ½êéB
  ³mÈêvªÈ¢Æ±ëÅÍAæèÃÈÊð¾é½ßÉBÈêvû@ªÌp
³êéBÊÍt@CwèªÈ¢ÀèWoÍÉ«o³êéB
   -V, --version                   @[Wîñð\¦µÄI¹
  -w, --width=NUMBER              y[Wð NUMBER ÆÝè·é
  -<, --less-than=NUMBER          NUMBER Âæè­È¢t@CÅ¤Ê·é
                                  bZ[WÌÝoÍ·é(ftHg: ³§À)
  ->, --more-than=NUMBER          NUMBER Âæè½¢t@CÅ¤Ê·é
                                  bZ[WÌÝoÍ·é(ftHg: 1)

  ¡Ì PO t@CÉ¤Ê·ébZ[WðõµÜ·B
  --more-than IvVÉæèA¤Ê·ébZ[WÌªêèÈãÌ
ÉÌÝoÍ·éæ¤ÉÅ«Ü·B
  tÉA--less-than IvVÉæè¤Ê«ÌöxªêèÈºÌÉÌÝ
oÍ³êéæ¤ÉÝèÅ«Ü·B(á: --less-than=2 Åj[NÈbZ[
WÌÝðoÍµÜ·)
   -i, --indent                   CfgµÄoÍ·é
      --no-location             '#:t@C¼:sÔ'ÌsðoÍµÈ¢
      --add-location            '#:t@C¼:sÔ'ÌsðoÍ·é(ftHg)
      --omit-header               wb_[É`msgid ""'ð«ÜÈ¢
  -o, --output=FILE               FILEÉoÍ·é
  -p, --output-dir=DIR            oÍt@Cð DIR É«Þ
  -s, --sort-output               esð\[gµÄd¡³ê½àÌð}[W·é
      --strict                    µ§ÉUniforml®É]ÁÄoÍ·é
  -T, --trigraphs                 ANSI C trigraph ÌüÍðð·é
  -u, --unique                    --less-than=2 Æ¯êÅj[NÈbZ[W
                                  ÌÝoÍ³êé
   -n, --add-location            '#:t@C¼:sÔ'ÌsðoÍ(ftHg)
      --omit-header             'msgid "" ÌGgðwb_É«o³È¢
  -o, --output=FILE              FILE ÉoÍ·é
  -p, --output-dir=DIR           fBNg DIR ÉoÍ·é
  -s, --sort-output              oÍð\[gµÄd¡sðí·é
      --strict                   µ§É Uniforum X^CÉ]¤
  -T, --trigraphs                üÍÌ ANSI C \L(trigraph)ðð·é
  -V, --version                  @[Wîñð\¦µÄI¹
  -w, --width=NUMBER             oÍÌy[WðÝè·é
  -x, --exclude-file=FILE        FILE ÌGgÍo³êÈ¢

  üÍt@Cª - ÌÍWüÍðÇÝÝÜ·
  ®¹µÜµ½
 %s Æ %s ÍÝ¢Ér¼IÅ· %s: s³ÈIvV-- %c
 %s: s³ÈIvV -- %c
 %s: IvV %c%s ÍøðÆèÜ¹ñ
 %s: IvV %s ÍBÅ·
 %s: IvV %s ÍøðKvÆµÜ·
 %s: IvV %s ÍøðÆèÜ¹ñ
 %s: IvV -W %s ÍøðÆèÜ¹ñ
 %s: IvV -W %s ÍBÅ·
 %s: IvVÍøðKvÆµÜ· -- %c
 %s: F¯³êÈ¢IvV -- %c%s
 %s: F¯³êÈ¢IvV -- %s
 %s: x: PO t@CÌwb_ªÈ¢©AB©A é¢Í³øÅ·
%*s  x: ¶ZbgÌÏ·ªÅ«Ü¹ñ %s: x: \[Xt@CÉBÈ|óª èÜ· %s:%d: x: OL[[hÆ»ÌøÌÔÉL[[hª èÜ· %s:%d: x: L[[høÅL[[hªlXgµÄ¢Ü· %s:%d: x: ¶ñèª®µÄ¢Ü¹ñ %s:%d: x: ¶ñª®µÄ¢Ü¹ñ --join-existing ÍWoÍÉoÍ·éÉp¢é±ÆÍÅ«Ü¹ñ ...±Ìè`ÍÌàÌÆ¯¶.. ...±êÍÅÉè`³ê½Æ±ëÅ· Copyright (C) %s Free Software Foundation, Inc.
±êÍt[\tgEGAÅ·BRs[ÌðÉÂ¢ÄÍ\[XðQÆÌ±Æ
±Ì\tgEGAÉÍS­ÛØª èÜ¹ñ.
 oO|[gÍ <bug-gnu-utils@gnu.org> ÜÅ.
 %s --help Åæè½­Ìîñª\¦³êÜ·
 F¯³êÈ¢VXeG[ gp@: %s [IvV] üÍt@C ...
  üÍt@C©ç|óÎÛÆÈé¶ñðo·é

  ·¢IvVÉK{ÌøÍZ¢IvVÉà¯lÉKvÅ·B

  -a, --extract-all              ·×ÄÌ¶ñðo·é
  -c, --add-comments[=TAG]       üÍt@CÌRgubNÉ TAG ðu­
                                         ( é¢Íæs·éL[[hÌsÉ)
  -C, --c++                      --language=C++ ÌZk\L
      --debug                    ¶ñÌF¯ÊðæèÚ×ÉoÍ·é
  -d, --default-domain=NAME      NAME.po ÉoÍ·é(messages.poÉ·¦Ä)
  -D, --directory=DIR            üÍt@CÌõpXÉ DIR ðÇÁ
  -e, --no-escape                GXP[vLN^ðoÍµÈ¢iftHgj
  -E, --escape                   GXP[vLN^Í»ÌÜÜoÍ³êé
  -f, --files-from=FILE          üÍt@CÌXgð FILE ©çÇÝÞ
      --force-po                 PO t@CªóÅà«o·
      --foreign-user             FSF Ìì \¦ðoÍµÈ¢
  -F, --sort-by-file             t@CÌÊuÉæÁÄ\[gµÄoÍ·é
 gp@: %s [IvV] üÍt@C ...
·¢IvVÉK{ÌøÍZ¢IvVÉà¯lÉKvÅ·B

  -d, --default-domain=NAME      NAME.po ðoÍ·é(messages.poÌãèÉ)
  -D, --directory=DIR            üÍt@CÌõpXÉ DIR ðÇÁ
  -e, --no-escape                GXP[v¶ðoÍµÈ¢iftHgj
  -E, --escape                   GXP[v¶Í»ÌÜÜoÍ³êé
  -f, --files-from=FIL           üÍt@CXgð FILE ©çÇÝÞ
      --force-po                 PO t@CªóÅà«Þ
  -F, --sort-by-file             t@CÌÊuÉæÁÄ\[g·é
  -h, --help                     ±ÌwvbZ[WðoÍµÄI¹
 gp@: %s [IvV] [MO t@C]... 
·¢IvVÉK{ÌøÍZ¢IvVÉà¯lÉKvÅ·B

  -e, --no-escape           GXP[vLN^ðoÍµÈ¢iftHgj
  -E, --escape              GXP[vLN^Í»ÌÜÜoÍ³êé
      --force-po            PO t@CªóÅàoÍ·é
  -h, --help                ±ÌwvbZ[WðoÍµÄI¹
  -i, --indent              CfgµÄoÍ·é
  -o, --output-file=FILE    FILE ÉoÍ·é
      --strict              µiÈ Uniform X^CÌ PO t@CðoÍ·é
  -V, --version             @[Wîñð\¦µÄI¹
  -w, --width=NUMBER        oÍÌy[WðÝè·é
 gp@: %s [IvV] [[[TEXTDOMAIN] MSGID] | [-s [MSGID]...]]
  -d, --domain=TEXTDOMAIN  |ó³ê½bZ[WðTEXTDOMAIN©ç¾é
  -e                      éíÌGXP[vR[hÌWJð·
  -E                     (Rp`reBð³·é)
  -h, --help             ±ÌwvbZ[Wð\¦µÄI¹
  -n                     A±·éüsR[hðPÂÉ·é
  -V, --version          @[Wîñð\¦µÄI¹
  [TEXTDOMAIN] MSGID     MSGID É¦³êé|ó³ê½bZ[Wð
                         TEXTDOMAIN ©ç¾é
 gp@: %s [IvV] def.po ref.po
·¢IvVÉK{ÌøÍZ¢IvVÉà¯lÉKvÅ·B
  -C, --compendium=FILE         bZ[WoCuÌÇÁi¡wèÂ\j
  -D, --directory=DIR           üÍt@CÌõpXÉ DIR ðÇÁ 
  -e, --no-escape               GXP[vLN^ðoÍµÈ¢iftHgj
  -E, --escape                  GXP[vLN^Í»ÌÜÜoÍ³êé
      --force-po                PO t@CªóÅà«Þ
  -h, --help                    ±ÌwvbZ[WðoÍµÄI¹
  -i, --indent                  CfgµÄoÍ·é
  -o, --output-file=FILE        FILE ÉoÍ·é
      --no-location             '#:t@C¼:sÔ'ÌsðoÍµÈ¢
      --add-location            '#:t@C¼:sÔ'ÌsðoÍ·é(ftHg)
      --strict                  ¢íäé'UniformoÍl®'ÉµiÉ]¤
  -v, --verbose                 ç·xð °é
  -V, --version                 @[Wîñð\¦µÄI¹
  -w, --width=NUMBER            y[WÌÝè
 gp@: %s [IvV] def.po ref.po 
·¢IvVÉK{ÌøÍZ¢IvVÉà¯lÉKvÅ·B

  -D, --directory=DIR           üÍt@CÌõpXÉ DIR ðÇÁ
  -h, --help                    ±ÌwvbZ[WðoÍµÄI¹
  -V, --version                 @[Wîñð\¦µÄI¹

ñÂÌUniforml®Ì .po t@CðärµÄoûª¯¶ msgid ¶ñðÜñ
Å¢é©`FbNµÜ·Bdef.po t@CÍÃ¢ PO t@CÅA
ref.po t@CÍV½É¶¬³ê½ PO t@CiÊíxgettextÉæéj
ð¦µÜ·B±ÌvOÍ·×ÄÌbZ[Wð|óµ½©ÌØÉ
LpÅ·B³mÉ}b`µÈ¢êÍ ¢Ü¢Èêv@ªp¢çêÄAæè
Úµ¢ffÊª¾çêÜ·B
 gp@: %s [IvV] t@C¼.po ...
·¢IvVÉK{ÌøÍZ¢IvVÉà¯lÉKvÅ·B

  -a, --alignment=NUMBWER     ¶ñð NUMBER oCgÉèÄé
  -c, --check                 ¶ñÉÎµ¾êÉË¶·é`FbNðÀs·é
  -D, --directory=DIR         üÍt@CÌõpXÉ DIR ðÇÁ
  -f, --use-fuzzy             oÍÅBÈGg[ðp¢é
  -h, --help                  ±ÌwvbZ[WðoÍµÄI¹
      --no-hash               oCit@CÉnbVe[uð½¹È¢
  -o, --output-file=FILE      FILE ÉoÍ·é
      --statistics            |ó³ê½bZ[WÌlð\¦·é
      --strict                µ§ÈUniform[hðIð·é
  -v, --verbose               üÍt@CÌÙíðXg·é
  -V, --version               @[Wîñð\¦µÄI¹

üÍt@CÉ `-' ªwè³êéÆWoÍ©çÇÝÝÜ·B
oÍt@Cª `-'ÅWoÍÉ«oµÜ·B
 %s ÉæÁÄ©êÜµ½B
 `msgid' Æ `msgid_plural' Ìoûð \n ÅnßÄº³¢ `msgid' Æ `msgstr' Ìoûð \n ÅnßÄº³¢ `msgid' Æ `msgstr' Ìoûð \n ÅI¹³¹Äº³¢ `msgid' Æ `msgstr[%u]' Ìoûð \n ÅnßÄº³¢ `msgid' Æ `msgstr[%u]' Ìoûð \n ÅI¹³¹Äº³¢ ­È­ÆàñÂÌt@CðwèµÄº³¢ oÍt@C "%s"ðì¬Å«È¢ domain ¼ "%s" Ít@C¼ÆµÄKØÅ èÜ¹ñ domain ¼ "%s" Ít@C¼ÆµÄKØÅ èÜ¹ñ: prefix ðp¢Ü· bZ[WÌè`ªd¡µÄ¢Ü· óÌ`msgstr'GgÍ³³êÜµ½ ¶ñÌrÅt@CªI¹µÜµ½ ¶ñÌÅüsµÄ¢Ü· "%s" ÌI[vÅG[ "%s" ÌI[vÅG[  "%s" ðÇÝÞÛÉG[ t@C "%s" Ì«ÝG[ 2ÂÌüÍt@CªKv tB[h %s Í¢¾ÉúlÌÜÜÅ· t@C"%s" Ík¶ÅI¹µÈ¢¶ñðÜñÅ¢Ü· t@C"%s" Í GNU Ì MO `®Å èÜ¹ñ t@C "%s" ÍØlßçêÜµ½ BÈ`msgstr'GgÍ³³êÜµ½ wb_[tB[h`%s'ðsÌæª©çnßÄ­¾³¢ wb_[tB[h`%s'ª èÜ¹ñ Iðîªs³Å· (%d < n < %d) Û»³ê½bZ[WÍGXP[vV[PX`\%c'ðÓ­ñÅÍÈèÜ¹ñ  s³ÈRg[V[PXªo³êÜµ½ L[[h "%s" ðF¯Å«Ü¹ñ ¾ê %s ðF¯Å«Ü¹ñ [ªÍµÜµ½  msgid_plural ÌÚª@µÄ¢Ü·  msgstr ÌÚª@µÄ¢Ü· `msgstr[]' ÌÚª@µÄ¢Ü· øª@ üÍt@Cªwè³êÄÜ¹ñ üÍt@Cª^¦çêÄ¢Ü¹ñ `msgid'Æ`msgstr'ÌtH[}bgl®ªvµÜ¹ñ "%s" ÌItZbgÊu %ld ÌÇÝÝÉ¸sµÜµ½ wb_tB[hÌÉúlÌÜÜÌàÌª èÜ· WüÍ WoÍ ±Ìt@CÉÍ domain ½ßª èÜ¹ñ ±ÌbZ[WÍ "%s" domain ÌÅè`³êÄÜ¹ñ ±ÌbZ[WÍgp³êÄÜ·ª %s Åè`³êÄÜ¹ñ ±ÌbZ[WÍgp³êÄÜ·ªè`³êÜ¹ñ... øª½·¬Ü· G[ª½·¬é½ßÀsð~µÜµ½ x: t@C`%s'Ìg£q`%s'ðF¯Å«Ü¹ñ; C ÆÝÈµÜ· x: ±ÌbZ[WÍgíêÜ¹ñ nbVe[uðì¬·éÛÉ oÍÌõÉ õ·×«L[[hÈµÅÍ xgettext Í@\µÜ¹ñ 