??    )      d  ;   ?      ?  ?  ?  0  D  )   u  ?   ?  v  r     ?	     ?	     
  ,   /
     \
  %   z
  ,   ?
  -   ?
      ?
  &        C     c     ?     ?     ?     ?     ?  ?   ?  &   }     ?     ?     ?     ?  )   ?  (   	     2     Q     q     ?     ?     ?     ?     ?     ?       <    ?  Y  X  	  7   b  ?   ?  ?  ?     v  !   ?  !   ?  0   ?        )      0   J  1   {  "   ?  +   ?  (   ?  (   %     N     i     {     ?     ?  ?   ?  /   }     ?     ?     ?  &   ?  +   ?  *   $  .   O  *   ~  !   ?     ?     ?  "   ?  #        4      T     u        
                                #            $                &                          	   )                (              !          %                       '                         "              
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
 Memory exhausted No syntax specified This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 Try `%s --help' for more information.
 Unbalanced ( Unbalanced ) Unbalanced [ Unfinished \ escape Usage: %s [OPTION]... PATTERN [FILE] ...
 Usage: %s [OPTION]... PATTERN [FILE]...
 conflicting matchers specified invalid context length argument malformed repeat count memory exhausted out of memory recursive directory loop unfinished repeat count unknown binary-files type unknown directories method writing output Project-Id-Version: GNU grep 2.4a
POT-Creation-Date: 2000-03-01 22:44-0500
PO-Revision-Date: 2000-01-31 12:45-0500
Last-Translator: Michel Robitaille <robitail@IRO.UMontreal.CA>
Language-Team: French <traduc@traduc.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 
Contr?le du contexte:
  -B, --before-context=N    imprimer N lignes du contexte d'en-t?te
  -A, --after-context=N     imprimer N lignes du contexte finale
  -C, --context[=N]         imprimer N lignes (2 par d?faut) du contexte
                            ? moins que -A ou -B ne soit sp?cifi?
  -N                        identique ? --context=N
  -U, --binary              ne pas enlever les caract?res CR sur 
                            les fins de lignes (MS-DOS)
  -u, --unix-byte-offsets   afficher les adresses relatives comme si
                            aucun CR n'?tait pr?sent (MS-DOS)

`egrep' est ?quivalent ? `grep -E'. `fgrep' est ?quivalent ? `grep -F'.
Sans FICHIER, ou si - est utilis? comme nom de FICHIER, la lecture
se fait de l'entr?e standard. S'il y a moins de 2 FICHIERS, l'option -h
est implicite. Termine avec 0 s'il y a concordance avec 1 si aucune.
Termine avec 2 s'il y a des erreurs de syntaxe ou de syst?me.
 
Divers:
  -s, --no-messages         supprimer les messages d'erreur
  -v, --revert-match        s?lectionner les lignes sans concordances
  -V, --version             afficher le nom et la version du logiciel
      --help                afficher l'aide et quitter
      --mmap                utiliser la table de m?moire ? l'entr?e si possible
 
Rapporter toutes anomalies ? <bug-gnu-utils@gnu.org>.
   -E, --extended-regexp     PATRON est une expression reguli?re ?tendue
  -F, --fixed-regexp        PATRON est une cha?ne fixe s?par?e par des retour de chariot
  -G, --basic-regexp        PATRON est une expression r?guli?re de base
   -e, --regexp=PATTERN      utiliser le PATRON comme expression r?guli?re
  -f, --file=FILE           obtenir le PATRON du FICHIER
  -i, --ignore-case         ignorer la distrinction de la casse
  -w, --word-regexp         forcer l'appariement du PATRON que sur des mots complets
  -x, --line-regexp         forcer l'appariement du PATRON que sur des lignes enti?res
  -z, --null-data           terminer la ligne de donn?es par Z?RO et
                            non pas par un retour de chariot
 %s (grep de GNU) %s
 %s: l'option -- %c est ill?gale.
 %s: l'option -- %c est invalide.
 %s: l'option `%c%s' ne permet pas de param?tre.
 %s: l'option `%s' est ambigu?.
 %s: l'option `%s' requiert un param?tre.
 %s: l'option `--%s' ne permet pas de param?tre.
 %s: l'option `-W %s' ne permet pas de param?tre.
 %s: l'option `-W %s' est ambigu?.
 %s: l'option  -- %c requiert un param?tre.
 %s: l'option `%c%s' n'est pas reconnue.
 %s: l'option `--%s' n'est pas reconnue.
 %s: AVERTISSEMENT: %s: %s
 (entr?e standard) Fichier binaire %s concorde
 M?moire ?puis?e. Aucune syntaxe sp?cifi? Ce logiciel est gratuit; voir les sources pour les conditions de
reproduction. AUCUNE garantie n'est donn?e; tant pour des raisons
COMMER?IALES que pour R?PONDRE ? UN BESOIN PARTICULIER.
 Pour en savoir davantage, faites: `%s --help'.
 ( non pair? ) non pair? [ non pair? s?quence d'?chappement \ non termin?e. Usage: %s [OPTION]... PATRON [FICHIER] ...
 Usage: %s [OPTION]... PATRON [FICHIER]...
 op?rateurs de concordance sp?cifi?s en conflit param?tre de contexte de longueur invalide d?compte de r?p?tition mal form?. M?moire ?puis?e. M?moire ?puis?e. boucle r?cursive sur le r?pertoire d?compte de r?p?tition non termin?. type de fichier binaire inconnu m?thode inconnue des r?pertoires G?n?ration du r?sultat. 