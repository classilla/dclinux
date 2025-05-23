��    9      �  O   �      �  �   �  �  �  t  �     "
      *
     K
     e
  ,   
     �
  %   �
  ,   �
  &        D     d  ?   �  !   �  /   �       ,  +  �  X     -     K  *   j  ;   �     �     �          %  $   ?  $   d     �     �     �  *   �  "   
     -  3   A  "   u  G   �     �     �                4  F   I     �     �  +   �  1   �  *     '   8     `     s  !   �     �     �  1  �        $    5     G  !   S     u     �  ,   �     �  &   �  ,     %   B  !   h  !   �  E   �  "   �  '        =  %  Z  d  �!     �$  )   %  9   /%  H   i%     �%      �%      �%     &  ,   2&  ,   _&     �&  '   �&  '   �&  2   �&  +   .'     Z'  9   p'     �'  P   �'     (     ;(     S(  $   l(  #   �(  <   �(     �(  #   )  3   ')  /   [)  ,   �)  )   �)     �)     �)  "   *  (   ;*     d*                                                         8               %       -                     	   1                          5   "   .   +              &   $   3           0      (       9             7   4   *   #             
   )   ,       2      '   6                 /   !    
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
  done.
 %s and %s are mutually exclusive %s: illegal option -- %c
 %s: invalid option -- %c
 %s: option `%c%s' doesn't allow an argument
 %s: option `%s' is ambiguous
 %s: option `%s' requires an argument
 %s: option `--%s' doesn't allow an argument
 %s: option requires an argument -- %c
 %s: unrecognized option `%c%s'
 %s: unrecognized option `--%s'
 --join-existing cannot be used when output is written to stdout ...but this definition is similar ...this is the location of the first definition Unknown system error Usage: %s [OPTION] [[[TEXTDOMAIN] MSGID] | [-s [MSGID]...]]
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
 `domain %s' directive ignored cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix duplicate message definition empty `msgstr' entry ignored end-of-file within string end-of-line within string error while opening "%s" for reading error while opening "%s" for writing error while reading "%s" error while writing "%s" file exactly 2 input files required field `%s' still has initial default value file "%s" is not in GNU .mo format file "%s" truncated header field `%s' should start at beginning of line headerfield `%s' missing in header internationalized messages should not contain the `\%c' escape sequence keyword "%s" unknown missing `msgstr' section missing arguments no input file given no input files given number of format specifications in `msgid' and `msgstr' does not match standard input standard output this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: this message is not used while creating hash table while preparing output Project-Id-Version: GNU gettext 0.10.23
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 1996-09-18 20:51 WET DST
Last-Translator: Nuno Oliveira <nuno@eq.uc.pt>
Language-Team: Portuguese <pt@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Converte ficheiros .mo bin�rios em ficheiros .po no modo Uniforum.
Ficheiros .mo "little-endian" e "big-endian" s�o simultaneamente
tratados. Se n�o for indicado ficheiro de entrada ou este for -, �
usado o canal de entrada stdin. Por defeito a sa�da � escrita no
stdout.
 
Se o par�metro DIALECTO n�o for fornecido, o dom�nio � determinado a
partir da vari�vel TEXTDOMAIN do ambiente. Se o cat�logo de mensagens
n�o for encontrado no direct�rio regular, pode ser especificada outra
localiza��o atrav�s da vari�vel TEXTDOMAINDIR do ambiente.
Quando usado com a op��o -s, o programa comporta-se como o comando
`echo'. Contudo ele n�o copia simplesmente os seus argumentos para o
stdout. Em vez disso as mensagens encontradas no cat�logo seleccionado
s�o traduzidas.
Direct�rio standard de pesquisa: %s
 
Combina 2 ficheiros .po do tipo Uniforum num s�. O ficheiro def.po
dever� ser um ficheiro PO existente com as tradu��es a manter no novo
ficheiro criado, desde que ainda aplic�veis; os coment�rios ser�o
mantidos, mas os coment�rios relativos � extra��o das mensagens e das
suas posi��es nos ficheiros ser�o eliminados. O ficheiro ref.po dever�
ser o �ltimo ficheiro PO criado (geralmente pelo xgettext); todas as
tradu��es e coment�rios neste ficheiro ser�o eliminados, sendo
preservados os coment�rios e as posi��es nos ficheiros. Quando um
emparelhamento exacto n�o puder ser efectuado � efectuado um
emparelhamento aproximado para produzir melhores resultados. Os
resultados ser�o escritos no canal de sa�da por defeito (stdout) a
menos que seja especificado um ficheiro de sa�da.
 terminado.
 %s e %s s�o mutuamente exclusivas %s: op��o ilegal -- %c
 %s: op��o ilegal -- %c
 %s: a op��o `%c%s' n�o permite um argumento
 %s: a op��o `%s' � amb�gua
 %s: a op��o `%s' requere um argumento
 %s: a op��o `--%s' n�o permite um argumento
 %s: op��o requere um argumento -- %c
 %s: op��o n�o reconhecida `%c%s'
 %s: op��o n�o reconhecida `--%s'
 --join-existing n�o pode ser usada quando a sa�da
� escrita no stdout ...mas esta defini��o � semelhante ...este � o local da primeira defini��o Erro desconhecido do sistema Utiliza��o: %s [OP��O] [[[DIALECTO] MSGID] | [-s [MSGID]...]]
 -d, --domain=DIALECTO     obt�m as mensagems traduzidas do DIALECTO
 -e                        permite a expans�o de algumas sequ�ncias de escape
 -E                        (ignorado para compatibilidade)
 -h, --help                mostra esta ajuda e sai
 -n                        suprime o newline final
 -V, --version             mostra a informa��o de vers�o e sai
 [DIALECTO] MSGID          obt�m a mensagem traduzida correspondente a
                           MSGID do DIALECTO
 Utiliza��o: %s [OP��O] def.po ref.po
Os argumentos obrigat�rios para as op��es longas s�o igualmente
obrigat�rios para as op��es curtas.
  -D, --directory=DIRECT�RIO  adiciona DIRECT�RIO � lista de procura para
                              os ficheiros de entrada
  -h, --help                  mostra esta ajuda e sai
  -V, --version               mostra a informa��o de vers�o e sai

Compara dois ficheiros .po do tipo Uniforum verificando se ambos
cont�m o mesmo conjunto de cadeias msgid. O ficheiro def.po dever� ser
um ficheiro PO existente, com as tradu��es antigas. O ficheiro ref.po
ser� o �ltimo ficheiro PO criado (geralmente pelo xgettext). Isto �
�til para verificar que todas as mensagens no seu programa foram
traduzidas. Quando um emparelhamento exacto n�o puder ser efectuado,
� usado um emparelhamento aproximado para produzir melhores
diagn�sticos.
 directiva `dom�nio %s' ignorada imposs�vel criar o ficheiro de sa�da "%s" nome de dom�nio "%s" n�o apropriado como nome de ficheiro nome de dom�nio "%s" n�o apropriado como nome de ficheiro:
prefixo usado defini��o de mensagem duplicada elemento `msgstr' vazio ignorada fim-de-ficheiro dentro da cadeia fim-de-linha dentro da cadeia erro durante a abertura de "%s" para leitura erro durante a abertura de "%s" para escrita erro durante a leitura de "%s" erro durante a escrita do ficheiro "%s" s�o necess�rios exactamente 2 ficheiros o campo `%s' ainda tem o valor por defeito inicial o ficheiro "%s" n�o est� no formato .mo GNU ficheiro "%s"truncado o campo `%s' do cabe�alho deve come�ar no in�cio da linha o campo `%s' falta no cabe�alho as mensagens de internacionaliza��o n�o devem conter
a sequ�ncia de escape `\%c' palavra chave "%s" desconhecida falta a sec��o `msgstr' argumentos insuficientes nenhum ficheiro de entrada fornecido ficheiros de entrada n�o fornecidos o n�mero de especifica��es em `msgid' e `msgstr' � diferente entrada standard canal de sa�da por defeito (stdout) este ficheiro n�o pode conter directivas de dom�nio esta mensagem n�o tem defini��o no dom�nio "%s" esta mensagem � usada mas n�o definida em %s esta mensagem � usada mas n�o definida... demasiados argumentos demasiados erros, interrompendo aten��o: esta mensagem n�o � usada durante a cria��o da tabela de dispers�o durante a prepara��o da sa�da 