\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.381
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tamquam prodigium" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tamquam prodigium"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tamquam prodigium" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ _ _ _ ia, 
\set stanza = " * " 
al -- le -- lú -- _ _ _ _ _ ia. 
_ _ _ _ 
_ _ _ _ _ ℣. 
Tam -- quam pro -- dí -- _ _ gi -- um fa -- ctus sum _ _ mul -- _ tis: 
et tu ad -- jú -- tor 
\set stanza = " * " for -- _ _ _ _ _ tis. 
_ _ _ _ 
_ _ _ _ _ }

chantMusic = {
\tieDown   g'4 ( a'4) g'4 g'4 ( b'4) d''4 ( d''4 c''4 b'4 a'4) c''4 ( b'4) ~ b'4 ( a'4.) b'4 ( c''4 a'4) ~ a'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMaior
  g'4 ( a'4) g'4 g'4 ( b'4) d''4 ( d''4 c''4 b'4 a'4) c''4 ( b'4) ~ b'4 ( a'4.) b'4 ( c''4 a'4) ~ a'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMaior
 a'4 ( a'4 g'4 f'4 e'4 d'4) f'4 ( e'4) ~ e'4 ( d'4 c'4) d'4 ( e'4) \divisioMaior
 c'4 ( e'4) g'4 ( g'4 f'4 e'4 d'4) e'4 ( f'4 g'4.) a'4 ( g'4) c''4 ( c''4 b'4 a'4 g'4) \finalis
 g'4 g'4 ( a'4) g'4 ( f'4) f'4 ( a'4) c''4 ( b'4 a'4) d''4 ( c''4) a'4 ( g'4) g'4 \divisioMinima
 g'4 ( a'4) g'4 ( f'4) f'4 ( g'4 e'4) ~ e'4 ( d'4) f'4 ( e'4) d'4 ( c'4) d'4 ( e'4) e'4 \divisioMaxima
 e'4 ( c'4) e'4 ( g'4) g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( a'4 g'4) g'4 \divisioMinima
 g'4 ( b'4) d''4 ( d''4 c''4 b'4 a'4) c''4 ( b'4) ~ b'4 ( a'4.) b'4 ( c''4 a'4) ~ a'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMaior
 a'4 ( a'4 g'4 f'4 e'4 d'4) f'4 ( e'4) ~ e'4 ( d'4 c'4) d'4 ( e'4) \divisioMaior
 c'4 ( e'4) g'4 ( g'4 f'4 e'4 d'4) e'4 ( f'4 g'4.) a'4 ( g'4) c''4 ( c''4 b'4 a'4 g'4) \finalis

}

altoMusic = {
r2*3/2 g'2 ~ g'2*4/2 e'2 ~ e'2 ~ e'2*3/4 g'2 f'2*3/2 d'4 c'2*3/2 d'2 ~ d'2*4/2 c'2 e'2*7/4 ~ e'2 d'2*3/2 e'4 ~ \divisioMaior
e'2*3/2 d'2*4/2 c'2*4/2 ~ c'2 ~ \divisioMaior
c'2 a2*5/2 c'2*7/4 ~ c'2 ~ c'2*4/2 b4 \finalis
r4 e'2 c'2 d'2 e'2*3/2 d'2 ~ d'2 ~ d'4 \divisioMinima
c'2*4/2 d'2 a2*3/2 ~ a2 ~ a2*4/2 c'4 ~ \divisioMaxima
c'2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ c'4 \divisioMinima
d'2 ~ d'2*4/2 c'2 ~ c'2*7/4 ~ c'2 ~ c'2*3/2 b4 \divisioMaior
c'2*3/2 a2*4/2 c'2*4/2 ~ c'2 ~ \divisioMaior
c'2 ~ c'2*5/2 ~ c'2*7/4 ~ c'2 ~ c'2*4/2 b4 \finalis
}

tenorMusic = {
e'2*3/2 d'2 b2*4/2 c'2 d'2 c'2*3/4 ~ c'2 ~ c'2*3/2 b4 e2*3/2 d2 e2*4/2 ~ e2 ~ e2*7/4 a2 f2*3/2 c'4 \divisioMaior
a2*3/2 ~ a2*4/2 ~ a2*4/2 g2 \divisioMaior
e2 f2*5/2 e2*7/4 f2 d2*4/2 ~ d4 \finalis
c'2*3/2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ c'2 ~ c'2 b4 \divisioMinima
g2*4/2 a2 g2*3/2 f2 ~ f2*4/2 g4 \divisioMaxima
a2 g2 e2 f2*3/2 e4 \divisioMinima
d2 e2*4/2 ~ e2 ~ e2*7/4 d2 ~ d2*3/2 ~ d4 \divisioMaior
e2*3/2 f2*4/2 a2*4/2 e2 \divisioMaior
g2 f2*5/2 e2*7/4 d2 ~ d2*4/2 ~ d4 \finalis
}

bassMusic = {
c'2*3/2 b2 g2*4/2 a2 ~ a2 ~ a2*3/4 e2 f2*3/2 g4 c2*3/2 b,2 a,2*4/2 ~ a,2 c2*7/4 ~ c2 ~ c2*3/2 ~ c4 ~ \divisioMaior
c2*3/2 d2*4/2 f2*4/2 c2 ~ \divisioMaior
c2 d2*5/2 a,2*7/4 f,2 g,2*4/2 ~ g,4 \finalis
r2*3/2 a2 ~ a2 ~ a2*3/2 f2 g2 ~ g4 \divisioMinima
e2*4/2 d2 ~ d2*3/2 ~ d2 f2*4/2 c4 \divisioMaxima
a,2 ~ a,2 ~ a,2 ~ a,2*3/2 c4 \divisioMinima
b,2 a,2*4/2 ~ a,2 g,2*7/4 f,2 g,2*3/2 ~ g,4 \divisioMaior
c2*3/2 d2*4/2 a,2*4/2 ~ a,2 ~ \divisioMaior
a,2 ~ a,2*5/2 ~ a,2*7/4 f,2 g,2*4/2 ~ g,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
        "8"
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