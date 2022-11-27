\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.134
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"De profundis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "De profundis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "De profundis" }
    \line {}
  }
}

chantText = \lyricmode {
De pro -- fún -- _ dis _ 
\set stanza = " * " cla -- má -- _ vi ad _ te, Dó -- mi -- ne: _ _ _ _ _ _ 
Dó -- mi -- ne, _ ex -- áu -- di _ _ _ 
vo -- _ _ cem me -- _ _ _ _ _ am. ℣. 
Fi -- ant au -- res tu -- _ _ æ 
in -- _ ten -- dén -- _ tes _ _ _ _ _ _ _ _ _ _ _ _ 
in o -- ra -- ti -- _ ó -- nem _ _ _ 
ser -- _ _ vi tu -- _ _ _ _ _ i. _ ℣. 
Si in -- i -- qui -- tá -- tes ob -- _ ser -- vá -- _ ve -- ris, Dó -- _ mi -- ne: _ _ _ _ _ _ _ _ _ 
Dó -- mi -- ne, _ quis sus -- ti -- né -- _ _ _ _ _ bit? _ ℣. 
Qui -- a a -- pud te pro -- pi -- ti -- á -- ti -- o est, _ _ _ _ _ _ _ _ 
et pro -- pter le -- gem _ tu -- am _ _ _ 
sus -- tí -- _ nu -- i te, 
\set stanza = " * " Dó -- _ _ _ _ _ _ mi -- ne. _ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4 f'4 g'4 ( a'4 g'4) f'4 g'4 ( g'4 f'4) \divisioMinima
 ees'4 ( f'4) f'4 ( bes'4) ~ bes'4 ( c''4) g'4 g'4 ( f'4) g'4 ( ees'4 f'4) f'4 \divisioMinima \forceBreak

 a'4 ( bes'4) g'4 ( f'4) f'4 ( f'4 a'4 g'4 f'4) g'4 ( f'4) g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 f'4 g'4 ( ees'4 f'4) f'4 g'4 ( bes'4 a'4) bes'4 \forceBreak
 bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \divisioMaior
  ees'4 ( g'4) aes'4 ( g'4) aes'4 ( f'4) bes'4 bes'4. a'4 ( bes'4 f'4.)  bes'4 ( bes'4 g'4 f'4) g'4 ( aes'4 f'4 ees'4) \divisioMinima \forceBreak

  g'4 bes'4 ( g'4) a'4 ( f'4) f'4 g'4 ( g'4 f'4) \finalis
 f'4 ( g'\prall a'4 bes'4) a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( \once \tweak #'font-size #-4 c'' ) f'4 g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( bes'4 g'4) g'4 ( f'4) \divisioMaior \forceBreak

 g'4 ( f'4) ~ f'4 ( \once \tweak #'font-size #-4 ees' ) f'4 ( g'4 \once \tweak #'font-size #-4 f' ) g'4. f'4 ( bes'4 a'4 bes'4) g'4 ( f'4) \divisioMinima
 c'4 ( f'4) bes'4 ( a'4) bes'4 ( g'4 f'4.)  aes'4 ( g'4) aes'4 ( f'4 ees'4.) bes'4 ( g'4 f'4 \forceBreak
) g'4 ( f'4) g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 ( g'4 bes'4) a'4 ( f'4 g'4) f'4 ( ees'4 f'4) f'4 ( g'4) bes'4 ( a'4 bes'4 \forceBreak
) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \divisioMaior
  ees'4 ( g'4) aes'4 ( g'4) aes'4 ( \once \tweak #'font-size #-4 f' ) bes'4 bes'4. a'4 ( bes'4 f'4. \forceBreak
)  bes'4 ( bes'4 g'4 f'4) g'4 ( aes'4 f'4 ees'4) \divisioMinima
  g'4 bes'4 ( g'4) a'4 ( f'4) f'4 g'4 ( g'4 f'4) \finalis
 f'4 f'4 ( c'4) f'4 g'4 ( bes'4 \forceBreak
) bes'4 bes'4 ( a'4 bes'4 g'4) \divisioMinima
 bes'4 ( g'4) ~ g'4 ( f'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 a'4 ( bes'4 g'4) f'4 ( ees'4) f'4 ( g'4) \divisioMinima
 g'4 a'4 ( bes'4 g'4 \forceBreak
) f'4 ( ees'4) f'4 g'4 ( ees'4 f'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4.) f'4 g'4 ( f'4) g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 f'4 g'4 ( ees'4 f'4 \forceBreak
) f'4 ( g'4) bes'4 ( a'4) \divisioMinima
 bes'4 g'4 ( a'\prall bes'4 a'4) bes'4 bes'4. a'4 ( bes'4 f'4.)  bes'4 ( bes'4 g'4 f'4) g'4 ( aes'4 f'4 ees'4) \divisioMinima
  g'4 bes'4 ( g'4) a'4 ( f'4) f'4 g'4 ( g'4 f'4) \finalis \forceBreak

 f'4 f'4 ( c'4) f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( a'4 bes'4) \divisioMinima
 f'4 ( ees'4) f'4 g'4 ( a'\prall bes'4) bes'4 ( c''4) c''4 ( a'4 bes'4 g'4) g'4 ( bes'4 a'4 f'4) f'4. ees'4 ( g'4) bes'4 ( a'4 \forceBreak
) bes'4 ( c''4 g'4) ~ g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 g'4 ( bes'4) a'4 ( f'4 g'4) f'4 ( ees'4 f'4) f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4 \forceBreak
) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \divisioMaxima
 f'4 g'4 ( f'4) g'4 ( a'\prall bes'4) f'4 ( g'4 f'4 ees'4) ees'4 ( g'4 bes'4) bes'4 \divisioMinima
 bes'4 ( a'4 bes'4 g'4 f'4) ~ f'4 ( f'4 \forceBreak
) g'4 ( f'4) ~ f'4 ( ees'4 f'4) \divisioMinima
 bes'4 ( bes'4 bes'4) c''4 ( bes'4 a'4 g'4) ~ g'4 ( f'4) f'4 f'4 ( g'4 f'4 ees'4) \divisioMinima
 g'4 ( a'\prall bes'4 a'4 bes'4) ~ bes'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
r2*3/2 f'2*3/2 r2*4/2 \divisioMinima
ees'2 d'4 ~ d'2*4/2 ~ d'2 ees'2*3/2 r4 \divisioMinima
f'2*4/2 ~ f'2*4/2 ~ f'4 d'2*4/2 ~ d'2 ~ d'2 r2 c'2*3/2 \divisioMaxima
d'2*4/2 ~ d'4 ~ d'2*4/2 ees'2*4/2 f'2 ~ f'2*5/2 ~ f'4 c'2 ees'2 ~ ees'2 f'2 ~ f'4 ~ f'2*7/4 ~ f'2*3/4 d'2*4/2 ees'2*4/2 ~ ees'4 ~ ees'2*4/2 ~ ees'4 c'2 ~ c'4 \finalis
d'2*6/2 f'2*3/2 ~ f'2 ees'2*5/2 f'2*3/2 d'2 ~ \divisioMaior
d'4 bes2*3/2 c'2*3/2 d'2*3/4 f'2 ~ f'2 c'2 ~ \divisioMinima
c'2 bes2*4/2 ~ bes2*3/4 ees'2*4/2 ~ ees'2*3/4 d'2*3/2 c'2*4/2 d'2 bes2*4/2 c'2*3/2 ~ \divisioMaxima
c'4 d'2*8/2 ~ d'2 ~ d'2*3/2 ees'2*4/2 f'2 d'2*3/2 ~ d'2*3/2 c'2 ees'2 ~ ees'2 f'2*3/2 ~ f'2*3/4 ~ f'2 ~ f'2*3/4 d'2 ~ d'2 ees'2*4/2 ~ ees'4 ~ ees'2*4/2 ~ ees'4 c'2 ~ c'4 \finalis
r4 c'2*3/2 d'2 ~ d'4 ees'2 f'2 ~ \divisioMinima
f'4 d'2*3/2 ~ d'2 ~ d'4 ~ d'2*3/2 ~ d'2 c'2 ~ \divisioMinima
c'4 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ees'2 ~ ees'2*9/4 bes2*4/2 c'2 bes2 d'2 c'2*3/2 \divisioMaxima
d'2*4/2 ~ d'2 ~ d'2 ~ \divisioMinima
d'4 ees'2*5/2 f'2*3/4 ~ f'2*7/4 ~ f'2 ~ f'2 ees'2*3/2 ~ ees'4 ~ ees'4 f'2 c'2*3/2 ~ c'2 ~ c'4 \finalis
r4 c'2*3/2 ~ c'2 bes2*3/2 ~ \divisioMinima
bes2*3/2 ees'2*3/2 f'2*6/2 ~ f'2*4/2 ~ f'2*3/4 ees'2 d'2 ~ d'2 c'2*5/2 d'2 ~ d'2 c'2*3/2 \divisioMaxima
bes4 d'2*5/2 ~ d'2*5/2 ~ d'2*3/2 ees'2*4/2 f'2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ \divisioMaxima
d'4 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 c'2*3/2 ~ c'4 \divisioMinima
bes2*5/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes4 \divisioMinima
f'2*3/2 ~ f'2*3/2 d'2*3/2 c'4 bes2 c'2 \divisioMinima
ees'2*4/2 f'2 bes2 c'2 ~ c'4 \finalis
}

