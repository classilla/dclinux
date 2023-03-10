??    o      ?  ?         `	  ?   a	  ?  ?	  O  ?  q   G  ?  ?  "   U  -   x     ?     ?     ?     ?     ?       (        >     O     i  ,   ?     ?  %   ?  ,   ?  &   !     H     h     ?     ?     ?     ?  	   ?     ?  &   ?     ?       !        <     P  %   p     ?     ?     ?  &   ?     ?     ?     ?       )        :     X     h     ?     ?  I   ?  #  ?  ?     !        %     >     M  2   Z     ?     ?  
   ?     ?     ?     ?     ?     ?       "   &  )   I  &   s     ?     ?     ?      ?  ,     ,   1  8   ^     ?     ?     ?     ?     ?  
   ?     ?               .     F     S  
   Y     d     w     ~     ?     ?  =   ?     ?                &     ,  	   :     D     P  
   U     `     o     t     ?  Z  ?  ?   ?   &  ?!  i  ?$  {   ,'  ?  ?'  '   o+  :   ?+     ?+     ?+     ,  !    ,     B,     [,  &   n,     ?,     ?,     ?,  )   ?,     -  &   --  )   T-  '   ~-     ?-     ?-     ?-     ?-     .     .     (.     A.  *   H.  $   s.  (   ?.  :   ?.     ?.  +   /  :   C/     ~/     ?/     ?/  0   ?/     ?/     ?/     ?/     0  4   0  )   H0     r0      ?0     ?0     ?0  T   ?0  g  '1  ?   ?3  :   ?4     ?4     ?4  
   ?4  ?   	5     I5  #   a5  
   ?5     ?5     ?5     ?5     ?5     ?5     ?5  %   ?5  )   "6  (   L6     u6     ?6  )   ?6  "   ?6  2   ?6  /   '7  F   W7     ?7  %   ?7  .   ?7     8     8     8     8     08     A8     U8     s8     ?8  	   ?8     ?8     ?8  2   ?8      ?8     9  D   !9     f9     v9     ?9  
   ?9     ?9     ?9     ?9     ?9     ?9     ?9     :  $   :     8:     g   ;      I   +      3   V   &   P                  b   ]           F   J      l   Z   ?       8       *      0   e      <              1   /         7              n       '           ^       9             !   #   (          Y   T           "      M   D   \       K              i      -   _         B   j   h       5   W   E      
      Q      k       6   $   	              @   o   ,          G             `   %   N       X   H   c      :   d   )   .       =   [   m   L              4   f   R       a           O   2   >       A       U          S       C    
  -h, --help      display this help and exit
  -m, --base64    use base64 encoding as of RFC1521
  -v, --version   output version information and exit
 
Controlling the shar headers:
  -n, --archive-name=NAME   use NAME to document the archive
  -s, --submitter=ADDRESS   override the submitter name
  -a, --net-headers         output Submitted-by: & Archive-name: headers
  -c, --cut-mark            start the shar with a cut line

Selecting how files are stocked:
  -M, --mixed-uuencode         dynamically decide uuencoding (default)
  -T, --text-files             treat all files as text
  -B, --uuencode               treat all files as binary, use uuencode
  -z, --gzip                   gzip and uuencode all files
  -g, --level-for-gzip=LEVEL   pass -LEVEL (default 9) to gzip
  -Z, --compress               compress and uuencode all files
  -b, --bits-per-code=BITS     pass -bBITS (default 12) to compress
 
Giving feedback:
      --help              display this help and exit
      --version           output version information and exit
  -q, --quiet, --silent   do not output verbose messages locally

Selecting files:
  -p, --intermix-type     allow -[BTzZ] in file lists to change mode
  -S, --stdin-file-list   read file list from standard input

Splitting output:
  -o, --output-prefix=PREFIX    output to file PREFIX.01 through PREFIX.NN
  -l, --whole-size-limit=SIZE   split archive, not files, to SIZE kilobytes
  -L, --split-size-limit=SIZE   split archive, or files, to SIZE kilobytes
 
Option -o is required with -l or -L, option -n is required with -a.
Option -g implies -z, option -b implies -Z.
 
Protecting against transmission:
  -w, --no-character-count      do not use `wc -c' to check size
  -D, --no-md5-digest           do not use `md5sum' digest to verify
  -F, --force-prefix            force the prefix character on every line
  -d, --here-delimiter=STRING   use STRING to delimit the files in the shar

Producing different kinds of shars:
  -V, --vanilla-operation   produce very simple and undemanding shars
  -P, --no-piping           exclusively use temporary files at unshar time
  -x, --no-check-existing   blindly overwrite existing files
  -X, --query-user          ask user before overwriting files (not for Net)
  -m, --no-timestamp        do not restore file modification dates & times
  -Q, --quiet-unshar        avoid verbose messages at unshar time
  -f, --basename            restore in one directory, despite hierarchy
      --no-i18n             do not produce internationalized shell script
 %s is probably not a shell archive %s looks like raw C code, not a shell archive %s: Illegal ~user %s: No `begin' line %s: No `end' line %s: No user `%s' %s: Not a regular file %s: Short file %s: data following `=' padding character %s: illegal line %s: illegal option -- %c
 %s: invalid option -- %c
 %s: option `%c%s' doesn't allow an argument
 %s: option `%s' is ambiguous
 %s: option `%s' requires an argument
 %s: option `--%s' doesn't allow an argument
 %s: option requires an argument -- %c
 %s: unrecognized option `%c%s'
 %s: unrecognized option `--%s'
 (binary) (compressed) (empty) (file already exists) (gzipped) (text) -C is being deprecated, use -Z instead Cannot access %s Cannot chdir to `%s' Cannot get current directory name Cannot open file %s Cannot use -a option without -n Cannot use -l or -L option without -o Closing `%s' Could not fork Created %d files
 DEBUG was not selected at compile time End of End of part File File %s (%s) Found no shell commands after `cut' in %s Found no shell commands in %s Hard limit %dk
 In shar: remaining size %ld
 Limit still %d
 MD5 check failed Mandatory arguments to long options are mandatory for short options too.
 Mandatory arguments to long options are mandatory for short options too.

  -d, --directory=DIRECTORY   change to DIRECTORY before unpacking
  -c, --overwrite             pass -c to shar script for overwriting files
  -e, --exit-0                same as `--split-at="exit 0"'
  -E, --split-at=STRING       split concatenated shars after STRING
  -f, --force                 same as `-c'
      --help                  display this help and exit
      --version               output version information and exit

If no FILE, standard input is read.
 Mandatory arguments to long options are mandatory to short options too.
  -h, --help               display this help and exit
  -v, --version            output version information and exit
  -o, --output-file=FILE   direct output to FILE
 Must unpack archives in sequence! Newfile, remaining %ld,  No input files Opening `%s' PLEASE avoid -X shars on Usenet or public networks Please unpack part Please unpack part 1 first! Read error SKIPPING STILL SKIPPING Saving %s (%s) Soft limit %dk
 Starting `sh' process Starting file %s
 The `cut' line was followed by: %s Too many directories for mkdir generation Try `%s --help' for more information.
 Unknown system error Usage: %s [FILE]...
 Usage: %s [INFILE] REMOTEFILE
 Usage: %s [OPTION]... [FILE]...
 WARNING: No user interaction in vanilla mode WARNING: Non-text storage options overridden WARNING: not restoring timestamps.  Consider getting and Write error You have unpacked the last part [no, yes, all, quit] (no)? archive binary compressed continue with part continuing file creating directory creating lock directory current size empty extracting extraction aborted failed failed to create lock directory gunzipping file gzipped installing GNU \`touch', distributed in GNU File Utilities... is complete is continued in part memory exhausted next! original size overwrite overwriting part restore of standard input text uncompressing file uudecoding file Date: 1995-08-02 02:00:57+0200
From: Ulrich Drepper <drepper@myware>
Xgettext-Options: --default-domain=sharutils --output-dir=. --add-comments --keyword=_
Files: ../../po/../lib/error.c ../../po/../lib/getopt.c
	 ../../po/../lib/xmalloc.c ../../po/../src/shar.c
	 ../../po/../src/unshar.c ../../po/../src/uudecode.c
	 ../../po/../src/uuencode.c
 
  -h, --help      zeige diese Hilfe und beende
  -m, --base64    benutze Base64 Kodierung wie in RFC1521 beschrieben
  -v, --version   zeige Versionsnummer und beende
 
Kontrolle des Shar Kopfes:
  -n, --archive-name=NAME   benenne Archiv mit NAME
  -s, --submitter=ADRESSE   ?berschreibe Namen des Senders
  -a, --net-headers         gebe Submitted-by: und Archive-name: aus
  -c, --cut-mark            starte shar mit einer Trennlinie

Wie Dateien behandelt werden:
  -M, --mixed-uuencode          entscheide selbst ?ber uuencoding (standard)
  -T, --text-files              alle Dateien sind Text
  -B, --uuencode                alle Dateien sind Bin?r, benutze uuencode
  -z, --gzip                    wende gzip und uuencode auf alle Dateien an
  -g, --level-for-gzip=STUFE    rufe gzip mit -STUFE (standard 9) auf
  -Z, --compress                wende compress und uuencode auf alle Dateien an
  -b, --bits-per-code=BITS      rufe compress mit -BITS (standard 12) auf
 
Programminformationen:
      --help              zeige diese Hilfe und beende
      --version           zeige Versionsnummer und beende
  -q, --quiet, --silent   keine ausf?hrlichen Ausgabe

Auswahl von Dateien:
  -p, --intermix-type     erlaube -[BTzZ] in Dateilisten um Modus zu ?ndern
  -S, --stdin-file-list   Lese Dateiliste von der Standard Eingabe

Unterteilung der Ausgabe:
  -o, --output-prefix=PR?FIX      gebe in Dateien PR?FIX.01 bis PR?FIX.NN aus
  -l, --whole-size-limit=GR?SSE   unterteile Archiv, nicht Dateien, GR?SSE KB
  -L, --split-size-limit=GR?SSE   unterteile Archiv oder Dateien in GR?SSE KB
 
Option -o ist notwendig f?r -l oder -L, Option -n ist notwendig f?r -a.
Option -g impliziert -z, Option -b impliziert -Z.
 
Sicherheit bei der ?bertragung:
  -w, --no-character-count            keine Gr??en?berpr?fung mit `wc -c'
  -D, --no-md5-digest                 keine ?berpr?fung mit `md5sum'
  -F, --force-prefix                  stelle Pr?fix-Zeichen jeder Zeile voran
  -d, --here-delimiter=ZEICHENKETTE   verwende ZEICHENKETTE zur Dateiabgrenzung

Produziere verschiedene Arten von Shars:
  -V, --vanilla-operation   produziere ganz einfache und gen?gsame Shars
  -P, --no-piping           benutze tempor?re Dateien bei Unshar
  -x, --no-check-existing   ?berschreibe existierende Datei ohne Warnung
  -X, --query-user          frage Benutzer vor ?berschreiben (nicht f?r Netz)
  -m, --no-timestamp        stelle Datei ?nderungszeit/-datum nicht wieder her
  -Q, --quiet-unshar        keine ausf?hrlichen Meldungen bei Unshar
  -f, --basename            stelle Verzeichnis, keine Unterverzeichnisse, her
      --no-i18n             erzeuge kein internationalisiertes Shar Archiv
 %s ist wahrscheinlich kein Shell-Archiv %s sieht wie reiner C Code aus, nicht wie ein Shell-Archiv %s: Illegaler ~Benutzer %s: Zeile mit `begin' fehlt %s: Zeile mit `end' fehlt %s: Benutzer `%s' existiert nicht %s: Keine regul?re Datei %s: zu kurze Datei %s: weitere Daten nach `=' F?llzeichen %s: ung?ltige Zeile %s: unzul?ssige Option -- %c
 %s: ung?ltige Option -- %c
 %s: Option `%c%s' erwartet kein Argument
 %s: Option `%s' ist mehrdeutig
 %s: Option `%s' erwartet ein Argument
 %s: Option `--%s' erwartet kein Argument
 %s: Option erwartet ein Argument -- %c
 %s: unbekannte Option `%c%s'
 %s: unbekannte Option `--%s'
 (Bin?r) (mit `compress' komprimiert) (Leer) (Datei existiert bereits) (mit `gzip' komprimiert) (Text) -C wird abgelehnt, benutze -Z statt dessen Auf %s kann nicht zugegriffen werden chdir auf Verzeichnis `%s' nicht m?glich Kann den Name des aktuellen Verzeichnisses nicht ermitteln Kann Datei %s nicht ?ffnen Option -a kann nicht ohne -n genutzt werden Die Optionen -l und -L k?nnen nicht ohne -o genutzt werden Schlie?e `%s' Konnte nicht fork'en %d Datei(en) erzeugt
 DEBUG wurde zur ?bersetzungszeit nicht angegeben Ende von Ende von Teil Datei Datei %s (%s) Habe keine Shell-Kommandos nach `cut' in %s gefunden Habe in %s keine Shell-Kommandos gefunden Hartes Limit %dk
 In shar: verbleibende Gr??e %ld
 Gr??e immer noch %d
 MD5 Test fehlgeschlagen Notwendige Argumente f?r Optionen in Langform sind auch f?r die
Kurzform notwendig.
 Notwendige Argumente f?r Optionen in Langform sind auch f?r die
Kurzform notwendig.

  -d, --directory=VERZEICHNIS  gehe vor Auspacken ins Verzeichnis VERZEICHNIS
  -c, --overwrite              gebe -c Option an shar Skript zum ?berschreiben
  -e, --exit-0                 dasselbe wie `--split-at="exit 0"'
  -E, --split-at=STRING        teile aneinanderh?ngende shars bei STRING
  -f, --force                  das selbe wie `-c'
      --help                   Zeige diese Meldung an und beende
      --version                Zeige die Versionsnummer und beende

Wenn keine DATEI angegeben wird von stdin gelesen.
 Notwendige Argumente f?r Optionen in Langform sind auch f?r die
Kurzform notwendig.
  -h, --help                zeige diese Hilfe und beende
  -v, --version             zeige Versionsnummer und beende
  -o, --output-file=DATEI   leite Ausgabe in DATEI um
 Archiv mu? in der richtigen Reihenfolge ausgepackt werden! Neue Datei, es verbleiben %ld Keine Eingabe-Dateien ?ffne `%s' BITTE -X shars im Usenet oder ?ffentlichen Netzwerken vermeiden Bitte als n?chstes Teil Bitte packen Sie zuerst Teil 1 aus! Lesefehler ?BERSPRINGE ?BERSPRINGE IMMER NOCH Speichere %s (%s) Weiches Limit %dk
 Starte `sh' Proze? Starte Datei %s
 Die `cut' Zeile wurde gefolgt von: %s Zuviele Verzeichnisse f?r mkdir Erzeugung `%s --help' gibt weitere Informationen.
 unbekannter Systemfehler Aufruf: %s [Dateien]...
 Aufruf: %s [EINGABE_DATEI] AUSGABE_DATEI
 Aufruf: %s [OPTION]... [DATEI]...
 ACHTUNG: keine Benutzer-Eingabe im `vanilla' Modus ACHTUNG: Non-Text Speicher Option ?berschrieben WARNUNG: Zeitstempel der Datei wird nicht richtig gesetzt.  Vielleicht Schreibfehler Sie haben den letzten Teil ausgepackt [nein (n), ja (y), alle (a), Ende (q)] (nein)? Archiv bin?r komprimiert mache weiter mit Teil setze fort Datei erzeuge Verzeichnis erzeuge Sicherungsverzeichnis jetzige Gr??e leer packe aus Herausholen abgebrochen ist fehlgeschlagen Sicherungsverzeichnis konnte nicht angelegt werden Dekomprimiere mit `gunzip' Datei mit gzip erstellt wollen Sie Sich GNU \\`touch' aus den GNU File Utilities besorgen... ist vollst?ndig wird fortgesetzt in Teil virtueller Speicher ersch?pft auspacken! urspr?ngliche Gr??e ?berschreibe ?berschreibe Teil Restaurierung von Standard Eingabe Text Dekomprimiere mit `uncompress' Datei Dekodiere mit `uudecode' Datei 