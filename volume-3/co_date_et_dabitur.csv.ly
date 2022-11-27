\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.408
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Date et dabitur" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Date et dabitur"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Date et dabitur" }
    \line {}
  }
}

chantText = \lyricmode {
Da -- te, 
\set stanza = " * " et dá -- bi -- tur vo -- bis: 
men -- sú -- ram bo -- nam, et con -- fér -- tam, et co -- a -- gi -- tá -- tam, _ 
et su -- per -- ef -- flu -- én -- tem da -- bunt in si -- _ _ _ num _ _ ve -- strum. }

chantMusic = {
\tieDown   e'4 ( e'4 f'4) d'4 ( e'4) \divisioMinima
 g'4 g'4 ( a'4) g'4 g'4 g'4 ( e'4 f'4) e'4 ( d'4) \divisioMaxima
 g'4 b'4 a'4 c''4 ( b'4) g'4 a'4 b'4 a'4 ( g'4 a'4) a'4 ( g'4) \divisioMinima
 g'4 g'4 a'4 g'4 a'4 g'4 ( a'4 b'\prall c''4 b'4) ~ b'4 ( a'4) \divisioMaior
 a'4 b'4 ( c''4 b'4) g'4 a'4 g'4 f'4 ( g'4 a'4) g'4 e'4 ( f'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMinima
 d'4 f'4. ~ f'4 ( f'4) ~ f'4 ( d'4 e'4) g'4 ( a'4) g'4. f'4 ( g'4) a'4 ( a'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis

}

altoMusic = {
c'2*3/2 ~ c'2 ~ \divisioMinima
c'4 ~ c'2*4/2 a2*3/2 ~ a2 \divisioMaxima
r4 d'2 ~ d'2*5/2 c'2*3/2 b2 ~ \divisioMinima
b2 ~ b2 e'4 d'2*4/2 ~ d'2 c'4 ~ \divisioMaior
c'4 e'2*6/2 d'2*4/2 c'2*5/2 a2 ~ \divisioMinima
a4 ~ a2*7/4 ~ a2*5/2 ~ a2*7/4 ~ a2*3/2 b2*4/2 c'2 \finalis
}

tenorMusic = {
g2*3/2 f2 ~ \divisioMinima
f4 e2*4/2 ~ e2*3/2 f2 \divisioMaxima
g4 ~ g2 d2*5/2 ~ d2*3/2 ~ d2 ~ \divisioMinima
d2 e2*3/2 ~ e2*4/2 ~ e2*3/2 ~ \divisioMaior
e4 c'2*6/2 ~ c'2*4/2 a2*5/2 ~ a2 ~ \divisioMinima
a4 ~ a2*3/4 g2 f2*5/2 e2*7/4 f2*3/2 ~ f2*4/2 g2 \finalis
}

bassMusic = {
c2*3/2 ~ c2 ~ \divisioMinima
c4 ~ c2*4/2 d2*3/2 ~ d2 \divisioMaxima
g,4 ~ g,2 ~ g,2*5/2 ~ g,2*3/2 ~ g,2 ~ \divisioMinima
g,2 e,2*3/2 ~ e,2*4/2 a,2*3/2 ~ \divisioMaior
a,4 a2*6/2 ~ a2*4/2 g2*5/2 f2 ~ \divisioMinima
f4 d2*7/4 ~ d2*5/2 ~ d2*7/4 ~ d2*3/2 ~ d2*4/2 c2 \finalis
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
        "III"
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
