\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.337
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine exaudi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine exaudi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine exaudi" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne, _ _ _ _ _ 
\set stanza = " * " 
ex -- áu -- di o -- ra -- ti -- ó -- nem me -- _ _ _ am, _ _ _ _ 
et cla -- mor _ me -- _ _ us _ _ 
ad _ te _ _ vé -- _ _ ni -- at. _ _ _ ℣. 
Ne a -- vér -- _ _ _ _ _ _ _ _ tas 
fá -- ci -- em tu -- _ am a me: _ _ _ 
in qua -- cúm -- que di -- e trí -- _ bu -- lor, 
in -- clí -- na _ ad me _ _ _ 
au -- rem tu -- _ _ am. _ _ _ ℣. 
In qua -- cúm -- que di -- _ e in -- vo -- cá -- ve -- ro te, _ _ _ _ 
ve -- ló -- _ _ ci -- ter ex -- áu -- di me. _ _ _ _ _ _ _ _ _ ℣. 
Qui -- a de -- fe -- cé -- _ _ _ _ _ _ runt sic -- ut fu -- _ mus _ _ 
di -- es me -- _ _ _ _ _ _ i: _ 
et os -- sa me -- a _ _ 
sic -- ut in fri -- xó -- ri -- o con -- frí -- _ _ xa sunt. _ _ _ _ _ ℣. 
Per -- cús -- sus _ sum _ _ 
sic -- ut fœ -- _ num, _ _ 
et á -- ru -- it cor me -- um: _ _ _ 
qui -- a o -- blí -- _ tus sum _ _ 
man -- _ du -- cá -- re pa -- nem _ me -- um. _ _ _ _ _ ℣. 
Tu ex -- súr -- gens, Dó -- mi -- _ ne, _ _ 
mi -- se -- ré -- _ be -- ris _ _ Si -- on: _ _ _ _ _ _ _ _ 
qui -- a ve -- nit tem -- _ pus _ _ 
mi -- _ se -- rén -- di 
\set stanza = " * " e -- _ _ jus. _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 f'4 ( g'4 f'4 d'4) f'4 ( g'4 f'4 g'4) ~ g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 bes'4) ~ bes'4 ( a'4) bes'4 ( g'4.) a'4 ( bes'4 a'4 bes'4 g'4) \divisioMaior \forceBreak

 f'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4 a'4) bes'4 ( a'4 bes'4 g'4) \divisioMinima
 g'4 g'4 bes'4 ( a'4) bes'4 g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( f'4) a'4 ( a'4 g'4 \forceBreak
) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 ( g'4 \once \tweak #'font-size #-4 bes' ) bes'4 ( bes'4 a'4) bes'4 ( a'4) bes'4 ( g'4 a'4) g'4. f'4 ( g'4) bes'4 ( c''4 bes'4)  bes'4 ( bes'4 aes'4 c''4.) d''4 ( e''4 c''4) ~ c''4 ( bes'4) \divisioMaior \forceBreak

 bes'4 ( bes'4) c''4 ( d''4 bes'4 g'4) g'4 ( c''4 bes'4) ~ bes'4 ( f'4) g'4 ( a'4 g'4) \divisioMinima
 bes'4. a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 ( f'4) f'4 bes'4 ( bes'4 bes'4) c''4 ( bes'4 f'4 g'4) a'4 ( a'4 g'4) \finalis \forceBreak

 f'4 g'4 bes'4 ( c''4 bes'4) ~ bes'4 ( g'4) a'4 bes'4 ( a'4) ~ a'4 ( g'4) bes'4 c''4 ( bes'4) ~ bes'4 ( a'4) c''4 d''4 ( c''4) ~ c''4 ( a'4) bes'4 c''4 ( a'4 bes'4 g'4) g'4 \divisioMaior \forceBreak

 bes'4 bes'4 ( a'4 g'4) g'4 c''4 ( a'4) c''4 ( bes'4) bes'4 ( bes'4 a'4 bes'4) f'4 f'4 ( g'4 a'4 g'4) a'4 ( a'4 g'4) a'4 ( bes'4 c''4 g'4) ~ g'4 ( f'4) \divisioMaxima \forceBreak

 f'4 f'4 a'4 ( \once \tweak #'font-size #-4 bes' ) g'4 g'4 ( a'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( c''4 bes'4) bes'4 ( a'4 bes'4) \divisioMaior
 bes'4 ( bes'4) c''4 ( d''4 bes'4 a'4 g'4 \forceBreak
) g'4 ( c''4 bes'4) ~ bes'4 ( f'4) f'4 f'4 ( g'4 a'4 g'4) a'4 ( a'4 g'4) a'4 ( bes'4 c''4 g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4. a'4 ( c''4 bes'4) ~ bes'4 ( g'4 f'4 \forceBreak
) f'4 bes'4 ( bes'4 bes'4) c''4 ( bes'4 f'4 g'4) a'4 ( a'4 g'4) \finalis
 f'4 g'4 bes'4 ( bes'4 \once \tweak #'font-size #-4 c'' ) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4 bes'4) \divisioMinima
 g'4 ( bes'4 \once \tweak #'font-size #-4 a' ) bes'4 \forceBreak
 c''4 ( a'4 c''4) bes'4 ( a'4) f'4 ( g'4) g'4 ( f'4 a'\prall bes'4 c''4 bes'4 g'4) \divisioMinima
 bes'4 ( a'4 g'4) c''4 ( bes'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMaxima
 g'4 g'4 ( f'4) g'4 bes'4 ( bes'4 \forceBreak
) c''4 ( bes'4 a'4 bes'4) bes'4 bes'4 \divisioMinima
 g'4 g'4 ( bes'4 \once \tweak #'font-size #-4 a' ) bes'4 ( c''4) c''4. bes'4 ( c''4 bes'4) g'4 ( a'\prall bes'4 a'4.) bes'4 ( c''4 bes'4) g'4 ( a'4 g'4 f'4 a'4) \divisioMinima \forceBreak

 c''4 ( d''4 c''4) bes'4 ( c''4 bes'4) g'4 ( a'\prall bes'4 a'4.) bes'4 ( c''4 bes'4) ~ bes'4 ( g'4) \finalis
 g'4 g'4 ( d'4) f'4 ( g'4 a'4) g'4 g'4 bes'4 ( bes'4) c''4 ( d''4 bes'4) ~ bes'4 ( a'4 \forceBreak
) c''4 ( bes'4) ~ bes'4 ( a'4) ~ a'4 ( g'4 a'\prall bes'4 a'4 bes'4) a'4 ( g'4) \divisioMinima
 g'4 bes'4 ( g'4 bes'4) c''4. bes'4 ( c''4 d''4 c''4 a'4) a'4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior \forceBreak

 g'4 g'4 ( c''4) bes'4 ( c''4 bes'4 g'4) ~ g'4 ( f'4.) bes'4 ( c''4 bes'4 g'4) ~ g'4 ( f'4.) bes'4 ( a'4 g'4) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaxima \forceBreak

 f'4 a'4 ( bes'4) g'4 g'4 ( f'4 g'4 a'\prall bes'4 c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior
 f'4 g'4 ( bes'4) bes'4 bes'4 a'4 ( bes'4 c''4 d''4 bes'4) g'4 \forceBreak
 g'4 ( a'\prall bes'4 a'4 g'4 f'4) \divisioMinima
 g'4 ( a'\prall bes'4 a'4) bes'4. a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 g'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 c''4 a'4 bes'4) \divisioMinima \forceBreak

 a'4 ( bes'4 d''4 c''4 bes'4) ~ bes'4 ( a'4 g'4 a'4) ~ a'4 ( g'4) \finalis
 bes'4 c''4 d''4 ( c''4) ~ c''4 ( bes'4 c''4) c''4. bes'4 ( bes'4) g'4 ( a'4 g'4) \divisioMaior
 g'4 bes'4 ( g'4 bes'4 \forceBreak
) c''4. bes'4 ( c''4 d''4 c''4 a'4) a'4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 bes'4 ( a'4) bes'4 ( c''4) bes'4 ( a'4 f'4) g'4 bes'4 bes'4 ( g'4 a'4 \forceBreak
) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4 c''4 g'4) ~ g'4 ( f'4) \divisioMaxima
 a'4 ( bes'4) g'4 g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior \forceBreak

 bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) g'4 ( f'4) g'4 ( a'4 g'4) g'4 ( f'4) \divisioMinima
 bes'4 a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 g'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 c''4 a'4 bes'4) \divisioMinima \forceBreak

 a'4 ( bes'4 d''4 c''4 bes'4) ~ bes'4 ( a'4 g'4 a'4) ~ a'4 ( g'4) \finalis
 bes'4 ( c''4) c''4 c''4 ( \once \tweak #'font-size #-4 d'' ) c''4 c''4 d''4 ( c''4) ~ c''4 ( bes'4 c''4) c''4. bes'4 ( bes'4) g'4 ( a'4 g'4) \divisioMaior \forceBreak

 g'4 bes'4 ( g'4 bes'4) c''4. bes'4 ( c''4 d''4 c''4) c''4 ( a'4) a'4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMinima
 g'4 ( c''4) bes'4 ( c''4 bes'4 g'4) ~ g'4 ( f'4.) bes'4 ( c''4 bes'4 g'4) ~ g'4 ( f'4. \forceBreak
) bes'4 ( a'4 g'4) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 f'4 a'4 ( bes'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4)  bes'4 ( aes'4 c''4.) d''4 ( e''4 c''4) ~ c''4 ( bes'4) \divisioMaior \forceBreak

 bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) g'4 ( f'4) g'4 ( a'4 g'4) a'4  c''4 ( bes'4) c''4 ( bes'4 g'4 a'4) \divisioMinima
 bes'4 ( d''4 c''4 d''4 bes'4 a'4 g'4) g'4 ( f'4) g'4 bes'4 ( bes'4 \forceBreak
) c''4 ( d''4 c''4 a'4 bes'4) \divisioMinima
 a'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4 a'4) ~ a'4 ( g'4) \finalis

}

