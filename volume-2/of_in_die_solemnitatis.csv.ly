\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.25
%(volume.page)

global = {
 \key e \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In die solemnitatis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In die solemnitatis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In die solemnitatis" }
    \line {}
  }
}

chantText = \lyricmode {
In di -- _ _ _ e 
\set stanza = " * " so -- lem -- ni -- tá -- tis ve -- _ stræ, 
di -- cit Dó -- _ _ _ _ _ mi -- nus, 
in -- dú -- _ _ _ cam _ _ _ vos _ 
in ter -- _ _ _ _ ram _ 
flu -- én -- _ _ _ _ tem lac _ _ et mel, 
al -- le -- _ _ _ _ _ _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   d'4 e'4 ( g'4 fis'4) g'4 ( g'4 fis'4) a'4 ( g'4) a'4 ( g'4 fis'4 g'4) g'4 ( fis'4) \divisioMinima
 e'4 fis'4 g'4  a'4 ( cis''4 a'4 b'\prall cis''4) g'4 ( a'4 \forceBreak
) g'4 ( g'4 g'4) ~ g'4 ( a'4 g'4 a'4) fis'4 \divisioMaior
 g'4 ( g'4) a'4 ( b'4) b'4. a'4 ( b'4 g'4) a'4 ( a'4 fis'4.) b'4 ( a'4) ~ a'4 ( g'4) a'4 ( b'4 a'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \divisioMaxima \forceBreak

 g'4 ( \once \tweak #'font-size #-4 fis' ) g'4 ( a'4.) g'4 ( a'4 b'4) d''4 ( d''4) ~ d''4 ( d''4 d''4) a'4 ( b'4.) a'4 ( b'4 g'4) a'4 ( b'4) ~ b'4 ( a'4) a'4 ( g'4 g'4) e'4 ( a'4 g'4 fis'4) \divisioMaior
 g'4 ( a'4 fis'4) a'4 ( b'4 a'4 b'4. \forceBreak
) a'4 ( b'4 g'4) a'4 ( a'4 fis'4.) g'4 ( a'4 e'4) g'4. fis'4 ( a'4 g'4 fis'4) g'4 ( g'4 g'4) ~ g'4 ( fis'4) \divisioMaior
 g'4  g'4 ( a'4.) f'4 ( g'4 a'4 f'4) g'4 ( e'4 d'4 cis'4) e'4 ( f'\prall g'4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima \forceBreak

 a'4 ( g'4) a'4 ( g'4) a'4 ( e'4) g'4 g'4 ( a'4) a'4 \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( a'4) ~ a'4 ( fis'4.) a'4 ( b'4 g'4 e'4 d'4 e'4) \divisioMinima
 e'4 ( g'4 fis'4 g'4) ~ g'4 ( fis'4.) e'4 ( a'4 g'4 a'4. \forceBreak
) fis'4 ( g'4 a'4 g'4 fis'4 g'4.) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMinima
 e'4 ( fis'4 g'4 fis'4 e'4) e'4 ( fis'4 g'4) fis'4 ( e'4) \finalis

}

altoMusic = {
r4 b2*3/2 ~ b2*5/2 d'2*4/2 ~ d'2 \divisioMinima
b2*3/2 e'2*5/2 ~ e'2 ~ e'2*3/2 ~ e'2*5/2 \divisioMaior
d'2 ~ d'2 ~ d'2*9/4 ~ d'2*9/4 ~ d'2*6/2 ~ d'2*4/2 ~ d'2 ~ \divisioMaxima
d'2 e'2*11/4 fis'2 d'2*3/2 e'2*5/4 ~ e'2*4/2 d'2*3/2 b2*3/2 e'2*4/2 \divisioMaior
d'2*3/2 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2 ~ d'2*3/4 b2*3/2 c'2*3/4 d'2*4/2 ~ d'2*3/2 ~ d'2 ~ \divisioMaior
d'4 e'4 ~ e'2*9/4 ~ e'4 ~ e'4 r2*3/2 b2*3/2 ~ b2 ~ b4 ~ \divisioMinima
b2 c'2 d'2*3/2 ~ d'2 c'4 \divisioMaxima
d'2*3/2 ~ d'2 ~ d'2*3/4 ~ d'2*3/2 b2 ~ b4 \divisioMinima
c'2*3/2 d'2*7/4 e'2*9/4 d'2*5/2 ~ d'2*3/4 c'2 a2 ~ a4 \divisioMinima
e'2*4/2 ~ e'4 b2*3/2 ~ b2 \finalis
}

tenorMusic = {
a4 g2*3/2 ~ g2*5/2 ~ g2*4/2 a2 \divisioMinima
g2*3/2 ~ g2*5/2 a2 b2*3/2 a2*5/2 \divisioMaior
b2 a2 g2*9/4 fis2*9/4 g2*6/2 a2*4/2 b2 ~ \divisioMaxima
b2 ~ b2*11/4 ~ b2 fis2*3/2 ~ fis2*5/4 g2*4/2 fis2*3/2 g2*3/2 a2*4/2 \divisioMaior
b2*3/2 a2*3/2 g2*3/4 fis2*3/2 g2 a2*3/4 g2*3/2 ~ g2*3/4 ~ g2*4/2 a2*3/2 b2 ~ \divisioMaior
b4 ~ b4 a2*9/4 b2*4/2 g2*4/2 fis2 e4 ~ \divisioMinima
e2 ~ e2 ~ e2*3/2 ~ e2 ~ e4 \divisioMaxima
fis2*3/2 g2 a2*3/4 ~ a2*3/2 ~ a2 g4 \divisioMinima
a2*3/2 ~ a2*7/4 ~ a2*9/4 ~ a2*5/2 g2*3/4 ~ g2 ~ g2 fis4 \divisioMinima
a2*5/2 ~ a2*3/2 ~ a4 g4 \finalis
}

bassMusic = {
fis4 ~ fis2*3/2 e2*5/2 b,2*4/2 d2 \divisioMinima
e2*3/2 c2*5/2 ~ c2 e2*3/2 c2*5/2 \divisioMaior
b,2 ~ b,2 ~ b,2*9/4 ~ b,2*9/4 ~ b,2*6/2 ~ b,2*4/2 ~ b,2 \divisioMaxima
r2 e2*11/4 b,2 ~ b,2*3/2 c2*5/4 ~ c2*4/2 d2*3/2 e2*3/2 c2*4/2 \divisioMaior
b,2*3/2 ~ b,2*3/2 ~ b,2*3/4 d2*3/2 ~ d2 ~ d2*3/4 e2*3/2 ~ e2*3/4 b,2*4/2 ~ b,2*3/2 ~ b,2 ~ \divisioMaior
b,4 c4 ~ c2*9/4 e2*4/2 ~ e2*4/2 ~ e2 ~ e4 \divisioMinima
d2 c2 b,2*3/2 a,2 ~ a,4 \divisioMaxima
d2*3/2 ~ d2 ~ d2*3/4 b,2*3/2 e2 ~ e4 \divisioMinima
a,2*3/2 b,2*7/4 c2*9/4 b,2*5/2 ~ b,2*3/4 a,2 d2 ~ d4 \divisioMinima
c2*5/2 e2*3/2 ~ e2 \finalis
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
