\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.157
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Christo igitur" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Christo igitur"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Christo igitur" }
    \line {}
  }
}

chantText = \lyricmode {
Chri -- sto í -- gi -- tur 
\set stanza = " * " pas -- so in car -- ne, _ _ _ 
et vos e -- á -- dem co -- gi -- ta -- ti -- ó -- ne ar -- má -- mi -- ni: _ _ _ _ _ 
qui -- a qui pas -- sus est in car -- _ ne, _ 
dé -- si -- it a pec -- cá -- _ _ tis. _ ℣. 
Sem -- per mor -- ti -- fi -- ca -- ti -- ó -- nem _ Je -- _ _ _ _ su _ 
in cór -- po -- re no -- _ stro cir -- cum -- fe -- rén -- tes, _ _ _ _ 
ut et vi -- ta Je -- su ma -- ni -- fe -- sté -- _ tur _ _ 
in cor -- pó -- ri -- bus _ no -- stris. _ ℣. 
A -- spi -- ci -- én -- _ _ _ _ _ tes 
in au -- ctó -- rem fí -- _ _ de -- i _ _ _ _ 
et con -- sum -- ma -- tó -- rem Je -- sum, _ _ _ _ _ 
qui pro -- pó -- si -- to si -- bi gáu -- di -- o, su -- stí -- nu -- it cru -- cem, 
con -- fu -- si -- ó -- ne con -- tém -- _ pta, _ _ 
at -- _ que in dé -- xte -- ra se -- dis De -- i _ 
\set stanza = " * " se -- det. _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 f'4 ( g'4 f'4 d'4) f'4 ( g'4 f'4 g'4) a'4 ( g'4) g'4 \divisioMinima
 f'4 ( g'4 a'\prall bes'4) bes'4 ( a'4) bes'4 a'4 ( bes'4 a'4 g'4) f'4 ( g'\prall a'4 g'4.) a'4 ( bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 f'4 g'4 bes'4 bes'4 a'4 bes'4 c''4 bes'4 bes'4 ( bes'4 a'4 g'4) g'4 \divisioMinima
 a'4 ( bes'4 c''4) bes'4 ( bes'4 a'4) g'4 ( f'4) f'4 ( g'4) a'4 ( g'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 a'4 ( bes'4) g'4 g'4 g'4 ( a'4) g'4 g'4 g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4 bes'4 c''4) ~ c''4 ( bes'4) \divisioMaior
 c''4 f'4 g'4 ( bes'4) bes'4 ( a'4) bes'4 ( c''4) c''4 ( g'4.) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 a'4 ( a'4 g'4) \finalis
 g'4 g'4 ( d'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4) g'4 g'4 ( bes'4) bes'4 ( a'4) bes'4 ( c''4) c''4 ( f'4) g'4 ( bes'4 a'4 g'4) \divisioMinima
 g'4 ( a'4 g'4 f'4 g'4) bes'4 ( bes'4) ~ bes'4 ( g'4.) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 g'4 ( bes'4) bes'4 g'4 a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 \divisioMinima
 g'4 g'4 ( c''4) bes'4 bes'4 ( \tiny a' g' 4) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 f'4 a'4 ( bes'4) g'4 g'4 ( a'4) g'4 \divisioMinima
 g'4 g'4 g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 ( c''4) bes'4 ( bes'4 a'4) g'4 ( f'4 g'4) f'4 ( bes'4) a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 g'4 a'4 ( a'4 g'4) \finalis
 g'4 f'4 g'4 bes'4 ( bes'4) c''4 ( d''4 bes'4) ~ bes'4 ( a'4) c''4 ( bes'4) ~ bes'4 ( a'4) ~ a'4 ( g'4 a'\prall bes'4 a'4 bes'4) a'4 ( g'4) \divisioMaior
 g'4 bes'4 ( a'4) bes'4 g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 ( a'4) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 g'4 g'4 bes'4 ( a'4) bes'4 ( c''4) c''4 ( bes'4 c''4) bes'4 ( a'4 bes'4) f'4 f'4 ( g'4) a'4 ( g'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 f'4 a'4 ( bes'4) g'4 g'4 g'4 g'4 g'4 ( a'4) g'4 g'4 \divisioMinima
 g'4 g'4 g'4 bes'4 ( a'4) bes'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 g'4 g'4 g'4 ( a'4) g'4 g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4)  bes'4 ( aes'4 c''4.) d''4 ( e''4 c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) g'4 ( f'4) g'4 g'4 f'4 g'4 ( a'4) g'4 g'4 ( f'4) bes'4 a'4 ( bes'4) c''4 ( bes'4 c''4)  g'4 g'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 c''4 a'4 bes'4) \divisioMinima
 a'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) a'4 ( a'4 g'4) \finalis

}

altoMusic = {
d'2*4/2 ~ d'4 c'2*4/2 d'2 ~ d'4 ~ \divisioMinima
d'2*4/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ees'2*3/4 ~ ees'2*3/2 d'2*3/2 ~ d'2 ~ \divisioMaior
d'4 ~ d'2 f'2 ees'2 d'2 ~ d'2*4/2 ~ d'4 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 c'2 ~ c'2 d'2 ~ d'2*3/2 ees'2*3/2 r2*3/2 \divisioMaxima
d'2*4/2 ~ d'2*3/2 ~ d'2 c'2 d'2*4/2 ees'2*3/2 f'2*3/2 ~ \divisioMaior
f'4 ~ f'4 d'2 ~ d'2 ~ d'2 c'2*7/4 d'2*4/2 ~ d'4 ~ d'2 ~ d'4 ~ \finalis
d'4 c'2 bes2 c'2*3/2 d'2 ees'2 d'2 c'2 d'2*4/2 \divisioMinima
ees'2*5/2 f'2 g'2*7/4 f'2*4/2 ees'2 d'2*3/2 \divisioMaior
f'4 ~ f'2 ees'2 d'2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2*3/2 c'2 d'2*3/2 ees'2*3/2 r2*3/2 \divisioMaxima
r2 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 c'2 d'2*4/2 ees'2*3/2 f'2*3/2 ~ \divisioMaior
f'2 ees'2*3/2 d'2*3/2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'4 ~ \finalis
d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 ~ d'2 ~ d'2*5/2 ~ d'2 ~ \divisioMaior
d'4 ees'2 f'2*3/2 ees'2 d'2*3/2 ees'2 d'2 ~ d'2*3/2 ~ d'2*3/2 r2*3/2 \divisioMaior
d'2 g'2*4/2 f'2*3/2 ees'2*3/2 d'4 ~ d'2 ~ d'2 ees'2*3/2 ~ ees'2*3/2 c'2 ~ c'4 \divisioMaxima
r2 d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 ees'2 f'2 ees'2*3/2 d'4 ~ \divisioMaior
d'2*3/2 ees'2*4/2 ~ ees'2 ~ ees'2*4/2 f'2 g'2*7/4 f'2*3/2 \divisioMaior
d'2 ~ d'2*3/2 c'2*3/2 d'2 ~ d'2*3/2 ees'2 f'4 ~ f'2 ees'2*3/2 d'4 ees'2*3/2 f'2 g'2*3/2 f'2 ~ \divisioMinima
f'2 ~ f'2 d'2*4/2 ~ d'2 ~ d'4 \finalis
}

tenorMusic = {
bes2*5/2 a2*4/2 ~ a2 bes4 ~ \divisioMinima
bes2*4/2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 c'2*3/4 ~ c'2*3/2 ~ c'2*3/2 bes2 ~ \divisioMaior
bes4 a2 f2 g2 ~ g2 c'2*4/2 bes4 \divisioMinima
a2*3/2 g2*3/2 a2 ~ a2 bes2 ~ bes2*3/2 c'2*3/2 ~ c'2*3/2 \divisioMaxima
d'2*4/2 c'2*3/2 bes2 c'2 bes2*4/2 c'2*3/2 d'2*3/2 \divisioMaior
c'2 bes2 ~ bes2 a2 ~ a2*7/4 g2*4/2 bes4 c'2 bes4 ~ \finalis
bes4 a2 g2 a2*3/2 bes2 c'2 bes2 a2 bes2*4/2 ~ \divisioMinima
bes2*5/2 ~ bes2 ~ bes2*7/4 ~ bes2*4/2 ~ bes2 a2*3/2 ~ \divisioMaior
a4 g2 ~ g2 ~ g2 ~ g2*3/2 bes4 \divisioMinima
g4 a2*3/2 bes2*3/2 c'2 bes2*3/2 c'2*3/2 ~ c'2*3/2 ~ \divisioMaxima
c'2 ~ c'2*3/2 bes2*3/2 ~ \divisioMinima
bes2*3/2 c'2 bes2*4/2 c'2*3/2 d'2*3/2 ~ \divisioMaior
d'2 c'2*3/2 bes2*3/2 ~ bes2 ~ bes2 a2*3/2 bes2 c'2 bes4 ~ \finalis
bes2*3/2 ~ bes2*4/2 a2*4/2 g2 a2 bes2*5/2 c'4 bes4 ~ \divisioMaior
bes4 c'2 d'2*3/2 c'2 bes2*3/2 ~ bes2 a2 c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 \divisioMaior
bes2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes4 a2 g2 ~ g2*3/2 bes2*3/2 ~ bes2 a4 \divisioMaxima
c'2 ~ c'2 bes2*4/2 a2*3/2 bes4 ~ \divisioMinima
bes4 ~ bes2 ~ bes2 ~ bes2*3/2 ~ bes4 \divisioMaior
g2*3/2 ~ g2*4/2 c'2 bes2*4/2 ~ bes2 ~ bes2*7/4 ~ bes2*3/2 ~ \divisioMaior
bes2 c'2*3/2 ~ c'2*3/2 bes2 ~ bes2*3/2 ~ bes2 ~ bes4 f2 g2*3/2 bes4 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 \divisioMinima
c'2 bes2 ~ bes2*4/2 c'2 bes4 \finalis
}

bassMusic = {
r2*9/2 g2 ~ g4 \divisioMinima
r2*4/2 g2*3/2 a2*4/2 bes2*3/2 ~ bes2*3/4 c'2*3/2 g2*3/2 ~ g2 ~ \divisioMaior
g4 d2 ~ d2 c2 g2 ~ g2*4/2 ~ g4 ~ \divisioMinima
g2*3/2 ~ g2*3/2 ~ g2 a2 ~ a2 bes2*3/2 ~ bes2*3/2 a2*3/2 \divisioMaxima
g2*4/2 ~ g2*3/2 ~ g2 a2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 \divisioMaior
a2 ~ a2 g2 ~ g2 ~ g2*7/4 ~ g2*4/2 ~ g4 ~ g2 ~ g4 \finalis
r2*8/2 g2 ~ g2 ~ g2 ~ g2 ~ g2*4/2 \divisioMinima
c2*5/2 d2 ees2*7/4 d2*4/2 c2 d2*3/2 ~ \divisioMaior
d4 ~ d2 ees2 f2 g2*3/2 ~ g4 ~ \divisioMinima
g4 h2*3/2 g2*3/2 a2 bes2*3/2 ~ bes2*3/2 a2*3/2 ~ \divisioMaxima
a2 g2*3/2 ~ g2*3/2 ~ \divisioMinima
g2*3/2 a2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMaior
bes2 ~ bes2*3/2 ~ bes2*3/2 a2 g2 ~ g2*3/2 ~ g2 ~ g2 ~ g4 \finalis
r2*3/2 a2*4/2 g2*4/2 ~ g2 ~ g2 ~ g2*5/2 ~ g2 \divisioMaior
bes4 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 c2 d2 ~ d2*3/2 g2*3/2 a2*3/2 \divisioMaior
g2 ees2*4/2 d2*3/2 c2*3/2 bes,4 ~ bes,2 ~ bes,2 c2*3/2 ~ c2*3/2 f2 ~ f4 \divisioMaxima
a2 g2 ~ g2*4/2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g4 ees2 d2 c2*3/2 bes,4 ~ \divisioMaior
bes,2*3/2 c2*4/2 ~ c2 ~ c2*4/2 d2 ees2*7/4 d2*3/2 \divisioMaior
g2 ~ g2*3/2 a2*3/2 bes2 bes,2*3/2 c2 d4 ~ d2 c2*3/2 bes,4 c2*3/2 d2 ees2*3/2 d2 ~ \divisioMinima
d2 ~ d2 g2*4/2 ~ g2 ~ g4 \finalis
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
