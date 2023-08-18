\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.316
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Deus Deus meus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Deus Deus meus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Deus Deus meus" }
    \line {}
  }
}

chantText = \lyricmode {
De -- us, _ _ _ _ _ _ _ _ _ _ 
\set stanza = " * " 
De -- us me -- us, ré -- spi -- ce _ in me: _ _ _ _ _ 
qua -- re me _ _ de -- re -- li -- _ quí -- sti? _ ℣. 
Lon -- _ _ _ _ _ _ _ _ _ ge a sa -- lú -- te me -- _ _ a _ _ _ _ 
ver -- _ ba _ _ de -- li -- ctó -- _ _ rum me -- ó -- _ _ _ _ _ rum. _ ℣. 
De -- us me -- _ _ us 
cla -- má -- _ bo per di -- em, 
nec ex -- áu -- di -- es: _ _ _ _ _ 
in no -- cte, et _ non _ _ ad in -- si -- pi -- én -- ti -- am mi -- hi. _ ℣. 
Tu au -- _ _ _ _ _ _ _ _ tem in san -- cto há -- bi -- tas, _ _ _ _ _ 
laus _ Is -- ra -- el. _ _ _ _ _ _ _ ℣. 
In te spe -- rá -- ve -- _ _ runt pa -- tres no -- _ _ stri: _ _ _ _ 
spe -- ra -- vé -- _ runt, _ _ 
et li -- be -- rá -- sti _ e -- os. _ ℣. 
Ad te cla -- ma -- vé -- _ _ _ runt, 
et sal -- vi fa -- cti sunt: _ _ _ _ _ 
in te spe -- ra -- vé -- _ runt, _ _ 
et non _ _ sunt con -- fú -- si. _ _ ℣. 
E -- go au -- _ _ _ _ _ _ _ _ tem sum ver -- mis, et non ho -- _ _ _ _ mo: _ _ _ _ 
op -- pró -- bri -- um hó -- _ mi -- num, _ _ 
et ab -- jé -- cti -- o ple -- bis. _ _ ℣. 
O -- mnes _ qui vi -- dé -- _ _ bant me, _ _ 
a -- sper -- na -- bán -- _ _ _ _ tur me: _ _ _ _ 
lo -- cú -- ti sunt lá -- _ bi -- is _ _ 
et mo -- vé -- runt ca -- put. _ _ ℣. 
Spe -- rá -- vit in Dó -- mi -- no, 
e -- rí -- pi -- at e -- um: _ _ _ _ 
sal -- vum fá -- ci -- at e -- _ um, _ _ 
quó -- ni -- am vult e -- um. _ _ ℣. 
Ip -- si ve -- ro _ con -- si -- de -- ra -- vé -- runt, _ et con -- spe -- xé -- runt me: _ _ _ _ _ 
di -- vi -- sé -- runt si -- _ bi _ _ 
ve -- sti -- mén -- ta me -- a, _ 
et su -- per ve -- stem me -- am 
mi -- sé -- runt _ _ sor -- tem. _ _ ℣. 
Lí -- be -- ra me _ _ _ _ _ _ _ _ _ _ 
de o -- re _ le -- ó -- _ _ _ _ nis: _ _ _ _ 
et a cór -- ni -- _ bus u -- ni -- cor -- nu -- ó -- _ rum _ _ 
hu -- mi -- li -- tá -- tem _ me -- am. _ ℣. 
Qui ti -- mé -- tis Dó -- mi -- _ num, 
lau -- dá -- te e -- _ _ um: _ _ _ _ 
u -- ni -- vér -- sum se -- men Ja -- _ _ cob, _ 
ma -- gni -- fi -- cá -- te _ e -- um. _ ℣. 
An -- nun -- ti -- á -- bi -- tur Dó -- mi -- _ no 
ge -- ne -- rá -- ti -- _ o ven -- tú -- _ _ ra: _ _ _ _ 
et an -- nun -- ti -- á -- bunt cœ -- _ li _ _ 
ju -- stí -- _ _ ti -- am e -- _ _ _ _ _ jus. _ ℣. 
Pó -- pu -- lo _ _ _ qui na -- scé -- _ tur, 
quem fe -- _ _ cit 
\set stanza = " * " Dó -- _ _ mi -- nus. _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 f'4 ( g'4 f'4 d'4.) f'4 ( g'4 f'4) g'4 ( a'4 g'4.) f'4 ( g'4 f'4) g'4 ( a'4 g'4) \divisioMinima
 f'4 ( g'4) bes'4 ( a'4 bes'4) ~ bes'4 ( a'4 g'4 \forceBreak
) a'4 ( g'4 a'\prall bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 f'4 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( bes'4) bes'4 \divisioMinima
 bes'4 bes'4 bes'4 ( a'4) ~ a'4 ( g'4) g'4 ( \once \tweak #'font-size #-4 f'  \forceBreak
) f'4 ( g'4) a'4 ( g'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 bes'4 ( c''4) bes'4 ( c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) f'4 ( g'4) f'4 ( bes'4) a'4 ( bes'4) c''4 ( bes'4 \forceBreak
) bes'4 ( a'4 g'4) g'4 a'4 ( a'4 g'4) \finalis
 g'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( g'4) a'4 bes'4 ( a'4) ~ a'4 ( g'4) bes'4 c''4 ( bes'4) ~ bes'4 ( a'4) c''4 d''4 ( c''4) ~ c''4 ( a'4) bes'4 ( c''4 a'4 bes'4 g'4) g'4 \divisioMinima \forceBreak

 g'4 bes'4 ( a'4) bes'4 g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4 \forceBreak
) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMinima
 f'4 f'4 ( bes'4 a'4) bes'4 c''4 ( bes'4) ~ bes'4 ( f'4) g'4 ( a'4 g'4) bes'4 ( a'4) bes'4 ( g'4) a'4 ( a'4 g'4) \divisioMinima
 bes'4 ( c''4 bes'4 a'4 \forceBreak
) bes'4 ( c''4 g'4 f'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 a'4 ( a'4 g'4) \finalis
 g'4 ( bes'4 a'4) bes'4 ( c''4) c''4 ( d''4 c''4) d''4 ( c''4) d''4 ( g'4) g'4 \divisioMaior \forceBreak

 bes'4 bes'4 ( c''4 d''4 c''4 bes'4 a'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 ( g'4 a'4) g'4 \divisioMaior
 a'4 c''4 bes'4 ( bes'4 a'4) g'4 ( f'4 \forceBreak
) f'4 ( g'4) a'4 ( g'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 a'4 ( bes'4) g'4 \divisioMinima
 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) f'4 \forceBreak
 g'4 ( bes'4) bes'4 bes'4 a'4 ( bes'4 c''4 d''4 bes'4) g'4 g'4 ( a'\prall bes'4 a'4) bes'4 ( a'4 g'4) g'4 a'4 ( a'4 g'4) \finalis
 f'4 ( g'4) bes'4 c''4 ( bes'4) ~ bes'4 ( g'4 \forceBreak
) bes'4 ( bes'4) c''4 ( d''4 bes'4) ~ bes'4 ( a'4) c''4 ( bes'4) ~ bes'4 ( a'4) ~ a'4 ( g'4 a'\prall bes'4 a'4 bes'4) a'4 ( g'4) \divisioMinima
 bes'4 bes'4 ( bes'4 \once \tweak #'font-size #-4 a' ) c''4 bes'4 ( bes'4 a'4) g'4 ( f'4 \forceBreak
) f'4 ( g'4) a'4 ( g'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 bes'4 ( bes'4) ~ bes'4 ( a'4 f'4) g'4 ( a'\prall bes'4 a'4) bes'4 bes'4 c''4 ( d''4 bes'4) ~ bes'4 ( a'4) c''4 ( \forceBreak
 bes'4) ~ bes'4 ( a'4) ~ a'4 ( g'4 a'\prall bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \finalis
 f'4 ( g'4 \once \tweak #'font-size #-4 bes' ) bes'4 a'4 ( bes'4) g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 ( a'\prall bes'4) \divisioMinima \forceBreak

 bes'4 g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 a'4 ( bes'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4 \forceBreak
) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 ( c''4) bes'4 ( bes'4 a'4) g'4 ( f'4 g'4) f'4 ( bes'4) a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 g'4 a'4 ( a'4 g'4) \finalis \forceBreak

 bes'4 c''4 bes'4 ( c''4 bes'4) g'4 g'4 ( bes'4 a'4 bes'4.) a'4 ( bes'4) d''4 ( c''4 a'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 bes'4 bes'4 ( bes'4 \once \tweak #'font-size #-4 a' ) c''4 bes'4 ( bes'4 a'4 \forceBreak
) g'4 ( f'4) f'4 ( g'4) a'4 ( g'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 a'4 ( bes'4) g'4 ( a'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4 \forceBreak
) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 ( c''4) bes'4 c''4 ( bes'4) ~ bes'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 g'4) bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 ( a'4 g'4) g'4 ( f'4 g'4 f'4 d'4.) g'4 ( f'4 g'4) a'4 ( a'4 g'4) \finalis \forceBreak

 f'4 g'4 bes'4 c''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4) c''4 ( d''4 bes'4) ~ bes'4 ( a'4) c''4 ( bes'4) ~ bes'4 ( a'4) ~ a'4 ( g'4 a'\prall bes'4 a'4 bes'4) a'4 ( g'4) \divisioMinima \forceBreak

 g'4 ( c''4) c''4 c''4 ( d''4) g'4 c''4 d''4 ( c''4) ~ c''4 ( g'4) bes'4 ( bes'4 g'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima \forceBreak

 f'4 a'4 ( bes'4) g'4 g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior
 c''4 f'4 g'4 g'4 bes'4 ( a'4 \forceBreak
) bes'4 ( a'4 g'4) g'4 ( f'4 g'4 f'4 d'4.) g'4 ( f'4 g'4) a'4 ( a'4 g'4) \finalis
 bes'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 bes'4 ( g'4 bes'4) c''4. bes'4 ( c''4) d''4 ( c''4 \forceBreak
) c''4 ( \once \tweak #'font-size #-4 a' ) a'4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 g'4 c''4 d''4 ( c''4) ~ c''4 ( g'4) bes'4 ( bes'4 g'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4 \forceBreak
) g'4 ( \once \tweak #'font-size #-4 a' ) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 a'4 ( bes'4) g'4 g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( c''4 \forceBreak
) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior
 c''4 f'4 g'4 bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 ( a'4 g'4) g'4 ( f'4 g'4 f'4 d'4.) g'4 ( f'4 g'4) a'4 ( a'4 g'4) \finalis \forceBreak

 bes'4 c''4 bes'4 ( c''4 bes'4 g'4) g'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( a'4) bes'4 ( c''4 bes'4 g'4) g'4 \divisioMaior
 bes'4 ( a'4) bes'4 ( c''4) bes'4 ( a'4 f'4) g'4 a'4 ( g'4 a'4) g'4 ( f'4 \forceBreak
) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 f'4 a'4 ( bes'4) g'4 g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior \forceBreak

 c''4 bes'4 ( a'4 f'4) g'4 bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 ( a'4 g'4) g'4 ( f'4 g'4 f'4 d'4.) g'4 ( f'4 g'4) a'4 ( a'4 g'4) \finalis
 bes'4 g'4 bes'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) \divisioMinima \forceBreak

 g'4 g'4 g'4 g'4 bes'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) \divisioMinima
 g'4 g'4 c''4 bes'4 ( bes'4 a'4) g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( g'4) a'4 ( g'4 \forceBreak
) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 f'4 a'4 ( bes'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior \forceBreak

 c''4 f'4 g'4 bes'4 bes'4 ( a'4 g'4) g'4 a'4 ( a'4 g'4) \divisioMaxima
 a'4 f'4 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 a'4 ( bes'4 c''4 d''4 bes'4 g'4) g'4 \divisioMaior \forceBreak

 g'4 ( a'\prall bes'4 a'4 g'4 f'4) g'4 g'4 ( a'\prall bes'4) c''4 ( a'4) bes'4 ( a'4) g'4 g'4 ( f'4 g'4 f'4 d'4.) g'4 ( f'4 g'4) a'4 ( a'4 g'4) \finalis \forceBreak

 bes'4 ( c''4 d''4) c''4 ( d''4) c''4 ( bes'4)  c''4 ( d''4 c''4) d''4 ( ees''4 c''4 bes'4.)  d''4 ( c''4) d''4 ( ees''4 c''4 bes'4) \divisioMinima
 d''4 ( d''4 c''4) d''4 ( c''4 bes'4.) d''4 ( d''4 c''4) d''4 ( c''4 bes'4. \forceBreak
) d''4 ( c''4) d''4 ( c''4) ~ c''4 ( g'4) \divisioMaior
 bes'4 bes'4 ( c''4 d''4) d''4 ( c''4 a'4) bes'4 ( a'4 g'4) g'4 ( c''4) d''4 ( c''4) ~ c''4 ( g'4) bes'4 ( bes'4 g'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4 \forceBreak
) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 g'4 bes'4 ( bes'4) bes'4 ( c''4 d''4 c''4 bes'4 a'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMinima \forceBreak

 g'4 ( a'4) g'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 ( c''4) bes'4 ( bes'4 a'4) g'4 ( f'4 g'4) f'4 ( bes'4 \forceBreak
) a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 g'4 a'4 ( a'4 g'4) \finalis
 f'4 g'4 bes'4 ( c''4) g'4 bes'4 ( c''4) c''4 ( bes'4 a'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaior \forceBreak

 bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 f'4 a'4 ( bes'4) g'4 \forceBreak
 g'4 ( a'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 ( c''4) bes'4 ( bes'4 a'4) g'4 ( f'4 g'4) f'4 ( bes'4) a'4 ( bes'4) c''4 ( bes'4 c''4 \forceBreak
) g'4 g'4 a'4 ( a'4 g'4) \finalis
 a'4 f'4 g'4 bes'4 bes'4 ( bes'4 c''4) g'4 bes'4 ( c''4) c''4 ( bes'4 a'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaior \forceBreak

 g'4 bes'4 ( a'4) bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima \forceBreak

 f'4 f'4 a'4 ( bes'4) g'4 g'4 ( a'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4)  bes'4 ( a'4 c''4.) d''4 ( ees''4 c''4) ~ c''4 ( bes'4) \divisioMaior \forceBreak

 bes'4 ( c''4) bes'4 c''4 ( bes'4) ~ bes'4 ( f'4) g'4 ( a'4 g'4) bes'4 ( a'4) bes'4 ( g'4) a'4 ( a'4 g'4) \divisioMinima
 bes'4 ( c''4 bes'4 a'4) bes'4 ( c''4 g'4 f'4.) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 a'4 ( a'4 g'4) \finalis \forceBreak

 f'4 ( g'4) g'4 ( f'4) g'4 bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) g'4 ( f'4 g'4) \divisioMinima
 f'4 g'4 ( bes'4) bes'4 ( bes'4) ~ bes'4 ( c''4) bes'4 \divisioMaior
 bes'4 ( c''4) bes'4 c''4 ( bes'4) ~ bes'4 ( f'4 \forceBreak
) g'4 ( a'\prall bes'4 a'4) \divisioMinima
 bes'4. a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 g'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 c''4 a'4 bes'4) \divisioMinima
 a'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) a'4 ( a'4 g'4) \finalis

}

