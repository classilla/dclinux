��    W      �     �      �  �   �  
   j  E   u  (   �      �  $   	     *	  &   J	  #   q	  $   �	     �	  W   �	     (
  $   G
     l
     �
  	   �
     �
     �
  8   �
          +      I     j     �     �     �  (   �  %     ,   ,     Y  #   n  0   �  T   �  X     X   q  =   �  F     4   O     �     �     �     �     �          .     F  0   \  "   �  *   �     �     �          -     =     W     g     �      �      �     �  +   �     $     3      B     c     s     �  A   �  $   �     �     	          %     8     P     d     }     �  2   �     �     �       #   -     Q  !   g  =  �    �     �  a   �  3   :  -   n  ,   �  "   �  0   �  &     ,   D     q  [   �     �  8     .   @  /   o     �     �     �  Q   �     &     :  )   V     �  !   �  ,   �  !   �  &     *   8  *   c     �  "   �  6   �  Z   �  \   X  `   �  L     U   c  7   �  $   �  %     $   <     a  +   ~  '   �  $   �     �  4     2   E  <   x  *   �  !   �  !        $  !   A     c     x     �  %   �  &   �  !   �  "         B      U   $   h      �      �      �   X   �   +   $!     P!     f!     o!     �!     �!     �!      �!     �!      �!  6   "      V"  )   w"  #   �"     �"     �"      #         8   V   ,      %      
   .   =               U                        L                            /   E   (      W       +   2              I       -   <                      O   M   '       $       J   4   B   6          P   :      0   Q       H                      >                 S              7   #   A          1   !             T   5   G   9   N   F                           &   @       D   )   ?   K       C      	   R              3          *   ;   "       
Usage:
	%1$s [ metabit | meta | bit | escprefix | esc | prefix ]
Each vt has his own copy of this bit. Use
	%1$s [arg] < /dev/ttyn
to change the settings of another vt.
The setting before and after the change are reported.
     FAILED   (Linux kernel < 2.3.X can't handle unicode compose chars properly)
 %s: Font already had no character table
 %s: Font has no character table
 %s: addfunc called with bad func %d
 %s: addfunc: func_buf overflow
 %s: cannot deallocate or clear keymap
 %s: could not deallocate keymap %d
 %s: failed to restore keyboard mode
 %s: unknown mode: %s
 %s: warning: this map uses Unicode symbols
    (perhaps you want to do `kbd_mode -u'?)
 %s: wrong number of arguments
 (No change in compose definitions.)
 : error reading keyboard mode
 : error setting keyboard mode
 ?UNKNOWN? ASCII or 8bit mode (XLATE) Cannot find %s
 Error reading current setting. Maybe stdin is not a VT?
 KDSKBDIACR failed
 Keymap %d: Permission denied
 Loaded %d compose definition%s.
 Loading unicode map from %s.
 Meta key gives Esc prefix
 Meta key sets high order bit
 Strange mode for Meta key?
 The keyboard is in Unicode (UTF-8) mode
 The keyboard is in some unknown mode
 The keyboard is in the default (ASCII) mode
 UTF-8 mode (UNICODE) Usage: %s [option...] [mapfile...]
 Usage: %s [option]
Report and set keyboard mode
 Usage: %s [options] psffont [outfile]
Strip Unicode character table from a PSF font
 Usage: %s psffont chartable [outfile]
Extract a Unicode character table from a PSF font
 Usage: %s psffont_in sfm_file [psffont_out]
Add a Unicode character table to a PSF font
 WARNING: Unicode mode is experimental -- output may be wrong
 Warning: Compose char %4x ('%c','%c') > 0xFF will be truncated to %2x
 [ if you are trying this under X, it might not work
 addkey called with bad index %d addkey called with bad table %d addmap called with bad index %d cannot open file %s
 clear kernel compose table clear kernel string table compose table overflow
 deallocate keymap %d
 display only the interpreted keycodes (default). failed to bind key %d to value %d
 failed to bind string '%s' to function %s
 failed to clear string %s
 impossible error in do_constant input psffont filename kb mode was %s
 key bindings not changed
 keycode %3d %s
 keycode %d, table %d = %d%s
 keycode mode (MEDIUMRAW) killkey called with bad index %d killkey called with bad table %d load default keymap file loadkeys: don't know how to compose for %s
 new state:     old state:     output a "defkeymap.c" to stdout output filename output psffont filename press press any key (program terminates after %us of last keypress)...
 print this help information and exit psffont filename release report more changes report the changes report version and exit scancode mode (RAW) screen-font-map filename set mode set the timeout to N seconds. since the X server is also reading /dev/console ]
 syntax error in map file
 timeout value must be numeric too many compose definitions
 too many keydefinitions on one line unrecognized argument usage: %s [options...] <command>
 Project-Id-Version: console-tools 0.2.2
POT-Creation-Date: 1999-10-25 22:33+0200
PO-Revision-Date: 1999-10-03 10:44+02:00
Last-Translator: Lorenzo Cappelletti <L.Cappelletti@POBoxes.com>
Language-Team: Italian <it@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
 
Uso:
	%1$s [ metabit | meta | bit | escprefisso | esc | prefisso ]
Ogni vt possiede la propria copia di questo bit. Utilizzare
	%1$s [arg] < /dev/ttyn
per cambiare le impostazioni di un'altra vt.
Vengono riportate le impostazioni prima e dopo il cambiamento.
     FALLITO   (il kernel Linux < 2.3.X non � in grado di trattare correttamente i caratteri di composizione)
 %s: il font gi� non possiede una tabella caratteri
 %s: il font non ha nessuna tabella caratteri
 %s: addfunc chiamata con funzione %d errata
 %s: addfunc: overflow di func_buf
 %s: non posso deallocare o cancellare la keymap
 %s: non posso deallocare la keymap %d
 %s: fallito il ripristino del modo tastiera
 %s: modo sconosciuto: %s
 %s: attenzione: questa mappa usa i simboli Unicode
    (forse si voleva un `kbd_mode -u'?)
 %s: numero di argomenti errato
 (Nessun cambiamento nelle definizioni di composizione.)
 : errore durante la lettura del modo tastiera
 : errore nell'impostare il modo della tastiera
 ?SCONOSIUTO? ASCII o modo 8bit (XLATE) Non trovo %s
 Errore durante la lettura delle impostazioni correnti. Forse stdin non � una VT?
 KDSKBDIACR fallito
 Keymap %d: permesso negato
 Definizione di composizione %d caricata.
 Carico la mappa unicode da %s.
 Il tasto Meta d� il prefisso Esc
 Il tasto Meta imposta il bit di ordine alto
 Modo inusuale per il tasto Meta?
 La tastiera � in modo Unicode (UTF-8)
 La tastiera � in qualche modo sconosciuto
 La tastiera � in modo predefinito (ASCII)
 modo UTF-8 (UNICODE) Uso: %s [opzione...] [filemap...]
 Uso: %s [opzione]
Riporta ed imposta il modo tastiera
 Uso: %s [opzioni] fontpsf [fileuscita]
Toglie la tabella caratteri Unicode da un font PSF
 Uso: %s fontpsf tabellacar [fileuscita]
Estrae una tabella caratteri Unicode da un font PSF
 Uso: %s fontpsf_in file_sfm [fontpsf_out]
Aggiunge una tabella caratteri Unicode ad un font PSF
 ATTENZIONE: il modo Unicode � sperimentale -- l'output pu� essere sbagliato
 Attenzione: il carattere di composizione %4x ('%c','%c') > 0xFF verr� troncato a %2x
 [ se lo stai provando sotto X, potrebbe non funzionare
 addkey chiamata con indice %d errato addkey chiamata con tabella %d errata addmap chiamata con indice %d errato non posso aprire il file %s
 cancella la tabella composizione del kernel cancella la tabella stringhe del kernel overflow della tabella composizione
 deallocazione keymap %d
 mostra solo i codi tasto interpretati (predefinito). fallito il collegamento del tasto %d al valore %d
 fallito il collegamento della stringa '%s' alla funzione %s
 fallita la cancellazione della stringa %s
 errore impossibile in do_constant nome del file fontpsf di ingresso la modalit� tastiera era %s
 binding dei tasti non modificato
 codice tasto %3d %s
 keycode %d, tabella %d = %d%s
 modo keycode (MEDIUMRAW) killkey chiamata con indice %d errato killkey chiamata con tabella %d errata carica il file keymap predefinito loadkeys: non so come comporre %s
 nuovo stato:       vecchio stato:     stampa un "defkeymap.c" sullo stdout nome del file di uscita nome del file fontpsf di uscita premi premere un tasto qualsiasi (il programma termina dopo %us dall'ultimo tasto premuto)...
 stampa questa informazione di aiuto ed esce nome del file fontpsf rilascia riporta pi� cambiamenti riporta i cambiamenti riporta la versione ed esce modo scancode (RAW) nome del file mappa-font-schermo imposta il modo imposta il timeout ad N secondi. in quanto il server X sta gi� leggende /dev/console ]
 errore di sintassi nel file map
 il valore di timeout deve essere numerico troppe definizioni di composizione
 troppe definizioni su una linea argomento non riconosciuto uso: %s [opzioni...] <comando>
 