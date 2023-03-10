??    ,      |  ;   ?      ?  ?  ?  0  t  &  ?  )   ?  ?   ?  v  ?     @     R     l  ,   ?     ?  %   ?  ,   ?  -   $      R  &   s     ?     ?     ?     ?        ?        X     i  ?   }  ?     &   ?     ?     ?     ?     ?  )   ?  (   %     N     m     ?     ?     ?     ?     ?     ?          )  @  8    y    ?  8  ?  C   ?  ?   0  ?  ?     ?     ?        )   )      S   !   o   )   ?   *   ?      ?   "   !     (!     H!     h!     {!     ?!  C   ?!     ?!     "  ?   "  ?   ?"  ,   v#     ?#     ?#     ?#     ?#  .   $  -   <$     j$     ?$      ?$     ?$     ?$     ?$     %     +%     G%     _%     	                                   &            '               )       !       *           
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
PO-Revision-Date: 2000-02-15 20:11+01:00
Last-Translator: Primo? Peterlin <primoz.peterlin@biofiz.mf.uni-lj.si>
Language-Team: Slovenian <sl@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8-bit
 
Nadzor nad kontekstom:
  -B, --before-context=?T   ?T vrstic konteksta pred vrstico z VZORCEM
  -A, --after-context=?T    ?T vrstic konteksta za vrstico z VZORCEM
  -C, --context[=?T]        ?T (privzeto 2) vrstic konteksta, razen ?e ni
                            druga?e dolo?eno z -A ali -B
  -?T                       isto kot --context=?T
  -U, --binary              ne pore?emo znakov CR na koncu vrstic (MS-DOS)
  -u, --unix-byte-offsets   v odmikih ne ?tejemo znakov CR (MS-DOS)

Ukaz ,egrep` pomeni isto kot ,grep -E`, ,fgrep` pa isto kot ,grep -F`.
?e DATOTEKA ni podana ali pa je -, beremo s standardnega vhoda. ?e sta podani
manj kot dve DATOTEKI, privzamemo izbiro -h. Izhodna koda je ni?, ?e smo VZOREC
na?li, ena ?e ga nismo. Izhodna koda 2 pomeni skladenjsko ali sistemsko napako.
 
Razno:
  -s, --no-messages         brez sporo?il o napakah
  -v, --invert-match        komplement: vrstice, kjer ni VZORCA
  -V, --version             verzija programa
      --help                ta pomo?
      --mmap                ?e je mo?no, uporabi pomnilni?ko preslikan vhod
 
Nadzor izhoda:
  -b, --byte-offset         z izpisom odmika (v zlogih)
  -n, --line-number         z izpisom zaporedne ?tevilke vrstice
  -H, --with-filename       z izpisom imena datoteke
  -h, --no-filename         brez izpisa imena datoteke
  -q, --quiet, --silent     brez vsega obi?ajnega izpisa
      --binary-type=TIP     privzemi izbrani TIP binarne datoteke
                            TIP je lahko ,binary`, ,text` ali ,without-match`
  -a, --text                isto kot --binary-type=text
  -I                        isto kot --binary-type=without-match
  -d, --directories=AKCIJA  kako obravnavamo imenike
                            AKCIJA je lahko ,read`, ,recurse` ali ,skip`
  -r, --recursive           isto kot --directories=recurse
  -L, --files-without-match le imena tistih DATOTEK, kjer VZORCA nismo na?li
  -l, --files-with-matches  le imena tistih DATOTEK, kjer smo VZOREC na?li
  -c, --count               le ?tevilo vrstic, v katerih se v DATOTEKI
                            pojavi VZOREC
  -Z, --null                izpi?i znak NUL za imenom DATOTEKE
 
Morebitne napake v programu sporo?ite na <bug-gnu-utils@gnu.org>.
   -E, --extended-regexp     VZOREC je raz?irjeni regularni izraz
  -F, --fixed-strings       VZOREC je mno?ica nizov, vsak v svoji vrstici
  -G, --basic-regexp        VZOREC je osnovni regularni izraz
   -e, --regexp=VZOREC       uporabimo VZOREC kot regularni izraz
  -f, --file=DATOTEKA       VZOREC preberemo s podane DATOTEKE
  -i, --ignore-case         ne razlikujemo med velikimi in malimi ?rkami
  -w, --word-regexp         iskanje uspe?no le, ?e je VZOREC cela beseda
  -x, --line-regexp         iskanje uspe?no le, ?e je VZOREC cela vrstica
  -z, --null-data           vrstica podatkov je kon?ana z znakom NUL, ne z
                            znakom za skok v novo vrstico
 %s (GNU grep) %s
 %s: nedovoljena izbira -- %c
 %s: neveljavna izbira -- %c
 %s: izbira ,%c%s` ne dovoljuje argumenta
 %s: izbira ,%s` je dvoumna
 %s: izbira ,%s` zahteva argument
 %s: izbira ,--%s` ne dovoljuje argumenta
 %s: izbira ,-W %s` ne dovoljuje argumenta
 %s: izbira ,-W %s` je dvoumna
 %s: izbira zahteva argument -- %c
 %s: neprepoznana izbira ,%c%s`
 %s: neprepoznana izbira ,--%s`
 %s: pozor: %s: %s
 (standardni vhod) Binarna datoteka %s ustreza
 Copyright (C) 1988, 1992-1999, 2000 Free Software Foundation, Inc.
 Pomnilnik porabljen Skladnja ni podana V DATOTEKI ali na standardnem vhodu i??emo VZOREC.
Primer: %s -i 'hello.*world' menu.h main.c

Izbira in tolma?enje regularnih izrazov:
 To je prost program; pogoji, pod katerimi ga lahko uporabljate, razmno?ujete
in raz?irjate so navedeni v izvorni kodi. Za program ni NOBENEGA jamstva,
niti jamstev USTREZNOSTI ZA PRODAJO ali PRIMERNOSTI ZA UPORABO.
 Poskusite ,%s --help` za dodatna pojasnila.
 Oklepaj ( brez zaklepaja Zaklepaj ) brez oklepaja Oklepaj [ brez zaklepaja Nedokon?ano ube?no zaporedje \ Uporaba: %s [IZBIRA]... VZOREC [DATOTEKA] ...
 Uporaba: %s [IZBIRA]... VZOREC [DATOTEKA]...
 podana navodila si nasprotujejo velikost konteksta ni veljavna slabo dolo?eno ?tevilo ponovitev pomnilnik porabljen zmanjkalo pomnilnika rekurzivna zanka imenikov nedokon?ano ?tevilo ponovitev neznan tip binarne datoteke neznana metoda imenikov pisanje rezultatov 