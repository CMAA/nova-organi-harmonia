\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.455 (addenum pp10)
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Regali ex progenie" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Regali ex progenie"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Regali ex progenie" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- gá -- _ _ li 
\set stanza = " * " ex pro -- gé -- ni -- _ e Ma -- rí -- a ex -- ór -- _ _ _ ta re -- fúl -- get; 
cu -- jus pré -- _ ci -- bus nos ad -- ju -- _ vá -- ri, _ _ _ 
men -- te et spí -- ri -- tu de -- vo -- tís -- si -- me _ _ pó -- sci -- mus. T.P. 
Al -- _ le -- _ _ _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   e'4 e'4 ( g'4 e'4) g'4 ( a'4 g'4) f'4 ( f'4 d'4 f'\prall g'4 f'4 e'4) e'4 \divisioMinima
 e'4 e'4 e'4 ( f'4 g'4)  f'4 ( a'4 g'4) a'4 ( bes'4) a'4 \divisioMinima
 a'4  bes'4 a'4 a'4 c''4 ( a'4) c''4 ( g'4 f'4) ~ f'4 ( d'4.) f'4 ( g'4 a'4 g'4 f'4) g'4 ( f'4 f'4) d'4 d'4 ( g'4 f'4 e'4) e'4 \divisioMaxima
 d'4 g'4  a'4 ( g'4) a'4 ( bes'4) a'4 a'4 \divisioMinima
 a'4 a'4 c''4 ( a'4) ~ a'4 ( f'4) g'4 ( a'4 g'4) d'4 ( g'4 a'4 f'4 d'4) g'4. ~ g'4 ( g'4) a'4 ( c''4 a'4) ~ a'4 ( g'4) \divisioMaxima
 d'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 a'4 ( b'4 a'4 g'4 a'\prall b'4 c''4) b'4 b'4 \divisioMinima
 c''4 b'4 ( a'4) c''4 ( d''4 c''4) b'4 ( g'4) a'4. g'4 ( a'4 g'4 f'4) g'4 ( a'4 g'4) e'4 e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis
 c'4 ( e'4) g'4 ( f'4) f'4 ( f'4) ~ f'4 ( f'4 c'4) f'4 ( f'4) ~ f'4 ( e'4) a'4 ( g'4) a'4 ( f'4) ~ f'4 ( e'4) e'4 ( g'4 f'4 e'4) e'4 \finalis

}

altoMusic = {
r4 e'2*3/2 d'2*3/2 c'2*4/2 b2*3/2 c'4 ~ \divisioMinima
c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2*3/2 ~ c'2 ~ c'2 a2*7/4 ~ a2*5/2 ~ a2*4/2 bes2*4/2 c'4 \divisioMaxima
d'2 ~ d'2*5/2 ~ d'4 \divisioMinima
f'2*3/2 ~ f'2*3/2 r2*3/2 d'2*5/2 r2*7/4 d'2 ~ d'2 ~ d'4 ~ \divisioMaxima
d'2*4/2 e'2*3/2 ~ e'2*3/2 ~ e'2 g'4 ~ \divisioMinima
g'4 ~ g'2 ~ g'2*3/2 ~ g'2 f'2*3/4 d'2*4/2 ~ d'2*3/2 ~ d'4 c'2 b2 c'2 ~ \finalis
c'2*4/2 a2 bes2*3/2 c'2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'4 \finalis
}

tenorMusic = {
r4 r2*14/2 \divisioMinima
r2 c2*3/2 d2*3/2 f2 e4 ~ \divisioMinima
e4 g2*3/2 f2 e2 d2*7/4 e2*5/2 f2*4/2 ~ f2*4/2 g4 ~ \divisioMaxima
g2 e2*5/2 f4 \divisioMinima
a2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'2*5/2 d'2*3/4 c'2 ~ c'2 ~ c'2 b4 \divisioMaxima
d'2*4/2 ~ d'2*3/2 b2*3/2 a2 d'4 \divisioMinima
r4 d'2 e'2*3/2 d'2 c'2*3/4 ~ c'2*4/2 b2*3/2 a4 ~ a2 ~ a2 ~ a2 \finalis
e2*4/2 c2 ~ c2*3/2 ~ c2 d2 e2*3/2 f2*3/2 g2*4/2 a4 \finalis
}

bassMusic = {
r4 a2*3/2 ~ a2*3/2 ~ a2*4/2 ~ a2*3/2 ~ a4 \divisioMinima
a,2 ~ a,2*3/2 ~ a,2*3/2 ~ a,2 ~ a,4 ~ \divisioMinima
a,4 ~ a,2*3/2 ~ a,2 ~ a,2 d2*7/4 ~ d2*5/2 ~ d2*4/2 ~ d2*4/2 c4 \divisioMaxima
bes,2 d2*5/2 ~ d4 ~ \divisioMinima
d2*3/2 ~ d2*3/2 e2*3/2 f2*5/2 e2*3/4 ~ e2 f2 g2 ~ g4 \divisioMaxima
b2*4/2 a2*3/2 ~ a2*3/2 ~ a2 g4 \divisioMinima
e4 ~ e2 ~ e2*3/2 ~ e2 f2*3/4 g2*4/2 ~ g2*3/2 a4 ~ a2 ~ a2 a,2 \finalis
c2*4/2 f,2 g,2*3/2 a,2 ~ a,2 ~ a,2*3/2 ~ a,2*3/2 ~ a,2*4/2 ~ a,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
        "4"
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
