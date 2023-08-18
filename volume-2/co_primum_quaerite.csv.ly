\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.206
%(volume.page)

global = {
 \key a \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Primum quaerite" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Primum quaerite"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Primum quaerite" }
    \line {}
  }
}

chantText = \lyricmode {
Pri -- mum quǽ -- ri -- te 
\set stanza = " * " re -- gnum De -- i, 
et óm -- ni -- a ad -- ji -- ci -- én -- tur vo -- bis, 
di -- _ _ cit Dó -- mi -- nus. }

chantMusic = {
\tieDown   a'4 ( a'4 b'4) a'4 a'4 g'4 ( fis'4 g'4) e'4 \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 fis' ) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( cis''4 b'4 a'4) a'4 \divisioMaxima
 d''4 d''4 ( cis''4 d''4) b'4 ( a'4) a'4 \forceBreak
 b'4 cis''4 d''4 b'4 a'4 ( \once \tweak #'font-size #-4 cis'' ) b'4 ( b'4 a'4 b'4) a'4 \divisioMaior
 a'4 ( fis'4) ~ fis'4 ( e'4) a'4 ( fis'4 a'4) a'4 a'4 a'4 ( b'4 a'4) a'4 \finalis

}

altoMusic = {
d'2*4/2 b4 ~ b2*3/2 ~ b4 \divisioMinima
e'2 ~ e'2 ~ e'2*4/2 ~ e'4 \divisioMaxima
r4 fis'2*3/2 ~ fis'2*4/2 ~ fis'2 ~ fis'4 a'2 g'2*4/2 fis'4 ~ \divisioMaior
fis'4 cis'2 e'4 ~ e'2*3/2 d'2 ~ d'2*3/2 cis'4 \finalis
}

tenorMusic = {
fis2*4/2 ~ fis4 a2*3/2 g4 \divisioMinima
b2 ~ b2 a2*4/2 ~ a4 \divisioMaxima
r4 b2*3/2 cis'2*3/2 ~ cis'4 b2 d'4 ~ d'2 ~ d'2*4/2 ~ d'4 ~ \divisioMaior
d'4 a2*3/2 fis2*3/2 ~ fis4 d4 e2*3/2 ~ e4 \finalis
}

bassMusic = {
d2*4/2 e4 ~ e2*3/2 ~ e4 ~ \divisioMinima
e2 d2 ~ d2*4/2 cis4 \divisioMaxima
r4 b,2*3/2 fis2*3/2 ~ fis4 d2 ~ d4 fis2 g2*4/2 d4 ~ \divisioMaior
d4 ~ d2*3/2 cis2*3/2 b,2 a,2*3/2 ~ a,4 \finalis
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
        "VIII."
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
