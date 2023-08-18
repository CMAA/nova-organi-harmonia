\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.260
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Amen dico vobis quidquid" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Amen dico vobis quidquid"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Amen dico vobis quidquid" }
    \line {}
  }
}

chantText = \lyricmode {
A -- men di -- co vo -- bis, 
\set stanza = " * " quid -- quid o -- rán -- tes pé -- ti -- tis, 
cré -- di -- te qui -- a ac -- ci -- pi -- é -- tis, 
et fi -- et vo -- bis. }

chantMusic = {
\tieDown   d'4 ( e'4)  e'4 ( b'4 c''4) b'4 a'4 d''4 ( cis''4 d''4 b'4) b'4 \divisioMinima
 b'4 a'4 g'4 b'4 g'4 a'4 ( b'4 a'4 \forceBreak
) g'4 ( a'4) a'4 \divisioMaior
  b'4 ( c''4 b'4) a'4 g'4 g'4 ( a'4) g'4 g'4 g'4 g'4  g'4 ( a'4 b'4 c''4 b'4 g'4 a'4) g'4 \divisioMaior \forceBreak

 b'4 ( b'4 a'4 \once \tweak #'font-size #-4 b' ) g'4 ( a'4 b'4) g'4 ( g'4 fis'4) e'4 ( fis'4 g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \finalis

}

altoMusic = {
r2*5/2 g'2 fis'2*4/2 ~ fis'4 \divisioMinima
g'2 ~ g'4 d'2 ~ d'2*3/2 ~ d'2 ~ d'4 g'2*3/2 e'2 ~ e'2*3/2 d'2*3/2 c'2*3/2 ~ c'2*4/2 d'4 ~ \divisioMaior
d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 c'2 ~ c'2*4/2 b2 \finalis
}

tenorMusic = {
r2 e'2*3/2 ~ e'2 ~ e'2*4/2 d'4 ~ \divisioMinima
d'2*3/2 g2 ~ g2*3/2 b2 a4 g2*3/2 ~ g2 ~ g2*3/2 e2*3/2 ~ e2*3/2 g2*4/2 ~ g4 \divisioMaior
fis2*4/2 g2*3/2 b2*3/2 ~ b2 a2*4/2 g2 \finalis
}

bassMusic = {
r2*7/2 b2*4/2 ~ b4 \divisioMinima
g2*3/2 fis2 e2*3/2 ~ e2 fis4 e2*3/2 d2 c2*3/2 b,2*3/2 a,2*3/2 ~ a,2*4/2 b,4 \divisioMaior
d2*4/2 b,2*3/2 ~ b,2*3/2 e2 ~ e2*4/2 ~ e2 \finalis
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
        "I"
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
