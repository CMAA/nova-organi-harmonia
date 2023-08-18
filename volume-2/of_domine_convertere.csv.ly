\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.132
%(volume.page)

global = {
 \key a \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine convertere" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine convertere"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine convertere" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne 
\set stanza = " * " con -- vér -- te -- re, et é -- ri -- pe á -- ni -- mam me -- am: 
sal -- vum me fac pro -- _ pter mi -- se -- ri -- cór -- di -- am _ _ tu -- am. }

chantMusic = {
\tieDown   a'4 a'4 a'4 ( b'4 a'4 a'4)  a'4 ( \once \tweak #'font-size #-4 fis' ) a'4 ( \once \tweak #'font-size #-4 b' ) a'4 a'4 \divisioMinima
 a'4 ( b'4) b'4 ( cis''4 a'4) a'4 ( b'4 a'4) a'4 a'4 ( cis''4) b'4 \forceBreak
 a'4 ( a'4 cis''4 b'4) a'4 ( b'4 a'4) a'4 \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 b' ) a'4 a'4 a'4 \divisioMinima
 a'4 ( fis'4) a'4 ( a'4 fis'4) fis'4 ( e'4) fis'4 a'4 ( a'4 b'4) a'4 \forceBreak
 a'4 ( \once \tweak #'font-size #-4 b' ) a'4 a'4 ( b'4) cis''4 ( b'4) cis''4 ( b'4) a'4 ( b'4 cis''4 b'4 a'4 b'4) b'4 ( a'4) \finalis

}

altoMusic = {
cis'2 e'2*4/2 ~ e'2 d'2*3/2 cis'4 ~ \divisioMinima
cis'2 ~ cis'2*3/2 ~ cis'2*4/2 fis'2*3/2 e'2*4/2 d'2*3/2 e'4 \divisioMaxima
cis'2*5/2 ~ \divisioMinima
cis'2 d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 cis'2*3/2 ~ cis'2 e'2*4/2 ~ e'2 fis'2 ~ fis'2 e'2 \finalis
}

tenorMusic = {
e2 ~ e2*4/2 fis2 ~ fis2*3/2 e4 ~ \divisioMinima
e2 ~ e2*3/2 fis2*4/2 ~ fis2*3/2 a2*4/2 ~ a2*3/2 ~ a4 ~ \divisioMaxima
a2*5/2 \divisioMinima
fis2 ~ fis2*3/2 a2*3/2 fis2*4/2 ~ fis2*3/2 ~ fis2 gis2*4/2 a2 ~ a2 d'2 ~ d'4 cis'4 \finalis
}

bassMusic = {
a,2 cis2*4/2 d2 ~ d2*3/2 a,4 ~ \divisioMinima
a,2 gis,2*3/2 fis,2*4/2 d2*3/2 cis2*4/2 b,2*3/2 cis4 \divisioMaxima
fis2*5/2 \divisioMinima
e2 d2*3/2 cis2*3/2 b,2*4/2 fis,2*3/2 fis2 e2*4/2 cis2 d2 ~ d2 a2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
        "VI"
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
