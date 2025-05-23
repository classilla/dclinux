��    :      �  O   �      �  �   �  �  �  t  �     2
      :
     [
     u
  ,   �
     �
  %   �
  ,      &   -     T     t  ?   �  !   �  /   �     &  ,  ;     h     �  *   �  ;   �          )     F     `  $   z  $   �     �     �     �  *     "   E     h  3   |  "   �  G   �          0     I     [     o  F   �     �  7   �          .  +   >  1   j  *   �  '   �     �       !        >     X  �  o  �     �    r  �       "   $     G     e  )   �     �  !   �  )   �  "        7     W  B   w     �     �     �  ,    (   <  )   e  ,   �  @   �     �        !   =      _  &   �     �     �  #   �  )   �  1   '   !   Y      {   4   �      �   G   �       )!     J!     Z!     m!     �!  =   �!  !   �!  @   "     E"     U"  ,   f"  (   �"  1   �"  /   �"     #  #   0#  "   T#  !   w#     �#                   :                                     9               $       ,                     	   2                          6   !   -   *              %   #   4           1      '                     8   5   )   "         /   
   (   +       3      &   7             .   0        
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
 `domain %s' directive ignored cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix duplicate message definition empty `msgstr' entry ignored end-of-file within string end-of-line within string error while opening "%s" for reading error while opening "%s" for writing error while reading "%s" error while writing "%s" file exactly 2 input files required field `%s' still has initial default value file "%s" is not in GNU .mo format file "%s" truncated header field `%s' should start at beginning of line headerfield `%s' missing in header internationalized messages should not contain the `\%c' escape sequence keyword "%s" unknown missing `msgstr' section missing arguments no input file given no input files given number of format specifications in `msgid' and `msgstr' does not match seek "%s" offset %ld failed some header fields still have the initial default value standard input standard output this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: this message is not used while creating hash table while preparing output Project-Id-Version: GNU gettext 0.10.24
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 1996-09-12 21:15
Last-Translator: Primoz Peterlin <primoz.peterlin@biofiz.mf.uni-lj.si>
Language-Team: Slovenian <sl@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=4; plural=(n==1 ? 0 : n%10==2 ? 1 : n%10==3 || n%10==4 ? 2 : 3);
 
Pretvorba datoteke iz binarne oblike .mo v obliko Uniforum .po
Datoteke .mo so lahko little-endian ali big-endian.
�e vhodna datoteka ni podana, ali pa je podano ime -, beremo standardni vhod.
�e ni izbrano druga�e, gre izpis na standardni izhod.
 
�e parameter TEXTDOMAIN ni podan, se uporabi vrednost spremenljivke TEXTDOMAIN
iz okolja.  �e kataloga sporo�il ni mo� najti na obi�ajnem mestu, lahko 
dolo�imo alternativno lokacijo s spremenljivko TEXTDOMAINDIR.
Z izbiro -s se program obna�a podobno kot ukaz ,echo', s to razliko, da
na standardni izhod niso prepisani argumenti, ampak njihovi prevodi iz kataloga
sporo�il.
Privzet imenik s katalogom sporo�il: %s
 
Zdru�i dve datoteki .po v stilu Uniforum.  Datoteka def.po je obstoje�a
datoteka s starimi prevodi, ki bodo, kadar se ujemajo,  prene�eni v novo
datoteko. Pri prevedbi se komentarji prevajalca ohranijo, strojno ustvarjeni
komentarji in podatki o �tevilki vrstice pa ne. Datoteka ref.po je nazadnje
ustvarjena datoteka PO (v splo�nem z xgettext).  Kakrksnikoli prevodi ali
komentarji prevajalca v njej bodo zavr�eni, ohranjeni pa bodo strojno
ustvarjeni komentarji in podatki o �tevilki vrstice.  Kjer eksaktnega prevoda
ni, se uporabi ohlapni (fuzzy) algoritem.  �e izhodna datoteka ni podana, gre
izpis na standardni izhod.
  opravljeno.
 %s in %s se med seboj izklju�ujeta %s: nedovoljena izbira -- %c
 %s: neveljavna izbira -- %c
 %s: izbira ,%c%s' ne dovoljuje argumenta
 %s: izbira ,%s' je dvoumna
 %s: izbira ,%s' zahteva argument
 %s: izbira ,--%s' ne dovoljuje argumenta
 %s: izbira zahteva argument -- %c
 %s: neprepoznana izbira ,%c%s'
 %s: neprepoznana izbira ,--%s'
 pri izpisu na standardni izhod ne moremo uporabiti --join-existing ...a ta definicija je podobna ...to je kraj prve definicije Neznana sistemska napaka Usage: %s [IZBIRA] [[[TEXTDOMAIN] MSGID] | [-s [MSGID]...]]
  -d, --domain=TEXTDOMAIN   retrieve translated messages from TEXTDOMAIN
  -e                        enable expansion of some escape sequences
  -E                        (ignored for compatibility)
  -h, --help                display this help and exit
  -n                        suppress trailing newline
  -V, --version             display version information and exit
  [TEXTDOMAIN] MSGID        retrieve translated message corresponding
                            to MSGID from TEXTDOMAIN
 direktiva ,domain %s' ni bila upo�tevana izhodne datoteke "%s" ni mogo�e ustvariti ime domene "%s" ni primerno kot ime datoteke ime domene "%s" ni primerno kot ime datoteke: uporabimo predpono podvojena definicija sporo�ila prazno polje ,msgstr' ignorirano znak za konec datoteke sredi niza znak za konec vrstice sredi niza datoteke "%s" ni mo� odpreti za branje napaka pri pisanju na "%s" napaka pri branju "%s" napaka pri pisanju na datoteko "%s" potrebni sta natan�no dve vhodni datoteki polje ,%s' ima �e vedno za�etno privzeto vrednost datoteka "%s" ni v obliki GNU .mo datoteka "%s" okrnjena polje ,%s' v glavi se mora za�eti na za�etku vrstice v glavi manjka polje ,%s' internacionalizirana sporo�ila ne smejo vsebovati ube�ne sekvence ,\%c' klju�na beseda "%s" neprepoznana manjka ,msgstr' argumenti manjkajo vhodna datoteka ni podana vhodni datoteki nista podani �tevili formatnih dolo�il v ,msgid' in ,msgstr' se ne ujemata dostop do "%s" ofset %ld ni mo�en nekatera polja v glavi imajo �e vedno za�etne privzete vrednosti standardni vhod standardni izhod ta datoteka morda ne vsebuje direktiv domene to sporo�ilo ni definirano v domeni "%s" to sporo�ilo je uporabljeno, a ne definirano v %s to sporo�ilo je uporabljeno, a ne definirano... preve� argumentov preve� napak, nadaljevanje ni mo�no pozor: to sporo�ilo ni uporabljeno med ustvarjanjem razpr�ene tabele med pripravo izpisa 