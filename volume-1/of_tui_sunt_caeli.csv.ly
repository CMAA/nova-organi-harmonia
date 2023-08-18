\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.64
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tui sunt caeli" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tui sunt caeli"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tui sunt caeli" }
    \line {}
  }
}

chantText = \lyricmode {
Tu -- i sunt * cœ -- _ li, _ 
et tu -- a est _ _ ter -- _ ra: 
or -- bem ter -- _ rá -- _ rum, 
et ple -- ni -- tú -- di -- nem e -- _ _ _ _ _ jus tu fun -- dá -- sti: 
ju -- stí -- _ _ _ ti -- a et _ ju -- dí -- _ _ ci -- um 
præ -- pa -- rá -- ti -- o _ se -- _ _ _ dis _ _ _ tu -- æ. }

chantMusic = {
\tieDown  g'4 e'4 ( fis'4 e'4) g'4  fis'4 ( g'4 a'4 g'4 fis'4) g'4 ( fis'4 e'4) g'4 ( e'4) fis'4 ( g'4 fis'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 e' ) e'4 ( g'4 fis'4) g'4 \forceBreak
 a'4 ( fis'4) g'4 ( fis'4 e'4) a'4 ( g'4 fis'4) b'4 ( a'4 g'4) a'4 ( g'4 fis'4) fis'4 \divisioMaxima
 e'4 ( a'4 b'4) a'4 g'4 ( a'4 g'4) ~ g'4 ( fis'4) fis'4 ( a'4 g'4) ~ g'4 ( fis'4 \forceBreak
) g'4 ( g'4 g'4) \divisioMaior
 e'4 ( fis'4 d'4) e'4 ( g'4 fis'4) fis'4 fis'4 ( a'4 g'4 a'4) e'4 e'4 \divisioMinima
 g'4 ( g'4) a'4 ( e'4) g'4 ( g'4) ~ g'4 ( e'4) g'4 ( g'4) ~ g'4 ( fis'4 e'4) fis'4 ( e'4) \divisioMinima \forceBreak

 g'4 ( b'4 d''4) a'4 ( b'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \divisioMaxima
 b'4 ( a'4) b'4 ( a'4) b'4 ( a'4 fis'4) g'4 ( a'\prall b'4 a'4 b'4) g'4 ( a'\prall b'4 a'4 b'4) g'4 fis'4 ( fis'4 g'4) \divisioMinima \forceBreak

 g'4 ( e'4 ( fis'\prall g'4) g'4 g'4 ( g'4 g'4) b'4 ( a'4 g'4 e'4.) a'4 ( g'4 fis'4 e'4) e'4 ( fis'\prall g'4 e'4) e'4 \divisioMaior
 e'4 fis'4 ( g'4) a'4 ( b'4) a'4 \forceBreak
 a'4 ( b'4 a'4 g'4.) fis'4 ( g'4 fis'4 e'4) \divisioMinima
 g'4. ~ g'4 ( g'4) ~ g'4 ( e'4) a'4 ( g'4 fis'4) a'4 ( g'4) b'4 ( a'4) ~ a'4 ( g'4) a'4 ( b'4 a'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \finalis

}

altoMusic = {
r4 e'2*5/2 ~ e'2*4/2 ~ e'2*3/2 d'2*5/2 \divisioMaior
b2 ~ b2*4/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 cis'2*3/2 d'4 \divisioMaxima
b2*4/2 ~ b2 d'2*3/2 ~ d'2 ~ d'2*3/2 b2*3/2 ~ \divisioMaior
b2*3/2 ~ b2*4/2 d'2*4/2 ~ d'2 \divisioMinima
cis'2*4/2 d'2 ~ d'2 ~ d'2 ~ d'2*3/2 b2 ~ \divisioMinima
b4 d'2 ~ d'2 ~ d'2*4/2 ~ d'2 \divisioMaxima
fis'2 e'2 fis'2*3/2 ~ fis'2 e'2*3/2 d'2*6/2 ~ d'2*3/2 \divisioMinima
b'2*5/2 b2*3/2 d'2*9/4 ~ d'2*4/2 b2*4/2 ~ b4 \divisioMaior
e'2*3/2 ~ e'2*3/2 ~ e'2*9/4 ~ e'2*3/2 ~ e'4 \divisioMinima
d'2*3/4 ~ d'2*4/2 ~ d'2*6/2 ~ d'2*6/2 ~ d'2*4/2 ~ d'2 \finalis
}

tenorMusic = {
r4 b2*5/2 ~ b2*4/2 ~ b2*3/2 ~ b2*5/2 ~ \divisioMaior
b2 g2*4/2 d2 e2*3/2 fis2*3/2 g2*3/2 b2*3/2 ~ b4 \divisioMaxima
e4 fis2*3/2 e2 d2*3/2 a2 b2*3/2 ~ b2*3/2 \divisioMaior
a2*3/2 g2*4/2 d2*4/2 g2 ~ \divisioMinima
g2*4/2 ~ g2 e2 b2 a2*3/2 g2 ~ \divisioMinima
g4 ~ g2 fis2 a2*4/2 b2 ~ \divisioMaxima
b2 cis'2 d'2*3/2 b2 g2*3/2 ~ g2*6/2 b2*3/2 \divisioMinima
a2*5/2 g2*3/2 ~ g2*9/4 b2*4/2 a2*4/2 g4 \divisioMaior
b2*3/2 ~ b2*3/2 ~ b2*9/4 a2*3/2 g4 ~ \divisioMinima
g2*3/4 d2 ~ d2 fis2*3/2 b2*3/2 g2*6/2 a2*4/2 b2 \finalis
}

bassMusic = {
r4 g2*5/2 fis2*4/2 e2*3/2 b2*5/2 \divisioMaior
e2 ~ e2*4/2 b,2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 ~ b,4 \divisioMaxima
g,4 ~ g,2*3/2 ~ g,2 b,2*3/2 ~ b,2 ~ b,2*3/2 e2*3/2 ~ \divisioMaior
e2*3/2 ~ e2*4/2 b,2*4/2 ~ b,2 \divisioMinima
a,2*4/2 b,2 ~ b,2 ~ b,2 ~ b,2*3/2 e2 ~ \divisioMinima
e4 b,2 ~ b,2 ~ b,2*4/2 ~ b,2 \divisioMaxima
d2 ~ d2 ~ d2*3/2 e2 ~ e2*3/2 b,2*6/2 ~ b,2*3/2 \divisioMinima
e2*5/2 ~ e2*3/2 b,2*9/4 ~ b,2*4/2 e2*4/2 ~ e4 \divisioMaior
g2*3/2 fis2*3/2 e2*9/4 ~ e2*3/2 ~ e4 \divisioMinima
b,2*3/4 b2 b,2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2*6/2 ~ b,2*4/2 ~ b,2 \finalis
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
