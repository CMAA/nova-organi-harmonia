\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.31
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedictus es" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedictus es"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedictus es" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- ne -- dí -- ctus es Dó -- mi -- ne De -- us pa -- trum no -- stró -- rum. 
\set stanza = " * " 
Et lau -- dá -- bi -- lis et glo -- ri -- ó -- sus in sǽ -- cu -- la. 
Et be -- ne -- dí -- ctum no -- men gló -- ri -- æ tu -- æ, quod est san -- ctum, 
\set stanza = " * " 
Et lau -- dá -- bi -- le et glo -- ri -- ó -- sum in sǽ -- cu -- la. 
Be -- ne -- dí -- ctus es in tem -- plo san -- cto gló -- ri -- æ tu -- æ. 
\set stanza = " * " 
Et lau -- dá -- bi -- lis et glo -- ri -- ó -- sus in sǽ -- cu -- la. 
Be -- ne -- dí -- ctus es su -- per thro -- num san -- ctum re -- gni tu -- i. 
\set stanza = " * " 
Et lau -- dá -- bi -- lis et glo -- ri -- ó -- sus in sǽ -- cu -- la. 
Be -- ne -- dí -- ctus es su -- per scep -- trum di -- vi -- ni -- tá -- tis tu -- æ. 
\set stanza = " * " 
Et lau -- dá -- bi -- lis et glo -- ri -- ó -- sus in sǽ -- cu -- la. 
Be -- ne -- dí -- ctus es qui se -- des su -- per Ché -- ru -- bim, ín -- tu -- ens a -- bý -- sos. 
\set stanza = " * " 
Et lau -- dá -- bi -- lis et glo -- ri -- ó -- sus in sǽ -- cu -- la. 
Be -- ne -- dí -- ctus es qui ám -- bu -- las su -- per pen -- nas ven -- tó -- rum, et su -- per un -- das ma -- ris. 
\set stanza = " * " 
Et lau -- dá -- bi -- lis et glo -- ri -- ó -- sus in sǽ -- cu -- la. 
Be -- ne -- dí -- cant te o -- mnes An -- ge -- li et San -- cti tu -- i. 
\set stanza = " * " 
Et lau -- dent te, et glo -- rí -- fi -- cent in sǽ -- cu -- la. 
Be -- ne -- dí -- cant te cœ -- li, ter -- ra, ma -- re, et ó -- mni -- a quæ in e -- is sunt. 
\set stanza = " * " 
Et lau -- dent te, et glo -- rí -- fi -- cent in sǽ -- cu -- la. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, 
et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Et lau -- dá -- bi -- li et glo -- ri -- ó -- so in sǽ -- cu -- la. 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. 
\set stanza = " * " 
Et lau -- dá -- bi -- li et glo -- ri -- ó -- so in sǽ -- cu -- la. 
Be -- ne -- dí -- ctus es, Dó -- mi -- ne De -- us pa -- trum no -- stró -- rum, 
\set stanza = " * " 
Et lau -- dá -- bi -- lis et glo -- ri -- ó -- sus in sǽ -- cu -- la. }

