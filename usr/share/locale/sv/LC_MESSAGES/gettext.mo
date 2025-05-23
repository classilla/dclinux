��    K      t  e   �      `  �   a  �  E  t  %	  �  �     �      �     �     �  ,   �       %   9  ,   _  -   �      �  &   �          "  3   B  /   v  +   �  ?   �  !     /   4  �   d  (   ,  &   U     |  �  �  ,    �  G          ,  8   J  6   �     �  *   �  ;        @     ]     z     �  $   �  $   �     �          /  *   N  "   y     �     �  3   �  "     G   $     l     �     �     �     �     �  F   �     2  7   N     �     �  +   �  1   �  *     '   .     V     i  8   �  !   �     �     �  \     �   l!  �  k"  T  /$    �&     �)  #   �)     �)     �)  &   �)     *  &   7*  &   ^*  '   �*      �*  '   �*     �*     +  8   (+  (   a+      �+  G   �+  #   �+  /   ,  �   G,  `   -  ,   u-     �-    �-  <  �0  �  �2     �5      �5  7   6  7   ;6     s6  -   �6  B   �6  $    7     %7     @7     Y7  )   r7  +   �7     �7  !   �7     8  -   8  %   I8     o8     �8  )   �8     �8  D   �8     +9     E9     X9     n9     ~9     �9  <   �9  '   �9  1   	:     ;:     G:  *   S:  4   ~:  4   �:  2   �:     ;  !   .;  =   P;  &   �;     �;     �;     	          ,         @   ?   )   8   *   H                 A           4   =       -   /               C            6           D   %           !   &       7      <   :   B   0                    E   9       '       "   #          
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
 `domain %s' directive ignored `msgid' and `msgstr' entries do not both begin with '\n' `msgid' and `msgstr' entries do not both end with '\n' cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix duplicate message definition empty `msgstr' entry ignored end-of-file within string end-of-line within string error while opening "%s" for reading error while opening "%s" for writing error while reading "%s" error while writing "%s" file exactly 2 input files required field `%s' still has initial default value file "%s" is not in GNU .mo format file "%s" truncated fuzzy `msgstr' entry ignored header field `%s' should start at beginning of line headerfield `%s' missing in header internationalized messages should not contain the `\%c' escape sequence keyword "%s" unknown language `%s' unknown missing `msgstr' section missing arguments no input file given no input files given number of format specifications in `msgid' and `msgstr' does not match seek "%s" offset %ld failed some header fields still have the initial default value standard input standard output this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: file `%s' extension `%s' is unknown; will try C warning: this message is not used while creating hash table while preparing output Project-Id-Version: GNU gettext 0.10.31
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 1996-12-31 23:59
Last-Translator: Jan Dj�rv <Jan.Djarv@mbox200.swipnet.se>
Language-Team: Swedish <sv@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=2; plural=(n != 1);
 
Konvertera bin�ra .mo-filer till .po-filer av Uniforum-typ.
B�da typer av byteordning ("little-endian" och "big-endian") i .mo-filer
f�rst�s.
Om ingen infil ges eller om den �r - s� l�ses standard in.
I normall�ge s� skrivs resultatet till standard ut.
 
Om parametern TEXTDOM�N utel�mnas s� best�ms dom�nen av milj�variabeln
TEXTDOMAIN. Om meddelandekatalogen inte hittas i den normala katalogen s�
kan en annan katalog anges med milj�variabeln TEXTDOMAINDIR.
N�r flaggan -s ges s� upptr�der programmet som kommandot "echo".
Men det kopierar inte enbart sina argument till standard ut. Ist�llet
�vers�tts de argument som hittas i den valda meddelandekatalogen.
Normal katalog f�r meddelandekataloger: %s
 
Sl�r samman tv� .po-filer av Uniforum-typ.  Filen def.po �r en
existerande PO-fil som inneh�ller de gamla �vers�ttningarna som kommer att
flyttas �ver till den nya filen om de �r lika. Kommentarer bevaras men
extraheringskommentarer och filpositioner kastas bort.
Filen ref.po �r den senast skapade PO-filen (i allm�nhet med xgettext). Alla
�vers�ttningar och kommentarer i filen kastas bort, dock bevaras
punktkommentarer och filpositioner.  Om en exakt likhet
inte kan hittas s� anv�nds luddig j�mf�relse f�r att ge b�ttre resultat.
Resultatet skrivs till standard ut om inte en utfil anges.

   -n, --add-location             skriv ut raderna "#: filnamn:rad"
                                 (normall�ge)
      --omit-header              skriv inte ut huvudrader med msgid ""
  -o, --output=FIL               skriv resultatet till FIL
  -p, --output-dir=KATALOG       utfiler placeras i katalogen KATALOG
  -s, --sort-output              sortera resultatet och ta bort dubbletter
      --strict                   skriv ut en .po-fil som f�ljer Uniforum strikt
  -T, --trigraphs                hantera ANSI C treteckenssekvenser i infiler
  -V, --version                  visa versionsinformation och avsluta
  -w, --width=ANTAL              s�tt antal kolumner i resultatet
  -x, --exclude-file=FIL         rader fr�n FIL tas inte ut

