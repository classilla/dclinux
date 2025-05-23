��    z      �  �   �      H
  9  I
  ]   �  �   �  �  y    o  1  �  1  �  e  �  A  N  l  �     �!     "     "     /"  $   M"     r"     �"     �"  "   �"     �"     �"     #      #  k  8#  4  �%  �   �&  �   �'  	   �(  �   �(  �   ^)  �   X*  �   �*  �   p+  �    ,  �  �,  &   \.  &   �.  <   �.  0   �.      /     9/     M/     d/  =   �/  *   �/      �/  "   0  !   00     R0     r0     �0  $   �0  *   �0  	   �0  	   �0  	   1  	   1  	   1  	    1     *1  
   =1  
   H1  
   S1  
   ^1  
   i1  
   t1     1     �1     �1  "   �1     �1  5   2  %   :2     `2     n2     ~2     �2  8   �2     �2     �2      3  D   %3     j3     �3     �3     �3     �3     �3  #   4     %4     A4     _4     s4     �4     �4     �4  $   �4  ,   �4     5  	   ,5  -   65  ,   d5  
   �5     �5     �5     �5  >   �5  @   6     H6     Z6     m6     �6  	   �6     �6     �6     �6  &   �6  5   7  P   O7  Q   �7     �7  ?  �7  �  >9  `   �<  �   !=  j  �=  H  H@  �  �A  �  YE  �  =J  �  "N  �  �Q     yT     �T     �T     �T  0   �T     U     "U     =U  &   [U     �U     �U     �U     �U  �  �U  �  �X  �   6Z  �   [  	   �[  �   \    �\  �   �]  �   [^  �   �^  �   �_  �  S`  (   b  .   8b  H   gb  ;   �b  )   �b     c     .c  "   Ic  A   lc  :   �c  (   �c  &   d  -   9d  &   gd      �d     �d  %   �d  &   �d     e     $e     2e     @e     Ne     \e     je     ~e     �e     �e     �e     �e     �e  !   �e  %   �e     f  +   1f  #   ]f  A   �f  0   �f     �f     
