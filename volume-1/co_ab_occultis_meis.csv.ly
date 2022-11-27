\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.258
%(volume.page)

global = {
 \key fis \locrian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ab occultis meis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ab occultis meis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ab occultis meis" }
    \line {}
  }
}

chantText = \lyricmode {
Ab oc -- cúl -- tis me -- is 
\set stanza = " * " mun -- da me, Dó -- _ mi -- ne: 
et ab a -- li -- é -- _ _ _ nis 
par -- ce ser -- vo tu -- _ _ _ _ _ o. }

chantMusic = {
\tieDown   d'4 d'4 fis'4 ( a'4 g'4) fis'4 d'4 ( e'4) d'4 ( e'4 d'4 c'4) \divisioMinima
 e'4 ( g'4) g'4 ( e'4) g'4 g'4 ( a'4 b'4) ~ b'4 ( a'4 \forceBreak
) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \divisioMaxima
 e'4 b'4 ( a'4) b'4 ( c''4) b'4 d''4 ( b'4) ~ b'4 ( a'4) b'4 ( c''4 b'4) ~ b'4 ( a'4 b'4) a'4 ( b'4 g'4 fis'4) \divisioMaior \forceBreak

 fis'4 ( g'4 a'4) g'4 fis'4 ( g'4 a'4) g'4 fis'4 ( e'4 d'4 e'4) \divisioMinima
 d'4 ( g'4 fis'4 g'4) ~ g'4 ( fis'4) g'4 ( b'4 a'4) b'4 ( g'4) a'4 ( a'4 fis'4) fis'4 \finalis

}

altoMusic = {
r4 d'4 ~ d'2*4/2 ~ d'4 e'4 d'4 e'4 d'4 c'4 ~ \divisioMinima
c'2 b2*3/2 e'2 d'2*3/2 ~ d'2*4/2 ~ d'2 \divisioMaxima
e'4 ~ e'2 ~ e'2*3/2 ~ e'4 ~ e'2*3/2 ~ e'2 ~ e'2*4/2 d'2*4/2 ~ \divisioMaior
d'2*4/2 ~ d'2*4/2 b2*3/2 ~ b4 \divisioMinima
d'2*3/2 c'2*3/2 d'2*5/2 c'2*3/2 d'4 \finalis
}

tenorMusic = {
b2 ~ b2*4/2 a2 g2*4/2 ~ \divisioMinima
g2 ~ g2*3/2 ~ g2 ~ g2*3/2 a2*4/2 b2 \divisioMaxima
r4 fis2 g2*3/2 fis4 g2*3/2 ~ g2 a2*4/2 b2*4/2 \divisioMaior
a2*4/2 g2*4/2 a2*3/2 g4 ~ \divisioMinima
g2*3/2 ~ g2*3/2 ~ g2*5/2 e2*3/2 fis4 \finalis
}

bassMusic = {
r2*6/2 fis2 e2*4/2 ~ \divisioMinima
e2 ~ e2*3/2 c2 b,2*3/2 ~ b,2*4/2 ~ b,2 \divisioMaxima
e4 ~ e2 ~ e2*3/2 ~ e4 ~ e2*3/2 d2 c2*4/2 b,2*4/2 ~ \divisioMaior
b,2*4/2 ~ b,2*4/2 e2*3/2 ~ e4 \divisioMinima
b,2*3/2 a,2*3/2 b,2*5/2 ~ b,2*3/2 ~ b,4 \finalis
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
