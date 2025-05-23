��    l      |  �   �      0	  �   1	    
  �  0  t    �  �  �  >  &    �  B     9  ,   A      n     �     �  ,   �     �  %     ,   4  -   a      �  &   �     �     �  e     3   }  /   �  +   �  T     .   b  4   �  ?   �  !      /   (      X   �   `   (   (!  &   Q!     x!  4  �!  �  �%  �  \(  Z  �*  ,  @-  #  m/  �  �3  2  f6     �:     �:  >   �:  <   ;  8   C;  6   |;  <   �;  :   �;  $   +<     P<  *   o<  ;   �<     �<     �<     =     *=  $   D=  $   i=     �=     �=     �=  *   �=  .   >  "   >>     a>  #   u>  7   �>  *   �>     �>  3   ?  "   M?  5   p?     �?  G   �?     @     @     9@     N@     d@     u@     �@     �@     �@     �@     �@  F   A     JA     fA  7   �A     �A     �A  +   �A  1   B  *   7B  '   bB     �B     �B  8   �B  !   �B     C     ,C  1   CC  Z  uC    �D  �  �E  �  �G  �  �I  �  #L  |  �O    hS  R  ~V     �[  -   �[  !   \     *\     B\  '   \\     �\  #   �\  '   �\  (   �\     ]  $   0]  !   U]  !   w]  v   �]  5   ^  /   F^  *   v^  e   �^  C   _  9   K_  M   �_     �_  -   �_     !`  �   )`  +   �`  +   "a     Na  �  ka  �  &f  �  i  1  �k  1  �m  T  p  5  ls  �  �v     L{     ]{  '   |{  (   �{  '   �{  (   �{  +   |  ,   J|  0   w|  .   �|  6   �|  M   }     \}  !   |}     �}     �}     �}  *   �}     ~     ,~  %   J~  '   p~  0   �~  (   �~     �~  7     =   @  4   ~  .   �  *   �      �  9   .�     h�  J   ��     ˀ     �     �     %�     >�  #   S�     w�     ��     ��  &   ρ  "   ��  G   �      a�  !   ��  D   ��     �     ��  3   �  /   9�  0   i�  2   ��     ̓     �  <   �  &   ?�     f�     ��  7   ��     Z   F              &                      (   :           U   >       E   Y      /   1   #   <   2           @      3      a       $       i   l          ^             R              *      )   S                _   =   f           +   Q                 h      k       5   ]       `         G         A   -          9   6   0   g   ;   b   O   
   7   X      P       L   .   K   M            !   W   \   e       ?       	   N      %   j   I      4   J   c      H           d       '   C           D   B           ,           "   T   8       V               [        
Convert binary .mo files to Uniforum style .po files.
Both little-endian and big-endian .mo files are handled.
If no input file is given or it is -, standard input is read.
By default the output is written to standard output.
 
If the TEXTDOMAIN parameter is not given, the domain is determined from the
environment variable TEXTDOMAIN.  If the message catalog is not found in the
regular directory, another location can be specified with the environment
variable TEXTDOMAINDIR.
Standard search directory: %s
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
   -h, --help                     display this help and exit
  -i, --indent                   write the .po file using indented style
  -j, --join-existing            join messages with existing file
  -k, --keyword[=WORD]           additonal keyword to be looked for (without
                                 WORD means not to use default keywords)
  -L, --language=NAME            recognise the specified language (C, C++, PO),
                                 otherwise is guessed from file extension
  -m, --msgstr-prefix[=STRING]   use STRING or "" as prefix for msgstr entries
  -M, --msgstr-suffix[=STRING]   use STRING or "" as suffix for msgstr entries
      --no-location              do not write '#: filename:line' lines
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
 %d translated message %d translated messages %s and %s are mutually exclusive %s: illegal option -- %c
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
 %s: warning: PO file header missing, fuzzy, or invalid
%*s  warning: charset conversion will not work %s: warning: source file contains fuzzy translation %s:%d: warning: unterminated character constant %s:%d: warning: unterminated string literal %sRead %ld old + %ld reference, merged %ld, fuzzied %ld, missing %ld, obsolete %ld.
 , %d fuzzy translation , %d fuzzy translations , %d untranslated message , %d untranslated messages --join-existing cannot be used when output is written to stdout ...but this definition is similar ...this is the location of the first definition <stdin> Copyright (C) %s Free Software Foundation, Inc.
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
 Usage: %s [OPTION] [TEXTDOMAIN] MSGID MSGID-PLURAL COUNT
  -d, --domain=TEXTDOMAIN   retrieve translated message from TEXTDOMAIN
  -e                        enable expansion of some escape sequences
  -E                        (ignored for compatibility)
  -h, --help                display this help and exit
  -V, --version             display version information and exit
  [TEXTDOMAIN]              retrieve translated message from TEXTDOMAIN
  MSGID MSGID-PLURAL        translate MSGID (singular) / MSGID-PLURAL (plural)
  COUNT                     choose singular/plural form based on this value
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
  -C, --compendium=FILE       additional library of message translations,
                              may be specified more than once
  -D, --directory=DIRECTORY   add DIRECTORY to list for input files search
  -e, --no-escape             do not use C escapes in output (default)
  -E, --escape                use C escapes in output, no extended chars
      --force-po              write PO file even if empty
  -h, --help                  display this help and exit
  -i, --indent                indented output style
  -o, --output-file=FILE      result will be written to FILE
      --no-location           suppress '#: filename:line' lines
      --add-location          preserve '#: filename:line' lines (default)
      --strict                strict Uniforum output style
  -v, --verbose               increase verbosity level
  -V, --version               output version information and exit
  -w, --width=NUMBER          set output page width
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
 `domain %s' directive ignored `msgid' and `msgid_plural' entries do not both begin with '\n' `msgid' and `msgid_plural' entries do not both end with '\n' `msgid' and `msgstr' entries do not both begin with '\n' `msgid' and `msgstr' entries do not both end with '\n' `msgid' and `msgstr[%u]' entries do not both begin with '\n' `msgid' and `msgstr[%u]' entries do not both end with '\n' at least two files must be specified cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix duplicate message definition empty `msgstr' entry ignored end-of-file within string end-of-line within string error while opening "%s" for reading error while opening "%s" for writing error while reading "%s" error while writing "%s" file exactly 2 input files required field `%s' still has initial default value file "%s" contains a not NUL terminated string file "%s" is not in GNU .mo format file "%s" truncated first plural form has nonzero index format specifications for argument %lu are not the same found %d fatal error found %d fatal errors fuzzy `msgstr' entry ignored header field `%s' should start at beginning of line headerfield `%s' missing in header impossible selection criteria specified (%d < n < %d) inconsistent use of #~ internationalized messages should not contain the `\%c' escape sequence invalid control sequence invalid multibyte sequence keyword "%s" unknown language `%s' unknown memory exhausted missing `msgid_plural' section missing `msgstr' section missing `msgstr[]' section missing arguments no input file given no input files given number of format specifications in `msgid' and `msgstr' does not match plural form has wrong index seek "%s" offset %ld failed some header fields still have the initial default value standard input standard output this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: file `%s' extension `%s' is unknown; will try C warning: this message is not used while creating hash table while preparing output xgettext cannot work without keywords to look for Project-Id-Version: gettext 0.10.36
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 2001-04-03 08:25+02:00
Last-Translator: Fl�vio Bruno Leitner <flavio@conectiva.com.br>
Language-Team: Brazilian Portuguese <ldp-br@bazar.conectiva.com.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Converte arquivos bin�rios .mo em arquivos .po de estilo Uniforum.
S�o tratados tanto arquivos .mo little-endian e big-endian.
Se nenhum arquivo de entrada for fornecido ou for -, a entrada
padr�o � lida. Por padr�o, a sa�da � gravada para a sa�da padr�o.
 
Caso o par�metro DOM�NIO n�o seja informado este ser� determinado atrav�s da
vari�vel de ambiente TEXTDOMAIN. Se o cat�logo de mensagens n�o for encontrado
no diret�rio padr�o, outra localiza��o pode ser especificada na vari�vel
TEXTDOMAINDIR.
Quando utilizado com a op��o -s o programa comporta-se como um comando echo.
Mas n�o somente copiando seus par�metros para stdout, e sim traduzindo as
mensagens encontradas no cat�logo selecionado
Diret�rio de pesquisa padr�o: %s
 
Caso o par�metro DOM�NIO n�o seja informado este ser� determinado atrav�s da
vari�vel de ambiente TEXTDOMAIN. Se o cat�logo de mensagens n�o for encontrado
no diret�rio padr�o, outra localiza��o pode ser especificada na vari�vel
TEXTDOMAINDIR.
Quando utilizado com a op��o -s o programa comporta-se como um comando echo.
Mas n�o somente copiando seus par�metros para stdout, e sim traduzindo as
mensagens encontradas no cat�logo selecionado
Diret�rio de pesquisa padr�o: %s
 
Unifica dois arquivos .po de estilo Uniforum. O arquivo def.po � um
arquivo PO existente com as tradu��es antigas que ser�o utilizadas no novo
arquivo, enquanto elas coincidirem; coment�rios s�o preservados, por�m
coment�rios extra�dos e posi��es de arquivos ser�o descartados.
O arquivo ref.po � o �ltimo arquivo PO criado (geralmente pelo xgettext),
em que qualquer tradu��o ou coment�rio s�o descartados, exceto coment�rios
"ponto" e posi��es de arquivo. Onde as igualdades n�o forem exatas,
aproxima��es podem ser utilizadas para produzirem melhores resultados.
Os resultados ser�o gravados na sa�da padr�o, a menos que um arquivo de
sa�da seja especificado.
   -V, --version                  mostra informa��es de vers�o e sai
  -w, --width=NUMBER             configura a largura de p�gina de sa�da
  -<, --less-than=N�MERO         mostra mensagens menores que este n�mero
                                 o padr�o � infinito
  ->, --more-than=N�MERO         mostra mensagens maiores que este n�mero
                                 o padr�o � infinito

Descobre mensagens que s�o comuns a dois ou mais do arquivos PO
especificados. Usando a op��o --more-than, a maior parte das
ocorr�ncias podem ser solicitadas antes das mensagens serem impressas.
De modo contr�rio, a op��o --less-than pode ser usada para especificar
menos ocorr�ncias antes das mensagens serem exibidas (i.e., 
--less-than=2 ir� exibir apenas as mensagens exclusivas). Tradu��es,
coment�rios e coment�rios de extra��o ser�o preservados, mas apenas do
primeiro arquivo PO que os definirem. As posi��es de arquivo de todos
os arquivos PO ser�o preservados.
   -h, --help                     mostra a ajuda e sai
  -i, --indent                   grava o arquivo .po usando estilo indentado
  -j, --join-existing            adiciona mensagens a um arquivo j� existente
  -k, --keyword[=PALAVRA]        palavra chave adicional a ser pesquisada
                                 (sem PALAVRA significa n�o usar as palavras
                                 chaves padr�es)
  -L, --language=NOME            reconhece a linguagem especificada (C, C++, PO), caso 
                                 contr�rio � escolhida atrav�s da extens�o do arquivo
  -m, --msgstr-prefix[=STRING]   usa STRING ou "" como prefixo para as
                                 entradas msgstr
  -M, --msgstr-suffix[=STRING]   usa STRING ou "" como sufixo para as
                                 entradas msgstr
      --no-location              n�o gravar linhas '#: arquivo:linha'
   -i, --indent                   grava o arquivo .po usando o estilo indentado
      --no-location              n�o grava linhas '#: arquivo:linha'
  -n, --add-location             adiciona linhas '#: arquivo:linha'(padr�o)
      --omit-header              n�o grava cabe�alho com `msgid ""' 
  -o, --output=ARQ               grava sa�da para o arquivo especificado
  -p, --output-dir=DIR           arquivos de sa�da ser�o gravados em DIR
  -s, --sort-output              gera sa�da ordenada, removendo duplicidades
      --strict                   grava arquivo .po em estilo Uniforum
  -T, --trigraphs                entende tr�grafos ANSI C na entrada
  -u, --unique                   atalho para --less-than=2, somente mensagens
                                 �nicas ser�o mostradas
   -n, --add-location             adicionar linhas '#: arquivo:linha' (default)
      --omit-header              n�o gravar cabe�alho com `msgid ""' 
  -o, --output=ARQ               grava sa�da para o arquivo especificado
  -p, --output-dir=DIR           arquivos de sa�da ser�o gravados em DIR
  -s, --sort-output              gera sa�da ordenada, removendo duplicidades
      --strict                   grava arquivo .po em estilo Uniforum
  -T, --trigraphs                entende tr�grafos ANSI C na entrada
  -V, --version                  apresenta informa��o de vers�o e sai
  -n, --add-location             adicionar linhas '#: arquivo:linha' (default)
      --omit-header              n�o gravar cabe�alho com `msgid ""' 
  -o, --output=ARQ               grava sa�da para o arquivo especificado
  -p, --output-dir=DIR           arquivos de sa�da ser�o gravados em DIR
  -s, --sort-output              gera sa�da ordenada, removendo duplicidades
      --strict                   grava arquivo .po em estilo Uniforum
  -T, --trigraphs                entende tr�grafos ANSI C na entrada
  -V, --version                  apresenta informa��o de vers�o e sai
  -w, width=N�MERO               configura a largura da p�gina de sa�da
  -x, --exclude-file=ARQ         entradas do arquivo ARQ n�o s�o extra�das

Se ARQUIVO DE ENTRADA � -, a entrada padr�o � lida.
  feito.
 %d mensagem traduzida %d mensagens traduzidas %s e %s s�o mutuamente exclusivos %s: op��o ilegal -- %c
 %s: op��o inv�lida -- %c
 %s: op��o `%c%s' n�o aceita par�metros
 %s: op��o `%s' � amb�gua
 %s: op��o `%s' requer um argumento
 %s: op��o `--%s' n�o aceita par�metros
 %s: op��o `-W %s' n�o aceita par�metros
 %s: op��o `-W %s' � amb�gua
 %s: op��o requer um argumento -- %c
 %s: op��o n�o reconhecida `%c%s'
 %s: op��o n�o reconhecida `--%s'
 %s: aviso: Cabe�alho do arquivo PO esquecido, aproximado ou inv�lido
%*s aviso: convers�o de charset n�o vai funcionar %s: aviso: arquivo fonte cont�m tradu��es aproximadas %s:%d: aviso: caractere constante indeterminado %s:%d: aviso: string literal indeterminada %sLido %ld antigas + %ld refer�ncia, concatenadas %ld, aproximadas %ld, perdidas %ld, obsoletas %ld.
 , %d tradu��o aproximada (fuzzy) , %d tradu��es aproximadas (fuzzy) , %d mensagem n�o traduzida , %d mensagens n�o traduzidas --join-existing n�o pode ser usado enquanto a sa�da � escrita na sa�da padr�o ...mas esta defini��o � similar ...esta � a localiza��o da primeira defini��o <stdin> Copyright (C) %s Free Software Foundation, Inc.
Este � um sofware livre; veja os fontes para condi��es de c�pia.  N�o existe
garantia; nem mesmo COMERCIAIS ou de ATENDIMENTO A UMA DETERMINADA FINALIDADE.
 Reporte bugs para <bug-gnu-utils@gnu.org>.
 Tente `%s --help' para maiores informa��es
 Erro de sistema desconhecido Uso: %s [OP��O] ARQUIVO DE ENTRADA ...
Extrai strings a traduzir dos arquivos de entrada

Par�metros obrigat�rios para op��es longas s�o tamb�m obrigat�rios
para as op��es curtas
  -a, --extract-all              extrai todas as strings
  -c, --add-comments[=TAG]       adiciona blocos de coment�rios com TAG
                                 precedendo as linhas do arquivo de sa�da
  -C, --c++                      reconhece estilo C++ de coment�rios
      --debug                    formato de sa�da mais detalhado
  -d, --default-domain=NOME      utiliza NOME.po para a sa�da, ao inv�s
                                 de messages.po
  -D, --directory=DIRET�RIO      muda para DIRET�RIO antes de come�ar
  -e, --no-escape                n�o utiliza escapes C na sa�da (default)
  -E, --escape                   usa escapes C na sa�da, sem caracteres
                                 estendidos
  -f, --files-from=ARQ           l� ARQ como uma lista dos arquivos de entrada
      --force-po                 escreve o arquivo .po mesmo que vazio
      --foreign-user             omite o  copyright da FSF na sa�da para estrangeiros
  -F, --sort-by-file             ordena a sa�da pela localiza��o dos arquivos
 Uso: %s [OP��O] ARQUIVO DE ENTRADA ...
Par�metros obrigat�rios para op��es longas s�o tamb�m obrigat�rios
para as op��es curtas
  -d, --default-domain=NOME      utiliza NOME.po para a sa�da, ao inv�s
                                 de messages.po
  -D, --directory=DIRET�RIO      muda para DIRET�RIO antes de come�ar
  -e, --no-escape                n�o utiliza escapes C na sa�da (default)
  -E, --escape                   usa escapes C na sa�da, sem caracteres
                                 estendidos
  -f, --files-from=ARQ           l� ARQ como uma lista dos arquivos de entrada
  -F, --sort-by-file             ordena a sa�da pela localiza��o dos arquivos
  -h, --help                     apresenta esta ajuda e finaliza
 Uso: %s [OP��O] [ARQUIVO]...
Par�metros obrigat�rios para op��es longas s�o tamb�m obrigat�rios para
as op��es curtas
  -e, --no-escape          n�o utilizar escapes C na sa�da (padr�o)
  -E, --escape             usar escapes C na sa�da sem caracteres estendidos
      --force-po           grava o arquivo .po mesmo que vazio
  -h, --help               apresenta esta ajuda e finaliza
  -i, --indent             estilo de sa�da indentado
  -o, --output-file=ARQ    resultado ser� gravado em ARQ
      --strict             habilita o modo Uniforum estrito
  -V, --version            apresenta informa��es de vers�o e finaliza
  -w, --width=N�MERO       configura largura da p�gina de sa�da
 Uso: %s [OP��O] [[[DOM�NIO] MSGID] | [-s [MSGID]...]]
  -d, --domain=DOM�NIO      recupera mensagens traduzidas em DOM�NIO
  -e                        permite a expans�o de alguns caracteres de escape
  -E                        (ignorado para compatibilidade)
  -h, --help                apresenta esta ajuda e finaliza
  -n                        suprime caractere de nova linha
  -v, --version             apresenta vers�o e finaliza
  [DOM�NIO] MSGID           recupera mensagens traduzidas correspondentes
                            para MSGID no DOM�NIO
 Uso: %s [OP��O] [[[DOM�NIO] MSGID] | [-s [MSGID]...]]
  -d, --domain=DOM�NIO      recupera mensagens traduzidas em DOM�NIO
  -e                        permite a expans�o de alguns caracteres de escape
  -E                        (ignorado para compatibilidade)
  -h, --help                apresenta esta ajuda e finaliza
  -n                        suprime caractere de nova linha
  -v, --version             apresenta vers�o e finaliza
  [DOM�NIO] MSGID           recupera mensagens traduzidas correspondentes
                            para MSGID no DOM�NIO
 Uso: %s [OP��O] def.po ref.po
Par�metros obrigat�rios para op��es longas s�o tamb�m obrigat�rios
para as op��es curtas
  -D, --directory=DIR      adiciona DIR para a lista de pesquisa de arquivos de entrada
  -e, --no-escape          n�o utilizar escapes C na sa�da (padr�o)
  -E, --escape             usar escapes C na sa�da sem caracteres estendidos
      --force-po           grava o arquivo .po mesmo que vazio
  -h, --help               apresenta esta ajuda e finaliza
  -i, --indent             estilo de sa�da indentado
  -o, --output-file=ARQ    resultado ser� gravado em ARQ
      --no-location        suprime as linhas '#: arquivo:linha'
      --add-location       preserva as linhas '#: arquivo:linha' (padr�o)
  -S, --strict             habilita o modo Uniforum estrito
  -V, --version            apresenta informa��es de vers�o e finaliza
 Uso: %s [OP��O] def.po ref.po
Par�metros obrigat�rios para op��es longas s�o tamb�m obrigat�rios
para as op��es curtas
  -D, --directory=DIRET�RIO  adiciona DIRET�RIO na lista de pesquisa dos 
                             arquivos de entrada
  -h, --help                 apresenta esta ajuda e finaliza
  -V, --version              apresenta informa��es da vers�o e finaliza

Compara dois arquivos .po de estilo Uniforum para checar se ambos cont�m o
mesmo conjunto de strings msgid. O arquivo def.po deve ser um arquivo PO
existente com as tradu��es antigas. O arquivo ref.po � o �ltimo arquivo PO
criado (geralmente pelo xgettext). Isto � �til para comparar se todas as
mensagens do programa foram traduzidas. Onde uma igualdade n�o puder ser
encontrada uma aproxima��o � utilizada para produzir um melhor diagn�stico.
 Uso: %s [OP��O]  arquivo.po ...
Gera cat�logo de mensagens bin�rias a partir da descri��o de tradu��o de texto.

Par�metros obrigat�rios para op��es longas s�o tamb�m obrigat�rios
para as op��es curtas
  -a, --alignment=N�MERO   alinha strings em um N�MERO de bytes (padr�o: %d)
  -c, --check              executa confer�ncias dependentes de linguagem em strings
  -D, --directory=DIR      adiciona DIR para a lista de pesquisa de arquivos de entrada
  -f, --use-fuzzy          use entradas aproximadas (fuzzy) na sa�da
  -h, --help               apresenta esta ajuda e finaliza
      --no-hash            arquivos bin�rios n�o ser�o inclu�dos na tabela hash
  -o, --output-file=ARQ    especifica o nome do arquivo de sa�da ARQ
      --statistics         mostra estat�sticas das tradu��es
      --strict             habilita o modo Uniforum estrito
  -v, --verbose            lista problemas do arquivo de entrada
  -V, --version            apresenta informa��es de vers�o e finaliza

Informando a op��o -v mais que uma vez as mensagens de sa�da s�o incrementadas

Se o arquivo de entrada � -, a entrada padr�o � lida. Caso o arquivo de sa�da
seja - as mensagens ser�o geradas na sa�da padr�o
 Escrito por %s.
 `domain %s': diretiva ignorada `msgid' e `msgstr' n�o come�am com '\n' `msgid' e `msgstr' n�o terminam com '\n' `msgid' e `msgstr' n�o come�am com '\n' `msgid' e `msgstr' n�o terminam com '\n' `msgid' e `msgstr[%u]' n�o come�am com '\n' `msgid' e `msgstr[%u]' n�o terminam com '\n' pelo menos dois arquivos devem ser especificados n�o foi poss�vel criar o arquivo de sa�da "%s" nome do dom�nio "%s" n�o � v�lido como nome de arquivo nome do dom�nio "%s" n�o � v�lido como nome de arquivo: ser� usado um prefixo defini��o duplicada de mensagem `msgstr' vazia: mensagem ignorada fim de arquivo sem string fim de linha sem string erro ao abrir "%s" para leitura erro ao abrir o arquivo "%s" para grava��o erro ao ler "%s" erro ao gravar o arquivo "%s" s�o necess�rios 2 arquivos de entrada campo `%s' ainda possui o valor inicial arquivo "%s" cont�m string n�o terminada em NULL arquivo "%s" n�o est� no formato GNU .mo arquivo "%s" truncado primeira forma em plural tem o �ndice diferente de zero especifica��es de formato para o argumento %lu s�o diferentes encontrado %d erro fatal encontrados %d erros fatais `msgstr' aproximada (fuzzy): mensagem ignorada campo `%s' deve iniciar no come�o da linha campo `%s' faltando no cabe�alho crit�rio de sele��o especificado imposs�vel (%d < n < %d) uso inconsistente de #~ mensagens internacionalizadas n�o devem conter o caractere de escape `\%c' seq��ncia de controle ilegal sequ�ncia multibyte inv�lido palavra chave "%s" desconhecida idioma `%s' desconhecido Mem�ria insuficiente se��o `msgid_plural' n�o localizada se��o `msgstr' n�o localizada se��o `msgstr[]' n�o localizada par�metros n�o informados n�o foi informado o arquivo de entrada arquivos de entrada n�o informados n�mero de especifica��es de formatos em `msgid' e `msgstr' n�o conferem forma plural tem o �ndice errado falha na pesquisa "%s" offset %ld alguns campos do cabe�alho ainda possuem os valores iniciais padr�es entrada padr�o sa�da padr�o este arquivo parece n�o conter diretivas de dom�nio esta mensagem n�o tem defini��o no dom�nio "%s" esta mensagem � utilizada mas n�o definida em %s esta mensagem � utilizada, mas n�o foi definida... excesso de par�metros excesso de erros - finalizando aviso: arquivo `%s' extens�o `%s' � desconhecida; tentarei C aten��o: esta mensagem n�o � utilizada enquanto criando tabela hash enquanto preparando a sa�da xgettext n�o pode funcionar sem as teclas para procurar 