??    ,      |  ;   ?      ?  ?  ?  0  t  &  ?  )   ?  ?   ?  v  ?     @     R     l  ,   ?     ?  %   ?  ,   ?  -   $      R  &   s     ?     ?     ?     ?        ?        X     i  ?   }  ?     &   ?     ?     ?     ?     ?  )   ?  (   %     N     m     ?     ?     ?     ?     ?     ?          )  ;  8  ?  t  N  \  ?  ?  2   V    ?  ?  ?     @      R      o   0   ?   $   ?   .   ?   .   !  -   @!  #   n!  +   ?!  "   ?!  !   ?!     "     "  $   *"  ?   O"     ?"     ?"  ?   ?"  ?   ^#  +   $     F$     c$     ?$     ?$  *   ?$  )   ?$  /   %     ?%     W%     w%     ?%     ?%      ?%  %   ?%  %   &     5&     	                                   &            '               )       !       *           
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
PO-Revision-Date: 2000-02-15 20:48+01:00
Last-Translator: Martin von L?wis <martin@mira.isdn.cs.tu-berlin.de>
Language-Team: German <de@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Kontextkontrolle:
  -B, --before-context=ZAHL ZAHL Zeilen von vorausgehendem Kontext anzeigen.
  -A, --after-context=ZAHL  ZAHL Zeilen von folgendem Kontext anzeigen.
  -C, --context[=ZAHL]      ZAHL (Standard ist 2) Zeilen Kontext anzeigen,
                            wenn nicht mit -A oder -B anderes festgelegt ist.
  -ZAHL                     Wie --context=ZAHL.
  -U, --binary              CR-Zeichen am Zeilenende belassen (MSDOS).
  -u, --unix-byte-offsets   Offsets ausgeben, als fehlten CR-Zeichen (MSDOS).

?egrep? bedeutet ?grep -E?. ?fgrep? bedeutet ?grep -F?.
Wenn DATEI fehlt oder ?-? ist, wird die Standardeingabe gelesen.
Weniger als zwei DATEIen implizieren -h. Status ist 0 bei 
?bereinstimmungen, 1 ohne, 2 bei Problemen.
 
Verschiedenes:
  -s, --no-messages         Fehlermeldungen unterdr?cken.
  -v, --revert-match        Nicht-passende Zeilen anzeigen.
  -V, --version             Versionnummer ausgeben und beenden.
      --help                Diese Hilfe ausgeben und beenden.
      --mmap                Wenn m?glich, Eingabe in den Speicher mappen.
 
Ausgabekontrolle:
  -b, --byte-offset         Byte-Offset zusammen mit Ausgezeilen anzeigen.
  -n, --line-number         Zeilennummber mit Ausgabezeilen anzeigen.
  -H, --with-filename       Dateiname bei jeder ?bereinstimmung anzeigen.
  -h, --no-filename         Anzeige des Dateinamens unterdr?cken.
  -q, --quiet, --silent     Alle normalen Ausgaben unterdr?cken.
      --binary-files=TYP    Bin?rdateien als TYP annehmen. TYP kann 
                            ?binary?, ?text? oder ?without-match? sein.
  -a, --text                Entspricht --binary-files=text.
  -I                        Entspricht --binary-files=without-match.
  -d, --directories=AKTION  Verarbeitung von Verzeichnissen festlegen.
                            AKTION ist 'read', 'recurse', oder 'skip'.
  -r, --recursive           ?quivalent zu --directories=recurse.
  -L, --files-without-match Nur Namen von Dateien ausgeben, die keine
                            ?bereinstimmung enthalten.
  -l, --files-with-matches  Nur Dateinamen mit ?bereinstimmungen ausgeben.
  -c, --count               Nur Zahl der passenden Zeilen pro Datei ausgeben.
  -Z, --null                Null-Byte nach jedem Dateinamen ausgeben.
 
Fehlerberichte bitte an <bug-gnu-utils@gnu.org>.
   -E, --extended-regexp     MUSTER ist ein erweiterter regul?rer Ausdruck.
  -F, --fixed-strings       MUSTER ist eine Menge Newline-getrennter 
                            Zeichenketten.
  -G, --basic-regexp        MUSTER ist ein regul?rer Standardausdruck.
   -e, --regexp=MUSTER       MUSTER als regul?ren Ausdruck verwenden.
  -f, --file=FILE           MUSTER aus DATEI lesen.
  -i, --ignore-case         Unterschied zwischen Gro?- und Kleinschreibung
                            ignorieren.
  -w, --word-regexp         MUSTER pa?t nur auf ganze W?rter.
  -x, --line-regexp         MUSTER pa?t nur auf ganze Zeilen.
  -z, --null-data           Eine Zeile endet mit Nullbyte, nicht Newline.
 %s (GNU grep) %s
 %s: Ung?ltige Option -- %c.
 %s: Ung?ltige Option -- %c.
 %s: Die Option ?%c%s? erlaubt keinen Parameter.
 %s: Die Option ?%s? ist mehrdeutig.
 %s: Die Option ?%s? verlangt einen Parameter.
 %s: Die Option ?%s? erlaubt keinen Parameter.
 %s: Option ?-W %s? erlaubt keinen Parameter.
 %s: Option ?-W %s? ist zweideutig.
 %s: Option verlangt einen Parameter -- %c.
 %s: Nicht erkannte Option ?%c%s?.
 %s: Nicht erkannte Option ?--%s?
 %s: Warnung: %s: %s
 (Standardeingabe) ?bereinstimmungen in Bin?rdatei %s.
 Copyright 1988, 1992-1999, 2000 Free Software Foundation, Inc.
 Virtueller Speicher ersch?pft. Keine Syntax angegeben. Suche nach MUSTER in jeder DATEI oder der Standardeingabe.
Beispiel: %s -i 'Hallo Welt' menu.h main.c

Auswahl und Interpretation regul?rer Ausdr?cke:
 Dies ist freie Software; in den Quellen befinden sich die Lizenzbedingungen.
Es gibt KEINERLEI Garantie; nicht einmal f?r die TAUGLICHKEIT oder
VERWENDBARKEIT F?R EINEN BESTIMMTEN ZWECK.
 ?%s --help? gibt Ihnen mehr Informationen.
 ?ffnende ( ohne schlie?ende. Schlie?ende ) ohne ?ffnende. ?ffnende [ ohne schlie?ende. Unbeendete \-Escape-Sequenz. Aufruf: %s [OPTION]... MUSTER [DATEI] ...
 Aufruf: %s [OPTION]... MUSTER [DATEI]...
 Festgelegte Vergleicher widersprechen einander. Ung?ltige Kontextl?nge. Unf?rmiger Wiederholungsz?hler. Virtueller Speicher ersch?pft. Speicher ist alle. Rekursive Verzeichnisschleife. Unbeendeter Wiederholungsz?hler. Unbekannter Typ f?r ?--binary-files?. Unbekannte Methode f?r Verzeichnisse. schreibe Ausgabe 