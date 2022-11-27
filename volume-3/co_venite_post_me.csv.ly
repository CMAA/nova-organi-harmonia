\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.9
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Venite post me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Venite post me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Venite post me" }
    \line {}
  }
}

chantText = \lyricmode {
Ve -- ní -- te post _ me: 
\set stanza = " * " fá -- ci -- am vos pi -- sca -- tó -- res _ hó -- mi -- _ num: 
at il -- _ li, re -- lí -- ctis ré -- ti -- bus et na -- _ _ vi, 
se -- cú -- ti sunt _ _ Dó -- mi -- _ num. }

chantMusic = {
\tieDown   g'4 g'4 d'4 g'4 e'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 g'4 ( c''4 b'4 c''4) a'4 ( g'4) g'4 g'4 ( g'4 d'4) \divisioMinima
 d'4 e'4 g'4 ( g'4) g'4 ( b'4 a'4) b'4 ( a'4) g'4 g'4 ( a'4) b'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima
 c''4 c''4 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 c''4 c''4 c''4 ( \once \tweak #'font-size #-4 a' ) b'4 ( c''4) a'4 ( b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 e' ) g'4. a'4 ( b'4) a'4 ( b'4 g'4) g'4 \divisioMaior
 g'4 g'4 a'4 g'4 ( e'4) ~ e'4 ( d'4) g'4 ( e'4 g'4) g'4 g'4 a'4 ( g'4 g'4) \finalis

}

altoMusic = {
d'4 c'2 b2*3/2 ~ b4 \divisioMinima
c'2*4/2 e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 c'2*5/2 d'4 e'2 ~ e'2*4/2 d'2 \divisioMaxima
e'4 ~ e'2*3/2 f'2 ~ f'4 ~ f'2*4/2 e'2*5/2 d'2 ~ \divisioMinima
d'2 ~ d'2*3/4 c'2 d'2*3/2 ~ d'4 \divisioMaior
b4 c'2*3/2 r2 d'4 ~ d'2*3/2 c'4 d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
b4 a2 g2*3/2 r4 \divisioMinima
g2*4/2 ~ g2*3/2 ~ g2*3/2 \divisioMinima
a2 g2 ~ g2*5/2 ~ g4 ~ g2 c'2*4/2 ~ c'4 b4 \divisioMaxima
a4 ~ a2*3/2 ~ a2 ~ a4 ~ a2*4/2 ~ a2*5/2 b2 \divisioMinima
g2 e2*3/4 ~ e2 d2*3/2 g4 ~ \divisioMaior
g4 ~ g2*3/2 a2*3/2 b2*3/2 c'4 ~ c'2*3/2 b4 \finalis
}

bassMusic = {
r2*6/2 e4 ~ \divisioMinima
e2*4/2 c2*3/2 b,2*3/2 ~ \divisioMinima
b,2 ~ b,2 a,2*5/2 b,4 c2 ~ c2*4/2 g2 \divisioMaxima
r4 g2*3/2 f2 e4 d2*4/2 c2*5/2 b,2 \divisioMinima
b2 b,2*3/4 a,2 b,2*3/2 ~ b,4 \divisioMaior
r4 e2*3/2 f2*3/2 e2*3/2 ~ e4 g2*3/2 ~ g4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
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
