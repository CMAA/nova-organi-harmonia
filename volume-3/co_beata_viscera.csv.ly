\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.392
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Beata viscera" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Beata viscera"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Beata viscera" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- á -- ta ví -- sce -- ra 
\set stanza = " * " Ma -- rí -- æ Vír -- _ gi -- nis, 
quæ por -- ta -- _ _ vé -- runt æ -- tér -- _ _ ni Pa -- _ tris Fí -- li -- _ um. }

chantMusic = {
\tieDown   e'4 g'4 g'4 ( fis'4) g'4 ( a'4) fis'4 ( g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMinima
 g'4 a'4 ( b'4) b'4 ( a'4 g'4)  a'4 ( b'4 a'4) b'4 ( c''4) b'4 b'4 \divisioMaxima
 g'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( a'4) b'4 ( g'4) a'4 ( g'4 fis'4) e'4 ( fis'\prall g'4 fis'4 g'4) fis'4 ( e'4) \divisioMinima
 b'4  d''4 ( b'4) ~ b'4 ( a'4) b'4 ( c''4) b'4 e'4 ( d'4) g'4 ( a'4 b'4) g'4 ( fis'4) d'4 ( e'4) e'4 ( d'4) e'4 ( fis'\prall g'4) fis'4 ( e'4) \finalis

}

altoMusic = {
r2 b2 ~ b2 ~ b2*5/2 ~ b2 ~ \divisioMinima
b4 d'2 ~ d'2*3/2 e'2*3/2 ~ e'2*3/2 d'4 ~ \divisioMaxima
d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*5/2 b2 \divisioMinima
fis'4 e'2*7/2 ~ e'4 d'4 ~ d'2*5/2 b2 ~ b2 ~ b2*3/2 ~ b2 \finalis
}

tenorMusic = {
r2*4/2 fis2 a2*5/2 g2 ~ \divisioMinima
g4 e2 fis2*3/2 g2*3/2 ~ g2*3/2 ~ g4 ~ \divisioMaxima
g4 fis2 e2*4/2 fis2*3/2 a2*5/2 g2 ~ \divisioMinima
g4 ~ g2*7/2 ~ g2*7/2 fis2 a2 ~ a2*3/2 g2 \finalis
}

bassMusic = {
r4 e2*3/2 ~ e2 ~ e2*5/2 ~ e2 ~ \divisioMinima
e4 d2 ~ d2*3/2 ~ d2*3/2 c2*3/2 g,4 \divisioMaxima
b,2*3/2 ~ b,2*4/2 ~ b,2*3/2 ~ b,2*5/2 e2 \divisioMinima
d4 c2*7/2 b,2*7/2 ~ b,2 ~ b,2 e2*3/2 ~ e2 \finalis
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
