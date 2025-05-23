��    K      t  e   �      `  �   a  �  E  t  %	  �  �     �      �     �     �  ,   �       %   9  ,   _  -   �      �  &   �          "  3   B  /   v  +   �  ?   �  !     /   4  �   d  (   ,  &   U     |  �  �  ,    �  G          ,  8   J  6   �     �  *   �  ;        @     ]     z     �  $   �  $   �     �          /  *   N  "   y     �     �  3   �  "     G   $     l     �     �     �     �     �  F   �     2  7   N     �     �  +   �  1   �  *     '   .     V     i  8   �  !   �     �     �  .     �   >!  y  "  $  �#  �  �%     �(     �(     �(     �(  +   )     0)  "   N)  +   q)  ,   �)      �)  &   �)     *     2*  5   R*  $   �*  &   �*  A   �*     +  "   5+  �   X+  1   ,  +   L,     x,  �  �,  '  (/  �  P1     4     4  9   24  7   l4  !   �4  +   �4  N   �4     A5     T5     n5     �5  $   �5  $   �5     �5     	6  #   )6  2   M6  #   �6     �6     �6  .   �6     7  >    7     _7     v7     �7     �7     �7     �7  @   �7     78  7   O8  	   �8  	   �8  8   �8  '   �8  1   �8  -   .9     \9     m9  A   �9  #   �9     �9     :     	          ,         @   ?   )   8   *   H                 A           4   =       -   /               C            6           D   %           !   &       7      <   :   B   0                    E   9       '       "   #          
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
 `domain %s' directive ignored `msgid' and `msgstr' entries do not both begin with '\n' `msgid' and `msgstr' entries do not both end with '\n' cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix duplicate message definition empty `msgstr' entry ignored end-of-file within string end-of-line within string error while opening "%s" for reading error while opening "%s" for writing error while reading "%s" error while writing "%s" file exactly 2 input files required field `%s' still has initial default value file "%s" is not in GNU .mo format file "%s" truncated fuzzy `msgstr' entry ignored header field `%s' should start at beginning of line headerfield `%s' missing in header internationalized messages should not contain the `\%c' escape sequence keyword "%s" unknown language `%s' unknown missing `msgstr' section missing arguments no input file given no input files given number of format specifications in `msgid' and `msgstr' does not match seek "%s" offset %ld failed some header fields still have the initial default value standard input standard output this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: file `%s' extension `%s' is unknown; will try C warning: this message is not used while creating hash table while preparing output Project-Id-Version: GNU gettext 0.10.30
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 1997-09-03 12:52+0900
Last-Translator: Bang Jun-Young <bangjy@geocities.com>
Language-Team: Korean <ko@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=EUC-KR
Content-Transfer-Encoding: 8-bit
 
���� .mo ������ Uniforum ������ .po ���Ϸ� ��ȯ�մϴ�.
��Ʋ-������ ��-��������� �� .mo ������ ��� �ٷ� �� �ֽ��ϴ�.
�Է� ������ �־����� �ʰų� - �̸� ǥ�� �Է��� �а� �˴ϴ�.
���������� ����� ǥ�� ��¿� ��ϵ˴ϴ�.
 
TEXTDOMAIN �Ű������� �־����� ������ ������ ȯ�� ���� TEXTDOMAIN���κ���
�����˴ϴ�.  �޽��� ����� �Ϲ����� ���丮�� ���� ������ ȯ�� ����
TEXTDOMAINDIR�� �ٸ� ��ġ�� ������ �� �ֽ��ϴ�.
-s �ɼ��� ���̸� ���α׷��� `echo' ����ó�� �����մϴ�. �׷��� �ܼ��� �μ���
ǥ����¿� ���������� �ʽ��ϴ�.  ��� ���õ� ��Ͽ� �ִ� ������ �޽�����
��µ˴ϴ�.
�⺻ Ž�� ���丮: %s
 
Uniforum ������ �� ������ �ϳ��� �����մϴ�.  def.po ������ �̹� �����ϴ�
�����̸� ������ ������ �޽����� ��� �ֽ��ϴ�.  �� ���������� ¦�� �ִ� �Ϳ�
���� ���Ӱ� ������� ������ ������ ��ü�˴ϴ�; �ּ��� ���������� ���� �ּ���
���� ��ġ�� ���ŵ˴ϴ�.  ref.po ������ �ֱٿ� ������� PO �����̸�
(�Ϲ������� xgettext�� ����), ���� ���� ��� �������̳� �ּ��� ���ŵ�����
�� �ּ��� ���� ��ġ�� �����˴ϴ�.  ��Ȯ�� ¦�� ã�� ���� ���, ���� ����
����� ��� ���� ���� ��Ī�� ���˴ϴ�.  ���� ��� ������ �������� ������
����� ǥ����¿� �������ϴ�.
   -n, --add-location             '#: filename:line' ���� �����մϴ� (������)
      --omit-header              ǥ���� `msgid ""' �׸��� ���� �ʽ��ϴ�
  -o, --output=FILE              ������ ���Ͽ� ����� ����մϴ�
  -p, --output-dir=DIR           ��� ������ DIR ���丮�� ������ �����ϴ�
  -s, --sort-output              ���ĵ� ����� �����ϰ� �纻�� ����ϴ�
      --strict                   Uniforum�� ������ ������ .po ������ ����ϴ�
  -T, --trigraphs                �Է¿� ���� ANSI C Ʈ���׶����� �ν��մϴ�
  -V, --version                  ���� ������ ����ϰ� �����մϴ�
  -w, --width=NUMBER             ��� ������ ���� �����մϴ�
  -x, --exclude-file=FILE        FILE ���� �׸��� �������� �ʽ��ϴ�

�Է������� - �̸� ǥ�� �Է��� �а� �˴ϴ�.
  �Ϸ�.
 %s�� %s�� ���� ��Ÿ���Դϴ� %s: �߸��� �ɼ� -- %c
 %s: �������� �ɼ� -- %c
 %s: `%c%s' �ɼ��� �μ��� ������� �ʽ��ϴ�
 %s: `%s'�� ��ȣ�� �ɼ��Դϴ�
 %s: `%s' �ɼ��� �μ��� �ʿ��մϴ�
 %s: `--%s' �ɼ��� �μ��� ������� �ʽ��ϴ�
 %s: `-W %s' �ɼ��� �μ��� ������� �ʽ��ϴ�
 %s: `-W %s'�� ��ȣ�� �ɼ��Դϴ�
 %s: �� �ɼ��� �μ��� �ʿ��մϴ� -- %c
 %s: �ν��� �� ���� �ɼ� `%c%s'
 %s: �ν��� �� ���� �ɼ� `--%s'
 %s: ���: �ҽ� ������ ���� �������� �����ϰ� �ֽ��ϴ� %s:%d: ���: �ϰ���� ���� ���� ��� %s:%d: ���: �ϰ���� ���� ���ڿ� ��� --join-exeisting�� ����� ǥ����¿� ������ �� ���� �� �����ϴ� ...������ �� ���Ǵ� �����մϴ� ...����� ù��° ������ ��ġ�Դϴ� ���۱� (C) %s Free Software Foundation, Inc.