altoMusic = {
d'4 ~ d'2*7/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*11/4 ~ d'2*3/2 ~ d'2 ~ \divisioMaior
d'2*4/2 ~ d'2*3/2 ~ d'2*4/2 ~ \divisioMinima
d'2 f'2 ees'2 d'4 ~ d'2 f'2 ~ f'2 d'2 f'2*3/2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
f'2*3/2 ~ f'2*3/2 d'2 ~ d'2*3/2 ~ d'2*7/4 f'2*3/2 ees'2*9/4 ~ ees'2 f'2*3/2 ~ \divisioMaior
f'2 ees'2*4/2 d'2 ~ d'2*3/2 ~ d'2*3/2 \divisioMinima
ees'2*3/4 f'2 g'2*3/2 ~ g'4 f'4 ~ f'4 ~ f'2*3/2 ees'2*4/2 d'2*3/2 ~ \finalis
d'2 ~ d'2 ~ d'2*5/2 f'2*5/2 ~ f'2*3/2 ~ f'2 ~ f'2*4/2 d'2 ~ d'2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2*3/2 ~ d'4 g'2 ~ g'2 f'2*4/2 ~ f'4 d'2*4/2 f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ \divisioMaxima
d'2 f'2*3/2 d'2*3/2 ~ d'2 ees'2*7/2 f'2*3/2 \divisioMaior
d'2 ~ d'2*5/2 ~ d'2 f'2*3/2 ~ f'4 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 c'2*3/2 \divisioMaior
d'4 ~ d'2 ees'2*3/4 f'2 ~ f'2*4/2 ~ f'4 d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ \finalis
d'2 ~ d'2*4/2 c'2 d'2*4/2 f'2*3/2 \divisioMinima
ees'2*4/2 f'2*5/2 ~ f'2 d'2*7/2 ~ \divisioMinima
d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMaxima
d'4 ~ d'2*3/2 ~ d'2 g'2*4/2 f'2 ~ \divisioMinima
f'4 ees'2*3/2 f'2 g'2*3/4 f'2*3/2 ~ f'2*3/2 ~ f'2*3/4 ~ f'2*3/2 d'2*4/2 ~ d'4 \divisioMinima
g'2*3/2 f'2*3/2 ~ f'2*3/2 ~ f'2*7/4 d'2 ~ d'4 \finalis
r4 d'2 ~ d'2*4/2 ~ d'4 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 f'2 d'2*5/2 ~ d'2 ~ \divisioMinima
d'4 ~ d'2*3/2 g'2*3/4 f'2*5/2 ees'2*4/2 ~ ees'2*3/2 d'2 ~ \divisioMaior
d'4 g'2 f'2*3/2 d'2*7/4 f'2*3/2 d'2*7/4 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 c'2*3/2 \divisioMaxima
r4 d'2*3/2 c'2 d'2*4/2 ~ d'2*3/2 g'2*3/2 \divisioMaior
f'4 ~ f'2 ~ f'2 ees'2*6/2 d'2*6/2 ~ \divisioMinima
d'2*4/2 ees'2*3/4 f'2*6/2 d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'4 \divisioMinima
ees'2*4/2 ~ ees'2*4/2 d'2 ~ d'4 \finalis
f'4 g'2 f'2*4/2 g'2*3/4 f'2 r2*3/2 \divisioMaior
d'4 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*5/2 c'2*4/2 f'2*3/2 ees'2 \divisioMaior
d'2 f'2 ~ f'2*5/2 ees'2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMaxima
f'2*3/2 ~ f'4 d'2 c'2*4/2 f'2 ees'2*3/2 d'2*3/2 ~ \divisioMaior
d'2 ~ d'2*5/2 ~ d'2*3/2 ~ d'2 \divisioMinima
f'4 ~ f'2 ees'2*3/2 d'4 ~ d'2*3/2 f'2 ~ f'2*4/2 ~ f'4 \divisioMinima
ees'2*4/2 ~ ees'2*4/2 d'2 ~ d'4 \finalis
f'2 ~ f'4 g'2*3/2 ~ g'2 f'2*4/2 d'2*3/4 ~ d'2 ~ d'2*3/2 ~ \divisioMaior
d'4 ~ d'2*3/2 g'2*3/4 f'2*4/2 ~ f'2 ees'2*4/2 ~ ees'2*3/2 d'2 \divisioMinima
g'2 f'2*3/2 d'2*7/4 f'2*3/2 d'2*7/4 ~ d'2*4/2 ~ d'2*3/2 ~ d'2 c'2*3/2 \divisioMaxima
d'2 f'2*3/2 ~ f'2 d'2*4/2 f'2*7/4 ees'2 f'2*3/2 ~ \divisioMaior
f'2 ~ f'2*3/2 d'2 ~ d'2*4/2 f'2*5/2 ~ f'4 ~ \divisioMinima
f'2*4/2 ~ f'2*3/2 d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'4 \divisioMinima
ees'2*4/2 ~ ees'2*4/2 d'2 ~ d'4 \finalis
}