altoMusic = {
d'2*17/4 ~ d'2*13/4 ~ d'2*3/2 ~ \divisioMinima
d'2 f'2 ~ f'2*4/2 d'2*5/2 ees'2*3/2 d'2 ~ \divisioMaior
d'4 ees'2 f'2*3/2 ~ \divisioMinima
f'2*3/2 ~ f'2*3/2 ~ f'2 ~ f'2 d'2 '2*3/2 d'2*3/2 c'2*3/2 \divisioMaxima
d'2 ~ d'2 ~ d'2*3/2 f'2*3/2 ~ f'2 ~ f'2 ~ f'2*4/2 d'2*4/2 ~ d'2*3/2 ~ \finalis
d'2*3/2 ees'2*5/2 d'2*5/2 f'2*5/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2 d'4 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 \divisioMaxima
ees'2 f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 \divisioMinima
r4 f'2*5/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2 d'2 ~ d'2*3/2 \divisioMinima
f'2*4/2 ~ f'2*4/2 ~ f'2 ~ f'2*3/2 d'4 ~ d'2*3/2 ~ \finalis
d'2*5/2 ~ d'2*7/2 ~ d'4 ~ \divisioMaior
d'4 f'2 ~ f'2*4/2 ees'2*4/2 d'2 f'2 d'2*3/2 ~ d'4 \divisioMaior
f'2 ~ f'2*3/2 d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 c'2*3/2 \divisioMaxima
d'2*3/2 ~ d'4 \divisioMinima
c'2 d'2*4/2 ees'2*3/2 f'2*4/2 ~ f'2*4/2 ~ f'2*6/2 d'2*4/2 ees'2*3/2 d'4 ~ d'2 ~ d'4 ~ \finalis
d'2 ~ d'2 ~ d'2*3/2 g'2*4/2 f'2*4/2 ~ f'2 ~ f'2 d'2*5/2 ~ d'2 ~ \divisioMinima
d'4 f'2*4/2 d'2*3/2 ~ d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 c'2*3/2 \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2 ees'2*3/2 f'2*3/2 ~ f'2 ~ f'2 ~ f'2 ~ f'2 ees'2*4/2 d'2*3/2 ~ d'2 \finalis
bes2*4/2 ~ bes2*4/2 ~ bes2 c'2*3/2 d'2*3/2 \divisioMinima
ees'2*3/2 f'2 ~ f'2*5/2 ~ f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ \divisioMaxima
d'2*3/2 c'2 d'2*4/2 ees'2*3/2 f'2*3/2 ~ \divisioMaior
f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2 ~ f'2 ees'2*3/2 ~ ees'2 d'2 ~ d'4 ~ \finalis
d'2 ~ d'2*4/2 ~ d'2*13/4 ~ d'2*3/2 ~ d'2*4/2 ~ d'2 ~ \divisioMaior
d'4 g'2*4/2 f'2*3/2 ~ f'2 ~ f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 r2*3/2 \divisioMaxima
c'4 d'2 ~ d'2*3/2 c'2 d'2*4/2 f'2*3/2 ~ f'2*3/2 \divisioMaior
ees'2*4/2 f'2*3/2 ~ f'2*3/2 ~ f'2 ~ f'2*3/2 d'2 ~ d'2 ~ d'2*3/4 c'2*3/2 bes2*3/2 \finalis
d'2*4/2 ees'2*3/2 f'2 ~ f'2 g'2 ~ g'2 f'2 ~ f'2 ees'2*5/2 d'2 ~ \divisioMinima
d'2*3/2 ~ d'2*5/2 ees'2*3/2 d'2*5/2 ees'2*4/2 c'2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 \divisioMaxima
r4 d'2*4/2 c'2 d'2*4/2 es'2 f'2*3/2 ~ f'2*3/2 ~ \divisioMaior
f'2 ~ f'2 ~ f'2 ees'2*3/2 d'2 ~ d'2 ~ d'2*3/4 c'2*3/2 bes2*3/2 \finalis
d'2*3/2 ~ d'2*4/2 ees'2*3/2 f'2*7/4 ~ f'2 ~ f'2 ~ f'2*4/2 d'2*3/2 ~ d'2 ~ \divisioMaior
d'2*4/2 ~ d'2*3/2 ~ d'2*5/2 ees'2*4/2 d'2 ~ d'2 ~ d'2*3/2 ees'2*3/2 d'2*3/2 ~ \divisioMaxima
d'4 ~ d'2*4/2 ~ d'2 ~ d'2*4/2 ~ d'2 f'2*3/2 ~ f'2*3/2 ~ \divisioMaior
f'2*3/2 ~ f'2 ees'2*3/2 d'2*4/2 ~ d'2*3/4 c'2*3/2 bes2*3/2 \finalis
f'2 ~ f'2*4/2 g'2 ~ g'2 d'2*4/2 ~ d'4 \divisioMaior
f'2 d'2 ~ d'2*4/2 ~ d'2*5/2 ~ d'2*3/2 g'2*3/2 ~ g'4 r2 \divisioMaxima
d'2 ~ d'2*4/2 c'2 d'2*4/2 ees'2*3/2 f'2*3/2 ~ \divisioMaior
f'4 ~ f'2*4/2 d'2 ~ d'2*3/2 c'2 d'2*7/4 ~ d'2*3/2 ~ d'2*3/2 \finalis
f'2*3/2 ees'2 d'2*3/2 \divisioMinima
c'2*5/2 bes2 d'2*3/2 \divisioMinima
c'2*3/2 d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ees'2*3/2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMaior
c'2 d'2 ees'2*3/2 e'4 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMaior
ees'2 f'2*5/2 ~ f'2*3/2 ~ f'2 ~ f'2*3/2 d'2 ~ d'2*7/4 <d' c>2*3/2 <d' b>2*3/2 \finalis
d'2*3/2 ~ d'2 ~ d'2 g'2*3/2 ~ g'2 ~ g'2*5/4 bes'2 ~ bes'2*4/2 ~ \divisioMinima
bes'2*3/2 ~ bes'2*7/4 ~ bes'2*3/2 g'2*7/4 a'2*3/2 d'2 ~ d'4 ~ \divisioMaior
d'4 f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 c'2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMaxima
d'2 ees'2 f'2 ~ f'2*4/2 ~ f'2*4/2 d'2 \divisioMinima
c'2*3/2 d'2*3/2 ~ d'2 f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 \divisioMaior
d'2 ~ d'2*3/2 ~ d'2*3/2 c'2 d'2 f'2*3/2 ~ f'2 d'2 ~ d'4 ~ \finalis
d'2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2 \divisioMaior
f'2 ~ f'2*3/2 d'2 ~ d'2*3/2 c'2 d'2*3/2 ~ d'2*3/2 c'2*3/2 \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2*3/2 c'2 d'2*4/2 f'2*3/2 ~ f'2*3/2 \divisioMaior
ees'2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2 f'2*3/2 ~ f'2 d'2 ~ d'4 \finalis
f'2*4/2 g'2*4/2 ~ g'2 f'2*3/2 ees'2*4/2 d'2 \divisioMaior
ees'2*3/2 ~ ees'4 d'2 ees'2*4/2 ~ ees'4 d'2 f'2*5/2 ~ f'2*3/2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
f'2 d'2*3/2 ~ d'2*3/2 c'2 d'2*4/2 f'2*7/4 ~ f'2 g'2*3/2 ~ \divisioMaior
g'2 ~ g'2 f'2*3/2 ~ f'2*3/2 ~ f'2 ees'2 d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'2*9/4 ~ d'2 ees'2*3/2 e'4 d'2*3/2 \finalis
c'2 bes2*3/2 ~ bes2 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ees'2 f'2*3/2 \divisioMaior
g'2 ~ g'2 f'2*3/2 ~ f'2 ~ f'2 \divisioMinima
d'2*7/4 ~ d'2*4/2 ~ d'2*3/2 ees'2 d'2*5/2 ~ \divisioMinima
d'2*4/2 c'2*4/2 bes2*3/2 \finalis
}

