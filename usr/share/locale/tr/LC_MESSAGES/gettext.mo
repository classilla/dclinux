��    R      �  m   <      �  �   �  �  �  t  �	  �  *  &  �  �  
           	     *     D  ,   ^     �  %   �  ,   �  -   �      *  &   K     r     �  3   �  /   �  +     ?   B  !   �  /   �  �   �  (   �  &   �     �  4    �  6  �  �   ,  Y#  �  �%  2  [(     �,     �,  8   �,  6   �,  $   ,-     Q-  *   p-  ;   �-     �-     �-     .     +.  $   E.  $   j.     �.     �.     �.  *   �.  "   /     3/     G/  3   d/  "   �/  5   �/  G   �/     90     N0     d0     }0     �0     �0  F   �0     �0  7   1     S1     b1  +   r1  1   �1  *   �1  '   �1     #2     62  8   P2  !   �2     �2     �2  _  �2    <4  �  H5  �  7  ,  �9    �=  �  �@  
   �C  1   �C  -   �C  *   D  *   =D     hD  ,   �D  *   �D  /   �D     E  +   +E     WE     wE  3   �E  .   �E  )   �E  8   $F     ]F     xF  �   �F  4   �G  4   �G     �G    H  �  L  �  �N  >  TQ  �  �S  q  fV     �Z      �Z  A   [  ?   S[     �[  !   �[  2   �[  E   \     N\     i\     �\     �\     �\     �\     �\     
]  "   ']  >   J]  &   �]     �]  #   �]  1   �]     %^  3   D^     x^     �^     �^     �^     �^     �^     _  I   -_  !   w_  A   �_     �_     �_  &   �_  )    `  +   J`  (   v`     �`  @   �`  9   �`     ,a     Ja     fa           F   9   I       @   (   /          B   :   .       K   M      R   J           >      1   3                                     !                         +      5   4   	   ,              C   #   %   N   -   D   )   ?           0   L      "          '          Q              H   *      =         P   2       <      A         ;   6              E   7             &   8           $   G   O       
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
 `domain %s' directive ignored `msgid' and `msgstr' entries do not both begin with '\n' `msgid' and `msgstr' entries do not both end with '\n' at least two files must be specified cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix duplicate message definition empty `msgstr' entry ignored end-of-file within string end-of-line within string error while opening "%s" for reading error while opening "%s" for writing error while reading "%s" error while writing "%s" file exactly 2 input files required field `%s' still has initial default value file "%s" is not in GNU .mo format file "%s" truncated fuzzy `msgstr' entry ignored header field `%s' should start at beginning of line headerfield `%s' missing in header impossible selection criteria specified (%d < n < %d) internationalized messages should not contain the `\%c' escape sequence keyword "%s" unknown language `%s' unknown missing `msgstr' section missing arguments no input file given no input files given number of format specifications in `msgid' and `msgstr' does not match seek "%s" offset %ld failed some header fields still have the initial default value standard input standard output this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: file `%s' extension `%s' is unknown; will try C warning: this message is not used while creating hash table while preparing output Project-Id-Version: GNU gettext-0.10.35
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 2000-11-05 23:43+200
Last-Translator: Nilg�n Belma Bug�ner <nilgun@technologist.com>
Language-Team: Turkish <tr@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-9
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=1; plural=0;
 
�kilik .mo dosyas�n� Tektip .po dosyas�na d�n��t�r�r.
`little-endian' ve `big-endian' .mo dosyalar�n�n ikisi de elde edilir.
Girdi dosyas� verilmemi�se ya da - verilmi�se standard input okunur.
��kt� dosyas� verilmemi�se ya da - verilmi�se standard ��kt�ya yaz�l�r.
 
MetinSunucu parametresi verilmemi�se sunucu ad� TEXTDOMAIN �evre
de�i�keninden saptan�r. �leti katalo�u olmas� gereken dizinde de�ilse
bulundu�u dizin TEXTDOMAINDIR �evre de�i�keni ile belirtilebilir.
Program -s se�ene�i ile kullan�ld���nda `echo' komutu verilmi� gibi
davran�r. Ama basit�e arg�manlar�n� standart ��kt�ya kopyalamak yerine
�evrilmi� ileti katalo�unun bulunmas� gereken dizini a�a��daki gibi verir:
Standard arama dizini: %s
 
�ki Tektip bi�emli .po dosyas�n� birbirine ekler. def.po dosyas�, eski
�evirilerin bulundu�u ve hala bir�ok bak�mdan onunla e�le�en (yorumlar
korunmu�, fakat ��karma yorumlar� ve dosya konumlar� iptal edilmi� olan)
yeni olu�turulmu� bir dosyan�n yerini ald��� mevcut bir PO dosyas�d�r.
ref.po dosyas� ise t�m �evirileri ve yorumlar� iptal edilmi� ama nokta
yorumlar� ve dosya konumlar� korunmu� olan son (genellikle xgettext
taraf�ndan) olu�turulan PO dosyas�d�r. Daha iyi sonu�lar elde edebilmek
i�in zorunlu e�le�meler bulunamad���nda belirsiz e�le�meler kullan�lm��t�r.
Bir ��kt� dosyas� belirtilmedi�i takdirde sonu�lar standard ��kt�ya yaz�l�r.
   -V, --version                s�r�m bilgisini g�sterir ve ��kar
  -w, --width=SAYI             sayfa geni�li�ini ayarlar
  -<, --less-than=SAYI         �ok say�da tan�mlanm�� iletiler aras�nda
				SAYIdan az tan�mlanm�� iletileri g�sterir,
				belirtilmezse �ntan�ml� de�er sonsuz kullan�l�r
  ->, --more-than=SAYI         �ok say�da tan�mlanm�� iletiler aras�nda
				SAYIdan fazla tan�mlanm�� iletileri g�sterir,
				belirtilmezse �ntan�ml� de�er 1 kullan�l�r

Belirtilen PO dosyalar�n�n iki veya daha fazlas�nda ortak olan iletileri bulur
--more-than se�ene�i kullan�larak, iletiler bas�lmadan �nce, dosyalarda ortak
olan iletilerin belirtilen miktardan fazla olanlar� se�ilir. Tersine olarak
--less-than se�ene�i kullan�larak, iletiler bas�lmadan �nce, dosyalarda ortak
olan iletilerin belirtilen miktardan az olanlar� se�ilir. (�rne�in
--less-than=2 ile tekba��na-ortak olmayan iletiler bas�l�r.) Sadece ilk PO
dosyas�nda tan�mland��� �ekliyle �eviriler, yorumlar ve ��karma yorumlar�
korunmu� olacakt�r. T�m PO dosyalar�ndaki dosya konumlar� korunmu� olacakt�r.
   -i, --indent                 sat�rba�l� bi�em kullanarak .po dosyas�n�
				yazar
      --no-location            '#: dosyaismi:line' sat�rlar�n� yazmaz
  -n, --add-location           '#: dosyaismi:line' sat�rlar�n� �retir
				(�ntan�ml�)
      --omit-header            `msgid ""' ile ba�layan ba�l�klar� yazmaz
  -o, --output=DOSYA           ��kt�y� belirtilen DOSYAya yazar
  -p, --output-dir=D�Z�N       ��kt� dosyalar�n� D�Z�Ne yerle�tirir
  -s, --sort-output            tekrarlar� silerek ��kt�y� dosyaya s�ralar
      --strict                 Tektip .po dosyas�na harfiharfine (strict) yazar
  -T, --trigraphs              girdi olarak ANSI C trigraph'lar� anlar
  -u, --unique                  --less-than=2 i�i k�salma, yaln�z tekba��na
				iletiler g�sterildi�inde istenir
   -n, --add-location           '#: dosyaismi:sat�r' sat�rlar�n� �retir
				(�ntan�ml�)
      --omit-header            ba�l��� `msgid ""' girdisiyle yazmaz
  -o, --output=DOSYA           ��kt�y� belirtilen DOSYAya yazar
  -p, --output-dir=D�Z�N       ��kt� dosyas� D�Z�N i�ine konulacakt�r
  -s, --sort-output            tekrarlar� silerek ��kt�y� s�ral� �retir
      --strict             	harfiharfine Tektip ��kt� bi�emi
  -T, --trigraphs              girdi olarak ANSI C trigraph'lar� anlar
  -V, --version            	s�r�m bilgisini g�sterir ve ��kar
  -w, --width=SAYI         	sayfa geni�li�ini ayarlar
  -x, --exclude-file=DOSYA     DOSYAdaki girdiler ayr�lm�� olmaz

girdidosyas� olarak - verilmi�se standard girdi okunur.
  yap�ld�.
 %s ve %s kar��l�kl� olarak di�eri ile ba�da�m�yor %s: se�ene�in bu kullan�m� uygun de�il -- %c
 %s: se�ene�in bu kullan�m� ge�ersiz -- %c
 %s: `%c%s' se�ene�i arg�mans�z kullan�l�r
 %s: `%s' se�ene�i belirsiz
 %s: `%s' se�ene�i bir  arg�manla kullan�l�r
 %s: `--%s' se�ene�i arg�mans�z kullan�l�r
 %s: `-W %s' se�ene�i bir arg�manla kullan�lmaz
 %s: `-W %s' se�ene�i belirsiz
 %s: se�enek i�in bir arg�man gerekli -- %c
 %s: `%c%s' se�ene�i bilinmiyor
 %s: `--%s' se�ene�i bilinmiyor
 %s: uyar�: kaynak dosya belirsiz �eviriler i�eriyor %s:%d: uyar�: sonland�r�lmam�� karakter sabiti %s:%d: uyar�: sonland�r�lmam�� dizi harfi standard ��kt�ya yaz�l�rken --join-existing kullan�lamaz ...ama bu tan�mlama benzer ...bu ilk tan�mlaman�n konumu Kopyahakk� (C) %s Free Software Foundation, Inc.
Bu bir serbest yaz�l�md�r; kopyalama ko�ullar� i�in kaynak koduna bak�n�z.
Hi�bir garantisi yoktur; hatta SATILAB�L�RL��� veya �AHS� KULLANIMINIZA
UYGUNLU�U i�in bile garanti verilmez.
 Hatalar� <bug-gnu-utils@gnu.org> adresine bildirin.
 Daha fazla bilgilendirilmek i�in `%s --help' yaz�n.
 Bilinmeyen sistem hatas� Kullan�m�: %s [se�enek] girdidosyas� ...
Verilen girdi dosyalar�ndan terc�me edilebilir diziyi ay�r�r
Uzun se�eneklerdeki zorunlu arg�manlar k�sa se�enekler i�inde zorunludur
  -a, --extract-all            t�m dizileri ay�r�r
  -c, --add-comments[=ET�KET]  ��kt� dosyas�nda yorum blokunu ET�KET ile
				yer de�i�tirir
  -C, --c++                    --language=C++ i�in k�sayol
      --debug                  daha detayl� bi�imdizisi tan�ma sonucu
  -d, --default-domain=�S�M    ��kt� i�in NAME.po kullan�l�r
				(messages.po yerine)
  -D, --directory=D�Z�N        girdi dosyalar� arama listesine D�Z�Ni ekler
  -e, --no-escape          	C escape'lerini ��kt�da kullanmaz (�ntan�ml�)
  -E, --escape             	C escape'lerini ��kt�da kullan�r
  -f, --files-from=DOSYA       girdi dosyalar�n�n listesini DOSYAdan al�r
      --force-po           	bo� olsa bile PO dosyas�n� yazar
      --foreign-user           yabanc� kullan�c�lar i�in ��kt�da
				FSF kopyahakk� uyar�s�n� g�stermez
  -F, --sort-by-file           ��kt�y� dosya konumuna g�re s�ralar
 Kullan�m�: %s [se�enek] GirdiDosyas� ...
Uzun se�eneklerdeki zorunlu arg�manlar k�sa se�enekler i�inde zorunludur
  -d, --default-domain=�S�M    ��kt� i�in �S�M.po kullan�lacak
				(messages.po yerine)
  -D, --directory=D�Z�N        girdi dosyalar� arama listesine D�Z�N'i ekler
  -e, --no-escape              C escape'leri ��kt�da kullanmaz (�ntan�ml�)
  -E, --escape                 C escape'leri ��kt�da kullan�r
  -f, --files-from=DOSYA       girdi dosyalar�n�n listesini DOSYA'dan al�r
      --force-po               bo� olsa bile PO dosyas�n� yazar
  -F, --sort-by-file           dosya konumuna g�re ��kt�y� s�ralar
  -h, --help                   bu yard�m iletisini g�sterir ve ��kar
 Kullan�m�: %s [se�enek] [dosya]...
Uzun se�eneklerdeki zorunlu arg�manlar k�sa se�enekler i�inde zorunludur
  -e, --no-escape          C escape'lerini ��kt�da kullanmaz (�ntan�ml�)
  -E, --escape             C escape'lerini ��kt�da kullan�r
      --force-po           bo� olsa bile PO dosyas�n� yazar
  -h, --help               bu yard�m iletisini g�sterir ve ��kar
  -i, --indent             sat�rba�l� ��kt� bi�emi
  -o, --output-file=DOSYA  ��kt�y� DOSYAya yazar
      --strict             harfiharfine Tektip ��kt� bi�emi
  -V, --version            s�r�m bilgisini g�sterir ve ��kar
  -w, --width=SAYI         sayfa geni�li�ini ayarlar
 Kullan�m�:
%s [se�enek] [[[MetinSunucu] msgid] | [-s [msgid]...]]

  -d, --domain=MetinSunucu  ileti �evirilerini MetinSunucu'dan al�r.
  -e                      baz� "escape sequences" geni�letilebilmesine
			   olanak sa�lar
  -E                      (uyumluluk i�in yoksay�ld�)
  -h, --help              bu yard�m iletisini g�sterir ve ��kar
  -n                      izleyen `newline' karakterini bast�r�r
  -V, --version           s�r�m bilgisini g�sterir ve ��kar
  [MetinSunucu] �letiKimli�i
			   MetinSunucu'sundan msgid ile belirtilen
			   ileti �evirisini al�r.
 Kullan�m�: %s [se�enek] def.po ref.po
Uzun se�eneklerdeki zorunlu arg�manlar k�sa se�enekler i�inde zorunludur
  -D, --directory=D�Z�N     girdi dosyalar�n� arama listesine D�Z�N'i ekler
  -h, --help                bu yard�m iletisini g�sterir ve ��kar
  -V, --version             s�r�m bilgisini g�sterir ve ��kar

msgid dizilerinin ayn� setini i�eren Tektip bi�imdeki iki .po
dosyas�n� kar��la�t�r�r. def.po dosyas� eski �evirileri i�eren mevcut PO
dosyas�d�r. ref.po dosyas� ise (genellikle gettext taraf�ndan) yeni
olu�turulan PO dosyas�d�r. Bu, program�n�zdaki her iletiyi ve �evirisini
kontrol etmek i�in kullan��l�d�r. Daha iyi bir te�his i�in, zorunlu bir
e�le�me bulunamazsa, belirsiz (fuzzy) e�le�me kullan�l�r.
 Kullan�m�: %s [se�enek] dosyaismi.po ...
Okunabilir bi�imdeki �eviri tan�m�ndan ikili bi�imde ileti katalo�u �retir.

Uzun se�eneklerdeki zorunlu arg�manlar k�sa se�enekler i�inde zorunludur
  -a, --alignment=SAYI      dizileri SAYI byte'a hizalar (�ntan�ml�: %d)
  -c, --check               diziler �zerinde lisana ba�l� kontrolleri uygular
  -D, --directory=D�Z�N     D�Z�N'i girdi dosyas� arama listesine ekler
  -f, --use-fuzzy           ��kt�da belirsiz(fuzzy) girdileri kullan�r
  -h, --help                bu yard�m iletisini g�sterir ve ��kar
      --no-hash             ikilik dosya hash tablosunu i�ermeyecek
  -o, --output-file=DOSYA   ��kt�y� DOSYAya yazar
      --statistics          �eviriler hakk�ndaki istatistikleri basar
      --strict              harfiharfine Tektip kipi etkinle�tirir
  -v, --verbose             girdi dosyas�ndaki anormallikleri listeler
  -V, --version             s�r�m bilgisini g�sterir ve ��kar

-v se�ene�ini birden fazla vererek ayr�nt� seviyesini artt�rabilirsiniz.

girdi dosyas� olarak - verilirse standard girdi okunur. ��kt� dosyas� olarak
 - verilirse ��kt�, standard ��kt�ya yaz�l�r.
 %s taraf�ndan yaz�ld�.
 `domain %s' talimat� yok say�ld� `msgid' ve `msgstr' girdilerinin her ikisi de '\n' ile ba�lam�yor `msgid' ve `msgstr' girdilerinin her ikisi de '\n' ile bitmiyor en az iki dosya belirtilmelidir "%s" ��kt� dosyas� olu�turulamad� dosya ismi olarak makina ismi "%s" elveri�li de�il dosya ismi olarak makina ismi "%s" elveri�li de�il: �nek kullan�lacak ileti iki defa tan�mlanm�� bo� `msgstr' giri�i yoksay�ld� dizi i�inde dosya sonu dizi i�inde sat�r sonu "%s" okumak i�in a��l�rken hata "%s" yazmak i�in a��l�rken hata "%s" okunurken hata "%s" dosyas�na yazarken hata tam olarak 2 girdi dosyas� gerekli `%s' ba�l�k alan� hala ba�lang��taki �ntan�ml� de�erle duruyor "%s" dosyas� bir GNU .mo dosyas� de�il "%s" dosyas� tepeden k�rp�lm�� belirsiz `msgstr' giri�i yoksay�ld� `%s' ba�l�k alan� sat�r�n ba�lang�c�nda olmal�yd� `%s' ba�l�k alan� ba�l�kta yok belirtilen se�im kriteri m�mk�n de�il (%d < n < %d) i18n iletileri `\%c' i�eremez anahtar-kelime "%s" bilinmiyor lisan `%s' bilinmiyor `msgstr' b�l�m� yok arg�mankar kay�p hi� girdi dosyas� verilmemi� hi�bir girdi dosyas� verilmemi� `msgid' ve `msgstr' girdilerindeki bi�im �zelliklerinin say�s� e�le�miyor "%s" s�ralama %ld ofset ba�ar�s�z baz� ba�l�k alanlar� hala ba�lang��taki �ntan�ml� de�erle duruyor standard girdi standard ��kt� bu dosya makina talimatlar�n� i�eremez "%s" makinas�nda bu ileti tan�mlamas� yok bu ileti kullan�ld� ama %s'de tan�ml� de�il bu ileti kullan�ld� ama tan�ml� de�il... �ok fazla arg�man hatalar �ok fazla, bunlar� d�zeltince program� tekrar �al��t�r�n uyar�: `%s' dosyas� `%s' uzant�s� bilinmiyor; C denenecek uyar�: bu ileti kullan�lmam�� hash tablosu olu�turulurken ��kt�y� haz�rlarken 