�� ���α׷��� ���� ����Ʈ�����Դϴ�.  ���� ������ �ҽ��� �����Ͻʽÿ�. ��ǰ��
�̳� Ư�� ������ ���� ���ռ��� ����Ͽ�, ��� ������ ���� �ʽ��ϴ�.
 <bug-gnu-utils@gnu.org>�� �������� �����Ͻʽÿ�.
 �� ���� ������ ������ `%s --help' �Ͻʽÿ�
 �� �� ���� �ý��� ���� ����: %s [�ɼ�] [����]...
�� �ɼǿ� �ΰ��Ǵ� �μ��� ª�� �ɼǿ��� ����˴ϴ�.
  -e, --no-escape          ��¿� C �̽������� ���ڸ� ���� �ʽ��ϴ� (������)
  -E, --escape             ��¿� C �̽������� ���ڸ� ����, Ȯ�� ���ڴ� ����
                           �ʽ��ϴ�
      --force-po           ��������� PO ���Ͽ� ����մϴ�
  -h, --help               �� ������ �����ְ� �����մϴ�
  -i, --indent             �鿩����� ��� ����
  -o, --output-file=FILE   ����� FILE�� ���������� �մϴ�
      --strict             ������ Uniforum ��� ����
  -V, --version            ���� ������ ����ϰ� �����մϴ�
  -w, --width=NUMBER       ��� ������ ���� �����մϴ�
 ����: %s [�ɼ�] [[[TEXTDOMAIN] MSGID] | [-s [MSGID]...]]
  -d, --domain=TEXTDOMAIN   ������ �޽����� TEXTDOMAIN���� �ҷ��ɴϴ�
  -e                        ��� �̽������� ���ڿ��� Ȯ���� ������ �մϴ�
  -E                        (ȣȯ���� ���� ���õ�)
  -h, --help                �� ������ �����ְ� �����մϴ�
  -n                        ����ٴ� �ٹٲ� ���ڸ� �����մϴ�
  -V, --version             ���� ������ ǥ���ϰ� �����մϴ�
  [TEXTDOMAIN] MSGID        MSGID�� �����ϴ� ������ �޽����� TEXTDOMAIN����
                            �ҷ��ɴϴ�
 ����: %s [�ɼ�] def.po ref.po
�� �ɼǿ� �ΰ��Ǵ� �μ��� ª�� �ɼǿ��� ����˴ϴ�.
  -D, --directory=DIRECTORY   �Է� ���� Ž�� ���ܿ� DIRECTORY�� �߰��մϴ�
  -h, --help                  �� ������ �����ְ� �����մϴ�
  -V, --version               ���� ������ ����ϰ� �����մϴ�

���� ������ msgid ���ڿ��� �����ϰ� �ִ��� Ȯ���ϱ� ���� Uniforum
������ �� .po ������ ���մϴ�.  def.po ������ �̹� �����ϴ� �����̸�
������ ������ �޽����� ��� �ֽ��ϴ�.  ref.po ������ �ֱٿ� �������
PO �����Դϴ�(�Ϲ������� xgettext�� ����).  �̰��� ���α׷� ���� �ִ�
������ �޽����� �����ߴ��� Ȯ���� �� �����մϴ�.  ��Ȯ�� ¦�� ã�� ����
���, ���� ���� ����� ��� ���� ���� ��Ī�� ���˴ϴ�.
 %s�� ��������ϴ�.
 `domain %s' �����ڴ� ���õ� `msgid'�� `msgstr' �׸��� ��� '\n'���� �������� �ʽ��ϴ� `msgid'�� `msgstr' �׸��� ��� '\n'���� ������ �ʽ��ϴ� ��� ���� "%s"�� ���� �� �����ϴ� ������ "%s"�� ���� �̸����� �˸��� �ʽ��ϴ� ������ "%s"�� ���� �̸����� �˸��� �ʽ��ϴ�. �׷��Ƿ� ���λ縦
����� ���Դϴ� �ߺ��� �޽��� ���� �� `msgstr' �׸��� ���õ� ���ڿ� ���ο��� ������ ���� ���ڿ� ���ο��� ���� ���� �б� ���� "%s"�� ���� ���� ���� �߻� ���� ���� "%s"�� ���� ���� ���� �߻� "%s"�� �д� ���� ���� �߻� "%s" ������ ���� ���� ���� �߻� ��Ȯ�� 2���� �Է� ������ �ʿ��մϴ� `%s' �ʵ尡 ������ �ʱ��� �������� ������ �ֽ��ϴ� "%s" ������ GNU .mo ������ �ƴմϴ� "%s" ������ �߷��� ���� `msgstr' �׸��� ���õ� ��� �ʵ� `%s'�� ���� ó������ �����ؾ� �մϴ� ����� ����ʵ� `%s'�� ������ ����ȭ�� �޽����� `\%c' �̽������� �������� ������ �� �����ϴ� �� �� ���� Ű���� "%s" `%s' �� �� �� ���� `msgstr' �κ��� �������ϴ� �μ��� ������ �Է� ������ �־����� �ʾҽ��ϴ� �Է� ������ �־����� �ʾҽ��ϴ� `msgid'�� `msgstr'�� ���� ���� �������� ������ ��ġ���� �ʽ��ϴ� "%s" �ɼ� %ld Ž�� ���� ��� ��� �ʵ尡 ������ �ʱ��� �������� ������ �ֽ��ϴ� ǥ�� �Է� ǥ�� ��� �� ������ ���� �����ڸ� �����ϰ� ���� ���� ���� �ֽ��ϴ� �� �޽����� "%s" ������ ���ǰ� �����ϴ� �� �޽����� �������� %s���� ���ǵ��� �ʾҽ��ϴ� �� �޽����� �������� ���ǵ��� �ʾҽ��ϴ�... �μ��� �ʹ� ���� ������ �ʹ� ���Ƽ� �ߴ��մϴ� ���: `%s' ������ Ȯ���� `%s'�� �� �� �����ϴ�; C �������� ������ ���: �� �޽����� ������ �ʽ��ϴ� �ؽ� ���̺��� ����� ���� ����� �غ��ϴ� ���� 