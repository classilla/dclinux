��    �      |  �   �      �     �     �       /        B     [  '   u  #   �     �     �     �          .     J  "   ^  )   �     �  2   �     �     
     )  )   9  ;   c  A  �  �  �  �  �  �  �     �     �  �   �  O  _    �  &   �  *   �       $   ,  &   Q  "   x  +   �  "   �      �  V     '   b  .   �  %   �  :   �  #        >  !   V     x  	   �     �  @   �  >   �       "   2     U     f  :   w     �     �     �     �     �  )   �     '   *   B      m   *   �   -   �   %   �   %   	!     /!      J!     k!  '   �!  %   �!  #   �!     �!  #   
"  (   ."  %   W"     }"  &   �"  ,   �"  1   �"  "   ##     F#  T   _#  N   �#     $     $  -   ($  &   V$     }$     �$  -   �$  -   �$     
%     %     *%  5   ;%  &   q%      �%      �%      �%      �%     &  
   2&     =&  \   K&     �&     �&     �&  L   �&     -'  &   B'     i'  H   �'  ?   �'  7   (  =   F(  >   �(  (   �(  F   �(     3)     E)  /   b)     �)     �)     �)  *   �)     �)  ,   *  >   ;*     z*     �*     �*  7   �*  4  �*     ,     -,     B,  0   S,     �,     �,  %   �,      �,     -     $-     @-     R-     m-     �-     �-     �-     �-  2   �-     .     ).     H.  #   V.  4   z.  ?  �.  �  �/  �  �2  �  �4     �6     �6  �   �6  J  +7  �  v8  ,   H;  +   u;     �;  "   �;  "   �;  #   <  *   (<  #   S<     w<  S   �<  #   �<  *   =      :=  8   [=  &   �=     �=  *   �=     >     >     >  8   &>  A   _>     �>     �>     �>     �>  <   �>     7?     <?     J?     O?  "   ]?  (   �?     �?  #   �?     �?  !   @  $   %@  (   J@  (   s@     �@     �@     �@  $   �@     A     +A     FA     TA  %   oA  &   �A     �A  $   �A  $   �A  +   B     KB     fB  P   �B  J   �B  	   C     (C      9C     ZC     xC     �C  .   �C  /   �C     D  	   D     D  <   *D  .   gD     �D     �D     �D     �D     E  	   &E     0E  E   ?E  	   �E     �E  	   �E  =   �E     �E  +   F     3F  B   RF  9   �F  +   �F  7   �F  6   3G      jG  6   �G     �G     �G  #   �G     H     "H     <H  %   AH     gH  '   �H  *   �H  	   �H  	   �H     �H  3   �H                G       ^   [   `   H   M   )   '   �               (   A      $         _      a      =   .   �   
   ,       B          3      7   t           m   1          F       4      "   �   d   }      8   ]   z      |       w       /       v               {   �   x       h   �   Z              +   &   P   u              �       �       O   D       s   \       k   >   L   Y   T   9   �   S           �   r       i   #       f   l   J       Q      :   0   5       c   X   y       �      �   E      j       @   	      b   2      g   �   o       n   N          K       ;   p           C   W              ?      U                  *      I      �       -   R   e   6             q   <       !         V   ~       %                 on repetition %d
 %d: fmt="%s" width=%d
 %s%*s%s%*sPage %s: %lu: improperly formatted MD5 checksum line %s: FAILED open or read
 %s: `%s': match not found %s: `+' or `-' expected after delimeter %s: `}' is required in repeat count %s: input file is output file %s: integer expected after `%c' %s: invalid number %s: invalid number of bytes %s: invalid number of lines %s: invalid pattern %s: invalid regular expression: %s %s: line number must be greater than zero %s: line number out of range %s: no properly formatted MD5 checksum lines found %s: read error %s: unrecognized option `-%c'
 %s: write error %s}: integer required between `{' and `}' Cannot specify number of columns when printing in parallel. Compare sorted files LEFT_FILE and RIGHT_FILE line by line.

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
 FAILED OK Print CRC checksum and byte counts of each FILE.

  --help      display this help and exit
  --version   output version information and exit
 Print checksum and block counts for each FILE.

  -r              defeat -s, use BSD sum algorithm, use 1K blocks
  -s, --sysv      use System V sum algorithm, use 512 bytes blocks
      --help      display this help and exit
      --version   output version information and exit

With no FILE, or when FILE is -, read standard input.
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
 `-l PAGE_LENGTH' invalid number of lines: `%s' `-o MARGIN' invalid line offset: `%s' a delimiter may be specified only when operating on fields both files cannot be standard input cannot do ioctl on `%s' cannot split in more than one way checksum checksums creating file `%s'
 ending field number argument to the `-k' option must be positive ending field spec has `.' but lacks following character offset error closing file error in regular expression search error reading %s error writing %s field specification has `,' but lacks following field spec file file truncated files input disappeared invalid backslash escape `\%c' invalid backslash escape at end of string invalid byte or field list invalid character `%c' in type string `%s' invalid character class `%s' invalid conversion specifier in suffix: %c invalid conversion specifier in suffix: \%.3o invalid field number for file 1: `%s' invalid field number for file 2: `%s' invalid field number: `%s' invalid field specification `%s' invalid field specifier: `%s' invalid file number in field spec: `%s' invalid line number field width: `%s' invalid line number increment: `%s' invalid number invalid number of blank lines: `%s' invalid number of bytes to compare: `%s' invalid number of bytes to skip: `%s' invalid number of columns: `%s' invalid number of fields to skip: `%s' invalid repeat count `%s' in [c*n] construct invalid second operand in compatibility mode `%s' invalid starting line number: `%s' invalid type string `%s' invalid type string `%s';
this system doesn't provide a %lu-byte floating point type invalid type string `%s';
this system doesn't provide a %lu-byte integral type limit argument minimum string length missing %% conversion specification in suffix missing conversion specifier in suffix missing list of fields missing list of positions no files may be specified when using --string no type may be specified when dumping strings number of bytes number of lines old-style offset only one argument may be specified when using --check only one type of list may be specified option `-T' requires an argument option `-k' requires an argument option `-o' requires an argument option `-t' requires an argument page width too narrow read error skip argument specified number of bytes `%s' is larger than the maximum
representable value of type `long' standard input standard input is closed standard output starting field character offset argument to the `-k' option
must be positive tab size cannot be 0 tab size contains an invalid character tab sizes must be ascending the --binary and --text options are meaningless when verifying checksums the --status option is meaningful only when verifying checksums the --string and --check options are mutually exclusive the --warn option is meaningful only when verifying checksums the [c*] construct may appear in string2 only when translating the delimiter must be a single character the starting field number argument to the `-k' option must be positive too few arguments too few non-option arguments too many %% conversion specifications in suffix too many arguments too many non-option arguments total two strings must be given when translating unrecognized option `-%c' warning: invalid width %lu; using %d instead warning: line number `%s' is the same as preceding line number width specification write error write error for `%s' you must specify a list of bytes, characters, or fields Project-Id-Version: GNU textutils 1.20
POT-Creation-Date: 1999-08-06 02:10+0200
PO-Revision-Date: 1997-01-04 13:15+0900
Last-Translator: Bang Jun-Young <bangjy@nownuri.nowcom.co.kr>
Language-Team: Korean <ko@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=EUC-KR
Content-Transfer-Encoding: 8-bit
  %d ��° �ݺ���
 %d: ����="%s" ��=%d
 %s%*s%s%*s������ %s: %lu: �ùٸ��� ���� ������ ���� MD5 üũ�� �� %s: ���� �Ǵ� �б� ����
 %s: `%s': �´� ¦�� ã�� ������ %s: ��ȹ ���� �ڿ� `+'�� `-'�� �;��� %s: �ݺ� Ƚ���� `}'�� �ʿ��մϴ� %s: �Է� ������ ��� �����Դϴ� %s: `%c' �ڿ� ������ �;��� %s: �������� ���� %s: �������� ����Ʈ�� ���� %s: �������� ���� ���� %s: �������� ���� %s: �������� ���Խ�: %s %s: ���ȣ�� ������ Ŀ�� �մϴ� %s: ������ ��� �� ��ȣ %s: �ùٸ� ������ ���� MD5 üũ�� ���� ã�� ������ %s: �б� ���� %s: �ν��� �� ���� �ɼ� `-%c'
 %s: ���� ���� %s}: `{'�� `}' ���̿� ������ �ʿ��� ���ķ� �μ��� ������ ���� ������ ������ �� �����ϴ�. ���ĵ� ������ LEFT_FILE�� RIGHT_FILE�� �� ������ ���մϴ�.

  -1              ���� ���Ͽ� ������ ���� �����մϴ�
  -2              ������ ���Ͽ� ������ ���� �����մϴ�
  -3              ���� ���Ͽ� ������ ���� �����մϴ�
      --help      �� ������ �����ְ� �����ϴ�
      --version   ���� ������ ����ϰ� �����ϴ�
 ����(��)�̳� ǥ�� �Է��� ǥ�� ��¿� �����մϴ�.

  -A, --show-all           -vET�� ����
  -b, --number-nonblank    ������ �ƴ� ������� ������ ���ϴ�
  -e                       -vE�� ����
  -E, --show-ends          �� ���� ���� $�� ǥ���մϴ�
  -n, --number             ��� ������� ������ ���ϴ�
  -s, --squeeze-blank      ���� �̻��� �� ���� �����մϴ�
  -t                       -vT�� ����
  -T, --show-tabs          �� ���ڸ� ^I�� ǥ���մϴ�
  -u                       (���õ�)
  -v, --show-nonprinting   ^ �� M- ǥ����� ����մϴ� (LFD�� TAB ����)
      --help               �� ������ �����ְ� ��Ĩ�ϴ�
      --version            ���� ������ ����ϰ� ��Ĩ�ϴ�

������ �־����� �ʰų� - �̸�, ǥ�� �Է��� �н��ϴ�.
 �� ���� ���� �����̽��� ������ ��ȯ�ϰ�, ǥ�� ��¿� ����մϴ�.
������ �־����� �ʰų� - �̸� ǥ�� �Է��� �н��ϴ�.

  -a, --all           �� ���� �κ��� ����Ӹ� �ƴ� ��� ������ ��ȯ�մϴ�
  -t, --tabs=NUMBER   �� ũ�⸦ 8�� �ƴ� NUMBER�� �����մϴ�
  -t, --tabs=LIST     �� ��ġ�� ��ǥ�� �и��Ͽ� ������ ����� ����մϴ�
      --help          �� ������ ǥ���ϰ� �����ϴ�
      --version       ���� ������ ����ϰ� �����ϴ�

-t NUMBER�� -t LIST ��� -NUMBER�� -LIST�� ���� �� �ֽ��ϴ�.
 �� ���� ���� ���� �����̽��� ��ȯ�ϰ�, ǥ�� ��¿� ����մϴ�.
������ �־����� �ʰų� - �̸� ǥ�� �Է��� �н��ϴ�.

  -i, --initial       ����鹮�� ���� ���� ��ȯ���� �ʽ��ϴ�
  -t, --tabs=NUMBER   �� ũ�⸦ 8�� �ƴ� NUMBER�� �����մϴ�
  -t, --tabs=LIST     �� ��ġ�� ��ǥ�� �и��Ͽ� ������ ����� ����մϴ�
      --help          �� ������ ǥ���ϰ� �����ϴ�
      --version       ���� ������ ����ϰ� �����ϴ�

-t NUMBER�� -t LIST ��� -NUMBER�� -LIST�� ���� �� �ֽ��ϴ�.
 ���� ���� CRC üũ���� �μ��ϰ� �� ������ ����Ʈ ���� ���ϴ�.

  --help      �� ������ ǥ���ϰ� �����ϴ�
  --version   ���� ������ ����ϰ� �����ϴ�
 �� ���Ͽ� ���� üũ���� ������ ������ �μ��մϴ�.

  -r              -s�� ����, BSD �� �˰����� ���, 1K ���� ���
  -s, --sysv      �ý��� V �� �˰����� ���, 512 ����Ʈ ���� ���
      --help      �� ������ ǥ���ϰ� �����ϴ�
      --version   ���� ������ ����ϰ� �����ϴ�

������ �־����� �ʰų� - �̸� ǥ�� �Է��� �н��ϴ�.
 ����(��)���� ������ �������ϰ� ǥ�� ��¿� ����մϴ�.
������ �־����� �ʰų� `-'�̸� ǥ�� �Է��� �н��ϴ�.

�� �ɼǿ� �ΰ��Ǵ� �μ��� ª�� �ɼǿ��� ����˴ϴ�.
  -c, --crown-margin        ó�� �� ���� �鿩���⸦ �����մϴ�
  -p, --prefix=���ڿ�       ���ξ�� ���ڿ��� ������ �ִ� �ุ �����մϴ�
  -s, --split-only          �� ���� �и��մϴ�. (�ٽ� ä������ ����)
  -t, --tagged-paragraph    
  -u, --uniform-spacing     �ܾ� ���̿��� ���� �� ��, ���� ���̿��� ����
                            �� ���� �Ӵϴ�
  -w, -width=ũ��           �ִ� �� �� (�⺻�� 75 ��)
      --help                �� ������ ǥ���ϰ� ��Ĩ�ϴ�
      --version             ���� ������ ����ϰ� ��Ĩ�ϴ�

-wũ�� ���� `w'�� ������ �� �ֽ��ϴ�.
 �� ���� ������ ������ `%s --help' �Ͻʽÿ�.
 ����: %s [-DIGITS] [OPTION]... [FILE]...
 ����: %s [�ɼ�] [����]...
 ����: %s [�ɼ�] [�Է� [���λ�]]
 ����: %s [�ɼ�]... ���� ����...
 ����: %s [OPTION]... FILE1 FILE2
 ����: %s [�ɼ�]... LEFT_FILE RIGHT_FILE
 ����: %s [OPTION]... SET1 [SET2]
 ����: %s [�ɼ�]... [����]...
 ����: %s [�ɼ�]... [����]...
  �Ǵ�: %s --traditional [����] [[+]�ɼ� [[+]��]]
 ����: %s [�ɼ�]... [�Է� [���]]
 �`-l ������_����' �������� ���� ����: `%s' `-o ����' �������� �� �ɼ�: `%s' �ʵ忡 ���� ������ ������ ��ȹ ���ڰ� ������ �� �ֽ��ϴ� �� ������ ��� ǥ�� �Է��̸� �� �˴ϴ� `%s'���� ioctl�� �� �� �����ϴ� �� ���� �̻��� ������� ������ �� �����ϴ� üũ�� üũ�� ���� `%s'�� ����
 `-k' �ɼǿ� ���� ������ �ʵ� ��ȣ �μ��� ������� �մϴ� ������ �ʵ� �������� `.'�� ������ ���� ������ �ɼ��� �����ֽ��ϴ� ���� �ݱ� ���� ���Խ� Ž���� ���� �߻� %s�� �д� ���� ���� �߻� %s�� ���� ���� ���� �߻� �ʵ� �������� `,'�� ������ ���� �ʵ��� �������� �����ֽ��ϴ� ���� ������ �߷��� ���� �Է��� ����� �������� �������� �̽������� `\%c' ���ڿ� ���� �������� �������� �̽������� �������� ����Ʈ�� �ʵ� ��� �������� ���� %c' -- �� ���ڿ� `%s' �������� ���� Ŭ���� `%s' ���̻翡 �������� ��ȯ ������: %c ���̻翡 �������� ��ȯ ������: \%.3o ���� 1�� ���� �ʵ� ��ȣ�� ��������: `%s' ���� 2�� ���� �ʵ� ��ȣ�� ��������: `%s' �������� �ʵ� ��ȣ: `%s' �������� �ʵ� ���� `%s' �������� �ʵ� ������: `%s' �ʵ� ������ �������� ���� ��ȣ: `%s' �������� ���ȣ �ʵ� ��: `%s' �������� ���ȣ ����: `%s' �������� ���� �������� ������ ����: `%s' ���� ����Ʈ�� ������ ��������: `%s' �ǳ� �� ����Ʈ�� ������ ��������: `%s' �������� ���� ����: `%s' �ǳ� �� �ʵ��� ������ ��������: `%s' [c*n] ������ �������� �ݺ� ȸ�� `%s' ȣȯ ��� `%s'�� �ι�° �ǿ����ڰ� �������� �������� ���� ���ȣ: `%s' �������� Ÿ���� ���ڿ� `%s' �������� �� ���ڿ� `%s';
�� �ý����� %lu ����Ʈ �ε��Ҽ������� �������� �ʽ��ϴ� �������� �� ���ڿ� `%s';
�� �ý����� %lu ����Ʈ �������� �������� �ʽ��ϴ� �μ� ���� �ּ� ���ڿ� ���� ���̻翡 %% ��ȯ �����ڰ� ������ ���̻翡 ��ȯ �����ڰ� ������ �ʵ��� ����� ������ ��ġ�� ����� ������ --string�� ����� �� ������ ������ �� �����ϴ� ���ڿ��� ������ ������ Ÿ���� �����Ǹ� �ȵ˴ϴ� ����Ʈ�� ���� ���� ���� ���� ������ �ɼ� --check�� ����� ���� ���� �� ���� �μ��� ������ �� �ֽ��ϴ� ���� �Ѱ��� ������ ��ϸ��� ������ �� �ֽ��ϴ� `-T' �ɼ��� �μ��� �ʿ��մϴ� `-k' �ɼ��� �μ��� �ʿ��մϴ� `-o' �ɼ��� �μ��� �ʿ��մϴ� `-t' �ɼ��� �μ��� �ʿ��մϴ� ������ ���̰� �ʹ� ���� �б� ���� �μ��� �ǳ� �� `%s' ����Ʈ�� ������ ���ڰ� `long' ���� ǥ�� ������ �ִ밪���� Ů�ϴ� ǥ�� �Է� ǥ�� �Է��� ������ ǥ�� ��� `-k' �ɼǿ� ���� ���� �ʵ� ������ �ɼ� �μ��� ������� �մϴ� �� ũ��� 0�� �� �� �����ϴ� �� ũ�⿡ �������� ���ڰ� �����Ǿ� �ֽ��ϴ� �� ũ����� ���� Ŀ���� �մϴ� --binary�� --text �ɼ��� ���� üũ���� �˻��� ���� �ǹ̰� �ֽ��ϴ� --status �ɼ��� ���� üũ���� �˻��� ���� �ǹ̰� �ֽ��ϴ� --string�� --check �ɼ��� ��ȣ ��Ÿ���Դϴ� --warn �ɼ��� ���� üũ���� �˻��� ���� �ǹ̰� �ֽ��ϴ� ������ ������ [c*] ������ ���ڿ�2�� ��Ÿ�� �� �ֽ��ϴ� ��ȹ ���ڴ� ���� ���ڿ��� �մϴ� `-k' �ɼǿ� ���� ���� �ʵ� ��ȣ �μ��� ������� �մϴ� �μ��� �ʹ� ���� �ɼǾƴ� �μ��� �ʹ� ���� ���̻翡 %% ��ȯ �����ڰ� �ʹ� ���� �μ��� �ʹ� ���� �ɼǾƴ� �μ��� �ʹ� ���� �հ� ������ �� �� ���ڿ��� �־����� �մϴ� �ν��� �� ���� �ɼ� `-%c' ���: �������� �� %lu; ��� %d�� ����� ���: ���ȣ `%s'�� �ռ� ���ȣ�� �����ϴ� ���� ���� ���� ���� `%s'�� ���� ���� ����Ʈ, ����, �Ǵ� �ʵ�� �� ����� �����ؾ� �մϴ� 