tenorMusic = {
d'4 c'2*15/4 bes2*7/4 a2*3/2 g2*3/2 \divisioMinima
r2 f2 c'2*4/2 ~ c'2*5/2 ~ c'2*3/2 bes2 ~ \divisioMaior
bes2*3/2 ~ bes2*3/2 \divisioMinima
d'2*3/2 c'2*3/2 bes2 a2 f2 ~ f2*3/2 ~ f2*3/2 ~ f2*3/2 \divisioMaxima
g2 a2 g2*3/2 f2*3/2 a2 bes2 c'2*4/2 ~ c'2*4/2 bes2*3/2 ~ \finalis
bes2*3/2 c'2*5/2 bes2*5/2 c'2*5/2 ~ c'2*3/2 d'2*3/2 c'2 ~ c'4 \divisioMinima
bes2*3/2 d'2*3/2 c'2 bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 a2*3/2 \divisioMaxima
bes2 ~ bes2*4/2 d'2*3/2 ~ d'2*3/2 \divisioMinima
r4 d'2*5/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 c'2 bes2*3/2 ~ \divisioMinima
bes2*4/2 f2*4/2 d'2 c'2*4/2 ~ c'2 bes4 ~ \finalis
bes2*5/2 a2*7/2 bes4 ~ \divisioMaior
bes4 ~ bes2 f2*4/2 g2*4/2 ~ g2 f2 g2*3/2 bes4 \divisioMaior
f2 g2*3/2 a2 ~ a2 f2 ~ f2*3/2 g2*3/2 a2*3/2 ~ \divisioMaxima
a4 g2 ~ g4 \divisioMinima
a2 bes2*4/2 ~ bes2*3/2 ~ bes2*4/2 d'2*4/2 c'2*6/2 bes2*4/2 ~ bes2*4/2 c'2 bes4 ~ \finalis
bes2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*4/2 d'2 c'2 ~ c'2*5/2 bes2 ~ \divisioMinima
bes4 c'2*4/2 ~ c'2*3/2 bes2 a2 f2 ~ f2*3/2 ~ f2*3/2 ~ f2*3/2 \divisioMaxima
g2 ~ g2*3/2 bes2 ~ bes2*3/2 ~ bes2*3/2 c'2 d'2 ~ d'2 c'2 bes2*4/2 c'2*3/2 bes2 \finalis
d2*4/2 ~ d2*4/2 g2 ~ g2*3/2 ~ g2*3/2 ~ \divisioMinima
g2*3/2 f2 d'2*5/2 c'2*3/2 bes2*3/2 a2*3/2 \divisioMaxima
g2*3/2 a2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 \divisioMaior
d'2 c'2*3/2 bes2*3/2 a2 g2 ~ g2*3/2 bes2 ~ bes2 ~ bes4 \finalis
d'2 c'2*4/2 bes2*13/4 a2*3/2 g2*4/2 ~ g2 \divisioMaior
bes4 d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 c'2*3/2 ~ \divisioMaxima
c'4 ~ c'2 bes2*3/2 a2 g2*4/2 f2*3/2 bes2*3/2 ~ \divisioMaior
bes2*4/2 ~ bes2*3/2 a2*3/2 g2 f2*3/2 ~ f2 d2*7/4 ~ d2*3/2 ~ d2*3/2 \finalis
d'2*4/2 c'2*3/2 d'2 ~ d'2 ~ d'2 c'2 d'2 ~ d'2 c'2*5/2 bes2 ~ \divisioMinima
bes2*3/2 ~ bes2*5/2 a2*3/2 g2*5/2 ~ g2*4/2 ~ g2 ~ g2*3/2 bes2*3/2 a2*3/2 \divisioMaxima
f4 g2*4/2 a2 bes2*4/2 ~ bes2 ~ bes2*3/2 d'2*3/2 \divisioMaior
c'2 bes2 g2 ~ g2*3/2 ~ g2 d2*7/4 ~ d2*3/2 ~ d2*3/2 \finalis
bes4 a2 g2*4/2 ~ g2*3/2 ~ g2*7/4 bes2 a2 d'2*4/2 c'2*3/2 bes2 \divisioMaior
c'2 bes2 a2*3/2 g2*5/2 ~ g2*4/2 ~ g2 a2 bes2*3/2 ~ bes2*3/2 a2*3/2 \divisioMaxima
c'4 ~ c'2*4/2 bes2 a2*4/2 g2 f2*3/2 g2*3/2 \divisioMaior
a2*3/2 g2 ~ g2*3/2 ~ g2 a2*7/4 ~ a2*3/2 bes2*3/2 \finalis
f2 g2*4/2 ~ g2 a2 ~ a2*4/2 bes4 \divisioMaior
c'2 ~ c'2 d'2*4/2 c'2*5/2 bes2*3/2 c'2*3/2 d'2*3/2 \divisioMaxima
a2 g2*4/2 a2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 \divisioMaior
a4 c'2*4/2 ~ c'2 bes2*3/2 a2 bes2*7/4 c'2*3/2 bes2*3/2 \finalis
f2*3/2 g2 ~ g2*3/2 \divisioMinima
d2*5/2 ~ d2 g2*3/2 ~ \divisioMinima
g2*3/2 ~ g2*3/2 ~ g2 a2*4/2 bes2*3/2 ~ bes2*3/2 a2*3/2 ~ \divisioMaxima
a2 g2*3/2 a2 g2*4/2 ~ g2*3/2 a2 g4 ~ \divisioMaior
g2 ~ g2 ~ g2*3/2 bes4 ~ bes2*3/2 \divisioMaxima
f2 ~ f2 ~ f2 g2*3/2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g2 f2*4/2 bes4 a2*3/2 f2 g2*3/2 a2 bes2*7/4 r2*6/2 \finalis
bes2*3/2 ~ bes2 ~ bes2 g2*3/2 c'2 d'2*5/4 f'2 ees'2 d'2 \divisioMinima
g'2*3/2 ~ g'2*7/4 ~ g'2*3/2 bes2*7/4 a2*3/2 ~ a2 bes4 ~ \divisioMaior
bes4 ~ bes2*3/2 a2*3/2 g2*3/2 ~ g2*3/2 a2*3/2 g2*3/2 ~ g2 ~ g2*4/2 ~ g2 ~ g2*3/2 bes2*3/2 a2*3/2 \divisioMaxima
bes2 ~ bes2 ~ bes2 a2*4/2 c'2*4/2 bes2 \divisioMinima
a2*3/2 bes2*3/2 a2 bes2*4/2 c'2*3/2 d'2*3/2 ~ \divisioMaior
d'2 c'2*3/2 bes2*3/2 a2 g2 f2*3/2 c'2 ~ c'2 bes4 ~ \finalis
bes2 ~ bes2*3/2 ~ bes2 a2*3/2 g2*4/2 bes2 ~ \divisioMaior
bes2 c'2*3/2 ~ c'2 bes2*3/2 a2 g2*3/2 bes2*3/2 c'2*3/2 \divisioMaxima
d'2 ~ d'2*3/2 bes2*3/2 a2 g2*4/2 f2*3/2 g2*3/2 ~ \divisioMaior
g2 ~ g2*3/2 ~ g2*3/2 bes2 ~ bes2 a2*3/2 c'2 ~ c'2 bes4 \finalis
f'2*4/2 ees'2*4/2 e'2 d'2*3/2 c'2*4/2 bes2 \divisioMaior
c'2*3/2 ~ c'4 ~ c'2 bes2*5/2 ~ bes2 ~ bes2*5/2 c'2*3/2 bes2*3/2 a2*3/2 \divisioMaxima
c'2 ~ c'2*3/2 bes2*3/2 a2 bes2*4/2 c'2*7/4 ~ c'2 d'2*3/2 ~ \divisioMaior
d'2 c'2 ~ c'2*3/2 bes2*3/2 g2 ~ g2 ~ g2*3/2 ~ \divisioMinima
g2*4/2 a2*9/4 g2 ~ g2*3/2 bes4 ~ bes2*3/2 \finalis
d2 ~ d2*3/2 g2 ~ g2*3/2 a2*3/2 \divisioMinima
bes2*3/2 ~ bes2 ~ bes2*3/2 ~ \divisioMaior
bes2 c'2 ~ c'2*3/2 bes2 f2 \divisioMinima
g2*7/4 ~ g2*4/2 ~ g2*3/2 ~ g2 f2*5/2 ~ \divisioMinima
f2*4/2 ees2*4/2 d2*3/2 \finalis
}