tenorMusic = {
bes4 a2*7/2 bes2*3/2 c'2*4/2 bes2*11/4 c'2*3/2 bes2 \divisioMaior
a2*4/2 g2*3/2 ~ g2*4/2 ~ \divisioMinima
g2 ~ g2 ~ g2 ~ g4 ~ g2 f2 g2 a2 c'2*3/2 bes2*3/2 a2*3/2 \divisioMaxima
bes2*3/2 c'2*3/2 ~ c'2 bes2*3/2 a2*7/4 f2*3/2 g2*9/4 bes2 ~ bes2*3/2 ~ \divisioMaior
bes2 ~ bes2*4/2 ~ bes2 c'2*3/2 bes2*3/2 \divisioMinima
c'2*3/4 ~ c'2 g2*3/2 bes2 c'4 bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 ~ \finalis
bes2 ~ bes2 ~ bes2*5/2 c'2*5/2 ~ c'2*3/2 bes2 a2*4/2 g2 a2 bes4 \divisioMaior
g4 c'2*3/2 bes4 g2 a2 bes2*5/2 a2*4/2 c'2*3/2 bes2*3/2 a2*3/2 \divisioMaxima
c'2 ~ c'2*3/2 ~ c'2*3/2 bes2 ~ bes2*7/2 ~ bes2*3/2 ~ \divisioMaior
bes2 a2*5/2 bes2 ~ bes2*4/2 a2*4/2 f2*3/2 ~ f2*3/2 ~ f2*3/2 ~ \divisioMaior
f4 bes2 ~ bes2*3/4 ~ bes2 c'2*4/2 bes4 ~ bes2*3/2 a2*4/2 bes2*3/2 ~ \finalis
bes2 ~ bes2*4/2 a2 bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes2*4/2 ~ bes2*5/2 c'2 bes2*7/2 \divisioMinima
c'2*3/2 bes2*4/2 a2*3/2 \divisioMaxima
bes4 a2*3/2 g2 ~ g2*4/2 ~ g4 f4 \divisioMinima
g4 ~ g2*3/2 ~ g2 ~ g2*3/4 ~ g2*3/2 bes2*3/2 c'2*3/4 bes2*3/2 a2*4/2 f4 \divisioMinima
g2*3/2 ~ g2*3/2 bes2*3/2 c'2*7/4 ~ c'2 bes4 ~ \finalis
bes4 ~ bes2 c'2*4/2 bes4 ~ bes2*4/2 ~ bes2*4/2 ~ bes2 c'2 ~ c'2*5/2 bes2 \divisioMinima
g4 ~ g2*3/2 ~ g2*3/4 ~ g2*5/2 ~ g2*4/2 c'2*3/2 ~ c'4 bes4 ~ \divisioMaior
bes4 ~ bes2 ~ bes2*3/2 a2*7/4 g2*3/2 a2*7/4 bes2*4/2 c'2*4/2 bes2 a2*3/2 \divisioMaxima
bes4 ~ bes2*3/2 a2 bes2*4/2 g2*3/2 ~ g2*3/2 ~ \divisioMaior
g4 ~ g2 f2 g2*6/2 ~ g2*6/2 \divisioMinima
bes2*4/2 ~ bes2*3/4 ~ bes2*6/2 a2*3/2 bes2 a2*4/2 g4 ~ \divisioMinima
g2*4/2 c'2*4/2 ~ c'2 bes4 \finalis
r4 ees'2 r2*4/2 ees'2*3/4 d'2 ~ d'2*3/2 \divisioMaior
bes4 ~ bes2*3/2 ~ bes2*3/4 g2*5/2 ~ g2*4/2 ~ g2*3/2 ~ g2 ~ \divisioMaior
g2 f2 bes2*5/2 ~ bes2*3/2 a2 g2*3/2 f2*3/2 g2 a4 \divisioMaxima
c'2*3/2 bes4 a2 g2*4/2 ~ g2 ~ g2*3/2 ~ g2*3/2 \divisioMaior
d'2 c'2*5/2 bes2*3/2 a2 \divisioMinima
g4 f2 g2*3/2 ~ g4 bes2*3/2 ~ bes2 f2*4/2 g4 ~ \divisioMinima
g2*4/2 c'2*4/2 ~ c'2 bes4 ~ \finalis
bes2 a4 g2*3/2 a2 bes2*4/2 ~ bes2*3/4 c'2 bes2*3/2 \divisioMaior
g4 ~ g2*3/2 ~ g2*3/4 ~ g2*4/2 f2 g2*4/2 c'2*3/2 ~ c'4 bes4 ~ \divisioMinima
bes2 ~ bes2*3/2 a2*7/4 g2*3/2 d2*7/4 bes2*4/2 c'2*3/2 bes2 a2*3/2 ~ \divisioMaxima
a2 c'2*3/2 bes2 ~ bes2*4/2 ~ bes2*7/4 ~ bes2 ~ bes2*3/2 ~ \divisioMaior
bes2 c'2*3/2 ~ c'2 bes2*4/2 ~ bes2*5/2 c'4 \divisioMinima
d'2*4/2 c'2*3/2 a2*3/2 bes2 a2*4/2 g4 ~ \divisioMinima
g2*4/2 c'2*4/2 ~ c'2 bes4 \finalis
}

