??    ,      |  ;   ?      ?  ?  ?  0  t  &  ?  )   ?  ?   ?  v  ?     @     R     l  ,   ?     ?  %   ?  ,   ?  -   $      R  &   s     ?     ?     ?     ?        ?        X     i  ?   }  ?     &   ?     ?     ?     ?     ?  )   ?  (   %     N     m     ?     ?     ?     ?     ?     ?          )  *  8  +  c  ,  ?  ?  ?  ;   ?  ?   ?  t  ?     4     F     _  "   v     ?     ?  "   ?  #   ?           4      T      n      ?      ?      ?   A   ?      !     !  ?   +!  ?   ?!  /   `"     ?"     ?"     ?"     ?"  '   ?"  '    #     (#  !   D#     f#     z#     ?#      ?#     ?#     ?#     ?#     $     	                                   &            '               )       !       *           
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
 conflicting matchers specified invalid context length argument malformed repeat count memory exhausted out of memory recursive directory loop unfinished repeat count unknown binary-files type unknown directories method writing output Project-Id-Version: grep 2.4f
POT-Creation-Date: 2000-03-01 22:44-0500
PO-Revision-Date: 2000-02-16 11:50+02:00
Last-Translator: Toomas Soome <tsoome@ut.ee>
Language-Team: Estonian <linux-ee@eenet.ee>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8-bit
 
Konteksti kontroll:
  -B, --before-context=NUM  tr?ki NUM rida eelnevat konteksti
  -A, --after-context=NUM   tr?ki NUM rida j?rgnevat konteksti
  -C, --context[=NUM]       tr?ki NUM (vaikimisi 2) rida v?ljund konteksti
                            kui ei ole kasutatud v?tmeid -A v?i -B
  -NUM                      sama kui --context=NUM
  -U, --binary              ?ra eemalda rea l?pust CR s?mboleid (MSDOS)
  -u, --unix-byte-offsets   teata aadressid CR s?mboleid arvestamata (MSDOS)

`egrep' t?hendab `grep -E'.  `fgrep' t?hendab `grep -F'.
Kui FAIL pole antud v?i kui FAIL v??rtus on -, loeb standardsisendit. Kui on
antud v?hem, kui kaks faili, eeldatakse v?tit -h. Kui muster leitakse,
l?petab programm t?? staatusega 0, kui ei leita, siis staatusega 1 ja
kui oli mingi muu probleem, siis staatusega 2.
 
Muud:
  -s, --no-messages         blokeeri veateated
  -v, --invert-match        vali mitte-sobivad read
  -V, --version             esita versiooniinfo ja l?peta t??
      --help                esita see abiinfo ja l?peta t??
      --mmap                kasuta kui v?imalik sisendi m?llu laadimist
 
V?ljundi kontroll:
  -b, --byte-offset         tr?ki baidi aadress v?ljundreale
  -n, --line-number         tr?ki rea number v?ljundreale
  -H, --with-filename       tr?ki iga leiu failinimi
  -h, --no-filename         keela v?ljundis prefiks failinimi
  -q, --quiet, --silent     keela kogu normaalne v?ljund
      --binary-files=T??P   eeldab kahendfailide T??Pi
                            T??P on 'binary', 'text' v?i 'without-match'.
  -a, --text                sama kui --binary-files=text
  -I                        sama kui --binary-files=without-match
  -d, --directories=TEGEVUS kuidas k?sitleda katalooge
                            TEGEVUS on 'read', 'recurse' v?i 'skip'.
  -r, --recursive           sama kui --directories=recurse.
  -L, --files-without-match tr?ki ainult failinimed, kus mustrit ei leitud
  -l, --files-with-matches  tr?ki ainult failinimed, kus muster leiti
  -c, --count               tr?ki ainult leitud ridade arv faili kaupa
  -Z, --null                tr?ki peale filinime 0 bait
 
Teatage palun vigadest aadressil <bug-gnu-utils@gnu.org>.
   -E, --extended-regexp     MUSTER on laiendatud regulaaravaldis
  -F, --fixed-strings       MUSTER on hulk reavahetustega eraldatud s?nesid
  -G, --basic-regexp        MUSTER on lihtne regulaaravaldis
   -e, --regexp=MUSTER       kasuta regulaaravaldisena
  -f, --file=FAIL           loe MUSTER failist FAIL
  -i, --ignore-case         ignoreeri suur- ja v?iket?htede erinevusi
  -w, --word-regexp         kasuta MUSTRIT s?nade leidmiseks
  -x, --line-regexp         kasuta MUSTRIT ridade leidmiseks
  -z, --null-data           andmerida l?ppeb baidil 0, mitte reavahetusel
 %s (GNU grep) %s
 %s: lubamatu v?ti -- %c
 %s: vigane v?ti -- %c
 %s: v?ti `%c%s' ei luba argumenti
 %s: v?ti `%s' on segane
 %s: v?ti `%s' n?uab argumenti
 %s: v?ti `--%s' ei luba argumenti
 %s: v?ti `-W %s' ei luba argumenti
 %s: v?ti `-W %s' on segane
 %s: v?ti n?uab argumenti -- %c
 %s: tundmatu v?ti `%c%s'
 %s: tundmatu v?ti `--%s'
 %s: hoiatus: %s: %s
 (standardsisend) Kahendfail %s sobib
 Autori?igus 1988, 1992-1999, 2000 Free Software Foundation, Inc.
 M?lu on otsas S?ntaksit pole m??ratud Otsi MUSTRIT igast FAIList v?i standardsisendist.
N?iteks: %s -i 'tere k?ik' menu.h main.c

Regulaaravaldise valik ja interpreteerimine:
 See on vaba tarkvara; kopeerimistingimused leiate l?htetekstidest. Garantii
PUUDUB; ka m??giks v?i mingil eesm?rgil kasutamiseks, vastavalt seadustega
lubatud piiridele.
 Lisainfo saamiseks proovige v?tit `%s --help'.
 Balanseerimata ( Balanseerimata ) Balanseerimata [ L?petamata \ paojada Kasuta: %s [V?TI]... MUSTER [FAIL] ...
 Kasuta: %s [V?TI]... MUSTER [FAIL] ...
 m??rati konfliktsed otsijad vigane konteksti pikkuse argument vigane korduste arv m?lu on otsas m?lu on otsas rekursiivne kataloogipuu ts?kkel l?petamata korduste arv tundmatu kahendfailide t??p tundmatu kataloogide meetod kirjutan v?ljundit 