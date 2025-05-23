��    R      �  m   <      �  �   �  �  �  t  �	  �  *  &  �  �  
           	     *     D  ,   ^     �  %   �  ,   �  -   �      *  &   K     r     �  3   �  /   �  +     ?   B  !   �  /   �  �   �  (   �  &   �     �  4    �  6  �  �   ,  Y#  �  �%  2  [(     �,     �,  8   �,  6   �,  $   ,-     Q-  *   p-  ;   �-     �-     �-     .     +.  $   E.  $   j.     �.     �.     �.  *   �.  "   /     3/     G/  3   d/  "   �/  5   �/  G   �/     90     N0     d0     }0     �0     �0  F   �0     �0  7   1     S1     b1  +   r1  1   �1  *   �1  '   �1     #2     62  8   P2  !   �2     �2     �2  �  �2    m4  �  r5  x  <7  �  �9  �  ==  �  3@     �B      �B     C     8C  )   PC  %   zC      �C  )   �C  *   �C  '   D  !   >D     `D     {D  @   �D  )   �D  ,   E  /   .E      ^E  (   E  �   �E  3   �F  5   �F     �F  �  G  �  �K  z  pN  ?  �P  �  +S  y  V     �Z  !   �Z  1   �Z  -   �Z  '   [  (   F[  2   o[  D   �[     �[  "   \  "   (\  $   K\  )   p\     �\     �\  "   �\  )   �\  .   !]  %   P]     v]  -   �]  9   �]     �]  1   ^  A   ?^     �^     �^     �^     �^  "   �^  "   �^  @   !_  /   b_  C   �_     �_     �_  )   �_  -   (`  3   V`  1   �`     �`     �`  D   �`  #   2a  %   Va     |a           F   9   I       @   (   /          B   :   .       K   M      R   J           >      1   3                                     !                         +      5   4   	   ,              C   #   %   N   -   D   )   ?           0   L      "          '          Q              H   *      =         P   2       <      A         ;   6              E   7             &   8           $   G   O       
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
 `domain %s' directive ignored `msgid' and `msgstr' entries do not both begin with '\n' `msgid' and `msgstr' entries do not both end with '\n' at least two files must be specified cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix duplicate message definition empty `msgstr' entry ignored end-of-file within string end-of-line within string error while opening "%s" for reading error while opening "%s" for writing error while reading "%s" error while writing "%s" file exactly 2 input files required field `%s' still has initial default value file "%s" is not in GNU .mo format file "%s" truncated fuzzy `msgstr' entry ignored header field `%s' should start at beginning of line headerfield `%s' missing in header impossible selection criteria specified (%d < n < %d) internationalized messages should not contain the `\%c' escape sequence keyword "%s" unknown language `%s' unknown missing `msgstr' section missing arguments no input file given no input files given number of format specifications in `msgid' and `msgstr' does not match seek "%s" offset %ld failed some header fields still have the initial default value standard input standard output this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: file `%s' extension `%s' is unknown; will try C warning: this message is not used while creating hash table while preparing output Project-Id-Version: GNU gettext 0.10.35
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 1998-08-05 15:00+0200
Last-Translator: Rafa� Maszkowski <rzm@pdi.net>
Language-Team: Polish <pl@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 
Konwersja binarnych plik�w .mo do plik�w .po w stylu Uniforum.
U�yte mog� by� zar�wno pliki .mo little-endian i big-endian.
Je�eli plik wej�ciowy to -, czytane jest wej�cie standardowe. Jezeli plik
wyj�ciowy to -, wyniki s� wysy�ane do standardowego wyj�cia.
 
Je�eli parametr TEXTDOMAIN nie jest podany, domena jest wyznaczana ze zmiennej
�rodowiska TEXTDOMAIN.  Je�eli katalog komunikat�w nie zostanie znaleziony w
zwyk�ym katalogu, inna lokalizacja mo�e by� podana przez zmienn� �rodowiska
TEXTDOMAINDIR.
Je�eli u�yty z opcj� -s, program zachowuje si� jak komenda `echo', ale zamiast
kopiowa� argumenty na standardowe wyj�cie t�umaczy komunikaty znalezione w
wybranym katalogu.
Domy�lnie przeszukiwany katalog: %s
 
��czy razem dwa pliki .po w stylu Uniforum.  Plik def.po jest istniej�cym
plikiem PO ze starymi t�umaczeniami, kt�re b�d� przeniesione do nowo
utworzonego pliku je�eli nadal pasuj�; komentarze b�d� zachowane, ale
komentarze wydobyte i pozycje w pliku b�d� zignorowane.
Plik ref.po jest ostanio utworzonym plikiem PO (zwykle przez xgettext),
t�umaczenia i komentarze w nim zawarte b�d� zignorowane, ale komentarze z
kropk� i pozycje w plikach b�d� zachowane.  Tam gdzie nie mo�na por�wna�
dok�adnie u�ywane jest por�wnanie rozmyte, dla lepszych wynik�w. Wyniki s�
pisane na standardowe wyj�cie je�eli plik wyj�iowy nie jest podany.
   -V, --version                  wy�wietl informacj� o wersji i zako�cz
  -w, --width=LICZBA             ustal szeroko�� strony
  -<, --less-than=LICZBA         wypisuj komunikaty z ilo�ci� definicji
                                 mniejsz� od LICZBY, domy�lnie niesko�czono��
  ->, --more-than=LICZBA         wypisuj komunikaty z ilo�ci� defnicji
                                 wi�ksz� od LICZBY, domy�lnie 1

Znajd� komunikaty wsp�lne dla dw�ch lub wi�cej podanych plik�w PO.
Mo�na za��da� wi�kszego uwsp�lnienia przed wypisaniem komunikat�w u�ywaj�c
opcji --more-than. Odpowiednio opcja --less-than mo�e by� u�yta dla ustalenia
mniejszego uwsp�lnienia pomi�dzy komunikatami (np. --less-than=2 wypisze tylko
unikalne komunikaty).  Komentarze t�umacze� i ze �r�de� zostan� zachowane,
ale tylko w pierwszym definiuj�cym je pliku PO.  Pozycje w plikach dla
wszystkich plik�w PO te� zostan� zachowane.
   -i, --indent                   zapisz plik .po u�ywaj�c wci��
      --no-location              nie zapisuj linii '#: nazwa:linia'
  -n, --add-location             pisz linie '#: nazwa_pliku:linia' (domy�lnie)
      --omit-header              nie zapisuj nag��wka z `msgid ""'
  -o, --output=FILE              zapisz do podanego pliku
  -p, --output-dir=KATALOG       pliki wynikowe b�d� w katalogu KATALOG
  -s, --sort-output              wynik posortuj i usu� duplikaty
      --strict                   zapisz plik .po �ci�le w stylu Uniforum
  -T, --trigraphs                rozumiej tr�jznaki ANSI C w danych wej�ciowych
  -u, --unique                   skr�t dla --less-than=2, b�d� wypisane
                                 tylko unikalne komunikaty
   -n, --add-location             pisz linie '#: nazwa_pliku:linia' (domy�lnie)
      --omit-header              nie zapisuj nag��wka z `msgid ""'
  -o, --output=FILE              zapisz do podanego pliku
  -p, --output-dir=KATALOG       pliki wynikowe b�d� w katalogu KATALOG
  -s, --sort-output              wynik posortuj i usu� duplikaty
      --strict                   zapisz plik .po �ci�le w stylu Uniforum
  -T, --trigraphs                rozumiej tr�jznaki ANSI C w danych wej�ciowych
  -V, --version                  wy�wietl informacj� o wersji i zako�cz
  -w, --width=LICZBA             ustal szeroko�� strony
  -x, --exclude-file=PLIK        nie wydobywaj rekord�w zapisanych w PLIKu
  zrobione.
 %s i %s wzajemnie si� wykluczaj� %s: niedozwolona opcja -- %c
 %s: b��dna opcja -- %c
 %s: opcja `%c%s' nie mo�e mie� argumentu
 %s: opcja: `%s' jest niejednoznaczna
 %s: opcja `%s' wymaga argumentu
 %s: opcja `--%s' nie mo�e mie� argumentu
 %s: opcja `-W %s' nie mo�e mie� argumentu
 %s: opcja `-W %s' jest niejednoznaczna
 %s: opcja wymaga argumentu -- %c
 %s: nieznana opcja `%c%s'
 %s: nieznana opcja `--%s'
 %s: uwaga: plik �r�d�owy zawiera t�umaczenie budz�ce w�tpliwo�ci %s:%d: uwaga: niezako�czona sta�a znakowa %s:%d: uwaga: niezako�czona sta�a �a�cuchowa --join-existing nie mo�e by� u�yte kiedy wyniki ...ale ta definicja jest podobna ...to jest po�o�enie pierwszej definicji Copyright (C) %s Free Software Foundation, Inc.
Ten program jest darmowy; warunki kopiowania s� opisane w �r�d�ach.
Autorzy nie daj� �ADNYCH gwarancji, w tym nawet gwarancji SPRZEDAWALNO�CI
lub PRZYDATNO�CI DO KONKRETNYCH CEL�W.
 Raporty o b��dach wysy�aj do bug-gnu-utils@gnu.org
 Spr�buj `%s --help' �eby otrzyma� wi�cej informacji.
 Nieznany b��d systemu U�ycie: %s [OPCJA] PLIK_WEJ�CIOWY ...
Wydob�d� przet�umaczalne �a�cuchy z podanych plik�w wej�ciowych.

Argumenty obowi�zkowe dla opcji d�ugich obowi�zuj� r�wnie� dla kr�tkich.
  -a, --extract-all              wydob�d� wszystkie komunikaty
  -c, --add-comments[=ZNACZNIK]  umie�� blok komentarza ze ZNACZNIKiem (lub
                                 z poprzedzaj�cymi liniami s��w kluczowych) w
                                 pliku wyj�ciowym
  -C, --c++                      rozpoznawaj komentarze w stylu C++
      --debug                    bardziej wnikliwe rozpoznwanie formatu
  -d, --domain=TEXTDOMAIN        wydob�d� przet�umaczone komunikaty z TEXTDOMAIN
  -D, --directory=KATALOG        szukaj plik�w wej�ciowych r�wnie� w KATALOGu
  -e, --no-escape                nie u�ywaj sekwencji escape w wynikach (domy�lne)
  -E, --escape                   u�yj sekwencji escape C, bez znak�w rozszerzonych
  -f, --files-from=PLIK          pobierz list� plik�w wej�ciowych z PLIKu
      --force-po                 zapisz nawet pusty plik PO
      --foreign-user             omi� informacj� o prawach autorskich FSF
  -F, --sort-by-file             sortuj wyniki wg po�o�enia plik�w
 U�ycie: %s [OPCJA] PLIK_WEJ�CIOWY ...
Argumenty obowi�zkowe dla opcji d�ugich obowi�zuj� r�wnie� dla kr�tkich.
  -d, --domain=TEXTDOMAIN        wydob�d� przet�umaczone komunikaty z TEXTDOMAIN
  -D, --directory=KATALOG        szukaj plik�w wej�ciowych r�wnie� w KATALOGu
  -e, --no-escape                nie u�ywaj sekwencji escape w wynikach (domy�lne)
  -E, --escape                   u�yj sekwencji escape C, bez znak�w rozszerzonych
  -f, --files-from=PLIK          pobierz list� plik�w wej�ciowych z PLIKu
      --force-po                 zapisz nawet pusty plik PO
  -F, --sort-by-file             sortuj wyniki wg po�o�enia plik�w
  -h, --help                     wy�wietl ten opis i zako�cz prac�
 U�ycie: %s [OPCJA] def.po ref.po
Argumenty obowi�zkowe dla opcji d�ugich obowi�zuj� r�wnie� dla kr�tkich.
  -e  --no-escape          nie u�ywaj rozwijania sekwencji escape (domy�lne)
  -E  --escape             u�yj sekwencje escape, bez znak�w rozszerzonych
      --force-po           zapisz nawet pusty plik PO
  -h, --help               wy�wietl ten opis i zako�cz
  -i, --indent             wyniki z wci�ciami
  -o, --output-file=PLIK   wyniki b�d� zapisane do PLIKu
      --strict             �cis�y styl Uniforum
  -V, --version            wy�wietl informacj� o wersji i zako�cz
  -w, --width=LICZBA       ustal szeroko�� strony
 U�ycie: %s [OPCJA] [[TEXTDOMAIN] MSGID | [-s [MSGID]...]]
  -d, --domain=TEXTDOMAIN   wydob�d� przet�umaczone komunikaty z TEXTDOMAIN
  -e                        w��cz rozwijanie niekt�rych sekwencji escape
  -E                        (ignorowane, dla kompatybilno�ci)
  -h, --help                wy�wietl ten opis i zako�cz
  -n                        wy��cz ko�cowy znak nowej linii
  -V, --version             wy�wietl informacj� o wersji i zako�cz
  [TEXTDOMAIN] MSGID        wydob�d� przet�umaczony komunikat odpowiadaj�cy
                            MSGID z TEXTDOMAIN
 U�ycie: %s [OPCJA] def.po ref.po
Argumenty obowi�zkowe dla opcji d�ugich obowi�zuj� r�wnie� dla kr�tkich.
  -D, --directory=KATALOG     szukaj plik�w wej�ciowych r�wnie� w KATALOGu
  -h, --help                  wy�wietl ten opis i zako�cz
  -V, --version               wy�wietl informacj� o wersji i zako�cz

Por�wnaj dwa pliki .po w stylu Uniforum, �eby sprawdzi� czy zawieraj� te
same zbiory �a�cuch�w msgid. Plik def.po to istniej�cy plik PO ze starymi
t�umaczeniami. Plik ref.po jest ostatnio utworzonym plikiem PO 
(zwykle przez xgettext).  Jest to przydatne do stwierdzenia czy wszystkie
komunikaty w programie zosta�y przet�umaczone. Tam gdzie nie mo�na
por�wna� dok�adnie u�ywane jest por�wnanie rozmyte, dla lepszej diagnostyki.
 U�ycie: %s [OPCJA] plik.po ...
Wygeneruj binarny katalog komunikat�w z tekstowego opisu t�umaczenia.

Argumenty obowi�zkowe dla opcji d�ugich obowi�zuj� r�wnie� dla kr�tkich.
  -a, --alignment=ILO��       dosu� do r�wnej ILO�Ci bajt�w (domy�lnie: %d)
  -c, --check                 dokonaj zale�nych od j�zyka sprawdze� znak�w
  -D, --directory=KATALOG     szukaj plik�w wej�ciowych r�wnie� w KATALOGu
  -f, --use-fuzzy             u�yj t�umacze� niepewnych w danych wyj�ciowych
  -h, --help                  wy�wietl ten opis i zako�cz prac�
      --no-hash               w pliku binarnym nie b�dzie tablicy mieszaj�cej
  -o, --output-file=PLIK      podaj nazw� pliku wyj�ciowego PLIK
      --statistics            wypisz statystyk� t�umacze�
      --strict                przejd� na �cis�y tyryb Uniforum
  -v, --verbose               wypisz anomalie w pliku wej�ciowym
  -V, --version               wypisz informacj� o wersji i zako�cz

Podanie opcji -v wiec�j ni� raz zwi�ksza ilo�� podawanych informacji.

Je�eli plik wej�ciowy to -, czytane jest wej�cie standardowe. Je�eli plik
wyj�ciowy to -, wyniki s� wysy�ane do standardowego wyj�cia.
 Zapisane przez %s.
 dyrektywa `domena %s' zignorowana `msgid' i `msgstr' nie zaczynaj� si� oba od '\n'` `msgid' i `msgstr' nie ko�cz� si� oba na '\n' musz� by� podane przynajmniej dwa pliki nie mog� utworzy� pliku wyj�ciowego "%s" nazwa domeny "%s" nie jest odpowiedni� nazwa pliku nazwa domeny "%s" nie jest dobra jako nazwa pliku: u�yj� przedrostka podw�jna definicja komunikatu zignorowana pusta warto�� `msgstr' znak ko�ca pliku wewn�trz �a�cucha znak ko�ca wiersza wewn�trz �a�cucha b��d w czasie otwierania "%s" do czytania b��d otwarcia "%s" do pisania b��d w czasie czytania "%s" b��d podczas pisania do pliku "%s" wymagane s� dok�adnie dwa pliki wej�ciowe pole `%s' ma nadal pocz�tkow� warto�� domy�ln� plik "%s" nie jest w formacie .mo GNU obci�ty plik "%s" zignorowana niepewna (fuzzy) warto�� `msgstr' pole nag��wka `%s' powinno si� zaczyna� na pocz�tku linii w nag��wku brakuje pola `%s' podane niemo�liwe kryteria selekcji (%d < n < %d) umi�dzynaradawiane komunikaty nie powinny zawiera� sekwenji `\%c' nieznane s�owo kluczowe "%s" nieznany j�zyk `%s' brak cz�sci `msgstr' brakuj�ce argumenty nie podano nazwy pliku wej�ciowego nie podano nazw plik�w wej�ciowych nie zgadza si� ilo�� specyfikacji formatu w `msgid' i w `msgstr' nieudane przej�cie do pozycji w "%s", ofset %ld niekt�re pola nag��wka nadal zawieraj� pocz�tkowe warto�ci domy�lne wej�cie standardowe standardowe wyj�cie ten plik nie mo�e zawiera� dyrektyw domen ten komunikat nie ma definicji w domenie "%s" ten komunikat jest u�yty, ale nie zdefiniowany w %s ten komunikat jest u�yty, ale nie zdefiniowany... za du�o argument�w %s: za du�o b��d�w, przerywam uwaga: typ pliku `%s' z rozszerzeniem `%s' jest nieznany; spr�buj� C uwaga: ten komunikat nie jest u�yty podczas tworzenia tablicy mieszaj�cej podczas przygotowywania wyniku 