tenorMusic = {
r2 d'2*5/2 ~ d'2*3/2 \divisioMinima
c'2 bes4 ~ bes2*4/2 d'2 c'2*3/2 ~ c'4 \divisioMinima
d'2*4/2 ~ d'2*5/2 ~ d'2*4/2 ~ d'2 ~ d'2 ~ d'2 c'2*3/2 \divisioMaxima
r4 bes2*3/2 a4 g2*4/2 ~ g2*4/2 f2 bes2*6/2 ~ bes4 a4 bes2 c'2 r2 c'4 bes2*5/2 ~ bes2*4/2 ~ bes2*4/2 ~ bes4 c'2*4/2 bes4 ~ bes2 a4 \finalis
bes2*6/2 ~ bes2*3/2 a2 bes2*5/2 ~ bes2*3/2 a2 ~ \divisioMaior
a4 g2*3/2 a2*3/2 bes2*3/4 ~ bes2 f2 d2 ~ \divisioMinima
d2 ~ d2*4/2 ~ d2*3/4 ees2*4/2 g2*3/4 ~ g2*3/2 ~ g2*4/2 ~ g2 f2*4/2 g2*3/2 ~ \divisioMaxima
g4 ~ g2 bes2*6/2 a2 g2*3/2 ~ g2*4/2 f2 g2*3/2 bes2*3/2 a2 bes2 c'2 ~ c'2 ~ c'4 bes2*3/4 g2 a2*3/4 g2 bes2 ~ bes2*4/2 ~ bes4 c'2*4/2 bes4 ~ bes2 a4 \finalis
r4 f2*3/2 ~ f2 g4 ~ g2 f2 \divisioMinima
g4 a2*3/2 ~ a2 ~ a4 g2*3/2 ~ g2 ees2 \divisioMinima
d2*4/2 ees2*3/2 d2*3/2 r2 ees2*9/4 d2*4/2 ~ d2 ~ d2 ~ d2 g2*3/2 \divisioMaxima
r4 bes2*3/2 a2 g2 ~ \divisioMinima
g4 ~ g2*5/2 f2*3/4 g2*7/4 f2 bes2 ~ bes2 g2 ~ g4 f2*4/2 a4 bes2 a4 \finalis
r4 a2*3/2 f2*5/2 \divisioMinima
g2*3/2 ~ g2*3/2 f2 g2*4/2 bes2*4/2 ~ bes2*7/4 ~ bes2 ~ bes2 a2*5/2 g2 ~ g2 ~ g2*3/2 \divisioMaxima
r4 g2 ~ g2*3/2 bes2*3/2 a2 g2*3/2 ~ g2*4/2 f2 g2*3/2 bes2*3/2 a2 \divisioMaxima
bes4 a2 g2*3/2 ~ g2*4/2 ~ g4 ees2 ~ ees4 \divisioMinima
f2*5/2 d2*3/2 ees2*3/2 d4 ~ \divisioMinima
d2*3/2 f2*3/2 a2*4/2 g2 ~ g2 \divisioMinima
bes2*4/2 ~ bes2 ~ bes2 ~ bes2 a4 \finalis
}

