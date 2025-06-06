��    R      �  m   <      �  �   �  �  �  t  �	  �  *  &  �  �  
           	     *     D  ,   ^     �  %   �  ,   �  -   �      *  &   K     r     �  3   �  /   �  +     ?   B  !   �  /   �  �   �  (   �  &   �     �  4    �  6  �  �   ,  Y#  �  �%  2  [(     �,     �,  8   �,  6   �,  $   ,-     Q-  *   p-  ;   �-     �-     �-     .     +.  $   E.  $   j.     �.     �.     �.  *   �.  "   /     3/     G/  3   d/  "   �/  5   �/  G   �/     90     N0     d0     }0     �0     �0  F   �0     �0  7   1     S1     b1  +   r1  1   �1  *   �1  '   �1     #2     62  8   P2  !   �2     �2     �2  `  �2  	  =4  �  G5  �  07    �9  x   >  �  yA     E  (   
E     3E     RE  -   oE  %   �E  %   �E  -   �E  .   F  (   FF  &   oF  #   �F  #   �F  H   �F  8   'G  3   `G  Y   �G  '   �G  '   H    >H  8   EI  4   ~I     �I  z  �I  t  HO  @  �R  �  �U  y  �X  r  ,\     �a     �a  @   �a  B   b  )   \b  (   �b  B   �b  ]   �b  #   Pc  !   tc  %   �c  %   �c  (   �c  3   d     ?d  $   ]d  &   �d  3   �d  *   �d  :   e  *   Ce  A   ne  -   �e  6   �e  N   f     df     xf     �f     �f     �f     �f  M   �f  -   Jg  A   xg     �g     �g  <   �g  /   h  7   Hh  3   �h     �h      �h  M   �h  0   7i  !   hi     �i           F   9   I       @   (   /          B   :   .       K   M      R   J           >      1   3                                     !                         +      5   4   	   ,              C   #   %   N   -   D   )   ?           0   L      "          '          Q              H   *      =         P   2       <      A         ;   6              E   7             &   8           $   G   O       
    
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
 `domain %s' directive ignored `msgid' and `msgstr' entries do not both begin with '\n' `msgid' and `msgstr' entries do not both end with '\n' at least two files must be specified cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix duplicate message definition empty `msgstr' entry ignored end-of-file within string end-of-line within string error while opening "%s" for reading error while opening "%s" for writing error while reading "%s" error while writing "%s" file exactly 2 input files required field `%s' still has initial default value file "%s" is not in GNU .mo format file "%s" truncated fuzzy `msgstr' entry ignored header field `%s' should start at beginning of line headerfield `%s' missing in header impossible selection criteria specified (%d < n < %d) internationalized messages should not contain the `\%c' escape sequence keyword "%s" unknown language `%s' unknown missing `msgstr' section missing arguments no input file given no input files given number of format specifications in `msgid' and `msgstr' does not match seek "%s" offset %ld failed some header fields still have the initial default value standard input standard output this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: file `%s' extension `%s' is unknown; will try C warning: this message is not used while creating hash table while preparing output Project-Id-Version: GNU gettext 0.10.34
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 1998-05-17 13:12+0200
Last-Translator: Simos KSenitellis <simos@teiath.gr>
Language-Team: Greek <simos@teiath.gr>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-7
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=2; plural=(n != 1);
 
��������� �������� ������� .mo �� Uniforum .po ������.
��� �� little-endian ��� �� big-endian ������ .mo �������
�� ���������������. �� �� ������ ������� ������� � ����� -,
���� �������������� � �������� �������. �� �������, � ������
�������� ���� �������� �����.
 
�� � ���������� TEXTDOMAIN �� �������, ���� ������� ��������� ��� ��
��������� ������������� TEXTDOMAIN. �� � ��������� ��������� �� ������ ���
����������� ��������, ��������� � ���� ��� ���������� ������������� TEXTDOMAINDIR.
���� ������� ����� ��� �������� -s, �� ��������� �������������� ���
��� ������ `echo'. ���� ��� ���������� ���� �� �������� ���� �������� �����.
��������, �� �������� ��� ���������� ��� ���������� ��������, �������������.
������������ ��������� ����������: %s
 
�������� ��� ������� .po ������ Uniforum. �� ������ def.po ����� ��
���������� ������ PO �� ��� ������ ����������� ��� �� ����������� ���
��� ������, ��� ������ ��� ����� ������� �� ������ �� �����������
���� �� ��������� ������ ��� �� ������ ������� �� ����������.
�� ������ ref.po ����� �� ��������� ������������� ������ PO 
(������ �������������� ��� �� xgettext) ��� �,�� ����������� � ������ 
�������� ��� ������ �� ���������, ������ ������ ��� �������� �� ������ 
��� ������ ������� �� �����������. ���� ��� ��� ����������� �������
���������, ������� ����� ��������� ������������ ��� �������� ������������.
�� ������������ ��������� ���� �������� ����� ����� ��� �� ��������
������ ������ ������.
   -V, --version                  �������� ����������� ������� ������������
                                   ��� ������
  -w, --width=�������            ������� ������� ������� ������
  -<, --less-than=�������        �������� ��������� �� �������� ��� �������
                                   ��������, �� ������� �� ������ �� ��� �����
  ->, --more-than=�������        �������� ��������� �� ����������� ��� �������
                                   ��������, �� ������� �� ��� �� ��� �����

������ ��������� ��� ����� ����� �� ��� � ����������� �������� ������ PO.
�� �� ����� ��� �������� --more-than option, ������ �� ������� ����������
��������� ���� ����������� �� ��������.  ��������, �� ��� ������� --less-than
������ �� ������� ��������� ��������� ���� ����������� �� �������� (�.�.
�� --less-than=2 �� ��������� ���� �� �������� ��������).  �� �����������,
�� ������ ��� �� �������� �� ����� ������� �� �����������, ���� ���� ��� ��
����� ������ PO ��� �� ���� ������. �� ������ ������� ��� ��� �� ������ PO
�� �����������.
   -i, --indent                   ���������� .po ������� �� ������������� �����
      --no-location              ������� ��������� ������� '#: filename:line'
  -n, --add-location             ���������� ������� '#: filename:line' (�� �������)
      --omit-header              �� �� ������� �������� �� ������� `msgid ""'
  -o, --output=������            ������� ������ ��� ���������� ������
  -p, --output-dir=���������     �� ������ ������ �� ������������ ����������� ���������
  -s, --sort-output              ���������� ������������� ������ ��� �������� �����������
      --strict                   ���������� ������ .po ��� ��������� ������� �� �� ������� Uniforum
  -T, --trigraphs                ������� ANSI C ������������ ���� ������
  -u, --unique                   ������������� ��� --less-than=2, ������ ���
                                 �������� ���� ��� ��������� ���������
   -n, --add-location             ���������� ������� '#: filename:line' (�� �������)
      --omit-header              �� �� ������ �������� �� ������� `msgid ""'
  -o, --output=������            ������� ������ ��� ���������� ������
  -p, --output-dir=���������     �� ������ ������ �� ������������
                                   ��� �������� ���������
  -s, --sort-output              ���������� ������������� ������ ���
                                   �������� �����������
      --strict                   ���������� ������ .po ��� ��������� �������
                                   �� �� ������� Uniforum
  -T, --trigraphs                ������� ANSI C ������������ ���� ������
  -V, --version                  �������� ����������� ������� ��� ������
  -x, --exclude-file=������      �������� ��� �� ������ ��� �����������

�� �� ������������� ����� -, ������� �������� ��� ��������� �������.
  �����.
 �� %s ��� %s ����� �������� ������������ %s: �� �������� ������� -- %c
 %s: �� ������ ������� -- %c
 %s: � ������� `%c%s' ��� ��������� ���������
 %s: � ������� `%s' ����� �����������
 %s: � ������� `%s' ������� ���������
 %s: � ������� `--%s' ��� ��������� ���������
 %s: � ������� `-W %s' ��� ��������� ���������
 %s: � ������� `-W %s' ����� �����������
 %s: � ������� ������� ��������� -- %c
 %s: �� ������������ ������� `%c%s'
 %s: �� ������������ ������� `--%s'
 %s: �������������: �� ������ ������� �������� �������������� ����������� %s:%d: �������������: �� ������������ ������� ���������� %s:%d: �������������: �� ������������ ������������� �� --join-existing �� ������ �� �������������� ���� � ������ �������� ���� �������� ����� ...���� ����� � ������� ����� ��������� ...���� ����� � ���� ��� ������ ������� ���������� ���������� (C) %s Free Software Foundation, Inc.
���� �� ��������� ����� �������� ���������� ����� �� ������ ������ ��� ����
����������� ����������. ��� ������� ����� ������Ƿ ���� ����� ���
��������������� � ������������� ��� ��� ������������ �����.
 ������� �������� ��������� ��� <bug-gnu-utils@gnu.org>.
 ��������� `%s --help' ��� ������������ �����������.
 ������� ������ ���������� �����: %s [�������] ������������� ...
������� �������������� ��� ������� �� ������������ ��� ������� ������ �������.

�� ������������ ���������� ��� ������������ �������� ����� ������������
��� ��� �� ������� ��������.
  -a, --extract-all              ������� ���� ��� ��������������
  -c, --add-comments[=TAG]       ���������� ����� ������� �� TAG (� ���� ���
                                 ���������� ������� �� �������) ��� ������ ������
  -C, --c++                      ������������� ��� --language=C++
      --debug                    ����������� ���������� �������� ���������
  -d, --default-domain=�����     ����� ��� �����.po ��� ����� (���� ��� messages.po)
  -D, --directory=���������      ������ ��� ��������� ���� ��� ������ ��� ������������
  -e, --no-escape                ������� ������ ������� �������� ��� C ���� �����
                                   (�� �������)
  -E, --escape                   ����� ������� �������� ��� C ���� �����, ��� ����
                                 ��� ������������ ����������.
  -f, --files-from=������        ���� ������ ������� ������� ��� ������
      --force-po                 ���������� ������� PO ����� ��� �� ����� �����
      --foreign-user             ��������� ��������� ����������� ����������� ��� FSF
                                 ���� ����� ��� ���� ������
  -F, --sort-by-file             ���������� ������ ���� ��� ����� �������
 �����: %s [�������] ������������� ...
�� ������������ ���������� ��� ������������ �������� ����� ������������
��� ��� �� ������� ��������.
  -d, --default-domain=�����     ����� ��� �����.po ��� ����� (���� ��� messages.po)
  -D, --directory=���������      �������� ��� ��������� ���� ��������� ������� �������
  -e, --no-escape                ������� ������ ������� �������� ��� C ���� �����
                                   (�� �������)
  -E, --escape                   ����� ������� �������� ��� C ���� �����, ��� ����
                                 ��� ������������ ����������.
  -f, --files-from=������        ���� ������ ������� ������� ��� ������
      --force-po                 ���������� ������� PO ����� ��� �� ����� �����
  -F, --sort-by-file             ���������� ������ ���� ��� ����� �������
  -h, --help                     �������� ����� ��� �������� ��� ������
 �����: %s [�������] def.po ref.po
�� ������������ ���������� ��� ������������ �������� ����� ������������
��� ��� �� ������� ��������.
  -e, --no-escape          ������� ������ ������� �������� ��� C ���� �����
                           (�� �������)
  -E, --escape             ����� ������� �������� ��� C ���� �����,
                             ��� ���� ��� ������������ ����������.
      --force-po           ���������� ������� PO ����� ��� �� ����� �����
  -h, --help               �������� ����� ��� �������� ��� ������
  -i, --indent             ������������� ������
  -o, --output-file=������  �� ������ ������ �� ����� �� ������
      --strict             ����� ������ �� ������� Uniforum
  -V, --version            �������� ����������� ������� ��� ������
  -w, --width=�������      ������� �������� ������� ������� ������
 �����: %s [�������] [[[TEXTDOMAIN] MSGID] | [-s [MSGID]...]]
  -d, --domain=TEXTDOMAIN   �������� ������������� ��������� ��� �� TEXTDOMAIN
  -e                        ������������ ��� ����������� ��������� ������
                              ���������� ��������
  -E                        (��������� ��� ������ ������������)
  -h, --help                �������� ����� ��� �������� ��� ������
  -n                        ������� ��������� ������� ������� ��� ����� ��� ������
  -v, --version             �������� ����������� ������� ��� ������
  [TEXTDOMAIN] MSGID        �������� ����������� ������������� ��������� ��� �����������
                            ��� MSGID ��� �� TEXTDOMAIN
 �����: %s [�������] def.po ref.po
�� ������������ ���������� ��� ������������ �������� ����� ������������
��� ��� �� ������� ��������.
  -D, --directory=���������  �������� ��� �������� ��� �����
                           ��� ��������� ������� �������.
  -h, --help               �������� ����� ��� �������� ��� ������
  -V, --version            �������� ����������� ������� ������������ ��� ������

�������� ��� ������� .po ��� ������ Uniforum ��� ��� ������ �� ��� �� ���
��������� �� ���� ������ ��� msgid �������������. �� ������ def.po �����
��� ���������� ������ PO �� ��� ������ �����������. �� ������ ref.po file
����� �� ��� �������� ������ PO (������ ������������� ��� �� ���������
xgettext). ����� ������� ��� �� ������ ��� ��� �� �������� ���� ������������
����� �����������. ���� ��� ��� ����������� ������� ������o����,
������� �������� ��������� ��� �������� ������������.
 �����: %s [�������] filename.po ...
���������� �������� ��������� ��������� ��� ������� ��������� ����������.

�� ������������ ���������� ��� ������������ �������� ����� ������������
��� ��� �� ������� ��������.
  -a, --alignment=�������  �������� �������������� �� ������� ��� bytes
                           (�� ������� ����: %d)
  -c, --check              �������� ������� ����������� ��� �� ������
                           ��� �������������
  -D, --directory=���������  �������� ��� �������� ��� ����� ��� ���������
                           ������� �������.
  -f, --use-fuzzy          ����� �������������� �������� ���� �����
  -h, --help               �������� ����� ��� �������� ��� ������
      --no-hash            ������� ������ ��� ������������������ ���
                             hash table
  -o, --output-file=������ ���������� ��� ������ ��� ������ ������
      --statistics         �������� ����������� ��� ��� �����������
      --strict             ������������ ���������� �������� Uniforum
  -v, --verbose            �������� ��������� ������� �������
  -V, --version            �������� ����������� ������� ��� ������

�������� ��� ��������� -v ������������ ��� ��� �����, ������� �� �����
����������������� ��� ���������

�� �� ������ ������� ����� �� -, ������� �������� ��� ��������� �������.
�� �� ������ ������ ����� -, ���� � ������ �������� ���� �������� �����.
 �������� ��� ���/��� %s.
 � ������ `domain %s' ��������� �� �������� `msgid' ��� `msgstr' ��� �������� ��� �� ��� �� '\n' �� �������� `msgid' ��� `msgstr' ��� ���������� ��� �� ��� �� '\n' ������ �� �������� ����������� ��� ������ �������� ����������� ������� ������ "%s" �� ����� ��� �� ������� "%s" ��� ����� ��������� ��� ����� ������� �� ����� ��� �� ������� "%s" ��� ����� ��������� ��� ����� �������� �� ����� ����� ���������� ����������������� ������� ��������� � ���� ������� `msgstr' ��������� ����� ������� (EOF) ��� ������������� �����-������� (eol) ��� ������������� ������ ��� ������� ��� "%s" ��� �������� ������ ���� �� ������� ��� ������� "%s" ��� ������� ������ ���� �������� ��� "%s" ������ ���� ������� ��� ������� "%s" ����������� ������� ��� ������ ������� �� ����� `%s' ���� ����� ��� ������ �� ������� ���� �� ������ "%s" ��� ����� ��� ����� GNU .mo �� ������ "%s" ����������� ��� �� ������� �������� �� ���� � ������������� ������� `msgstr' ��������� �� ����� ��������� `%s' �� ������ �� ������ ���� ���� ��� ������� �� ����� `%s' ���� ���������� ��� �� �������� ���� ��������� ������� �������� �������� (%d < n < %d) �� �������� ���� ��������� ��� ������ �� ��������� �� ��������� �������� `\%c' ������� ������ "%s" � ������ `%s' ����� ������� ������ ������� `msgstr' ������������ �������� ��� ������ ������ ������� ��� ������������ ������ ������� � ������� ��� �������� �� ������������� ��� `msgid' ��� `msgstr' �� ��������� � �������� ��� ������ "%s", ���� %ld, ������� ������ ����� ��� ��������� ����� ����� ��� ������ �� ������� ���� �������� ������� �������� ������ ���� �� ������ ��� ������ �� �������� ������� ��� �� ������� ���� �� ������ ��� ���� ������ ��� ������� "%s" ���� �� ������ ��������������, ���� ��� �������� ��� %s ���� �� ������ ��������������, ���� ��� ��������... ���� ����� �������� ���� ����� ��������, ����������� �������������: �� ������ `%s' �� �������� `%s' ����� ������� �� ���������� C �������������: ���� �� ������ ��� �������������� ���� �� ���������� ��� hash table ����� �������������� � ������ 