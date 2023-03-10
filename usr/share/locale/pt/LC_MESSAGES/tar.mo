??    I      d  a   ?      0  -  1     _  -  `	     ?     ?  "   ?     ?     ?  #         $     <  "   O  5   r     ?     ?  (   ?  +   
  #   6  "   Z     }  "   ?     ?  ,   ?             ,   ;  2   h     ?     ?     ?  +   ?       1   )  /   [  2   ?  4   ?  (   ?  1     %   N  0   t  1   ?     ?  *   ?          +  %   7     ]     n     ?  %   ?     ?     ?  &   ?          9     Y     w  -   ?     ?     ?     ?     ?          *  3   >  .   r     ?  #   ?     ?     ?             +  1  ?  ]  z    g  ?     ?       $   /     T  !   f  4   ?  !   ?     ?  +   ?  \   $  5   ?  +   ?  0   ?  5     +   J  2   v  %   ?  2   ?  *     1   -     _  $   w  C   ?  G   ?     (   4   =   #   r   3   ?   !   ?   >   ?   <   +!  ?   h!  A   ?!  5   ?!  4    "  '   U"  :   }"  9   ?"     ?"  5   #      B#     c#  2   r#     ?#     ?#  &   ?#  &   $  "   +$     N$  )   h$  %   ?$  .   ?$  :   ?$     "%  ;   @%     |%     ?%     ?%  "   ?%  #   ?%  $   	&  =   .&  0   l&     ?&  =   ?&  #   ?&      '     ?'  
   K'        ,              I   +          /                8       3   .   0   B          -             4                 #   E   9   6       D   "             !   :   A         *   5                     '   H   1   G      F   2              >   <      7   ?   )          %      $                =      ;   	              @          
       &   (           C        
Device blocking:
  -b, --blocking-factor=BLOCKS   BLOCKS x 512 bytes per record
      --record-size=SIZE         SIZE bytes per record, multiple of 512
  -i, --ignore-zeros             ignore zeroed blocks in archive (means EOF)
  -B, --read-full-records        reblock as we read (for 4.2BSD pipes)
 
Informative output:
      --help            print this help, then exit
      --version         print tar program version number, then exit
  -v, --verbose         verbosely list files processed
      --checkpoint      print directory names while reading the archive
      --totals          print total bytes written while creating archive
  -R, --block-number    show block number within archive with each message
  -w, --interactive     ask for confirmation for every action
      --confirmation    same as -w
 
Main operation mode:
  -t, --list              list the contents of an archive
  -x, --extract, --get    extract files from an archive
  -c, --create            create a new archive
  -d, --diff, --compare   find differences between archive and file system
  -r, --append            append files to the end of an archive
  -u, --update            only append files newer than copy in archive
  -A, --catenate          append tar files to an archive
      --concatenate       same as -A
      --delete            delete from the archive (not on mag tapes!)
 
Usage: %s [OPTION]...
  link to %s
 %s is not continued on this volume %s: Deleting %s
 %s: Not found in archive %s: Unknown file type; file ignored --Mangled file names--
 --Volume Header--
 At beginning of tape, quitting now Attempting extraction of symbolic links as hard links Cannot allocate buffer space Cannot execute remote shell Cannot use compressed or remote archives Cannot use multi-volume compressed archives Cannot verify multi-volume archives Cannot verify stdin/stdout archive Child returned status %d Conflicting archive format options Conflicting compression options Cowardly refusing to create an empty archive Creating directory: Deleting non-header from archive Extracting contiguous files as regular files GNU features wanted on incompatible archive format Garbage command Invalid value for record_size Missing file name after -C Multiple archive files requires `-M' option No new volume; exiting.
 Obsolete option name replaced by --absolute-names Obsolete option name replaced by --block-number Obsolete option name replaced by --blocking-factor Obsolete option name replaced by --read-full-records Obsolete option name replaced by --touch Obsolete option, now implied by --blocking-factor Old option `%c' requires an argument. Options `-%s' and `-%s' both want standard input Options `-[0-7][lmh]' not supported by *this* tar Premature end of file Prepare volume #%d for %s and hit return:  Read checkpoint %d Reading %s
 Record size must be a multiple of %d. Renamed %s to %s Skipping to next header Symlinked %s to %s This does not look like a tar archive This volume is out of sequence Too many errors, quitting Try `%s --help' for more information.
 Unexpected EOF in archive Unexpected EOF in mangled names Unknown demangling command %s Unknown system error VERIFY FAILURE: %d invalid header(s) detected Verify  Visible long name error Visible longname error WARNING: Archive is incomplete WARNING: No volume header Write checkpoint %d You may not specify more than one `-Acdtrux' option You must specify one of the `-Acdtrux' options exec/tcp: Service not available rmtd: Cannot allocate buffer space
 rmtd: Garbage command %c
 rmtd: Premature eof
 tar (child) tar (grandchild) Project-Id-Version: tar 1.11.9
