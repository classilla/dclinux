��            )         �  �  �  t  �           '  ,   A     n  %   �  ,   �  &   �  !        (  *   G  ;   r     �     �  "   �     	  G   "	     j	     �	     �	  F   �	     �	  +   
  1   8
  *   j
  '   �
  !   �
     �
     �
  d    �  u  �  `     �       $   0     U  "   s  $   �  #   �  !   �       (     :   F      �     �  #   �     �  I   �     A     Z     k  J   �     �  )   �  2     0   J  .   {  '   �     �     �     
                                                                     	                                                              
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
 %s and %s are mutually exclusive %s: illegal option -- %c
 %s: option `%c%s' doesn't allow an argument
 %s: option `%s' is ambiguous
 %s: option `%s' requires an argument
 %s: option `--%s' doesn't allow an argument
 %s: option requires an argument -- %c
 ...but this definition is similar cannot create output file "%s" domain name "%s" not suitable as file name domain name "%s" not suitable as file name: will use prefix error while writing "%s" file exactly 2 input files required file "%s" is not in GNU .mo format file "%s" truncated internationalized messages should not contain the `\%c' escape sequence missing `msgstr' section missing arguments no input file given number of format specifications in `msgid' and `msgstr' does not match seek "%s" offset %ld failed this file may not contain domain directives this message has no definition in the "%s" domain this message is used but not defined in %s this message is used but not defined... warning: this message is not used while creating hash table while preparing output Project-Id-Version: GNU gettext 0.10
POT-Creation-Date: 2001-04-18 22:38+0200
PO-Revision-Date: 1996-03-21 08:46 EST
Last-Translator: Karl Anders �ygard <karlo@ifi.uio.no>
Language-Team: Norwegian-nynorsk <no@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
Plural-Forms: nplurals=2; plural=(n != 1);
 
Dersom TEXTDOMAIN-parameteren ikkje er gjeven, vert domenet valgt fr�
milj�-variabelen TEXTDOMAIN.  Dersom meldingskatalogen ikkje finst i den
vanlege filkatalogen, kan ein annan filkatalog spesifiserast ved hjelp av
milj�-variabelen TEXTDOMAIN.
N�r flagget -s vert brukt, oppf�rer programmet seg som kommandoen �echo�,
men gjer ikkje ein enkel kopiering av argumenta sine til standard ut.  I
staden vert meldingar som er funne i den valgte katalogen oversatt.
Standard s�kekatalog er: %s
 
Fletter saman to Uniforum .po-filer.  def.po-filen er ei eksisterande
PO-fil med gamle oversetjingar, som vil verte overf�rt til den nye fila
dersom dei framleis stemmer.  Kommentarar vert teke med, men kommentarer om
sj�lve ekstraheringa og fil-posisjoner vert sletta.  ref.po-filen er den
sist genererte PO-fila (vanlegvis generert med xgettext).  Oversetjingar
eller kommentarer i denne fila vert sletta, men punktum-kommentarer og
fil-posisjonar vert teke vare p�.  Der det ikkje er mogleg � finne ei
eksakt overeinsstemming, vert �fuzzy� samanlikning brukt for � f� betre
resultat.  Resultatet vert skrive til standard ut, med mindre ei utfil er
spesifisert.
 %s og %s utelukker kvarandre %s: ulovleg flagg -- %c
 %s: flagg �%c%s� tek ikkje argument
 %s: flagg �%s� er fleirtydig
 %s: flagg �%s� treng eit argument
 %s: flagg �--%s� tek ikkje argument
 %s: flagg treng eit argument -- %c
 ... men denne definisjonen liknar kan ikkje skape utfila "%s" domenenamn "%s" passar ikkje som filnavn domenenamnet "%s" passar ikkje som filnavn: brukar prefiks feil under skriving av fila "%s" treng n�yaktig to innfiler fila "%s" er ikkje i GNU .mo-format filen "%s" er avkutta internasjonaliserte meldingar skal ikkje innehalde escape-sekvensen �\%c� manglar �msgstr�-seksjon manglar argument inga innfil spesifisert antall format-spesifiseringar i �msgid� og �msgstr� stemmer ikkje overeins �seek� "%s" posisjon %ld feila denne fila kan innehalde domene-n�kkelord denne meldinga har ingen definisjon i "%s"-domenet denne meldinga er brukt, men ikkje definert i %s denne meldinga er brukt, men ikkje definert... advarsel: denne meldinga er ikkje brukt mens hash-tabellen vart laga under klargjering av utdata 