bassMusic = {
g2*17/4 ~ g2*7/4 ~ g2*3/2 ~ g2*3/2 ~ \divisioMinima
g2 d2 ~ d2*4/2 g2*5/2 ~ g2*3/2 ~ g2 \divisioMaior
bes,4 c2 d2*3/2 ~ \divisioMinima
d2*3/2 ~ d2*3/2 ~ d2 ~ d2 ~ d2 c2*3/2 bes,2*3/2 a,2*3/2 \divisioMaxima
g,2 ~ g,2 ~ g,2*3/2 d2*3/2 ~ d2 ~ d2 ~ d2*4/2 g2*4/2 ~ g2*3/2 ~ \finalis
g2*3/2 ~ g2*5/2 ~ g2*5/2 f2*5/2 d2*3/2 ~ d2*3/2 ~ d2 g4 ~ \divisioMinima
g2*3/2 ~ g2*3/2 ~ g2 ~ g2*3/2 a2 bes2*3/2 g2*3/2 d2*3/2 \divisioMaxima
c2 d2*4/2 ~ d2*3/2 g2*3/2 ~ \divisioMinima
g4 bes2*5/2 a2*3/2 bes2*3/2 g2 ~ g2 ~ g2*3/2 \divisioMinima
d2*4/2 ~ d2*4/2 ~ d2 ~ d2*4/2 g2 ~ g4 ~ \finalis
g2*5/2 ~ g2*7/2 ~ g4 ~ \divisioMaior
g4 d2 ~ d2*4/2 c2*4/2 bes,2 d2 g2*3/2 ~ g4 \divisioMaior
d2 ~ d2*3/2 ~ d2 c2 ~ c2 bes,2*3/2 ~ bes,2*3/2 a,2*3/2 \divisioMaxima
bes,2*3/2 ~ bes,4 ~ \divisioMinima
bes,2 ~ bes,2*4/2 c2*3/2 d2*4/2 ~ d2*4/2 ~ d2*6/2 g2*4/2 ~ g2*4/2 ~ g2 ~ g4 \finalis
r2 a2 g2*3/2 ees2*4/2 d2*4/2 ~ d2 ~ d2 g2*5/2 ~ g2 ~ \divisioMinima
g4 f2*4/2 g2*3/2 ~ g2 d2 ~ d2 c2*3/2 bes,2*3/2 a,2*3/2 \divisioMaxima
g,2 bes,2*3/2 ~ bes,2 c2*3/2 d2*3/2 f2 ~ f2 g2 ~ g2 ~ g2*4/2 ~ g2*3/2 ~ g2 \finalis
bes,2*4/2 g,2*4/2 ~ g,2 a,2*3/2 bes,2*3/2 \divisioMinima
c2*3/2 d2 ~ d2*5/2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 \divisioMaxima
bes,2*3/2 ~ bes,2 ~ bes,2*4/2 c2*3/2 d2*3/2 ~ \divisioMaior
d2 ~ d2*3/2 ~ d2*3/2 ~ d2 ~ d2 c2*3/2 ~ c2 g2 ~ g4 ~ \finalis
g2 ~ g2*4/2 ~ g2*13/4 f2*3/2 g2*4/2 r2 \divisioMaior
r4 g2*4/2 a2*3/2 g2 d'2*4/2 c'2*3/2 bes2*3/2 a2*3/2 ~ \divisioMaxima
a4 g2 ~ g2*3/2 ~ g2 ~ g2*4/2 d2*3/2 ~ d2*3/2 \divisioMaior
c2*4/2 d2*3/2 ~ d2*3/2 ~ d2 ~ d2*3/2 bes,2 ~ bes,2*7/4 a,2*3/2 g,2*3/2 \finalis
r2*7/2 bes2 a2 g2 ~ g2 ~ g2 bes2 ~ bes2*5/2 ~ bes2 \divisioMinima
a2*3/2 g2*5/2 ~ g2*3/2 ~ g2*5/2 c2*4/2 a,2 bes,2*3/2 ~ bes,2*3/2 d2*3/2 \divisioMaxima
r4 bes,2*4/2 ~ bes,2 ~ bes,2*4/2 c2 d2*3/2 ~ d2*3/2 ~ \divisioMaior
d2 ~ d2 ~ d2 c2*3/2 bes,2 ~ bes,2*7/4 a,2*3/2 g,2*3/2 \finalis
bes,4 ~ bes,2 ~ bes,2*4/2 c2*3/2 d2*7/4 ~ d2 ~ d2 ~ d2*4/2 g2*3/2 ~ g2 ~ \divisioMaior
g2 ~ g2 ~ g2*3/2 ~ g2*5/2 c2*4/2 bes,2 ~ bes,2 ~ bes,2*3/2 c2*3/2 d2*3/2 ~ \divisioMaxima
d4 g2*4/2 ~ g2 ~ g2*4/2 ~ g2 d2*3/2 ~ d2*3/2 ~ \divisioMaior
d2*3/2 ~ d2 c2*3/2 bes,2 ~ bes,2*7/4 a,2*3/2 g,2*3/2 \finalis
d2 ~ d2*4/2 ees2 e2 g2*4/2 ~ g4 \divisioMaior
f2 g2 ~ g2*4/2 ~ g2*5/2 ~ g2*3/2 ees2*3/2 d2*3/2 \divisioMaxima
c2 bes,2*4/2 ~ bes,2 ~ bes,2*4/2 c2*3/2 d2*3/2 ~ \divisioMaior
d4 ~ d2*4/2 g2 ~ g2*3/2 ~ g2 ~ g2*7/4 d2*3/2 g2*3/2 \finalis
d2*3/2 c2 bes,2*3/2 \divisioMinima
a,2*5/2 g,2 ~ g,2*3/2 \divisioMinima
a,2*3/2 bes,2*3/2 ~ bes,2 ~ bes,2*4/2 ~ bes,2*3/2 c2*3/2 d2*3/2 \divisioMaxima
c2 bes,2*3/2 ~ bes,2 ~ bes,2*4/2 g,2*3/2 ~ g,2 ~ g,4 \divisioMaior
a,2 bes,2 c2*3/2 ~ c4 g2*3/2 \divisioMaxima
c2 bes,2 a,2 g,2*3/2 a,2*3/2 bes,4 \divisioMaior
c2 d2*4/2 ~ d4 ~ d2*3/2 ~ d2 ~ d2*3/2 bes,2 ~ bes,2*7/4 a,2*3/2 g,2*3/2 \finalis
r2*3/2 a2 g2 ees2*3/2 e2 g2*5/4 ~ g2 ~ g2 ~ g2 \divisioMinima
bes2*3/2 a2*7/4 g2*3/2 ~ g2*7/4 f2*3/2 g2 ~ g4 ~ \divisioMaior
g4 d2*3/2 ~ d2*3/2 ~ d2*3/2 bes,2*3/2 ~ bes,2*3/2 ~ bes,2*3/2 a2 g,2*4/2 a,2 bes,2*3/2 ~ bes,2*3/2 d2*3/2 \divisioMaxima
bes,2 c2 d2 ~ d2*4/2 ~ d2*4/2 g2 ~ \divisioMinima
g2*3/2 ~ g2*3/2 d2 ~ d2*4/2 ~ d2*3/2 ~ d2*3/2 \divisioMaior
g2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g2 d2*3/2 ~ d2 g2 ~ g4 \finalis
r2 a2*3/2 g2 ~ g2*3/2 ~ g2*4/2 ~ g2 \divisioMaior
d2 ~ d2*3/2 g2 ~ g2*3/2 ~ g2 ~ g2*3/2 ~ g2*3/2 a2*3/2 \divisioMaxima
r2 g2*3/2 ~ g2*3/2 ~ g2 ~ g2*4/2 d2*3/2 ~ d2*3/2 \divisioMaior
c2 g,2*3/2 bes,2*3/2 ~ bes,2 d2 ~ d2*3/2 ~ d2 g2 ~ g4 \finalis
d'2*4/2 ~ d'2*4/2 c'2 ~ c'2*3/2 ~ c'2*4/2 r2 \divisioMaior
r2*3/2 g4 ~ g2 ~ g2*5/2 ~ g2 d2*5/2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMaxima
d2 g2*3/2 ~ g2*3/2 ~ g2 ~ g2*4/2 f2*7/4 ees2 g2*3/2 \divisioMaior
ees2 ~ ees2 d2*3/2 ~ d2*3/2 ~ d2 c2 bes,2*3/2 \divisioMinima
g,2*4/2 ~ g,2*9/4 ~ g,2 c2*3/2 ~ c4 g2*3/2 \finalis
a,2 g,2*3/2 ~ g,2 bes,2*3/2 ~ bes,2*3/2 ~ \divisioMinima
bes,2*3/2 c2 d2*3/2 \divisioMaior
ees2 e2 d2*3/2 ~ d2 ~ d2 \divisioMinima
g,2*7/4 a,2*4/2 bes,2*3/2 c2 d2*5/2 \divisioMinima
g,2*4/2 ~ g,2*4/2 ~ g,2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Tract"
        "II"
      }
      \new Staff = up <<
        \new Voice = "chant" {
          \voiceOne \global \chantMusic
        }
        \new Voice {
          \voiceTwo \global \altoMusic
        }
      >>

      \new Staff = down <<
        \clef bass
        \new Voice {
          \voiceOne \global \tenorMusic
        }
        \new Voice {
          \voiceTwo \global \bassMusic
        }
	\new Voice {
        \voiceThree \global \voiceLines
        }
      >>
    >>
    \new Lyrics \lyricsto chant {
      \chantText
    }
  >>
  \layout{
  }
  \midi{
    \tempo 4 = 125
  }
}
