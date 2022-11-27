\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.212
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Panis quem ego" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Panis quem ego"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Panis quem ego" }
    \line {}
  }
}

chantText = \lyricmode {
Pa -- _ nis, 
\set stanza = " * " quem e -- _ _ _ go dé -- de -- ro, 
ca -- ro me -- _ _ a est 
pro sǽ -- _ _ _ _ cu -- li vi -- _ _ _ _ _ ta. }

chantMusic = {
\tieDown    e'4 ( a'4) b'4 ( c''4 b'4) b'4 \divisioMinima
 b'4  b'4 ( b'4 a'4) b'4 ( a'4) ~ a'4 ( g'4) a'4 c''4 ( a'4 b'4) b'4 b'4 ( g'4 a'4) b'4 a'4 \divisioMaior \forceBreak

 b'4 a'4 a'4 ( b'4 a'4) b'4 ( e'4.) g'4 ( a'4 b'4 a'4 e'4) e'4 e'4 \divisioMaxima
 a'4 a'4 ( a'4 g'4) a'4 ( e'4) fis'4 ( g'4) b'4 ( a'4) b'4 ( g'4 a'4 \forceBreak
) g'4 ( fis'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 b'4 ( d''4 b'4) d''4 ( a'4 g'4 fis'4) \divisioMinima
 a'4 ( b'4) d''4 ( b'4) d''4 ( a'4 g'4) ~ g'4 ( fis'4 e'4 fis'\prall g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \finalis

}

altoMusic = {
e'2 ~ e'2*3/2 ~ e'4 ~ \divisioMinima
e'4 fis'2*4/2 e'2*4/2 g'2*3/2 ~ g'4 e'2*3/2 ~ e'2 ~ \divisioMaior
e'2 a'2*3/2 d'2*5/4 c'2 ~ c'2*3/2 b2 \divisioMaxima
r4 c'2*3/2 d'2*4/2 e'2*5/2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*3/2 ~ d'2 ~ d'2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2 ~ d'2*3/2 c'2 ~ c'2*4/2 b2 \finalis
}

tenorMusic = {
c'2 b2*3/2 ~ b4 ~ \divisioMinima
b4 d'2*4/2 b2*4/2 e'2*3/2 d'4 ~ d'2*3/2 c'2 ~ \divisioMaior
c'2 d'2*3/2 g2*5/4 b2 a2*3/2 ~ a4 g4 \divisioMaxima
r4 e2*3/2 ~ e2*4/2 ~ e2*5/2 a2*3/2 fis2*3/2 g2 \divisioMinima
fis2*3/2 b2 ~ b2 ~ \divisioMinima
b2 ~ b2 ~ b2 ~ b2*3/2 ~ b2 a2*4/2 g2 \finalis
}

bassMusic = {
a2 ~ a2*3/2 g4 ~ \divisioMinima
g4 d2*4/2 e2*4/2 ~ e2*3/2 ~ e4 a2*3/2 ~ a2 \divisioMaior
g2 fis2*3/2 ~ fis2*5/4 e2*5/2 ~ e2 \divisioMaxima
r4 a,2*3/2 b,2*4/2 c2*5/2 d2*3/2 ~ d2*3/2 b,2 ~ \divisioMinima
b,2*3/2 ~ b,2 b2 \divisioMinima
a2 g2 fis2 e2*3/2 ~ e2 ~ e2*4/2 ~ e2 \finalis
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
        "I."
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
