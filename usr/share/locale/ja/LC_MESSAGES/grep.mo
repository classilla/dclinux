��    ,      |  ;   �      �  �  �  0  t  &  �  )   �  �   �  v  �     @     R     l  ,   �     �  %   �  ,   �  -   $      R  &   s     �     �     �     �        ?        X     i  �   }  �     &   �     �     �     �     �  )   �  (   %     N     m     �     �     �     �     �     �          )  $  8  7  ]  8  �  �  �  5   �  �   �  o  �     >  %   [     �  '   �  #   �  &   �  '      (   <   &   e   &   �   %   �   %   �      �   
   !  #   !  ?   @!     �!     �!  ~   �!  �   -"  (   �"     �"     #     #     /#  ;   N#  :   �#  !   �#     �#     $     $     0$  (   E$     n$  $   �$  "   �$     �$     	                                   &            '               )       !       *           
   ,         "      +              $           (                             #                  %              
Context control:
  -B, --before-context=NUM  print NUM lines of leading context
  -A, --after-context=NUM   print NUM lines of trailing context
  -C, --context[=NUM]       print NUM (default 2) lines of output context
                            unless overridden by -A or -B
  -NUM                      same as --context=NUM
  -U, --binary              do not strip CR characters at EOL (MSDOS)
  -u, --unix-byte-offsets   report offsets as if CRs were not there (MSDOS)

`egrep' means `grep -E'.  `fgrep' means `grep -F'.
With no FILE, or when FILE is -, read standard input.  If less than
two FILEs given, assume -h.  Exit status is 0 if match, 1 if no match,
and 2 if trouble.
 
Miscellaneous:
  -s, --no-messages         suppress error messages
  -v, --invert-match        select non-matching lines
  -V, --version             print version information and exit
      --help                display this help and exit
      --mmap                use memory-mapped input if possible
 
Output control:
  -b, --byte-offset         print the byte offset with output lines
  -n, --line-number         print line number with output lines
  -H, --with-filename       print the filename for each match
  -h, --no-filename         suppress the prefixing filename on output
  -q, --quiet, --silent     suppress all normal output
      --binary-files=TYPE   assume that binary files are TYPE
                            TYPE is 'binary', 'text', or 'without-match'.
  -a, --text                equivalent to --binary-files=text
  -I                        equivalent to --binary-files=without-match
  -d, --directories=ACTION  how to handle directories
                            ACTION is 'read', 'recurse', or 'skip'.
  -r, --recursive           equivalent to --directories=recurse.
  -L, --files-without-match only print FILE names containing no match
  -l, --files-with-matches  only print FILE names containing matches
  -c, --count               only print a count of matching lines per FILE
  -Z, --null                print 0 byte after FILE name
 
Report bugs to <bug-gnu-utils@gnu.org>.
   -E, --extended-regexp     PATTERN is an extended regular expression
  -F, --fixed-strings       PATTERN is a set of newline-separated strings
  -G, --basic-regexp        PATTERN is a basic regular expression
   -e, --regexp=PATTERN      use PATTERN as a regular expression
  -f, --file=FILE           obtain PATTERN from FILE
  -i, --ignore-case         ignore case distinctions
  -w, --word-regexp         force PATTERN to match only whole words
  -x, --line-regexp         force PATTERN to match only whole lines
  -z, --null-data           a data line ends in 0 byte, not newline
 %s (GNU grep) %s
 %s: illegal option -- %c
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
 %s: warning: %s: %s
 (standard input) Binary file %s matches
 Copyright 1988, 1992-1999, 2000 Free Software Foundation, Inc.
 Memory exhausted No syntax specified Search for PATTERN in each FILE or standard input.
Example: %s -i 'hello world' menu.h main.c

Regexp selection and interpretation:
 This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 Try `%s --help' for more information.
 Unbalanced ( Unbalanced ) Unbalanced [ Unfinished \ escape Usage: %s [OPTION]... PATTERN [FILE] ...
 Usage: %s [OPTION]... PATTERN [FILE]...
 conflicting matchers specified invalid context length argument malformed repeat count memory exhausted out of memory recursive directory loop unfinished repeat count unknown binary-files type unknown directories method writing output Project-Id-Version: GNU grep 2.4f
POT-Creation-Date: 2000-03-01 22:44-0500
PO-Revision-Date: 2000-02-16 21:05+09:00
Last-Translator: IIDA Yosiaki <iida@secom.ne.jp>
Language-Team: Japanese <ja@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=EUC-JP
Content-Transfer-Encoding: 8bit
 
����ط�������:
  -B, --before-context=��   ���Ρֿ��׹Ԥ���Ϥ���
  -A, --after-context=��    ��Ρֿ��׹Ԥ���Ϥ���
  -C, --context[=�Կ�]      ����Կ�(ɸ���2)�����Ƥ���Ϥ���
                            -A��-B���ͥ���٤��㤤
  -�Կ�                     --context=�Կ� ��Ʊ��
  -U, --binary              EOL�Ǥ�CRʸ������ʤ��ʤ�(MS-DOS)
  -u, --unix-byte-offsets   CRʸ�����ʤ���ΤȤ��ƥ��ե��åȤ�
                            ���Ϥ���(MS-DOS)

`egrep'��`grep -E'�Ρ�`fgrep'��`grep -F'�ΰ�̣�ˤʤ�ޤ���
-G��-E��-F�Τ����ɤλ����ʤ��ȡ�`egrep'���ޥ�ɤǤ�-E�ȡ�
`fgrep'���ޥ�ɤǤ�-F�ȡ�����ʳ��Ǥ�-G�Ȳ��ꤷ�ޤ���
�ե�����λ��꤬�ʤ��ä��ꡢ�ե�����̾��`-'����ꤷ���ꤹ��ȡ�
ɸ�����Ϥ����ɤ߹��ߤޤ����ե����뤬���̤���ξ�硢-h�Ȳ��ꤷ�ޤ���
�⤷���פ������0�ǡ��ʤ���1�ǡ��㳲�������2�ǡ���λ���ޤ���
 
����¾:
  -s, --no-messages         ���顼����å�������Ϥ֤�
  -v, --invert-match        ���פ��ʤ��Ԥ��оݤˤ���
  -V  --version             �С����������ɸ����Ϥ�ɽ�����ƽ�λ����
      --help                �Ȥ�����ɸ����Ϥ�ɽ������
      --mmap                �⤷��ǽ�ʤ顢���Ϥ���꡼���ޥåפ���
 
��������:
  -b, --byte-offset         �ư��פ��Ф��Ƥ��ΥХ��ȡ����ե��åȤ�ɽ������
  -n, --line-number         �ư��פ��Ф��Ƥ��ιԿ���ɽ������
  -H, --with-filename       �ư��פ��Ф��Ƥ��Υե�����̾��ɽ������
  -h, --no-filename         �ե�����̾��ɽ�����ʤ�
  -q, --quiet, --silent     �̾�ν��Ϥ򤹤٤��޻ߤ���
      --binary-files=��     �Х��ʥ꡼���ե�����Ρַ��ס���binary��
                            ��text�ס�without-match�פ���ꡣ
  -a, --text                --binary-files=text��Ʊ��
  -I                        --binary-files=without-match��Ʊ��
  -d, --directories=���    �ǥ��쥯�ȥ꡼�ؤ���'read'(�ɹ���)��
                            'recurse'(�Ƶ�)��'skip'(�����å�)����ꡣ
  -r, --recursive           --directories=recurse��Ʊ����
  -L, --files-without-match ���פΤʤ��ä��ե�����̾�Τߤ�ɽ������
  -l, --files-with-matches  ���פ����ե�����̾�Τߤ�ɽ������
  -c, --count               ���פ����Կ��Τߤ�ɽ������
  -Z, --null                �ե�����̾�θ�ˡ��̥��ͤΥХ��Ȥ�ɽ��
 
�Х��� <bug-gnu-utils@gnu.org> ����𤷤Ƥ���������
   -E, --extended-regexp     �֥ѥ�����פ��ĥ���줿����ɽ���Ȥ���
  -F, --fixed-regexp        �֥ѥ�����פ���ԤǶ��ڤ�줿�����ʸ����Ȥ���
  -G, --basic-regexp        �֥ѥ�����פ����Ū������ɽ���Ȥ���
   -e, --regexp=�ѥ�����     ����ɽ���˻���ѥ������Ȥ�
  -f, --file=�ե�����       �ѥ������ե����뤫���ɤ�
  -i, --ignore-case         ��ʸ��/��ʸ����̵�뤹��
  -w, --word-regexp         �ѥ�������פ�ñ������(ñ��ñ��)�ǹԤʤ�
  -x, --line-regexp         �ѥ�������פ������(��ñ��)�ǹԤʤ�
  -z, --null-data           ���Ϥ���ԤǤʤ����̥��ͤΥХ��ȤǶ��ڤ�
 %s (GNU grep) �С������ %s
 %s: ���ץ���󤬴ְ�äƤ��ޤ� -- %c
 %s: ���ץ���������Ǥ� -- %c
 %s: ���ץ����`%c%s'�ϰ�����Ȥ�ޤ���
 %s: ���ץ����λ���`%s'��ۣ��Ǥ�
 %s: ���ץ����`-%s'�ˤϰ�����ɬ�פǤ�
 %s: ���ץ����`--%s'�ϰ�����Ȥ�ޤ���
 %s: ���ץ����`-W %s'�ϰ�����Ȥ�ޤ���
 %s: ���ץ����λ���`-W %s'��ۣ��Ǥ�
 %s: ���ץ����`-%c'�ˤϰ�����ɬ�פǤ�
 %s: ���ץ����`%c%s'��ǧ���Ǥ��ޤ���
 %s: ���ץ����`--%s'��ǧ���Ǥ��ޤ���
 %s: �ٹ�: %s: %s
 (ɸ������) �Х��ʥ꡼���ե�����%s�Ȱ��פ��ޤ�
 Copyright 1988, 1992-1999, 2000 Free Software Foundation, Inc.
 ���꡼��­��ޤ��� ��ʸ�����ꤵ��Ƥ��ޤ��� �֥ե�����פ⤷����ɸ�����Ϥ���֥ѥ�����פθ�����Ԥʤ���
��: %s -i 'hello world' menu.h main.c

����ɽ��������Ȳ����ˡ:
 ����ϥե꡼�����եȥ������Ǥ���ʣ���˴ؤ�����ϥ�������������������
�����̵�ݾڤǤ���������Ū�䤢���������Ū�ˤऱ��Ŭ���Τ�ΤǤ⤢��ޤ���
 �ܤ�����`%s --help'��¹Ԥ��Ƥ���������
 ��(�פ����礤�ޤ��� ��)�פ����礤�ޤ��� ��[�פ����礤�ޤ��� \ ���������פ���λ���Ƥ��ޤ��� ����ˡ: %s [���ץ����]�š� ʸ����ѥ����� [�ե�����] �š�
 ����ˡ: %s [���ץ����]�š� ʸ����ѥ����� [�ե�����]�š�
 ���ͤ���matcher�����ꤵ��Ƥ��ޤ� �Կ��λ��꤬�ְ�äƤ��ޤ� ���֤�������Ȥ��۾�Ǥ� ���꡼��­��ޤ��� ���꡼��­��ޤ��� �ǥ��쥯�ȥ꡼���Ƶ�Ū�롼�פ򤷤Ƥ��ޤ� ���֤�������Ȥ���λ���ޤ��� �Х��ʥ꡼���ե�����λ��꤬�����Ǥ� �ǥ��쥯�ȥ꡼���λ��꤬�����Ǥ� ���Ϥν���� 