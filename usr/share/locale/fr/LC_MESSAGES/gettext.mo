��    R      �  m   <      �  �   �  �  �  t  �	  �  *  &  �  �  
           	     *     D  ,   ^     �  %   �  ,   �  -   �      *  &   K     r     �  3   �  /   �  +     ?   B  !   �  /   �  �   �  (   �  &   �     �  4    �  6  �  �   ,  Y#  �  �%  2  [(     �,     �,  8   �,  6   �,  $   ,-     Q-  *   p-  ;   �-     �-     �-     .     +.  $   E.  $   j.     �.     �.     �.  *   �.  "   /     3/     G/  3   d/  "   �/  5   �/  G   �/     90     N0     d0     }0     �0     �0  F   �0     �0  7   1     S1     b1  +   r1  1   �1  *   �1  '   �1     #2     62  8   P2  !   �2     �2     �2  a  �2  ]  >4  �  �5  �  �7  �  g:  �  ?=    -@  
   LC      WC  &   xC  %   �C  /   �C      �C  &   D  /   =D  0   mD  #   �D  &   �D  )   �D  )   E  8   =E  6   vE  3   �E  :   �E  *   F  ,   GF  �   tF  �   sG  0   �G     &H  �  DH  	  �L    �O  7  S    OU  �  oX     ,]  '   ;]  H   c]  L   �]  '   �]  (   !^  /   J^  C   z^     �^  &   �^     �^     _  /   5_  0   e_  #   �_  +   �_  .   �_  -   `  2   C`     v`  ,   �`  6   �`  '   �`  /    a  J   Pa     �a     �a     �a     �a     �a     b  J   .b  6   yb  >   �b     �b     �b  5   c  7   Ec  1   }c  (   �c     �c     �c  L   d  '   Rd  -   zd  #   �d           F   9   I       @   (   /          B   :   .       K   M      R   J           >      1   3                                     !                         +      5   4   	   ,              C   #   %   N   -   D   )   ?           0   L      "          '          Q              H   *      =         P   2       <      A         ;   6              E   7             &   8           $   G   O       
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
 `domain %s' directive ignored `msgid' and `msgstr' entries do not both begin with '\n' `msgid' and `msgstr' entries do not both end with '\n' at least two files must be specified cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix duplicate message definition empty `msgstr' entry ignored end-of-file within string end-of-line within string error while opening "%s" for reading error while opening "%s" for writing error while reading "%s" error while writing "%s" file exactly 2 input files required field `%s' still has initial default value file "%s" is not in GNU .mo format file "%s" truncated fuzzy `msgstr' entry ignored header field `%s' should start at beginning of line headerfield `%s' missing in header impossible selection criteria specified (%d < n < %d) internationalized messages should not contain the `\%c' escape sequence keyword "%s" unknown language `%s' unknown missing `msgstr' section missing arguments no input file given no input files given number of format specifications in `msgid' and `msgstr' does not match seek "%s" offset %ld failed some header fields still have the initial default value standard input standard output this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... too many arguments too many errors, aborting warning: file `%s' extension `%s' is unknown; will try C warning: this message is not used while creating hash table while preparing output Project-Id-Version: GNU gettext 0.10.35
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 1998-05-04 10:03-04:00
Last-Translator: Fran�ois Pinard <pinard@iro.umontreal.ca>
Language-Team: French <fr@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=2; plural=(n > 1);
 
Convertir un fichier .mo, binaire, en fichier .po � la mani�re
d'Uniforum.  Les fichiers grand-boutiens et petit-boutiens sont tous
deux trait�s.  Si le fichier d'entr�e vaut � - �, lit l'entr�e standard.
Sans fichier d'entr�e ou lorsque � - �, lit l'entr�e standard.  Sauf
indication contraire, les r�sultats sont produits sur la sortie standard.
 
Si DOMAINE n'est pas founi, le domaine est obtenu de la variable TEXTDOMAIN
dans l'environnement.  En l'absence du catalogue de messages � l'endroit
habituel, la variable d'environnement TEXTDOMAINDIR peut indiquer un autre
r�pertoire.
Avec l'option � -s �, ce programme se comporte comme la commande � echo �; mais
plut�t que de copier simplement ses arguments sur � stdout �, ceux qui sont
disponibles dans le catalogue choisi sont traduits.

Ensemble des r�pertoires fouill�s: %s
 
Fusionne deux fichiers PO ensemble.  Le fichier DEF.po contient les
anciennes traductions, qui sont transport�es au fichier nouvellement
cr�� dans la mesure o� les cha�nes � traduire se correspondent; les
commentaires sont pr�serv�s, mais les commentaires automatiquement
extraits et les positions dans le fichiers sont �limin�s.  Le fichier
REF.po a �t� r�cemment cr�e (souvent par xgettext), toute traduction
ou commentaire en sera �limin�, toutefois les commentaires � . � et
les positions de fichier sont conserv�s.  Lorsqu'un appariement
exact n'est pas possible, un appariement flou permet de produire de
meilleurs r�sultats.  Ceux-ci sont produits sur la sortie standard,
� moins qu'un fichier de sortie soit explicitement sp�cifi�.
   -V, --version                  identifier le programme, puis terminer
  -w, --width=COLONNES           limiter le nombre de COLONNES en sortie
  -<, --less-than=N              montrer les messages d�finis moins de N fois
  ->, --more-than=N              montrer les messages d�finis plus de N fois

Trouver les messages communs dans un ensemble de plus d'un fichier PO.
L'option � -> � (implicitement 1) exige un plus grand nombre d'occurrences.
L'option � -< � (implicitement infini) exige moins d'occurrences, par exemple,
� -< 2 � ne garde que les message uniques.  Les traductions et commentaires
proviennent du premier fichier PO � les d�finir, les r�f�rences sont
accumul�es de tous les fichiers PO qui en fournissent.
   -i, --indent                   utiliser un style indent� pour le fichier PO
      --no-location              inhiber la production des � #: FICHIER:LIGNE �
  -n, --add-location             produire les � #: FICHIER:LIGNE � (implicite)
      --omit-header              omettre les en-t�tes pour � msgid "" �
  -o, --output=FICHIER           produire la sortie sur le FICHIER indiqu�
  -p, --output-dir=R�PERTOIRE    sortir le fichier produit dans tel R�PERTOIRE
  -s, --sort-output              trier la sortie et �liminer les duplicats
      --strict                   produire un fichier PO strictement Uniforum
  -T, --trigraphs                reconna�tre les trigraphes ANSI C en entr�e
  -u, --unique                   m�me chose que � -< 2 �
   -n, --add-location             produire les � #: FICHIER:LIGNE � (implicite)
      --omit-header              omettre les en-t�tes pour � msgid "" �
  -o, --output=FICHIER           produire la sortie sur le FICHIER indiqu�
  -p, --output-dir=R�PERTOIRE    sortir le fichier produit dans tel R�PERTOIRE
  -s, --sort-output              trier la sortie et �liminer les duplicats
      --strict                   produire un fichier PO strictement Uniforum
  -T, --trigraphs                reconna�tre les trigraphes ANSI C en entr�e
  -V, --version                  identifier le programme, puis terminer
  -w, --width=COLONNES           limiter le nombre de COLONNES en sortie
  -x, --exclude-file=FICHIER     ne pas extraire d'entr�es de FICHIER

Si le FICHIER est � - �, lit l'entr�e standard.
  termin�.
 %s et %s s'excluent mutuellement %s: l'option � %c � n'est pas permise
 %s: l'option � %c � n'est pas valide
 %s: l'option � %c%s � ne tol�re pas d'argument
 %s: l'option � %s � est ambigu�
 %s: l'option � %s � exige un argument
 %s: l'option � --%s � ne tol�re pas d'argument
 %s: l'option � -W %s � ne tol�re pas d'argument
 %s: l'option � -W %s � est ambigu�
 %s: l'option � %c � exige un argument
 %s: l'option � %c%s � n'est pas reconnue
 %s: l'option � --%s � n'est pas reconnue
 %s: attention: certaines traductions sont approximatives %s:%d: attention: constante caract�re sans terminateur %s:%d: attention: constante cha�ne sans terminateur --join-existing interdit si production sur sortie standard ...mais cette d�finition lui est semblable ...voici l'endroit de la premi�re d�finition Copyright � %s Free Software Foundation, Inc.
Ce progiciel est libre.  Consulter les sources pour plus de d�tail sur
les permissions de copie.  Il est distribu� SANS AUCUNE GARANTIE
de QUALIT� LOYALE ET MARCHANDE ou d'AD�QUATION POUR UN BUT PARTICULIER.
 Rapportez tout probl�me fonctionnel � <bug-gnu-utils@gnu.org>.
Les erreurs de traduction doivent �tre dirig�es vers <fr@li.org>.
 Pour plus d'information, essayer � %s --help �.
 Erreur syst�me non identifi�e Usage: %s [OPTION] FICHIER ...
Extraire les messages � traduire � partir de plusieurs fichiers.

Les arguments obligatoires pour la forme longue des options sont aussi
obligatoires pour les formes courtes qui leur correspondent.

  -a, --extract-all              extraire toutes les cha�nes
  -c, --add-comments[=CL�]       sauver le commentaire pr�c�dent poss�dant CL�,
                                 ou celui qui pr�c�de imm�diatement le mot-clef
  -C, --c++                      voir � --language=C++ �
      --debug                    d�tailler l'analyse des cha�nes de format
  -d, --default-domain=DOMAINE   sortir sur DOMAINE.po (non pas messages.po)
  -D, --directory=R�PERT         fouiller R�PERT aussi pour trouver les fichiers
  -e, --no-escape                pas d'�chappements C en sortie (implicite)
  -E, --escape                   �chappements C en sortie, �viter les 8-bits
  -f, --files-from=FICHIER       lire la liste des fichiers d'entr�e de FICHIER
      --force-po                 produire un fichier PO, m�me vide
      --foreign-user             inhiber la production d'un copyright FSF
  -F, --sort-by-file             trier selon la position dans chaque fichier
 Usage: %s [OPTION] FICHIER ...
Les arguments obligatoires pour la forme longue des options sont aussi
obligatoires pour les formes courtes qui leur correspondent.

  -d, --default-domain=DOMAINE   sortir sur DOMAINE.po (non pas messages.po)
  -D, --directory=R�PERT         fouiller R�PERT aussi pour trouver les fichiers
  -e, --no-escape                �viter les �chappement C en sortie (implicite)
  -E, --escape                   �chappements C en sortie, �viter les 8-bits
  -f, --files-from=FICHIER       lire la liste des fichiers d'entr�e de FICHIER
      --force-po                 produire un fichier PO, m�me vide
  -F, --sort-by-file             trier selon la position dans chaque fichier
  -h, --help                     fournir ce message d'aide, puis terminer
 Usage: %s [OPTION] [FICHIER]...
Les arguments obligatoires pour la forme longue des options sont aussi
obligatoires pour les formes courtes qui leur correspondent.

  -e, --no-escape             �viter les �chappement C en sortie (implicite)
  -E, --escape                �chappements C en sorite, �viter les 8-bits
      --force-po              produire un fichier PO, m�me vide
  -h, --help                  fournir ce message d'aide, puis terminer
  -i, --indent                sortie en style indent�
  -o, --output-file=FICHIER   �crire sur FICHIER plut�t que sur sortie standard
      --strict                produire un fichier .po strictement Uniforum
  -V, --version               identifier le programme, puis terminer
  -w, --width=COLONNES        limiter le nombre de COLONNES en sortie
 Usage: %s [OPTION] [[[DOMAINE] MSGID] | [ -s [MSGID]...]]
  -d, --domain=DOMAINE   trouver la traduction de MSGID, dans le DOMAINE donn�
  -e                     reconna�tre et remplacer les s�quences d'�chappement
  -E                     (ignor�, gard� pour des questions de compatibilit�)
  -h, --help             fournir ce message d'aide, puis terminer
  -n                     inhiber la production d'une fin de ligne
  -V, --version          identifier le programme, puis terminer
  [DOMAINE] MSGID        trouver la traduction de MSGID, dans le DOMAINE donn�
 Usage: %s [OPTION] ANCIEN.po NOUVEAU.po
Les arguments obligatoires pour la forme longue des options sont aussi
obligatoires pour les formes courtes qui leur correspondent.

  -D, --directory=R�PERT   fouiller R�PERT aussi pour trouver les fichiers
  -h, --help               fournir ce message d'aide, puis terminer
  -V, --version            identifier le programme, puis terminer

Comparer deux fichiers .po style Uniforum, v�rifier qu'ils contiennent
le m�me ensemble de cha�nes � msgid �.  ANCIEN.po fournit les vieilles
traductions.  NOUVEAU.po a �t� PO r�cemment cr�� (souvent par xgettext).
Cela vous permet de v�rifier que vous avez traduit chacun des messages
de votre programme.  Lorsqu'un appariement exact n'est pas possible,
un appariement flou est utilis� pour un meilleur diagnostic.
 Usage: %s [OPTION] FICHIER.po ...
Compiler un fichier source d�crivant une s�rie de traductions de messages.

Les arguments obligatoires pour la forme longue des options sont aussi
obligatoires pour les formes courtes qui leur correspondent.

  -a, --alignment=OCTETS     aligner cha�nes sur tant d'OCTETS (%d pr�sum�)
  -c, --check                v�rifier ce qui d�pend du langage de programmation
  -D, --directory=R�PERT     fouiller R�PERT aussi pour trouver les fichiers
  -f, --use-fuzzy            aussi transmettre les traductions approxim�es
  -h, --help                 fournir ce message d'aide, puis terminer
      --no-hash              exclure la table de dispersion du binaire produit
  -o, --output-file=SORTIE   choisir le fichier de sortie
      --statistics           donner quelques statistiques sur les traductions
      --strict               se conformer � Uniforum strictement
  -v, --verbose              diagnostiquer toute anomalie dans chaque FICHIER
  -V, --version              identifier le programme, puis terminer

La r�p�tition de l'option � -v � augment le niveau de verbosit�.
Si FICHIER vaut � - �, lit l'entr�e standard.  Si SORTIE vaut � - �,
�crit sur la sortie standard.
 �crit par %s.
 la directive � domain %s � sera ignor�e l'une des cha�nes � msgid � ou � msgstr � d�bute par � \n �, l'autre pas l'une des cha�nes � msgid � ou � msgstr � se termine par � \n �, l'autre pas Il faut indiquer au moins deux fichiers incapable de fabriquer le fichier � %s � � %s � n'est pas appropri� comme nom de domaine domaine � %s � inad�quat comme nom de fichier: utilisera un pr�fixe message doublement d�fini cha�ne � msgstr � vide, entr�e ignor�e fin de fichier intempestive fin de ligne intempestive erreur lors de l'ouverture de � %s � en lecture erreur lors de l'ouverture de � %s � en �criture erreur lors de la lecture de � %s � erreur pendant l'�criture du fichier � %s � exactement deux fichiers sont requis en entr�e Le champ � %s � a toujours sa valeur initiale le fichier � %s � n'est pas en format .mo pour GNU le fichier � %s � est tronqu� cha�ne � msgstr � approxim�e, entr�e ignor�e Le champ � %s � devrait s'appuyer au d�but de la ligne Le champ � %s � est absent de l'en-t�te Crit�re de s�lection irr�alisable (%d < N < %d) un message � traduire ne doit pas contenir la s�quence d'�chappement `\%c' mot-cl� � %s � inconnu langage � %s � inconnu section � msgstr � absente arguments manquants aucun fichier d'entr�e fourni aucun fichier en entr�e nombre diff�rent de sp�cifications de format entre � msgid � et � msgstr � le repositionnement de � %s � � l'endroit %ld a �chou� Quelques champs de l'en-t�te ont toujours leur valeur initiale entr�e standard sortie standard ce fichier ne peut contenir des directives de domaine ce message n'a pas de d�finition dans le domaine � %s � ce message, utilis�, n'est pas d�fini dans � %s � ce message, utilis�, n'est pas d�fini... trop d'arguments trop d'erreurs, j'abandonne attention: � %s � sans classification pour � %s �, le langage C sera pr�sum� attention: ce message n'est pas utilis� pendant la cr�ation de la table de dispersion lors de la pr�paration de la sortie 