g  ,   #g     Pg  L   kg     �g  1   �g  *   	h  Y   4h  #   �h     �h     �h  "   �h     i      i  +   3i  #   _i     �i     �i     �i      �i     �i     �i  1   j  1   Kj     }j     �j  2   �j  4   �j     k  $   k     8k     Wk  M   gk  I   �k     �k     l     'l     >l  
   ^l     il     �l     �l  -   �l  9   �l  K   #m  J   om     �m     !           _       8   Z   S   M   Q   )   ,   :   g   v   B   w   7   L      I      z                         q   V   X      b   s   u   3   >   4   x                 	      E       p      5   .   9             j   m       \           *               U   +      "   y       @   1      =      P   G   <       k             J   #          (              n   h       
   D   /   C       e         W      R   T       ]           O   6   N   A   -       o   Y           K             `   d   0   c       r   a   $   H   ?   i         t          '       l       %          ^          2           &   [       ;   F   f        
  ( EXPRESSION )               EXPRESSION is true
  ! EXPRESSION                 EXPRESSION is false
  EXPRESSION1 -a EXPRESSION2   both EXPRESSION1 and EXPRESSION2 are true
  EXPRESSION1 -o EXPRESSION2   either EXPRESSION1 or EXPRESSION2 is true

  [-n] STRING          the length of STRING is nonzero
  -z STRING            the length of STRING is zero
  STRING1 = STRING2    the strings are equal
  STRING1 != STRING2   the strings are not equal

  INTEGER1 -eq INTEGER2   INTEGER1 is equal to INTEGER2
  INTEGER1 -ge INTEGER2   INTEGER1 is greater than or equal to INTEGER2
  INTEGER1 -gt INTEGER2   INTEGER1 is greater than INTEGER2
  INTEGER1 -le INTEGER2   INTEGER1 is less than or equal to INTEGER2
  INTEGER1 -lt INTEGER2   INTEGER1 is less than INTEGER2
  INTEGER1 -ne INTEGER2   INTEGER1 is not equal to INTEGER2
 
  --help      display this help and exit
  --version   output version information and exit

 
Beware that parentheses need to be escaped (e.g., by backslashes) for shells.
INTEGER may also be -l STRING, which evaluates to the length of STRING.
 
Control settings:
  [-]clocal     disable modem control signals
  [-]cread      allow input to be received
* [-]crtscts    enable RTS/CTS handshaking
  csN           set character size to N bits, N in [5..8]
  [-]cstopb     use two stop bits per character (one with `-')
  [-]hup        send a hangup signal when the last process closes the tty
  [-]hupcl      same as [-]hup
  [-]parenb     generate parity bit in output and expect parity bit in input
  [-]parodd     set odd parity (even with `-')
 
Handle the tty line connected to standard input.  Without arguments,
prints baud rate, line discipline, and deviations from stty sane.  In
settings, CHAR is taken literally, or coded as in ^c, 0x37, 0177 or
127; special values ^- or undef used to disable special characters.
 
Input settings:
  [-]brkint     breaks cause an interrupt signal
  [-]icrnl      translate carriage return to newline
  [-]ignbrk     ignore break characters
  [-]igncr      ignore carriage return
  [-]ignpar     ignore characters with parity errors
* [-]imaxbel    beep and do not flush a full input buffer on a character
  [-]inlcr      translate newline to carriage return
  [-]inpck      enable input parity checking
  [-]istrip     clear high (8th) bit of input characters
* [-]iuclc      translate uppercase characters to lowercase
* [-]ixany      let any character restart output, not only start character
  [-]ixoff      enable sending of start/stop characters
  [-]ixon       enable XON/XOFF flow control
  [-]parmrk     mark parity errors (with a 255-0-character sequence)
  [-]tandem     same as [-]ixoff
 
Local settings:
  [-]crterase   echo erase characters as backspace-space-backspace
* crtkill       kill all line by obeying the echoprt and echoe settings
* -crtkill      kill all line by obeying the echoctl and echok settings
* [-]ctlecho    echo control characters in hat notation (`^c')
  [-]echo       echo input characters
* [-]echoctl    same as [-]ctlecho
  [-]echoe      same as [-]crterase
  [-]echok      echo a newline after a kill character
* [-]echoke     same as [-]crtkill
  [-]echonl     echo newline even if not echoing other characters
* [-]echoprt    echo erased characters backward, between `\' and '/'
  [-]icanon     enable erase, kill, werase, and rprnt special characters
  [-]iexten     enable non-POSIX special characters
  [-]isig       enable interrupt, quit, and suspend special characters
  [-]noflsh     disable flushing after interrupt and quit special characters
* [-]prterase   same as [-]echoprt
* [-]tostop     stop background jobs that try to write to the terminal
* [-]xcase      with icanon, escape with `\' for uppercase characters
 
Output settings:
* bsN           backspace delay style, N in [0..1]
* crN           carriage return delay style, N in [0..3]
* ffN           form feed delay style, N in [0..1]
* nlN           newline delay style, N in [0..1]
* [-]ocrnl      translate carriage return to newline
* [-]ofdel      use delete characters for fill instead of null characters
* [-]ofill      use fill (padding) characters instead of timing for delays
* [-]olcuc      translate lowercase characters to uppercase
* [-]onlcr      translate newline to carriage return-newline
* [-]onlret     newline performs a carriage return
* [-]onocr      do not print carriage returns in the first column
  [-]opost      postprocess output
* tabN          horizontal tab delay style, N in [0..3]
* tabs          same as tab0
* -tabs         same as tab3
* vtN           vertical tab delay style, N in [0..1]
 
Special characters:
* dsusp CHAR    CHAR will send a terminal stop signal once input flushed
  eof CHAR      CHAR will send an end of file (terminate the input)
  eol CHAR      CHAR will end the line
* eol2 CHAR     alternate CHAR for ending the line
  erase CHAR    CHAR will erase the last character typed
  intr CHAR     CHAR will send an interrupt signal
  kill CHAR     CHAR will erase the current line
* lnext CHAR    CHAR will enter the next character quoted
  quit CHAR     CHAR will send a quit signal
* rprnt CHAR    CHAR will redraw the current line
  start CHAR    CHAR will restart the output after stopping it
  stop CHAR     CHAR will stop the output
  susp CHAR     CHAR will send a terminal stop signal
* swtch CHAR    CHAR will switch to a different shell layer
* werase CHAR   CHAR will erase the last word typed
 
Special settings:
  N             set the input and output speeds to N bauds
* cols N        tell the kernel that the terminal has N columns
* columns N     same as cols N
  ispeed N      set the input speed to N
* line N        use line discipline N
  min N         with -icanon, set N characters minimum for a completed read
  ospeed N      set the output speed to N
* rows N        tell the kernel that the terminal has N rows
* size          print the number of rows and columns according to the kernel
  speed         print the terminal speed
  time N        with -icanon, set read timeout of N tenths of a second
  groups= %%%c: invalid directive %s: No such user %s: binary operator expected
 %s: cannot find username for UID %u
 %s: expected a numeric value %s: no login name
 %s: unary operator expected
 %s: value not completely converted ')' expected
 ')' expected, found %s
 -ef does not accept -l
 -nt does not accept -l
 Change the effective user id and group id to that of USER.

  -, -l, --login               make the shell a login shell
  -c, --commmand=COMMAND       pass a single COMMAND to the shell with -c
  -f, --fast                   pass -f to the shell (for csh or tcsh)
  -m, --preserve-environment   do not reset environment variables
  -p                           same as -m
  -s, --shell=SHELL            run SHELL if /etc/shells allows it
      --help                   display this help and exit
      --version                output version information and exit

A mere - implies -l.   If USER not given, assume root.
 Copy standard input to each FILE, and also to standard output.

  -a, --append              append to the given FILEs, do not overwrite
  -i, --ignore-interrupts   ignore interrupt signals
      --help                display this help and exit
      --version             output version information and exit
 Diagnose unportable constructs in NAME.

  -p, --portability   check for all POSIX systems, not only this one
      --help          display this help and exit
      --version       output version information and exit
 Exit with the status determined by EXPRESSION.

  --help      display this help and exit
  --version   output version information and exit

EXPRESSION is true or false and sets exit status.  It is one of:
 Password: Print NAME with its trailing /component removed; if NAME contains no /'s,
output `.' (meaning the current directory).

  --help      display this help and exit
  --version   output version information and exit
 Print the file name of the terminal connected to standard input.

  -s, --silent, --quiet   print nothing, only return an exit status
      --help              display this help and exit
      --version           output version information and exit
 Print the full filename of the current working directory.

  --help      display this help and exit
  --version   output version information and exit
 Print the name of the current user.

  --help      display this help and exit
  --version   output version information and exit
 Print the user name associated with the current effective user id.
Same as id -un.

  --help      display this help and exit
  --version   output version information and exit
 Repeatedly output a line with all specified STRING(s), or `y'.

  --help      display this help and exit
  --version   output version information and exit
 Run COMMAND with an adjusted scheduling priority.
With no COMMAND, print the current scheduling priority.  ADJUST is 10
by default.  Range goes from -20 (highest priority) to 19 (lowest).

  -ADJUST                   increment priority by ADJUST first
  -n, --adjustment=ADJUST   same as -ADJUST
      --help                display this help and exit
      --version             output version information and exit
 Try `%s --help' for more information.
 Usage: %s EXPRESSION
  or:  %s OPTION
 Usage: %s EXPRESSION
  or:  [ EXPRESSION ]
  or:  %s OPTION
 Usage: %s FORMAT [ARGUMENT]...
  or:  %s OPTION
 Usage: %s NAME
  or:  %s OPTION
 Usage: %s [OPTION]
 Usage: %s [OPTION]...
 Usage: %s [OPTION]... NAME...
 Usage: %s [OPTION]... [-] [NAME=VALUE]... [COMMAND [ARG]...]
 Usage: %s [OPTION]... [-] [USER [ARG]...]
 Usage: %s [OPTION]... [FILE]...
 Usage: %s [OPTION]... [STRING]...
 Usage: %s [OPTION]... [USERNAME]
 Usage: %s format [argument...]
 \%c: invalid escape `%s' is not a directory `%s' is not a valid positive integer a command must be given with an adjustment after -eq after -ge after -gt after -le after -lt after -ne argument expected
 before -eq before -ge before -gt before -le before -lt before -ne cannot determine hostname cannot get current directory cannot get priority cannot get supplemental group list cannot get system name cannot print only names or real IDs in default format cannot print only user and only group cannot run %s cannot set date cannot set group id cannot set groups cannot set hostname; this system lacks the functionality cannot set priority cannot set user id directory `%s' is not searchable format string may not be specified when printing equal width strings getpass: cannot open /dev/tty ignoring non-option arguments incorrect password integer expression expected %s
 invalid argument `%s' invalid date `%s' invalid floating point argument: %s invalid format string: `%s' invalid integer argument `%s' invalid option `%s' invalid priority `%s' invalid time interval `%s' missing `]'
 missing argument to `%s' missing hexadecimal number in escape name `%s' has length %d; exceeds limit of %d new_mode: mode
 not a tty path `%s' contains nonportable character `%c' path `%s' has length %d; exceeds limit of %d read error standard input standard output syntax error the options to print and set the time may not be used together the options to specify dates for printing are mutually exclusive too few arguments too many arguments too many arguments
 too many non-option arguments undefined unknown binary operator user %s does not exist using restricted shell %s warning: cannot change directory to %s when specifying an output style, modes may not be set when the starting value is larger than the limit,
the increment must be negative when the starting value is smaller than the limit,
the increment must be positive write error Project-Id-Version: sh-utils 1.12i
POT-Creation-Date: 2000-10-26 20:36+0200
PO-Revision-Date: 1996-11-08 20:03+0100
Last-Translator: Ant�nio Jo�o Serras Rendas <arendas@mail.telepac.pt>
Language-Team: Portugu�s <pt@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
   ( EXPRESS�O )                EXPRESS�O � verdadeira
   ! EXPRESS�O			EXPRESS�O � falsa
   EXPRESS�O1 -a EXPRESS�O2     tanto EXPRESS�O1 como EXPRESS�O2 
				s�o verdadeiras
   EXPRESS�O1 -o EXPRESS�O2     nem EXPRESS�O1 nem EXPRESS�O2 s�o verdadeiras

   [-n] STRING                  o comprimento de STRING � diferente de zero
   -z STRING                    o comprimento de STRING � zero
   STRING1 = STRING2            as STRING's s�o iguais
   STRING1 != STRING2           as STRING's s�o diferentes

   INTEIRO1 -eq INTEIRO2        INTEIRO1 � igual a INTEIRO2
   INTEIRO1 -ge INTEIRO2        INTEIRO1 � maior ou igual a INTEIRO2
   INTEIRO1 -gt INTEIRO2        INTEIRO1 � maior que INTEIRO2
   INTEIRO1 -le INTEIRO2        INTEIRO1 � menor ou igual a INTEIRO2
   INTEIRO1 -lt INTEIRO2        INTEIRO1 � menor que INTEIRO2
   INTEIRO1 -ne INTEIRO2        INTEIRO1 � diferente de INTEIRO2
 
   --help      mostrar esta ajuda e sair
   --version   mostrar a informa��o de vers�o e sair

 
Lembre-se que os par�ntesis t�m que ser alterados (por exemplo, usando 
anti-barras) se v�o se usados com shells.
INTEIRO pode tamb�m ser -l STRING, que retorna o comprimento de STRING.
 
Par�metros de controle:
   [-]clocal     desactivar os sinais de controle do modem
   [-]cread      permitir a entrada de dados
*  [-]crtscts    permitir negocia��o RTS/CTS
   csN           colocar a N bits o tamanho dos caracteres, N em [5..8]
   [-]cstopb     usar dois bits de paragem por caracter (um com `-')
   [-]hup        enviar um sinal de desligar quando o �ltimo processo
                 fechar o tty
   [-]hupcl      o mesmo que [-]hup
   [-]parenb     gerar um bit de paridade no output e esperar um bit de
                 paridade no input
   [-]parodd     colocar a paridade a �mpar (mesmo com `-')
 
Trata o tty ligado ao canal de entrada por defeito (stdin). Sem argumentos,
imprime o ritmo em baud, a disciplina da linha e diferen�as em rela��o a stty
sane. Nos par�metros, CHAR � aceite literalmente, ou codificado com em ^C,
0x37, 0177 ou 127; valores especiais ^- ou undef s�o utilizados para anular
caracteres especiais.
 
Par�metros de entrada:
   [-]brkint     break causa um sinal de interrup��o
   [-]icrnl      converter os carriage return para newline
   [-]ignbrk     ignorar caracteres de break
   [-]ignpar     ignorar caracteres com erros de paridade
   [-]imaxbel    n�o esvaziar um buffer de entrada cheio num caracter e
                 fazer beep quando tal ocorrer
   [-]inlcr      converter de newline para carriage return
   [-]inpck      ligar verifica��o de paridade na entrada
   [-]istrip     limpar o maior bit (oitavo) dos caracteres de entrada
   [-]iuclc      traduzir caracteres mai�sculos para min�sculos
   [-]ixany      permitir que qualquer caracter recomece a sa�da, e n�o 
                 apenas os de start
   [-]ixoff      ligar o envio de bits de start/stop
   [-]ixon       ligar o controle de fluxo usando XON/XOFF
   [-]parmrk     marcar erros de paridade (com uma sequ�ncia de 255-0
                 caracteres
   [-]tandem     o mesmo que [-]ixoff
 
Par�metros locais:
   [-] crterase  ecoar caracteres erase como backspace-space-backspace
*  crtkill       eliminar a linha inteira obedecendo aos par�metros echoprt e
                 echoe
*  -crtkill      eliminar a linha inteira obedecendo aos par�metros echoctl e
                 echok
*  [-]ctlecho    ecoar os caracteres de controle com "chap�us" ('^c')
   [-]echo       ecoar os caracteres de entrada
*  [-]echoctl    o mesmo que [-]ctlecho
   [-]echoe      o mesmo que [-]crterase
   [-]echok      ecoar um newline depois de um caracter kill
*  [-]echoke     o mesmo que [-]crtkill
   [-]echonl     ecoar newline mesmo se n�o estivermos a ecoar outros
		 caracteres
*  [-]echoprt    ecoar caracteres apagados para tr�s, entre '\' e '/'
   [-]icanon     permite os caracteres especiais erase,kill,werase e rprnt
   [-]iexten     permite caracteres especiais n�o-POSIX
   [-]isig       permite os caracteres especiais interrup��o,quit e suspend
   [-]noflush    ap�s um caracter especial interrupt ou quit, n�o fazemos
                 flush
*  [-]prterase   o mesmo que [-]echoprt
*  [-]tostop     impede que outros processos escrevam no terminal
*  [-]xcase      com icanon, os caracteres mai�sculos ficam marcados com
                 '\'
 
Par�metros de sa�da:
* bsN            estilo do temporizador do backspace, N em [0..1]
* crN            estilo do temporizador do carriage return, N em [0..3]
* ffN            estilo do temporizador do form feed, N em [0..1]
* nlN            estilo do temporizador do newline, N em [0..1]
* [-]ocrnl       traduzir carriage return para newline
* [-]ofdel       usar caracteres de delete em vez de caracteres null para
                 preencher.
* [-]ofill       preencher caracteres em vez de esperar por temporizador
* [-]olcuc       traduzir min�sculas para mai�sculas
* [-]onlcr       traduzir newline para carriage return-newline
* [-]onlret      newline faz um carriage return
* [-]onocr       n�o imprimir carriage return na primeira coluna
  [-]opost       pos-processar a sa�da
* tabN           estilo do temporizador do tab horizontal, N em [0..3]
* tabs           o mesmo que tab0
* -tabs          o mesmo que tab3
* vtN            estilo do temporizador do tab vertical, N em [0..1]
 
Caracteres especiais:

* dsusp  CHAR     CHAR enviar� um stop ao terminal quando o input f�r flushed
  eof    CHAR     CHAR enviar� um fim de ficheiro (terminando o input)
  eol    CHAR     CHAR terminar� a linha
* eol2   CHAR     caracter alternativo para terminar a linha
  erase  CHAR     CHAR apagar� o �ltimo caracter escrito
  intr   CHAR     CHAR enviar� um sinal de interrup��o
  kill   CHAR     CHAR apagar� a pr�xima linha
* lnext  CHAR     CHAR dar� entrada ao pr�ximo caracter entre aspas
  quit   CHAR     CHAR enviar� um sinal de quit
* rprnt  CHAR     CHAR redesenhar� a linha actual
  start  CHAR     CHAR recome�ar� o output depois deste ter sido 
                  interrompido
  stop   CHAR     CHAR terminar� o output
  susp   CHAR     CHAR enviar� um sinal de stop ao terminal
* swtch  CHAR     CHAR mudar� para uma shell diferente
* werase CHAR     CHAR apagar� a �ltima palavra escrita
 
Par�metros especiais:
  N               colocar a velocidade de entrada/sa�da a N bauds
* cols N          dizer ao kernel que o terminal tem N colunas
* columns N       o mesmo que cols N
  ispeed N        colocar a velocidade de entrada a N
* line N          usar line discipline
  min N           com -icanon, colocar a N o n�mero m�nimo de caracteres 
                  para uma leitura completa.
* rows N          dizer ao kernel que o terminal tem N linhas
* size            mostrar o n�mero de colunas e de linhas de acordo com o
                  kernel
  speed           mostrar a velocidade do terminal
  time N          com -icanon, colocar o limite de tempo a N d�cimas de
                  segundo
  grupos= %%%c: directiva inv�lida %s: Utilizador inexistente %s: operador bin�rio esperado
 %s: n�o consigo encontrar um nome para o UID %u
 %s: valor num�rico esperado %s: nome de login ausente
 %s: operador un�rio esperado
 %s: valor n�o convertido na totalidade ')' esperado
 ')' esperado, encontrei %s
 -ef n�o aceita -l
 -nt n�o aceita -l
 Altera as identifica��es de utilizador e de grupo efectivas do UTILIZADOR.

  -, -l, --login                tornar a shell numa shell de login
  -c, --command=COMANDO         envia um �nico COMANDO � "shell", usando -c
  -f, --fast                    envia um -f � shell (para csh ou tcsh)
  -m, --preserver-environment   n�o fazer colocar as vari�veis do ambiente
 				aos seus valores por defeito
  -p                            o mesmo que -m
  -s, --shell=SHELL             correr SHELL se /etc/shells o permitir
      --help                    mostrar esta ajuda e sair
      --version                 mostrar a informa��o de vers�o e sair

Um �nico - implica -l. Se UTILIZADOR n�o for especificador, assume-se root.
 Copia o canal de entrada padr�o (stdin) para cada FICHEIRO, e tamb�m para o
canal de sa�da padr�o (stdout).

   -a, --append             acrescenta aos FICHEIROs dados, n�o escreve por
                            cima
   -i, --ignore-interrupts  ignora os sinais de interrup��o
       --help               mostrar esta a ajuda e sair
       --version            mostrar a informa��o de vers�o e sair
 Diagnostica constru��es n�o port�veis em NOME.

   -p, --portability   verifica todos os sistemas POSIX, n�o s� este
       --help          mostra esta ajuda e sai
       --version       mostrar a informa��o de vers�o e sai
 Sair, retornando o estado determinado por EXPRESS�O.

   --help      mostrar esta a ajuda e sair
   --version   mostrar a informa��o de vers�o e sair

EXPRESS�O � verdadeira ou falsa e altera o o estado de sa�da. � uma de:
 Password: Mostra NOME sem a sua componente /; se NOME n�o tiver / mostra `.' (o que
quer dizer a directoria actual).

   --help      mostra esta ajuda e sai
   --version   mostra a informa��o de vers�o e sai
 Mostra o nome do terminal ligado ao canal e entrada padr�o (stdin).

  -s, --silent, --quiet    n�o mostra nada, s� retorna o estado de sa�da
      --help               mostrar esta a ajuda e sair
      --version            mostrar a informa��o de vers�o e sair
 Imprime o nome completo da directoria corrente.

  --help       mostra esta ajuda e sai
  --version    mostra a informa��o da vers�o e sai
 Mostra o nome do utilizador actual.

   --help     mostrar esta ajuda e sair
   --version  mostrar a informa��o de vers�o e sair
 Mostra o nome do utilizador associado � identifica��o de utilizador efectiva
actualmente.
O mesmo que id -un.

   --help      mostrar esta ajuda e sair.
   --version   mostrar informa��o de vers�o e sair
 Retornar repetidamente uma linha com as STRING(s) especificadas, ou 'y'.

   --help      mostrar esta ajuda e sair
   --version   mostrar a informa��o de vers�o e sair
 Corre o COMANDO com uma prioridade de despacho ajustada.
Sem qualquer COMANDO, mostra a prioridade de despacho actual. AJUSTE � 10
por defeito. Valores v�o desde -20 (prioridade mais alta) a 19 (mais baixa).

   -AJUSTE                   incrementa prioridade AJUSTE primeiro
   -n, --adjustment=AJUSTE   igual a -AJUSTE
       --help                mostrar esta ajuda e sair
       --version             mostrar a informa��o de vers�o e sair
 Tente `%s --help' para mais informa��o.
 Utiliza��o: %s EXPRESS�O
        ou: %s OP��O
 Utiliza��o: %s EXPRESS�O
        ou: [ EXPRESS�O ]
        ou: %s OP��O
 Utiliza��o: %s FORMATO [ARGUMENTO]...
        ou: %s OP��O
 Utiliza��o: %s NOME
        ou: %s OP��O
 Utiliza��o: %s [OP��O]
 Utiliza��o: %s [OP��O]...
 Utiliza��o: %s [OP��O]... NOME...
 Utiliza��o: %s [OP��O]... [-] [NOME=VALOR]... [COMANDO [ARG]...]
 Utiliza��o: %s [OP��O]... [-] [UTILIZADOR [ARGUMENTO]...]
 Utiliza��o: %s [OP��O]... [FICHEIRO]...
 Utiliza��o: %s [OP��O]... [STRING]...
 Utiliza��o: %s [OP��O]... [NOMEDOUTILIZADOR]
 Utiliza��o: %s formato [argumento...]
 \%c: caracter de escape inv�lido `%s' n�o � uma directoria `%s' n�o � um inteiro positivo v�lido um comando deve ser dado com um ajuste depois de -eq depois de -ge depois de -gt depois de -le depois de -lt depois de -ne argumento esperado
 antes de -eq antes de -ge antes de -gt antes de -le antes de -lt antes de -ne n�o consigo determinar o hostname n�o consigo obter a directoria actual n�o consigo obter prioridade N�o consigo obter lista de grupos adicional n�o consigo obter o nome do sistema n�o consigo mostrar s� nomes ou ID's reais no formato por defeito n�o consigo mostrar s� o utilizador e s� o grupo n�o consigo correr %s n�o consigo alterar data n�o consigo alterar a identifica��o de grupo n�o consigo alterar grupos n�o consigo alterar o hostname; este sistema n�o disp�e dessa funcionalidade n�o consigo alterar prioridade n�o consigo alterar a identifica��o de utilizador n�o � poss�vel procurar na directoria `%s' a string de formata��o n�o deve ser especificada ao imprimir strings com a 
mesma largura getpass: n�o consigo abrir /dev/tty a ignorar argumentos n�o-op��o password incorrecta esperava uma express�o inteira %s
 argumento inv�lido `%s' data inv�lida `%s' argumento em v�rgula flutuante inv�lido: %s string de formata��o inv�lida: `%s' argumento inteiro inv�lido `%s' op��o inv�lida `%s' prioridade inv�lida `%s' intervalo de tempo inv�lido `%s' falta um ']'
 falta um argumento a `%s' falta um n�mero hexadecimal no caracter de escape nome `%s' tem comprimento %d; excede limite de %d modo_novo: modo
 n�o � um tty o caminho `%s' cont�m o caracter n�o port�vel `%c' caminho `%s' tem comprimento %d; excede limite de %d erro de leitura canal de entrada por omiss�o (stdin) canal de sa�da padr�o (stdout) erro de sintaxe as op��es para imprimir e alterar o tempo n�o podem ser usadas ao mesmo tempo as op��es para  especificar a data de impress�o s�o mutuamente exclusivas poucos argumentos demasiados argumentos demasiados argumentos
 demasiados argumentos n�o-op��o indefenido operador bin�rio desconhecido utilizador %s n�o existe a usar a shell restrita %s aviso: n�o consigo mudar para a directoria %s ao especificar um modo de sa�da, n�o pode alterar um modo quando o valor inicial � maior que o limite,
o incremento deve ser positivo quando o valor inicial � menor que o limite,
o argumento deve ser positivo erro na escrita 