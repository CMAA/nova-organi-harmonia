\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.243
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sancte Paule" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sancte Paule"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sancte Paule" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ 
\set stanza = " * " 
al -- le -- lú -- ia. _ _ _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
San -- cte Pau -- le _ A -- pó -- sto -- le, 
præ -- di -- cá -- tor ve -- ri -- tá -- tis, _ _ _ 
et do -- ctor gén -- ti -- um, _ 
in -- ter -- cé -- de 
\set stanza = " * " pro no -- bis. _ 
_ _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 g'4 ( g'4 f'4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4. e'4 ( f'4 d'4) \divisioMaior
  d'4 g'4 ( g'4 f'4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4. e'4 ( f'4 d'4) \divisioMinima
 d'4 ( f'4 g'4 a'4) ~ a'4 ( g'4) c''4 ( b'4 a'4 g'4) \divisioMinima
 g'4 ( b'4) ~ b'4 ( a'4) d''4 ( c''4 b'4 a'4 g'4) b'4 ( a'4 g'4 f'4) g'4 ( a'4.) f'4 ( e'4 f'4 d'4) \divisioMinima
 d'4 ( f'4 g'4 a'4) ~ a'4 ( g'4) c''4 ( b'4 a'4) ~ a'4 ( g'4) \finalis
 d'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) g'4 ( f'4 d'4 e'4) e'4. d'4 ( e'4 c'4) \divisioMinima
 g'4 ( a'4 b'4) b'4 ( a'4) a'4 ( c''4 d''4 c''4 a'4 g'4 f'4 g'4) g'4 \divisioMaior
 g'4 e'4 f'4 ( e'4) d'4 d'4 e'4 ( f'4) g'4 g'4 b'4 ( b'4 a'4) d''4 ( c''4 b'4 a'4) ~ a'4 ( g'4) \divisioMaxima
 g'4 ( d''4) d''4 ( g'4) a'4 ( f'4) g'4 ( a'4 \once \tweak #'font-size #-4 b' ) b'4 ( a'4 b'\prall c''4 b'4 a'4 g'4) g'4 a'4 ( f'4 g'4) \divisioMaior
 d'4 g'4 ( g'4 \once \tweak #'font-size #-4 f' ) a'4 ( g'4) g'4  f'4 d'4 ( e'4) e'4. d'4 ( e'4 c'4) \divisioMaior
 d'4 ( f'4 g'4 a'4) ~ a'4 ( g'4) c''4 ( b'4 a'4 g'4) \divisioMinima
 g'4 ( b'4) ~ b'4 ( a'4) d''4 ( c''4 b'4 a'4 g'4) b'4 ( a'4 g'4 f'4) g'4 ( a'4.) f'4 ( e'4 f'4 d'4) \divisioMinima
 d'4 ( f'4 g'4 a'4) ~ a'4 ( g'4) c''4 ( b'4 a'4) ~ a'4 ( g'4) \finalis

}

altoMusic = {
r4 a2*3/2 ~ a2 ~ a2*7/4 ~ a4 r4 c'2*3/2 ~ c'2 a2*7/4 ~ a4 \divisioMinima
d'4 ~ d'2 ~ d'2*3/2 g'2*4/2 ~ \divisioMinima
g'4 ~ g'2*3/2 ~ g'2*5/2 e'2*13/4 c'2*4/2 ~ \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2 b4 \finalis
c'2 ~ c'2 a2*4/2 ~ a2*9/4 \divisioMinima
d'2*3/2 e'2*3/2 f'2*6/2 d'2 ~ \divisioMaior
d'2 c'2*4/2 ~ c'2 e'2 ~ e'2*3/2 f'2*3/2 ~ f'2 d'4 \divisioMaxima
r2 g'2 f'2 d'2*3/2 e'2*3/2 d'2*4/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2*3/2 ~ d'2 ~ d'2 a2 c'2*9/4 ~ \divisioMaior
c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 ~ \divisioMinima
c'4 g'2*3/2 e'2*5/2 d'2*13/4 c'2*4/2 ~ \divisioMinima
c'2*3/2 ~ c'2*5/2 d'2 e'4 \finalis
}

tenorMusic = {
r4 r2*3/2 e2 g2*7/4 f4 r4 f2*3/2 e2 f2*7/4 ~ f4 \divisioMinima
a2*3/2 c'2*3/2 ~ c'2*4/2 ~ \divisioMinima
c'4 d'2*3/2 b2*5/2 c'2*13/4 a2*4/2 ~ \divisioMinima
a2*3/2 g2*3/2 f2 d2 ~ d4 ~ \finalis
d2 e2 f2*4/2 e2*9/4 \divisioMinima
b2*3/2 c'2*3/2 ~ c'2*6/2 ~ c'4 b4 ~ \divisioMaior
b2 a2*4/2 ~ a2 b2 g2*3/2 a2*3/2 c'2 b4 \divisioMaxima
r2 d'2 c'2 b2*3/2 c'2*3/2 ~ c'2*4/2 ~ c'2*3/2 b4 ~ \divisioMaior
b4 a2*3/2 f2 e2 f2 g2*9/4 \divisioMaior
a2*3/2 f2*3/2 g2*4/2 ~ \divisioMinima
g4 d'2*3/2 c'2*5/2 b2*13/4 a2*4/2 ~ \divisioMinima
a2*3/2 ~ a2*5/2 ~ a2 c'4 \finalis
}

bassMusic = {
r4 d2*3/2 ~ d2 ~ d2*7/4 ~ d4 r4 a,2*3/2 c2 d2*7/4 ~ d4 ~ \divisioMinima
d2*3/2 ~ d2*3/2 e2*4/2 ~ \divisioMinima
e4 ~ e2*3/2 ~ e2*5/2 a2*13/4 g2*4/2 \divisioMinima
f2*3/2 e2*3/2 d2 g,2 ~ g,4 \finalis
c2 ~ c2 d2*4/2 a,2*9/4 \divisioMinima
a2*3/2 ~ a2*3/2 ~ a2*6/2 g2 ~ \divisioMaior
g2 ~ g2*4/2 f2 e2 ~ e2*3/2 d2*3/2 ~ d2 g4 \divisioMaxima
r2 b2 a2 ~ a2*3/2 ~ a2*3/2 f2*4/2 g2*3/2 ~ g4 ~ \divisioMaior
g4 d2*3/2 ~ d2 ~ d2 ~ d2 c2*9/4 \divisioMaior
f2*3/2 d2*3/2 e2*4/2 ~ \divisioMinima
e4 ~ e2*3/2 a2*5/2 ~ a2*13/4 ~ a2*4/2 \divisioMinima
g2*3/2 f2*5/2 ~ f2 c4 \finalis
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
