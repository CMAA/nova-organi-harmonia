\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.365
%(volume.page)

global = {
 \key b \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Confiteor tibi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Confiteor tibi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Confiteor tibi" }
    \line {}
  }
}

chantText = \lyricmode {
Con -- fí -- te -- or ti -- bi, 
\set stanza = " * " Pa -- _ ter, _ Dó -- _ mi -- ne cœ -- li et ter -- _ _ _ ræ, 
qui -- a abs -- con -- dí -- sti hæc _ _ 
a sa -- pi -- én -- ti -- bus et pru -- dén -- _ ti -- bus, 
et re -- ve -- lá -- sti e -- a pár -- vu -- lis. _ _ _ _ ℣. 
Dó -- mi -- ne _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
spes _ me -- a _ _ _ 
a ju -- ven -- tú -- te 
\set stanza = " * " me -- _ a. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   b4 d'4 ( d'4 e'4) d'4 d'4 d'4 ( e'4) d'4 \divisioMinima
 e'4 ( fis'4 e''4) fis'4 ( e'4) e'4. d'4 ( e'4 d'4 b4) \divisioMinima
 b4 ( e'4 d'4) e'4 ( fis'4) e'4 e'4 d'4 ( e'4) d'4 d'4 d'4 ( d'4) ~ d'4 ( b4 a4) b4 ( d'4 d'4) fis'4 ( e'4 fis'4 d'4) d'4 \divisioMaxima
 fis'4 fis'4 e'4 a'4 ( a'4) a'4 a'4 ( gis'4) fis'4 ( e'4 a'4.) b'4 ( cis''4 b'4) ~ b'4 ( a'4) \divisioMaior
 a'4 a'4 fis'4 ( a'4) a'4 b'4 ( a'4 fis'4) fis'4 d'4 fis'4 e'4. d'4 ( fis'4 d'4 e'4) fis'4 ( e'4) e'4 \divisioMaxima
 d'4 d'4 fis'4 ( e'4) e'4 ( a'4) a'4 a'4  a'4 ( fis'4 g'\prall a'4 g'4 e'4 fis'\prall g'4 fis'4 e'4) d'4 d'4 ( e'4 d'4)  d'4 ( fis'4 a'4) b'4 ( cis''4 b'4 a'4) ~ a'4 ( e'4) fis'4 ( d'4.) fis'4 ( g'4 e'4 d'4) \finalis
  a'4 ( a'4) a'4 b'4 ( a'4) a''4 ( a'4 fis'4) a'4. b'4 ( cis''4 a'4) \divisioMinima
 a'4. b'4 ( cis''4 b'4 a'4.) b'4 ( cis''4 a'4 fis'4.) gis'4 ( a'4 fis'4 d'4) \divisioMinima
 fis'4 ( d'4 fis'4 e'4 d'4.) fis'4 ( d'4) e'4 ( fis'4) a'4 ( a'4) b'4 ( gis'4) a'4 ( fis'4) a'4 ( b'4) d''4 ( d''4) ~ d''4 ( a'4) \divisioMaior
 a'4 ( fis'4) a'4 ( a'4 a'4) a'4 a'4 ( fis'4 gis'\prall a'4 b'4.) a'4 ( b'4) cis''4 ( a'4 a'4) b'4 ( b'4 a'4) \divisioMaior
 d'4 d'4 d'4 d'4 ( fis'4 e'4 d'4) e'4 ( fis'4)  fis'4 ( a'4 gis'4 fis'4) a'4 ( a'4 a'4) a'4 ( a'4 fis'4) \divisioMinima
  g'4 ( fis'4) g'4 ( e'4 d'4.) fis'4 ( g'4 e'4 d'4.) fis'4 ( e'4) a'4. ~ a'4 ( a'4) ~ a'4 ( fis'4 fis'4) d'4 ( fis'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis

}

altoMusic = {
r4 a2*5/2 b2*3/2 \divisioMinima
cis'2*5/2 b2*3/4 fis2*3/2 ~ fis4 \divisioMinima
b2*3/2 ~ b2*4/2 a2*4/2 g2 a2*3/2 b2*3/2 cis'2*4/2 a4 \divisioMaxima
r2*6/2 cis'2 ~ cis'2*11/4 ~ cis'2*3/2 ~ \divisioMaior
cis'2 ~ cis'2 ~ cis'4 b2*3/2 a2*3/2 ~ a2*3/4 b2*4/2 ~ b2 ~ b4 \divisioMaxima
r2*4/2 e'2*3/2 ~ e'4 d'2*5/2 ~ d'2*5/2 r2*5/2 cis'2 fis'2*3/2 e'2*3/2 d'2*5/4 a2*3/2 ~ a4 cis'2*5/2 fis'2*3/2 e'2*9/4 ~ \divisioMinima
e'2*3/4 d'2*9/4 cis'2*9/4 ~ cis'2 d'2 ~ \divisioMinima
d'2*11/4 ~ d'2*4/2 cis'2*4/2 ~ cis'2*4/2 fis'2 ~ fis'2 \divisioMaior
e'2 d'2*3/2 b4 cis'2*4/2 fis'2*7/4 ~ fis'2*3/2 e'2*3/2 \divisioMaior
d'4 r2 d'2*6/2 cis'2*4/2 b2*3/2 cis'2*3/2 b2*11/4 ~ b2*9/4 ~ b2 a2*3/4 ~ a2 ~ a2*3/2 b2*4/2 <a g>2 <a f>4 \finalis
}

tenorMusic = {
r4 fis2*5/2 ~ fis2*3/2 \divisioMinima
a2*5/2 fis2*3/4 e2*3/2 d4 ~ \divisioMinima
d2*3/2 ~ d2*4/2 ~ d2*4/2 ~ d2 ~ d2*3/2 ~ d2*3/2 a2*4/2 fis4 \divisioMaxima
d'2*3/2 cis'2 ~ cis'4 b2 a2*7/4 g2 fis2*3/2 ~ \divisioMaior
fis2 ~ fis2 ~ fis2*4/2 ~ fis2*3/2 ~ fis2*3/4 ~ fis2*4/2 a2 g4 \divisioMaxima
b2*4/2 cis'2*3/2 a4 ~ a2*5/2 b2*5/2 a4 ~ a2*3/2 ~ a2*3/2 ~ a2*6/2 ~ a2*5/4 g2*3/2 fis4 a2*5/2 ~ a2*3/2 ~ a2*9/4 ~ \divisioMinima
a2*6/2 ~ a2*9/4 b2 a2 \divisioMinima
b2*11/4 a2*4/2 ~ a2*4/2 ~ a2*4/2 ~ a2 d'2 ~ \divisioMaior
d'2 a2*4/2 ~ a2*4/2 ~ a2*7/4 ~ a2*3/2 ~ a2*3/2 \divisioMaior
fis2*3/2 ~ fis2*6/2 ~ fis2*7/2 ~ fis2*3/2 d2*11/4 ~ d2*9/4 b,2 b2*3/4 cis2 d2*3/2 ~ d2*4/2 ~ d2 ~ d4 \finalis
}

bassMusic = {
r4 d2*5/2 b,2*3/2 \divisioMinima
a,2*5/2 b,2*3/4 ~ b,2*3/2 ~ b,4 \divisioMinima
a,2*3/2 g,2*4/2 fis,2*4/2 e,2 fis,2*3/2 g,2*3/2 a,2*4/2 d4 \divisioMaxima
b2*3/2 a2 fis4 ~ fis2 ~ fis2*7/4 ~ fis2 ~ fis2*3/2 ~ \divisioMaior
fis2 e2 d2*4/2 ~ d2*3/2 cis2*3/4 b,2*4/2 ~ b,2 e4 \divisioMaxima
a2*4/2 ~ a2*3/2 fis4 ~ fis2*5/2 g2*5/2 ~ g4 e2*3/2 fis2*3/2 d2*6/2 ~ d2*5/4 ~ d2*3/2 ~ d4 fis2*5/2 d2*3/2 cis2*9/4 \divisioMinima
fis2*6/2 ~ fis2*13/4 ~ fis2 \divisioMinima
b2*11/4 fis2*4/2 ~ fis2*4/2 e2*4/2 d2 ~ d2 ~ \divisioMaior
d2 fis2*4/2 ~ fis2*4/2 e2*7/4 d2*3/2 cis2*3/2 ~ \divisioMaior
cis2*3/2 b,2*6/2 a,2*7/2 ~ a,2*3/2 ~ a,2*11/4 g,2*9/4 ~ g,2 fis,2*3/4 ~ fis,2 ~ fis,2*3/2 g,2*4/2 d,2 ~ d,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
        "5"
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
