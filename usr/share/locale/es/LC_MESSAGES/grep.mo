??    ,      |  ;   ?      ?  ?  ?  0  t  &  ?  )   ?  ?   ?  v  ?     @     R     l  ,   ?     ?  %   ?  ,   ?  -   $      R  &   s     ?     ?     ?     ?        ?        X     i  ?   }  ?     &   ?     ?     ?     ?     ?  )   ?  (   %     N     m     ?     ?     ?     ?     ?     ?          )  .  8  a  g  J  ?  ?    -   ?  
    *        D"     V"     o"  0   ?"     ?"  )   ?"  0   #  1   5#  !   g#  *   ?#      ?#      ?#     ?#     $  &   $  ?   F$     ?$  &   ?$  ?   ?$  ?   G%  )   ?%     &     +&     ;&  "   K&  4   n&  3   ?&  ,   ?&     '     "'     A'     Q'     a'  #   '     ?'  !   ?'     ?'     	                                   &            '               )       !       *           
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
PO-Revision-Date: 2000-02-17 22:19+0100
Last-Translator: Santiago Vila Doncel <sanvila@unex.es>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Control del contexto:
  -B, --before-context=N?M  muestra N?M l?neas de contexto anterior
  -A, --after-context=N?M   muestra N?M l?neas de contexto posterior
  -C, --context[=N?M]       muestra N?M l?neas (2 por omisi?n) de contexto
                            a menos que se utilice -A o -B
  -N?M                      lo mismo que --context=N?M
  -U, --binary              no elimina los caracteres de retorno de carro
                            finales de l?nea (MSDOS)
  -u, --unix-byte-offsets   cuenta los desplazamientos como si no hubiera
                            retornos de carro (MSDOS)

`egrep' significa `grep -E'.  `fgrep' significa `grep -F'.
Si no se especifica ning?n FICHERO, o cuando es -, lee la entrada est?ndar.
Si se dan menos de dos FICHEROs, se supone -h. La salida es 0 si hay
coincidencias, 1 si no las hay, y 2 en caso de problema
 
Variadas:
  -s, --no-messages         suprime los mensajes de error
  -v, --invert-match        selecciona las l?neas que no coinciden
  -V, --version             muestra la versi?n y finaliza
      --help                muestra esta ayuda y finaliza
      --mmap                utiliza entrada asignada en memoria si es posible
 
Control del resultado:
  -b, --byte-offset         muestra el desplazamiento en bytes junto
                            con las l?neas de salida
  -n, --line-number         muestra el n?mero de l?nea junto con
                            las l?neas de salida
  -H, --with-filename       muestra el nombre del fichero para cada
                            coincidencia
  -h, --no-filename         suprime los nombres de los ficheros en
                            el resultado
  -q, --quiet, --silent     suprime todo el resultado normal
      --binary-files=TIPO   supone que los ficheros binarios son TIPO
                            TIPO es `binary', `text', o `without-match'.
  -a, --text                equivalente a --binary-files=text
  -I                        equivalente a --binary-files=without-match
  -d, --directories=ACCI?N  especifica c?mo manejar los directorios
                            ACCI?N es 'read', 'recurse', o 'skip'.
  -r, --recursive           equivalente a --directories=recurse.
  -L, --files-without-match muestra solamente los nombres de FICHEROs
                            que no contienen ninguna coincidencia
  -l, --files-with-matches  muestra solamente los nombres de FICHEROs
                            que contienen alguna coincidencia
  -c, --count               muestra solamente el total de l?neas que coinciden
                            por cada FICHERO
  -Z, --null                imprime un byte 0 despu?s del nombre del FICHERO
 
Comunicar `bugs' a <bug-gnu-utils@gnu.org>.
   -E, --extended-regexp     PATR?N es una expresi?n regular extendida
  -F, --fixed-strings       PATR?N es un conjunto de cadenas separadas por
                            caracteres de nueva l?nea
  -G, --basic-regexp        PATR?N es una expresi?n regular b?sica
   -e, --regexp=PATR?N       utiliza PATR?N como expresi?n regular
  -f, --file=FICHERO        obtiene PATR?N de FICHERO
  -i, --ignore-case         considera iguales may?sculas y min?sculas
  -w, --word-regexp         obliga a que PATR?N coincida solamente
                            con palabras completas
  -x, --line-regexp         obliga a que PATR?N coincida solamente
                            con l?neas completas
  -z, --null-data           una l?nea de datos termina en un byte 0, no
                            en un car?cter de nueva l?nea
 %s (GNU grep) %s
 %s: opci?n ilegal -- %c
 %s: opci?n inv?lida -- %c
 %s: la opci?n `%c%s' no admite ning?n argumento
 %s: la opci?n `%s' es ambigua
 %s: la opci?n `%s' requiere un argumento
 %s: la opci?n `--%s' no admite ning?n argumento
 %s: la opci?n `-W %s' no admite ning?n argumento
 %s: la opci?n `-W %s' es ambigua
 %s: la opci?n requiere un argumento -- %c
 %s: opci?n no reconocida `%c%s'
 %s: opci?n no reconocida `--%s'
 %s: atenci?n: %s: %s
 (entrada est?ndar) Coincidencia en el fichero binario %s
 Copyright 1988, 1992-1999, 2000 Free Software Foundation, Inc.
 Memoria agotada No se ha especificado ninguna sintaxis Busca PATR?N en cada FICHERO o en la entrada est?ndar.
Ejemplo: %s -i 'hello world' menu.h main.c

Selecci?n e interpretaci?n de Expreg:
 Esto es software libre; vea el c?digo fuente para las condiciones de copia.
No hay NINGUNA garant?a; ni siquiera de COMERCIABILIDAD o IDONEIDAD PARA UN
FIN DETERMINADO.
 Pruebe `%s --help' para m?s informaci?n.
 ( desemparejado ) desemparejado [ desemparejado Secuencia de escape \ sin terminar Modo de empleo: %s [OPCI?N]... PATR?N [FICHERO] ...
 Modo de empleo: %s [OPCI?N]... PATR?N [FICHERO]...
 se han especificado expresiones conflictivas longitud de contexto inv?lida contador de repetici?n err?neo memoria agotada memoria agotada bucle de directorio recursivo contador de repetici?n sin terminar tipo binary-files desconocido m?todo de directorios desconocido escribiendo el resultado 