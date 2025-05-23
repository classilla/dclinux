��    R      �  m   <      �  �   �  �  �  t  �	  �  *  &  �  �  
           	     *     D  ,   ^     �  %   �  ,   �  -   �      *  &   K     r     �  3   �  /   �  +     ?   B  !   �  /   �  �   �  (   �  &   �     �  4    �  6  �  �   ,  Y#  �  �%  2  [(     �,     �,  8   �,  6   �,  $   ,-     Q-  *   p-  ;   �-     �-     �-     .     +.  $   E.  $   j.     �.     �.     �.  *   �.  "   /     3/     G/  3   d/  "   �/  5   �/  G   �/     90     N0     d0     }0     �0     �0  F   �0     �0  7   1     S1     b1  +   r1  1   �1  *   �1  '   �1     #2     62  8   P2  !   �2     �2     �2  h  �2    E4    K5  �  c7    @:  �  I>  q  �A     lE  "   yE     �E     �E  0   �E     F  )   "F  0   LF  1   }F  !   �F  *   �F      �F      G  >   >G  9   }G  0   �G  b   �G  #   KH  "   oH  �   �H  ,   lI  )   �I     �I  �  �I  �  �P  W  �T  �  �W  �  mZ  �  ^     �c  *   �c  C   �c  A   1d  .   sd  +   �d  =   �d  W   e      de  #   �e  #   �e  !   �e  +   �e  -   f     If  )   \f  .   �f  (   �f  0   �f     g  $   -g  4   Rg  &   �g  >   �g  O   �g     =h     \h     vh     �h  &   �h  '   �h  J   �h  4   :i  6   oi     �i     �i  7   �i  3   �i  /   3j  ,   cj     �j  )   �j  P   �j  $   !k  %   Fk     lk           F   9   I       @   (   /          B   :   .       K   M      R   J           >      1   3                                     !                         +      5   4   	   ,              C   #   %   N   -   D   )   ?           0   L      "          '          Q              H   *      =         P   2       <      A         ;   6              E   7             &   8           $   G   O       
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
 `domain %s' directive ignored `msgid' and `msgstr' entries do not both begin with '\n' `msgid' and `msgstr' entries do not both end with '\n' at least two files must be specified cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix duplicate message definition empty `msgstr' entry ignored end-of-file within string end-of-line within string error while opening "%s" for reading error while opening "%s" for writing error while reading "%s" error while writing "%s" file exactly 2 input files required field `%s' still has initial default value file "%s" is not in GNU .mo format file "%s" truncated fuzzy `msgstr' entry ignored header field `%s' should start at beginning of line headerfield `%s' missing in header impossible selection criteria specified (%d < n < %d) internationalized messages should not contain the `\%c' escape sequence keyword "%s" unknown language `%s' unknown missing `msgstr' section missing arguments no input file given no input files given number of format specifications in `msgid' and `msgstr' does not match seek "%s" offset %ld failed some header fields still have the initial default value standard input standard output this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: file `%s' extension `%s' is unknown; will try C warning: this message is not used while creating hash table while preparing output Project-Id-Version: GNU gettext 0.10.34
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 1998-04-29 12:04-0500
Last-Translator: Max de Mendiz�bal <max@tirania.nuclecu.unam.mx>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=2; plural=(n != 1);
 
Convierte ficheros binarios .mo en ficheros .po estilo Uniforum.
Pueden procesarse ficheros .mo little-endian y big-endian.
Si no se da ning�n fichero de entrada o es -, se lee de la entrada est�ndar.
Por defecto el resultado se escribe en la salida est�ndar.
 
Si no se escribe el par�metro DOMINIOTEXTO, el dominio se determina por
la variable de entorno TEXTDOMAIN. Si el cat�logo de mensajes no est� en
el directorio por defecto, con la variable de entorno TEXTDOMAINDIR se
puede especificar otro lugar.
Cuando se utiliza con la opci�n -s, el programa se comporta como la
instrucci�n `echo', pero no se reduce a hacer simplemente una copia en
la salida est�ndar (stdout) sino que adem�s traduce los mensajes que
encuentre dentro del cat�logo seleccionado.
Directorio de b�squeda est�ndar: %s
 
Mezcla dos ficheros .po de estilo Uniforum en uno solo. El fichero def.po
es un fichero existente de tipo .po con las traducciones anteriores que se
conservar�n siempre y cuando coincidan; los comentarios se conservar�n,
pero los comentarios extra�dos y las posiciones del fichero no lo ser�n.
El fichero ref.po es el �ltimo fichero .po creado (generalmente con xgettext),
cualquier traducci�n o comentario se eliminar�, sin embargo los comentarios
puntuales y las posiciones dentro del fichero se conservar�n. En donde no
haya una coincidencia exacta, se utilizar� el m�todo de comparaci�n difusa
para obtener mejores resultados. Los resultados se escribir�n en la salida
est�ndar a menos que se especifique un fichero de salida.
   -V, --version                informa de la versi�n y finaliza
  -w, --width=N�MERO           ajusta la anchura de la p�gina de salida
  -<, --less-than=N�MERO       muestra los mensajes con menos definiciones
                               que N�MERO, por defecto es infinito
  ->, --more-than=N�MERO       muestra los mensajes con m�s definiciones
                               que N�MERO, por defecto es 1

Busca los mensajes que son comunes a dos o m�s de los ficheros PO especificados.
Si se utiliza la opci�n --more-than, se pueden solicitar mayor n�mero de
elementos en com�n antes de que los mensajes sean mostrados.
De forma similar, la opci�n --less-than puede ser utilizada
para especificar el m�nimo de mensajes en com�n que ser�n mostrados (i.e.
--less-than=2 s�lo mostr� los mensajes �nicos). Las traducciones, 
los comentarios y los comentarios extra�dos ser�n conservados, pero s�lo
los que provengan del primer fichero PO que los defina. Las posiciones dentro
del fichero de todos los ficheros PO se conservar�n.
   -i, --indent                 escribe el fichero .po utilizando el
                               estilo de sangr�as
      --no-location            no escribe l�neas `#: fichero:l�nea'
  -n, --add-location           genera l�neas `#: fichero:l�nea' (por defecto)
      --omit-header            no escribe la cabecera con la entrada `msgid ""'
  -o, --output=FICHERO         escribe la salida al FICHERO especificado
  -p, --output-dir=DIR         los ficheros de salida se pondr�n en el
                               directorio DIR
  -s, --sort-output            genera la salida ordenada y elimina los
                               duplicados
      --strict                 escribe un fichero .po tipo Uniforum estricto
  -T, --trigraphs              entiende los trigrafos ANSI C en la entrada
  -u, --unique                 abreviatura de --less-than=2, solicita
                               que s�lo los mensajes �nicos sean mostrados
   -n, --add-location           genera l�neas `#: fichero:l�nea' (por defecto)
      --omit-header            no escribe la cabecera con la entrada `msgid ""'
      --output=FICHERO         escribe la salida al FICHERO especificado
  -p, --output-dir=DIR         los ficheros de salida se pondr�n en el
                               directorio DIR
  -s, --sort-output            genera la salida ordenada y elimina los
                               duplicados
      --strict                 escribe un fichero .po tipo Uniforum estricto
  -T, --trigraphs              entiende los trigrafos ANSI C en la entrada
  -V, --version                informa de la versi�n y finaliza
  -w, --width=N�MERO           ajusta la anchura de la p�gina de salida
  -x, --exclude-file=FICHERO   las entradas de FICHERO no se extraen

Si el FICHERO_DE_ENTRADA es -, se lee de la entrada est�ndar.
  terminado.
 %s y %s son mutuamente excluyentes %s: opci�n inv�lida -- %c
 %s: opci�n inv�lida -- %c
 %s: la opci�n `%c%s' no admite ning�n argumento
 %s: la opci�n `%s' es ambigua
 %s: la opci�n `%s' requiere un argumento
 %s: la opci�n `--%s' no admite ning�n argumento
 %s: la opci�n `-W %s' no admite ning�n argumento
 %s: la opci�n `-W %s' es ambigua
 %s: la opci�n requiere un argumento -- %c
 %s: opci�n no reconocida `%c%s'
 %s: opci�n no reconocida `--%s'
 %s: atenci�n: el fichero fuente contiene una traducci�n difusa %s:%d: atenci�n: constante de tipo car�cter no finalizada %s:%d: atenci�n: literal de cadena no finalizada no se puede utilizar --join-existing cuando el resultado se escribe en la
salida est�ndar (stdout) ...pero esta definici�n es parecida ...aqu� est� la primera definici�n Copyright (C) %s Free Software Foundation, Inc.
Esto es software libre; vea el c�digo fuente para las condiciones de copia.
No hay NINGUNA garant�a; ni siquiera de COMERCIABILIDAD o IDONEIDAD PARA UN
FIN DETERMINADO.
 Comunicar `bugs' a <bug-gnu-utils@gnu.org>.
 Pruebe `%s --help' para m�s informaci�n.
 Error del sistema desconocido Modo de empleo: %s [OPCI�N] FICHERO ...
Extrae las cadenas traducibles a partir de los ficheros dados.

Los argumentos obligatorios para las opciones largas tambi�n son
obligatorios para las opciones cortas.
  -a, --extract-all              extrae todas las cadenas
  -c, --add-comments[=ETIQUETA]  pone un bloque de comentarios con
                                 ETIQUETA (o aquellos que preceden
                                 l�neas de palabras clave) en el fichero
                                 de salida
  -C, --c++                      abreviatura de --language=C++
      --debug                    el resultado de la etapa de reconocimiento
                                 de las cadenas de formato se escribe en forma
                                 detallada
  -d, --default-domain=NOMBRE    utiliza NOMBRE.po para la salida (en vez
                                 de messages.po)
  -D, --directory=DIRECTORIO     a�ade el DIRECTORIO a la lista de
                                 b�squeda de ficheros de entrada
  -e, --no-escape                no utiliza secuencias de escape tipo C en
                                 la salida (opci�n por defecto)
  -E, --escape                   utiliza secuencias de escape tipo C en la
                                 salida, sin caracteres extendidos
  -f, --files-from=FICHERO       obtiene la lista de los ficheros de entrada
                                 de FICHERO
      --force-po                 escribe un fichero .po incluso si est� vac�o
      --foreign-user             no muestra el copyright de FSF para usuarios
                                 no ingleses
  -F, --sort-by-file             ordena la salida por ubicaci�n del fichero
 Modo de empleo: %s [OPCI�N] FICHERO ...
Los argumentos obligatorios para las opciones largas tambi�n son
obligatorios para las opciones cortas.
  -d, --default-domain=NOMBRE    utiliza NOMBRE.po para la salida (en vez
                                 de messages.po)
  -D, --directory=DIRECTORIO     a�ade el DIRECTORIO a la lista de
                                 b�squeda de ficheros de entrada
  -e, --no-escape                no utiliza secuencias de escape tipo C en
                                 la salida (opci�n por defecto)
  -E, --escape                   utiliza secuencias de escape tipo C en la
                                 salida, sin caracteres extendidos
  -f, --files-from=FICHERO       obtiene la lista de los ficheros de entrada
                                 de FICHERO
      --force-po                 escribe un fichero .po incluso si est� vac�o
  -F, --sort-by-file             ordena la salida por ubicaci�n del fichero
  -h, --help                     muestra esta ayuda y finaliza
 Modo de empleo: %s [OPCI�N] [FICHERO]...
Los argumentos obligatorios para las opciones largas tambi�n son
obligatorios para las opciones cortas.
  -e, --no-escape           no utiliza las secuencias de escape tipo C
                            en la salida (por defecto)
  -E, --escape              utiliza las secuencias de escape tipo C en
                            la salida, sin caracteres extendidos
      --force-po            escribe un fichero .po incluso si est� vac�o
  -h, --help                muestra esta ayuda y finaliza
  -o, --output-file=FICHERO escribe la salida en FICHERO en vez de
                            utilizar la salida est�ndar
      --strict              escribe en estilo Uniforum estricto
  -V, --version             informa de la versi�n y finaliza
  -w, --width=N�MERO        ajusta la anchura de la p�gina de salida
 Modo de empleo: %s [OPCI�N] [[[DOMINIOTEXTO] MSGID] | [-s [MSGID]...]]
  -d, --domain=DOMINIOTEXTO obtiene los mensajes traducidos de DOMINIOTEXTO
  -e                        habilita la expansi�n de algunas secuencias
                            de escape
  -E                        (existe por compatibilidad, no tiene efecto)
  -h, --help                muestra este texto de ayuda y finaliza
  -n                        suprime el car�cter de nueva l�nea
  -V, --version             informa de la versi�n y finaliza
  [DOMINIOTEXTO] MSGID      obtiene el mensaje traducido correspondiente
                            al MSGID del DOMINIOTEXTO
 Modo de empleo: %s [OPCI�N] def.po ref.po
Los argumentos obligatorios para las opciones largas tambi�n son
obligatorios para las opciones cortas.
  -D, --directory=DIRECTORIO  a�ade el DIRECTORIO a la lista de
                              b�squeda de ficheros de entrada
  -h, --help                  muestra esta ayuda y finaliza
  -V, --version               informa de la versi�n y finaliza

Compara dos ficheros .po de estilo Uniforum para comprobar que ambos
contienen el mismo conjunto de cadenas de mensajes (msgid). El fichero
def.po es un fichero existente de tipo .po con las traducciones
antiguas. El fichero ref.po es el �ltimo fichero .po creado
(generalmente por xgettext). Esto es �til para verificar que se han
traducido todos y cada uno de los mensajes del programa. Cuando no
se encuentre un resultado exacto, se utilizar� coincidencia difusa, de
tal forma que la precisi�n del diagn�stico sea mejor.
 Modo de empleo: %s [OPCI�N] fichero.po ...
Genera un cat�logo de mensajes en formato binario a partir de la
descripci�n de la traducci�n textual.

Los argumentos obligatorios para las opciones largas tambi�n son
obligatorios para las opciones cortas.
  -a, --alignment=N�MERO     alinea las cadenas a un N�MERO de bytes
                             (valor predeterminado: %d)
  -c, --check                comprueba las cadenas de texto con respecto
                             al idioma
  -D, --directory=DIRECTORIO a�ade el DIRECTORIO a la lista de
                             b�squeda de ficheros de entrada
  -f, --use-fuzzy            utiliza l�neas difusas en la salida
  -h, --help                 muestra esta ayuda y finaliza
      --no-hash              el fichero binario no incluir� la tabla de `hash'
  -o, --output-file=FICHERO  indica que el nombre del fichero de salida
                             ser� FICHERO
      --statistics           muestra estad�sticas sobre las traducciones
      --strict               habilita el modo estricto de Uniforum
  -v, --verbose              muestra las anomal�as del fichero de entrada
  -V, --version              informa de la versi�n del programa y finaliza

Si se pone un argumento superior a uno en la opci�n -v, se incrementa el nivel de detalle

Si el fichero de entrada es -, se lee de la entrada est�ndar. Si el fichero
de salida es -, el resultado se escribe en la salida est�ndar.

 Escrito por %s.
 la instrucci�n `domain %s' no tiene efecto a alguna de las l�neas `msgid' y `msgstr' les falta el `\n' inicial a alguna de las l�neas `msgid' y `msgstr' les falta el `\n' final se deben especificar por lo menos dos ficheros no se puede crear el fichero de salida "%s" el nombre de dominio "%s" no es v�lido como nombre de fichero el nombre del dominio "%s" no es v�lido como nombre de fichero:
se utilizar� un prefijo definici�n del mensaje duplicada se descarta la l�nea vac�a `msgstr' fin de fichero dentro de una cadena fin de l�nea dentro de una cadena error al abrir el fichero "%s" para lectura error al abrir el fichero "%s" para escritura error al leer "%s" hubo un error al escribir el fichero "%s" se requieren exactamente 2 ficheros de entrada el campo `%s' a�n tiene el valor inicial el fichero "%s" no est� en el formato .mo de GNU el fichero "%s" est� truncado se descarta la l�nea difusa `msgstr' el campo `%s' debe comenzar al principio de la l�nea no existe el campo `%s' en la cabecera se especific� un criterio de selecci�n imposible (%d < n < %d) Los mensajes internacionalizados no deben contener la secuencia de escape `\%c' palabra clave "%s" desconocida lenguaje `%s' desconocido no hay secci�n `msgstr' faltan argumentos no se especific� el fichero de entrada no se especificaron ficheros de entrada el n�mero de especificaciones de formato en `msgid' y 'msgstr' no coincide fallo en la lectura "%s" en la posici�n (offset) %ld algunos campos de cabecera a�n tienen el valor inicial entrada est�ndar salida est�ndar este fichero no puede contener instrucciones de dominio este mensaje no tiene definici�n en el dominio "%s" este mensaje se usa pero no est� definido en %s este mensaje se usa pero no est� definido... demasiados argumentos demasiados errores, programa interrumpido atenci�n: el fichero `%s' con extensi�n `%s'
es desconocido; se intentar� tipo C atenci�n: este mensaje no se utiliza mientras se creaba la tabla de `hash' mientras se preparaba la salida 