Om INFIL �r - s� l�ses standard in.
  klar.
 %s och %s �r �msesidigt uteslutande %s: otill�ten flagga -- %c
 %s: ogiltig flagga -- %c
 %s: flaggan "%c%s" tar inget argument
 %s: flaggan "%s" �r tvetydig
 %s: flaggan "%s" beh�ver ett argument
 %s: flaggan "--%s" tar inget argument
 %s: flaggan "-W %s" tar inget argument
 %s: flaggan "-W %s" �r tvetydig
 %s: flaggan beh�ver ett argument -- %c
 %s: ok�nd flagga "%c%s"
 %s: ok�nd flagga "--%s"
 %s: varning: k�llfilen inneh�ller luddiga �vers�ttningar %s:%d: varning: oavslutad teckenkonstant %s:%d: varning: oavslutad str�ng --join-existing kan inte anv�ndas d� resultatet skrivs till standard ut ...men denna definition �r likartad ...detta �r platsen f�r den f�rsta definitionen Copyright � %s Free Software Foundation, Inc.
Detta �r fri programvara; se k�llkoden f�r kopieringsvillkor.  Det finns
INGEN garanti; inte ens f�r S�LJBARHET eller L�MPLIGHET F�R N�GOT SPECIELLT
�NDAM�L.
 Rapportera fel till <bug-gnu-utils@gnu.org>.
Rapportera fel p� �vers�ttningen till <sv@li.org>.
 F�rs�k med "%s --help" f�r mer information.
 Ok�nt systemfel Anv�ndning: %s [FLAGGA] [FIL]...
Obligatoriska argument f�r l�nga flaggor �r obligatoriska �ven f�r korta.
  -e, --no-escape          anv�nd inte C-kontrollsekvenser i resultatet
                           (normall�ge)
  -E, --escape             anv�nd C-kontrollsekvenser i resultatet, men
                           inte \v eller \a
      --force-po           skriv PO-fil �ven om den �r tom
  -h, --help               visa denna hj�lptext och avsluta
  -i, --indent             indentera resultatet
  -o, --output-file=FIL    skriv resultatet till FIL i st�llet f�r standard ut
      --strict             strikt Uniforum-format p� resultatet
  -V, --version            visa versionsinformation och avsluta
  -w, --width=ANTAL        s�tt antal kolumner i resultatet
 Anv�ndning: %s [FLAGGA] [[[TEXTDOM�N] MDLID] | [-s [MDLID]...]]
  -d, --domain=TEXTDOM�N    h�mta �versatta meddelanden fr�n TEXTDOM�N
  -e                        expandera n�gra kontrollsekvenser
  -E                        (ignorerad f�r bak�tkompatibilitet)
  -h, --help                visa denna hj�lptext och avsluta
  -n                        skriv inte ut avslutande radframmatning
  -V, --version             visa versionsinformation och avsluta
  [TEXTDOM�N] MDLID         h�mta �versatt meddelande som motsvarar
                            MDLID fr�n TEXTDOM�N
 Anv�ndning: %s [FLAGGA] def.po ref.po
Obligatoriska argument f�r l�nga flaggor �r obligatoriska �ven f�r korta.
  -D, --directory=KATALOG     s�k infiler �ven i KATALOG
  -h, --help                  visa denna hj�lptext och avsluta
  -V, --version               visa versionsinformation och avsluta

J�mf�r tv� .po-filer av Uniforum-typ f�r att kontrollera att de inneh�ller
samma upps�ttning id-str�ngar.  Filen def.po �r en existerande PO-fil med de
gamla �vers�ttningarna.  Filen ref.po �r den senast skapade PO-filen
(i allm�nhet av xgettext).  Detta �r anv�ndbart f�r att kontrollera att du
har �versatt alla str�ngar i programmet.  Om en exakt likhet inte kan
hittas s� anv�nds luddig j�mf�relse f�r att ge b�ttre felmeddelanden.
 Skriven av %s.
 direktivet "domain %s" ignoreras "msgid"- och "msgstr"-raderna b�rjar inte b�da med "\n" "msgid"- och "msgstr"-raderna slutar inte b�da med "\n" kan inte skapa utfilen "%s" dom�nnamnet "%s" �r inte l�mpligt som filnamn dom�nnamnet "%s" �r inte l�mpligt som filnamn: anv�nder ett prefix meddelandedefinitionen �r duplicerad tom "msgstr"-rad ignorerad filslut inne i en str�ng radslut inne i en str�ng fel uppstod n�r "%s" �ppnades f�r l�sning fel uppstod n�r "%s" �ppnades f�r skrivning fel uppstod d� "%s" l�stes fel vid skrivning till filen "%s" exakt 2 infiler kr�vs huvudrad "%s" har kvar initialt standardv�rde filen "%s" �r inte p� GNUs .mo-format filen "%s" avkortad luddig "msgstr"-rad ignorerad huvudrad "%s" b�r ligga i b�rjan p� raden f�lt "%s" saknas i huvudet internationaliserade meddelanden b�r inte ha kontrollsekvensen "\%c" nyckelordet "%s" �r ok�nt spr�ket "%s" ok�nt "msgstr"-delen saknas argument saknas inga infiler givna inga infiler givna antalet formateringsdirektiv i "msgid" och "msgstr" �r olika s�kning "%s", position %ld misslyckades vissa huvudrader har kvar initiala standardv�rden standard in standard ut denna fil kan inte inneh�lla dom�ndirektiv detta meddelande har ingen definition i dom�nen "%s" detta meddelande anv�nds men �r inte definierat i %s detta meddelande anv�nds men �r inte definierat... f�r m�nga argument f�r m�nga fel, avbryter k�rningen varning: filtyp "%s" med suffix "%s" �r ok�nd; f�rs�ker med C varning: detta meddelande anv�nds inte n�r hashtabellen skapades n�r resultatet f�rbereddes 