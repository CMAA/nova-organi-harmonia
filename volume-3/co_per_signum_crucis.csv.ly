\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.174
%(volume.page)

global = {
 \key fis \locrian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Per signum crucis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Per signum crucis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Per signum crucis" }
    \line {}
  }
}

chantText = \lyricmode {
Per si -- gnum Cru -- cis 
\set stanza = " * " de in -- i -- mí -- cis _ no -- stris 
lí -- be -- ra _ _ _ _ nos, 
De -- us no -- _ _ _ _ _ ster. T.P. 
Al -- le -- lú -- _ _ ia. }

chantMusic = {
\tieDown   d'4 fis'4 ( a'4 g'4) fis'4 d'4 ( e'4) d'4 ( e'4 d'4 c'4) \divisioMinima
 e'4 ( g'4) g'4 g'4 ( e'4) g'4 g'4 ( a'4 b'4) ~ b'4 ( a'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \divisioMaxima
 e'4 b'4 ( a'4) b'4 d''4 ( b'4) ~ b'4 ( a'4) b'4 ( c''4 b'4) ~ b'4 ( a'4 b'4) a'4 ( b'4 g'4 fis'4) \divisioMaior
 fis'4 ( g'4 a'4) g'4 fis'4 ( e'4 d'4 e'4.) d'4 g'4 ( fis'4 g'4) ~ g'4 ( fis'4.) g'4 ( b'4 a'4) b'4 ( g'4) a'4 ( a'4 g'4 fis'4) fis'4 \finalis
 g'4 ( a'4) g'4 g'4 ( g'4 g'4) b'4 ( a'4 g'4) a'4 ( g'4 fis'4) fis'4 \finalis

}

altoMusic = {
d'4 ~ d'2*4/2 r2*5/2 c'4 ~ \divisioMinima
c'2*3/2 ~ c'2 d'4 e'2 d'2*3/2 ~ d'2*4/2 ~ d'2 \divisioMaxima
e'2*3/2 fis'2 e'2*3/2 ~ e'2 ~ e'2*4/2 d'2 ~ d'2 ~ \divisioMaior
d'2*3/2 ~ d'4 ~ d'2*3/2 b2*3/4 ~ b4 ~ b2 c'2*7/4 b2*3/2 ~ b2 ~ b2*4/2 ~ b4 ~ \finalis
b2*3/2 ~ b2*3/2 e'2*3/2 d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
r4 b2*4/2 ~ b2*5/2 a4 ~ \divisioMinima
a2*3/2 g2 ~ g4 ~ g2 fis2*3/2 g2*4/2 a2 ~ \divisioMaxima
a2*3/2 ~ a2 g2*3/2 ~ g2 fis2*4/2 ~ fis2 b2 \divisioMaior
a2*3/2 ~ a4 ~ a2*3/2 g2*3/4 ~ g4 ~ g2 a2*7/4 g2*3/2 fis2 e2*4/2 fis4 \finalis
e2*3/2 ~ e2*3/2 ~ e2*3/2 ~ e2*3/2 fis4 \finalis
}

bassMusic = {
r2*5/2 a2*5/2 ~ a4 \divisioMinima
a,2*3/2 ~ a,2 b,4 c2 d2*3/2 ~ d2*4/2 ~ d2 \divisioMaxima
c2*3/2 d2 ~ d2*3/2 c2 ~ c2*4/2 b,2 ~ b,2 \divisioMaior
d2*3/2 e4 fis2*3/2 g2*3/4 fis4 e2 ~ e2*7/4 ~ e2*3/2 ~ e2 ~ e2*4/2 b,4 \finalis
r2*3/2 d2*3/2 c2*3/2 b,2*3/2 ~ b,4 \finalis
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
        "IV"
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