chantMusic = {
\tieDown   f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) c''4 \divisioMinima
 a'4 ( g'4) bes'4 c''4 c''4 ( d''4) c''4 c''4 ( bes'4) a'4 ( \once \tweak #'font-size #-4 g' ) c''4 ( d''4) c''4 ( bes'4 a'4) f'4 ( g'4) \divisioMaxima \forceBreak

 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 a'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 g'4 f'4) ees'4 ( f'4) f'4 \finalis \forceBreak

 f'4 f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) a'4 ( g'4) bes'4 c''4 ( d''4) c''4 c''4 c''4 c''4 ( bes'4) \divisioMinima
 a'4 ( g'4) bes'4 ( c''4) bes'4 ( a'4 g'4) f'4 ( g'4) \divisioMaxima \forceBreak

 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 a'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 g'4 f'4) ees'4 ( f'4) f'4 \finalis \forceBreak

 f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) c''4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 c''4 ( d''4) c''4 c''4 ( bes'4) a'4 ( g'4) bes'4 ( c''4) bes'4 ( a'4 g'4) f'4 ( g'4) \divisioMaxima \forceBreak

 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 a'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 g'4 f'4) ees'4 ( f'4) f'4 \finalis \forceBreak

 f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) c''4 \divisioMinima
 a'4 ( g'4) bes'4 c''4 ( d''4) c''4 c''4 c''4 ( \once \tweak #'font-size #-4 bes' ) a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4) bes'4 ( a'4 g'4) f'4 ( g'4) \divisioMaxima \forceBreak

 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 a'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 g'4 f'4) ees'4 ( f'4) f'4 \finalis \forceBreak

 f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) c''4 \divisioMinima
 a'4 ( g'4) bes'4 c''4 ( d''4) c''4 c''4 c''4 c''4 ( bes'4) a'4 ( g'4) bes'4 ( c''4) bes'4 ( a'4 g'4) f'4 ( g'4) \divisioMaxima \forceBreak

 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 a'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( f'4) g'4 ( a'4 g'4 f'4) ees'4 ( f'4) f'4 \finalis \forceBreak

 f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) c''4 \divisioMinima
 a'4 ( g'4) bes'4 ( c''4) c''4 c''4 c''4 ( bes'4) c''4 ( d''4) c''4 c''4 \divisioMinima
 c''4 c''4 ( bes'4) a'4 ( \once \tweak #'font-size #-4 g'  \forceBreak
) bes'4 ( c''4) bes'4 ( a'4 g'4) f'4 ( g'4) \divisioMaxima
 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 a'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 g'4 f'4) ees'4 ( f'4) f'4 \finalis \forceBreak

 f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) c''4 \divisioMinima
 a'4 ( g'4) bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 c''4 c''4 c''4 c''4 c''4 c''4 ( \once \tweak #'font-size #-4 bes' ) c''4 ( d''4) c''4 \divisioMinima \forceBreak

 c''4 c''4 c''4 ( bes'4) a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4) bes'4 ( a'4 g'4) f'4 ( g'4) \divisioMaxima
 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 a'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4 c''4) bes'4 ( a'4 \forceBreak
) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 g'4 f'4) ees'4 ( f'4) f'4 \finalis
 f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 c''4 ( d''4) c''4 c''4 c''4 ( bes'4) a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4 \forceBreak
) bes'4 ( a'4 g'4) f'4 ( g'4) \divisioMaxima
 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) g'4 ( f'4) \divisioMinima
 f'4 a'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 g'4 f'4) ees'4 ( f'4) f'4 \finalis \forceBreak

 f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 \divisioMinima
 a'4 ( g'4) bes'4 c''4 c''4 ( bes'4) c''4 ( d''4) c''4 \divisioMinima
 c''4 c''4 c''4 c''4 c''4 ( bes'4 \forceBreak
) a'4 ( g'4) bes'4 ( c''4) bes'4 ( a'4 g'4) f'4 ( g'4) \divisioMaxima
 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) g'4 ( f'4) \divisioMinima
 f'4 a'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 g'4 f'4) ees'4 ( f'4) f'4 \finalis \forceBreak

 f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 a'4 ( g'4) bes'4 c''4 c''4 ( d''4) c''4 c''4 \divisioMaior
 c''4 c''4 c''4 ( bes'4) a'4 ( g'4) bes'4 ( c''4) bes'4 ( a'4 g'4) f'4 ( g'4) \divisioMaxima \forceBreak

 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 a'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 g'4 f'4) ees'4 ( f'4) f'4 \finalis
 f'4 ( bes'4 a'4) bes'4 bes'4 ( c''4) c''4 \forceBreak
 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 c''4 ( d''4) c''4 c''4 \divisioMinima
 c''4 c''4 ( ees''4 d''4) bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 c''4 ( bes'4) \divisioMinima
 a'4 ( g'4) bes'4 c''4 ( d''4) c''4 c''4 c''4 \forceBreak
 c''4 ( bes'4) a'4 ( g'4) bes'4 ( c''4) bes'4 ( a'4 g'4) f'4 ( g'4) \divisioMaxima
 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 a'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f'  \forceBreak
) g'4 ( a'4 g'4 f'4) ees'4 ( f'4) f'4 \finalis
 f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) c''4 \divisioMinima
 a'4 ( g'4) bes'4 c''4 c''4 ( d''4) c''4 c''4 ( bes'4) a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4 \forceBreak
) bes'4 ( a'4 g'4) f'4 ( g'4) \divisioMaxima
 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 a'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 g'4 f'4) ees'4 ( f'4) f'4 \finalis

}

altoMusic = {
f'2*5/2 ~ f'2*3/2 ~ f'4 ~ \divisioMinima
f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2 ~ f'2 d'2*4/2 ~ d'4 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2 ees'2*4/2 c'2 ~ c'4 \finalis
f'2*6/2 ~ f'2*3/2 d'2*3/2 f'2*4/2 ~ f'4 ~ f'2 ~ \divisioMinima
f'2 ~ f'2 d'2*3/2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2 ees'2*4/2 c'2 ~ c'4 \finalis
f'2*5/2 ~ f'2*3/2 ~ f'4 ~ \divisioMinima
f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2 ~ f'2 ~ f'2 d'2*3/2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2 ees'2*4/2 c'2 ~ c'4 \finalis
f'2*5/2 ~ f'2*3/2 ~ f'4 \divisioMinima
d'2*3/2 f'2*3/2 ~ f'4 ~ f'2 ~ f'2 ~ f'2 d'2*3/2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2 ees'2*4/2 c'2 ~ c'4 \finalis
f'2*5/2 ~ f'2*3/2 ~ f'4 \divisioMinima
d'2*3/2 g'2*3/2 f'2*4/2 ~ f'2 ~ f'2 d'2*3/2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2 ees'2*4/2 c'2 ~ c'4 \finalis
f'2*5/2 ~ f'2*3/2 ~ f'4 ~ \divisioMinima
f'2 ~ f'2*4/2 ~ f'2 ~ f'2 ~ f'2 \divisioMinima
d'2*3/2 ~ d'2 f'2 ~ f'2*3/2 d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2 ees'2*4/2 c'2 ~ c'4 \finalis
f'2*5/2 ~ f'2*3/2 ~ f'4 ~ \divisioMinima
f'2 ~ f'2*4/2 ~ f'2 g'2 f'2 ~ f'2*3/2 ~ \divisioMinima
f'2 ~ f'2 ~ f'2 d'2 ~ d'2*3/2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2 ees'2*4/2 c'2 ~ c'4 \finalis
f'2*5/2 ~ f'2*3/2 ~ f'4 \divisioMinima
d'2*3/2 f'2*4/2 ~ f'2 ~ f'2 ~ f'2 d'2*3/2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2 ~ \divisioMinima
d'4 f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2 ees'2*4/2 c'2 ~ c'4 \finalis
f'2*5/2 ~ f'2*3/2 ~ f'4 ~ \divisioMinima
f'2*3/2 ~ f'4 ~ f'2 g'2*3/2 ~ \divisioMinima
g'4 f'2*3/2 ~ f'2 ~ f'2 ~ f'2 d'2*3/2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2 ~ \divisioMinima
d'4 f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2 ees'2*4/2 c'2 ~ c'4 \finalis
f'2*6/2 ~ f'2 ~ f'2 g'2*4/2 ~ \divisioMaior
g'2 f'2 ~ f'2 ~ f'2 d'2*3/2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2 ees'2*4/2 c'2 ~ c'4 \finalis
f'2*4/2 d'2*3/2 f'2*3/2 ~ f'2*4/2 ~ \divisioMinima
f'4 ees'2*6/2 d'2 ~ \divisioMinima
d'2*3/2 g'2*5/2 f'2 ~ f'2 ~ f'2 d'2*3/2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2 ees'2*4/2 c'2 ~ c'4 \finalis
f'2*5/2 ~ f'2*3/2 ~ f'4 ~ \divisioMinima
f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2 ~ f'2 d'2*3/2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2 ees'2*4/2 c'2 ~ c'4 \finalis
}

tenorMusic = {
bes2*5/2 ~ bes2*3/2 a4 \divisioMinima
c'2 g2 a2*3/2 bes2 c'2 bes2 a2*4/2 bes4 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 a2*3/2 ~ \divisioMinima
a4 c'2 bes2 a2*3/2 g2 a2 bes2*4/2 ~ bes2 a4 \finalis
f4 bes2*5/2 a2*3/2 bes2*3/2 a2*4/2 ~ a4 bes2 \divisioMinima
c'2 d'2 c'2*3/2 bes2 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 a2*3/2 ~ \divisioMinima
a4 c'2 bes2 a2*3/2 g2 a2 bes2*4/2 ~ bes2 a4 \finalis
bes2*5/2 ~ bes2*3/2 a4 \divisioMinima
c'2 g2*3/2 a2*3/2 bes2 c'2 d'2 c'2*3/2 bes2 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 a2*3/2 ~ \divisioMinima
a4 c'2 bes2 a2*3/2 g2 a2 bes2*4/2 ~ bes2 a4 \finalis
bes2*5/2 ~ bes2*3/2 a4 \divisioMinima
bes2*3/2 a2*3/2 ~ a4 bes2 c'2 d'2 c'2*3/2 bes2 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 a2*3/2 ~ \divisioMinima
a4 c'2 bes2 a2*3/2 g2 a2 bes2*4/2 ~ bes2 a4 \finalis
bes2*5/2 ~ bes2*3/2 a4 \divisioMinima
bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 c'2 d'2 c'2*3/2 bes2 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 a2*3/2 ~ \divisioMinima
a4 c'2 bes2 a2*3/2 g2 a2 bes2*4/2 ~ bes2 a4 \finalis
bes2*5/2 ~ bes2*3/2 a4 \divisioMinima
c'2 g2*4/2 a2 bes2 ~ bes4 a4 \divisioMinima
bes4 c'2 bes2 ~ bes2 c'2*3/2 ~ c'4 bes4 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 a2*3/2 ~ \divisioMinima
a4 c'2 bes2 a2*3/2 g2 a2 bes2*4/2 ~ bes2 a4 \finalis
bes2*5/2 ~ bes2*3/2 a4 \divisioMinima
c'2 g2*4/2 a2 g2 bes2 a2*3/2 ~ \divisioMinima
a2 bes2 c'2 bes2 a2*3/2 bes2 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 a2*3/2 ~ \divisioMinima
a4 c'2 bes2 a2*3/2 g2 a2 bes2*4/2 ~ bes2 a4 \finalis
bes2*5/2 ~ bes2*3/2 a4 \divisioMinima
bes2*3/2 ~ bes2*4/2 ~ bes2 c'2 bes2 a2*3/2 bes2 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 a2 ~ \divisioMinima
a4 c'2 bes2 a2*3/2 g2 a2 bes2*4/2 ~ bes2 a4 \finalis
bes2*5/2 ~ bes2*3/2 a4 \divisioMinima
c'2*3/2 a4 g2 ~ g2*3/2 ~ \divisioMinima
g4 a2*3/2 bes2 c'2 d'2 c'2*3/2 bes2 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 a2 ~ \divisioMinima
a4 c'2 bes2 a2*3/2 g2 a2 bes2*4/2 ~ bes2 a4 \finalis
bes2*6/2 c'2 bes2 ~ bes2*4/2 \divisioMaior
c'2 d'2 c'2 bes2 a2*3/2 bes2 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 a2*3/2 ~ \divisioMinima
a4 c'2 bes2 a2*3/2 g2 a2 bes2*4/2 ~ bes2 a4 \finalis
bes2*4/2 ~ bes2*3/2 c'2*3/2 a2*4/2 ~ \divisioMinima
a4 g2*6/2 ~ g2 \divisioMinima
bes2*3/2 ~ bes2*5/2 ~ bes2 c'2 d'2 a2*3/2 bes2 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 a2*3/2 ~ \divisioMinima
a4 c'2 bes2 a2*3/2 g2 a2 bes2*4/2 ~ bes2 a4 \finalis
bes2*5/2 ~ bes2*3/2 a4 \divisioMinima
c'2 g2 a2*3/2 bes2 c'2 bes2 a2*3/2 bes2 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 a2*3/2 ~ \divisioMinima
a4 c'2 bes2 a2*3/2 g2 a2 bes2*4/2 ~ bes2 a4 \finalis
}

bassMusic = {
d2*5/2 f2*3/2 ~ f4 ~ \divisioMinima
f2 ~ f2 ~ f2*3/2 d2 ~ d2 ~ d2 g2*4/2 ~ g4 \divisioMaxima
r2 a2 g2 d2*3/2 ~ \divisioMinima
d4 ~ d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2 c2*4/2 f2 ~ f4 \finalis
r4 d2*5/2 f2*3/2 g2*3/2 f2*4/2 d4 ~ d2 ~ \divisioMinima
d2 ~ d2 g2*3/2 ~ g2 \divisioMaxima
r2 a2 g2 d2*3/2 ~ \divisioMinima
d4 ~ d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2 c2*4/2 f2 ~ f4 \finalis
d2*5/2 f2*3/2 ~ f4 ~ \divisioMinima
f2 ~ f2*3/2 ~ f2*3/2 d2 ~ d2 ~ d2 g2*3/2 ~ g2 \divisioMaxima
r2 a2 g2 d2*3/2 ~ \divisioMinima
d4 ~ d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2 c2*4/2 f2 ~ f4 \finalis
d2*5/2 f2*3/2 ~ f4 \divisioMinima
g2*3/2 f2*3/2 d4 ~ d2 ~ d2 ~ d2 g2*3/2 ~ g2 \divisioMaxima
r2 a2 g2 d2*3/2 ~ \divisioMinima
d4 ~ d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2 c2*4/2 f2 ~ f4 \finalis
d2*5/2 f2*3/2 ~ f4 \divisioMinima
g2*3/2 ees2*3/2 d2*4/2 ~ d2 ~ d2 g2*3/2 ~ g2 \divisioMaxima
r2 a2 g2 d2*3/2 ~ \divisioMinima
d4 ~ d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2 c2*4/2 f2 ~ f4 \finalis
d2*5/2 f2*3/2 ~ f4 ~ \divisioMinima
f2 ~ f2*4/2 ~ f2 d2 f2 \divisioMinima
g2*3/2 ~ g2 d2 ~ d2*3/2 g2 \divisioMaxima
r2 a2 g2 d2*3/2 ~ \divisioMinima
d4 ~ d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2 c2*4/2 f2 ~ f4 \finalis
d2*5/2 f2*3/2 ~ f4 ~ \divisioMinima
f2 ~ f2*4/2 ~ f2 ees2 d2 f2*3/2 ~ \divisioMinima
f2 ~ f2 ~ f2 g2 ~ g2*3/2 ~ g2 \divisioMaxima
r2 a2 g2 d2*3/2 ~ \divisioMinima
d4 ~ d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2 c2*4/2 f2 ~ f4 \finalis
d2*5/2 f2*3/2 ~ f4 \divisioMinima
g2*3/2 ees2*4/2 d2 ~ d2 ~ d2 g2*3/2 ~ g2 \divisioMaxima
r2 a2 g2 d2 ~ \divisioMinima
d4 ~ d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2 c2*4/2 f2 ~ f4 \finalis
d2*5/2 f2*3/2 ~ f4 ~ \divisioMinima
f2*3/2 ~ f4 ~ f2 ees2*3/2 ~ \divisioMinima
ees4 d2*3/2 ~ d2 ~ d2 ~ d2 g2*3/2 ~ g2 \divisioMaxima
r2 a2 g2 d2 ~ \divisioMinima
d4 ~ d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2 c2*4/2 f2 ~ f4 \finalis
d2*6/2 ~ d2 ~ d2 ees2*4/2 ~ \divisioMaior
ees2 d2 ~ d2 ~ d2 g2*3/2 ~ g2 \divisioMaxima
r2 a2 g2 d2*3/2 ~ \divisioMinima
d4 ~ d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2 c2*4/2 f2 ~ f4 \finalis
d2*4/2 g2*3/2 f2*3/2 ~ f2*4/2 ~ \divisioMinima
f4 c2*6/2 g2 ~ \divisioMinima
g2*3/2 ees2*5/2 d2 ~ d2 ~ d2 g2*3/2 ~ g2 \divisioMaxima
r2 a2 g2 d2*3/2 ~ \divisioMinima
d4 ~ d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2 c2*4/2 f2 ~ f4 \finalis
d2*5/2 f2*3/2 ~ f4 ~ \divisioMinima
f2 ~ f2 ~ f2*3/2 d2 ~ d2 ~ d2 g2*3/2 ~ g2 \divisioMaxima
r2 a2 g2 d2*3/2 ~ \divisioMinima
d4 ~ d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2 c2*4/2 f2 ~ f4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Hymn"
        "VII"
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