POT-Creation-Date: 2001-01-12 23:36-0800
PO-Revision-Date: 1996-04-20 21:50
Last-Translator: Ant?nio Jos? Coutinho <ajc@di.uminho.pt>
Language-Team: Portuguese <pt@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Caracter?sticas dos blocos no perif?rico (device):
  -b, --blocking-factor=BLOCOS   BLOCOS x 512 "bytes" por registo
      --record-size=DIM          DIM bytes por registo, m?ltiplo de 512
  -i, --ignore-zeros             ignorar os blocos constitu?dos por zeros
                                 (implicam  fim-de-ficheiro)
  -B, --read-full-records        dividir a leitura em blocos 
                                 (para os "pipes" 4.2BSD)
 
Presta??o de informa??es:
      --help            mostrar esta mensagem de ajuda e terminar
      --version         indicar a vers?o do programa "tar" e terminar
  -v, --verbose         escrever a lista dos ficheiros tratados
      --checkpoint      indicar os nomes das directorias durante a leitura
      --totals          indicar o n?mero de "bytes" escritos durante a cria??o
                        do arquivo
  -R, --block-number    escrever o n?mero de bloco, dentro do arquivo, 
                        em cada mensagem
  -w, --interactive     pedir confirma??o para todas as ac??es
      --confirmation    o mesmo que "-w"

 
Principal modo de funcionamento:
  -t, --list              invent?rio do arquivo
  -x, --extract, --get    extrair ficheiros do arquivo
  -c, --create            criar um novo arquivo
  -d, --diff, --compare   comparar o arquivo com os actuais ficheiros 
  -r, --append            acrescentar os ficheiros no fim do arquivo
  -u, --update            s? acrescentar os ficheiros mais novos do que as vers?es presentes no arquivo
  -A, --catenate          juntar outros arquivos "tar" ao arquivo
      --concatenate       o mesmo que "-A"
      --delete            apagar no arquivo (excepto para fitas magn?ticas!)
 
Forma de usar: %s [OP??O]...
  liga??o para %s
 %s n?o tem continuidade neste volume %s: Apaga-se  %s
 %s: N?o foi encontrado no arquivo %s: Tipo de ficheiro desconhecido; ficheiro ignorado --Nomes de ficheiros truncados--
 --Cabe?alho de volume--
 No princ?pio da fita, p?ra-se imediatamente Est?-se a tentar extrair liga??es simb?licas (sym. links) como liga??es f?sicas (hard links) N?o se consegue reservar espa?o tempor?rio ("buffer") N?o se consegue executar uma "shell" remota N?o se pode usar arquivos comprimidos ou remotos N?o se pode de usar arquivos multi-volume comprimidos N?o se pode verificar arquivos multi-volume N?o se pode  de verificar arquivos stdin ou stdout Processo filho terminou com estado %d H? conflitos entre as op??es de formato do arquivo H? conflitos entre as op??es de compress?o Recusa-se, covardemente, a criar um arquivo vazio Cria??o de directoria:: Apaga-se do arquivo um n?o-cabe?alho Est?o-se a extrair ficheiros cont?guos como sendo ficheiros normais Est?o-se a querer propriedades GNU num arquivo com formato incompat?vel Comando desconhecido Valor inv?lido para tamanho de registo (record_size) Falta um nome de ficheiro ap?s "-C" Para usar v?rios arquivos ? necess?ria a op??o "-M" N?o h? novo volume; termina-se. 
 Nome de op??o obsoleto, foi substitu?do por "--absolute-names" Nome de op??o obsoleto, foi substitu?do por "--block-number" Nome de op??o obsoleto, foi substitu?do por "--blocking-factor" Nome de op??o obsoleto, foi substitu?do por "--read-full-records" Nome de op??o obsoleto, foi substitu?do por "--touch" Op??o obsoleta, ? agora "-blocking-factor" implica-a A antiga op??o `%c' exige um argumento. Ambas as op??es `-%s' e `-%s' precisam do "standard input" As op??es "-[0-7][lmh]" n?o s?o suportadas por *este* tar Fim-de-ficheiro prematuro Preparar o volume no. %d para  %s e premir "Return":  Leu-se o ponto de verifica??o %d Leitura de %s
 O tamanho dos registos tem que ser m?ltiplo de %d. Mudou-se o nome %s para %s Salta para pr?ximo cabe?alho %s ligado simbolicamente a %s ("link") Isto  n?o se parece a um arquivo "tar" Este volume est? fora da sequ?ncia Erros de mais: termina-se Para mais informa??o, tente "%s --help".
 Fim de ficheiro inesperado no arquivo Fim de ficheiro inesperado nos nomes truncados Comando desconhecido "%s" para decifrar os nomes truncados Erro desconhecido, do sistema ERRO DE VERIFICA??O: Encontraram-se %d cabe?alhos inv?lidos Verifica??o Erro evidente num nome longo Erro evidente num nome longo ATEN??O: O arquivo est? incompleto ATEN??O: N?o h? cabe?alho de volume Escreve-se o ponto de verifica??o %d N?o se pode especificar mais do que uma das op??es "-Acdtrux" Tem que se especificar uma das op??es "-Acdtrux" exec/tcp: Servi?o indispon?vel rmtd: N?o se consegue reservar espa?o tempor?rio ("buffers")
 rmtd: Comando "%c" n?o faz sentido
 rmtd: Fim de ficheiro prematuro
 tar (filho) tar (neto) 