bassMusic = {
r2*7/2 bes2*3/2 ~ \divisioMinima
bes2 ~ bes4 g2*4/2 bes2 ~ bes2*3/2 a4 \divisioMinima
r2*4/2 c'2*5/2 bes2*4/2 a2 g2 bes2*5/2 \divisioMaxima
bes,4 ~ bes,2*4/2 ~ bes,2*4/2 c2*4/2 d2 ~ d2*6/2 f2 g2 f2 ees2 d4 ~ d2*5/2 g2*4/2 ~ g2*4/2 ~ g4 c2*4/2 ~ c4 f2 ~ f4 \finalis
g2*6/2 d2*3/2 ~ d2 c2*5/2 d2*3/2 ~ d2 ~ \divisioMaior
d4 g2*3/2 ~ g2*3/2 ~ g2*3/4 d2 ~ d2 ~ d2 \divisioMinima
a,2 g,2*4/2 bes,2*3/4 c2*4/2 ~ c2*3/4 bes,2*3/2 a,2*4/2 bes,2 d2*4/2 c2*3/2 ~ \divisioMaxima
c4 bes,2*8/2 ~ bes,2 ~ bes,2*3/2 c2*4/2 d2 g2*3/2 ~ g2*3/2 a2 g2 f2 ees2 d4 ~ d2*3/4 ~ d2 ~ d2*3/4 g2 ~ g2 ~ g2*4/2 ~ g4 c2*4/2 ~ c4 f2 ~ f4 \finalis
r4 a,2*3/2 bes,2 ~ bes,4 c2 d2 ~ \divisioMinima
d4 ~ d2*3/2 c2 bes,4 ~ bes,2*3/2 c2 ~ c2 \divisioMinima
g,2*4/2 ~ g,2*3/2 bes,2*3/2 c2 ~ c2*9/4 d2*4/2 a,2 g,2 bes,2 c2*3/2 \divisioMaxima
bes,4 ~ bes,2*3/2 ~ bes,2 ~ bes,2 ~ \divisioMinima
bes,4 c2*5/2 d2*3/4 ~ d2*7/4 ~ d2 ~ d2 ees2 ~ ees2 ~ ees4 d2*4/2 ~ d4 f2 ~ f4 \finalis
r4 d2*3/2 ~ d2*5/2 ~ \divisioMinima
d2*3/2 c2*3/2 d2 ~ d2*4/2 ~ d2*4/2 g2*7/4 ~ g2 ~ g2 a2*5/2 r2 bes,2 c2*3/2 \divisioMaxima
g,4 ~ g,2 bes,2*3/2 ~ bes,2*3/2 ~ bes,2 ~ bes,2*3/2 c2*4/2 d2 g2*3/2 ~ g2*3/2 d2 \divisioMaxima
bes,4 ~ bes,2 ~ bes,2*3/2 c2*4/2 ~ c4 ~ c2 ~ c4 \divisioMinima
d2*5/2 g,2*3/2 ~ g,2*3/2 bes,4 \divisioMinima
d2*3/2 ~ d2*3/2 ~ d2*4/2 ~ d2 c2 ~ \divisioMinima
c2*4/2 d2 ees2 f2 ~ f4 \finalis
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
        "VIII"
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