bassMusic = {
g4 ~ g2*7/2 ~ g2*3/2 ~ g2*4/2 ~ g2*11/4 ~ g2*3/2 ~ g2 ~ \divisioMaior
g2*4/2 ~ g2*3/2 f2*4/2 \divisioMinima
ees2 d2 c2 ~ c4 bes,2 d2 ~ d2 ~ d2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMaxima
d2*3/2 ~ d2*3/2 g2 ~ g2*3/2 d2*7/4 ~ d2*3/2 c2*9/4 ~ c2 d2*3/2 \divisioMaior
g2 ~ g2*4/2 ~ g2 ~ g2*3/2 ~ g2*3/2 \divisioMinima
c2*3/4 d2 ees2*3/2 ~ ees2 d4 ~ d2*3/2 c2*4/2 g2*3/2 \finalis
r2 a2 g2*5/2 f2*5/2 d2*3/2 ~ d2 ~ d2*4/2 g2 ~ g2 ~ g4 ~ \divisioMaior
g4 ~ g2*3/2 ~ g4 ees2 ~ ees2 d2*5/2 ~ d2*4/2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMaxima
d2 ~ d2*3/2 g2*3/2 ~ g2 c2*7/2 d2*3/2 \divisioMaior
g2 ~ g2*5/2 ~ g2 d2*4/2 ~ d2*4/2 c2*3/2 bes,2*3/2 a,2*3/2 \divisioMaior
bes,4 ~ bes,2 c2*3/4 d2 ~ d2*4/2 ~ d4 g2*3/2 ~ g2*4/2 ~ g2*3/2 \finalis
r2 g2*4/2 ~ g2 ~ g2*4/2 d2*3/2 \divisioMinima
c2*4/2 d2*5/2 ~ d2 g2*7/2 ~ \divisioMinima
g2*3/2 ~ g2*4/2 d2*3/2 \divisioMaxima
bes,4 ~ bes,2*3/2 ~ bes,2 ees2*4/2 d2 ~ \divisioMinima
d4 c2*3/2 d2 ees2*3/4 d2*3/2 ~ d2*3/2 ~ d2*3/4 ~ d2*3/2 ~ d2*4/2 ~ d4 \divisioMinima
ees2*3/2 d2*3/2 ~ d2*3/2 ~ d2*7/4 g2 ~ g4 \finalis
r2*8/2 a2*4/2 g2*4/2 d2 ~ d2 g2*5/2 ~ g2 ~ \divisioMinima
g4 f2*3/2 ees2*3/4 d2*5/2 c2*4/2 ~ c2*3/2 g2 \divisioMaior
f4 ees2 d2*3/2 ~ d2*7/4 ~ d2*3/2 ~ d2*7/4 g2*4/2 ~ g2*4/2 ~ g2 a2*3/2 \divisioMaxima
r2*6/2 g2*4/2 f2*3/2 ees2*3/2 \divisioMaior
d4 ~ d2 ~ d2 c2*6/2 bes,2*6/2 ~ \divisioMinima
bes,2*4/2 c2*3/4 d2*6/2 ~ d2*3/2 g2 ~ g2*4/2 ~ g4 \divisioMinima
c2*4/2 ~ c2*4/2 g2 ~ g4 \finalis
d'4 ~ d'2 ~ d'2*4/2 c'2*3/4 ~ c'2 bes2*3/2 ~ \divisioMaior
bes4 a2*3/2 g2*3/4 f2*5/2 ees2*4/2 d2*3/2 c2 \divisioMaior
bes,2 d2 ~ d2*5/2 c2*3/2 d2 ~ d2*3/2 ~ d2*3/2 ~ d2 ~ d4 ~ \divisioMaxima
d2*3/2 ~ d4 ~ d2 ees2*4/2 d2 c2*3/2 g2*3/2 ~ \divisioMaior
g2 ~ g2*5/2 ~ g2*3/2 d2 ~ \divisioMinima
d4 ~ d2 c2*3/2 bes,4 ~ bes,2*3/2 d2 ~ d2*4/2 ~ d4 \divisioMinima
c2*4/2 ~ c2*4/2 g2 ~ g4 \finalis
d2 ~ d4 ees2*3/2 ~ ees2 d2*4/2 g2*3/4 ~ g2 ~ g2*3/2 ~ \divisioMaior
g4 f2*3/2 ees2*3/4 d2*4/2 ~ d2 c2*4/2 ~ c2*3/2 g2 \divisioMinima
ees2 d2*3/2 ~ d2*7/4 ~ d2*13/4 g2*4/2 ~ g2*3/2 ~ g2 a2*3/2 \divisioMaxima
d2 ~ d2*3/2 ~ d2 g2*4/2 d2*7/4 c2 d2*3/2 ~ \divisioMaior
d2 ~ d2*3/2 g2 ~ g2*4/2 d2*5/2 ~ d4 ~ \divisioMinima
d2*4/2 ~ d2*3/2 ~ d2*3/2 g2 ~ g2*4/2 ~ g4 \divisioMinima
c2*4/2 ~ c2*4/2 g2 ~ g4 \finalis
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
