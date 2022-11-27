\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.105
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ecce sto" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ecce sto"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ecce sto" }
    \line {}
  }
}

chantText = \lyricmode {
Ec -- ce sto 
\set stanza = " * " ad ó -- sti -- um et pul -- so; 
si quis au -- dí -- e -- rit _ vo -- cem me -- am et a -- pe -- rú -- e -- rit mi -- hi já -- nu -- _ am, 
in -- trá -- bo ad il -- lum, et cæ -- ná -- bo cum il -- lo et ip -- se me -- cum. T.P. 
Al -- le -- _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   g'4 g'4 ( fis'4) e'4  g'4 a'4 ( b'4) a'4 g'4 fis'4 ( g'4) d'4 ( fis'4 e'4) e'4 \divisioMaior
 e'4 g'4 a'4 a'4 ( b'4) b'4  a'4 ( b'4) c''4 ( b'4) a'4 a'4 ( \once \tweak #'font-size #-4 fis' ) a'4 ( b'4) a'4 \divisioMinima
 a'4 a'4 ( b'4) a'4 b'4 a'4 g'4 ( fis'4) a'4 ( b'4) g'4 ( fis'4) e'4 e'4 ( fis'4) g'4 ( fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaxima
 g'4 a'4 ( b'4) b'4 ( g'4)  b'4 ( c''4) a'4 ( b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 g' ) e'4 ( d'4) g'4 ( b'4 a'4 b'4) a'4 ( g'4) e'4 ( g'4) g'4 ( fis'4 g'4) e'4 ( d'4) \divisioMinima
 fis'4 a'4 ( b'4) fis'4 ( g'4) d'4 ( fis'4 e'4) e'4 \finalis
 g'4 ( \once \tweak #'font-size #-4 a' ) f'4 ( e'4 g'4 b'4.) a'4 ( b'4 a'4) f'4 ( g'4 a'4) b'4 ( g'4) a'4 ( g'4 f'4) e'4 ( f'\prall g'4 f'4 g'4) f'4 ( e'4) \finalis

}

altoMusic = {
d'4 c'2 b4 e'4 d'2*4/2 ~ d'2 b2*3/2 ~ b4 ~ \divisioMaior
b2 d'2*3/2 ~ d'2*3/2 e'2 ~ e'4 d'2 c'2*3/2 \divisioMinima
d'4 ~ d'2*3/2 ~ d'2 ~ d'2 e'2 d'2 b4 ~ b2 c'2*4/2 b2 \divisioMaxima
e'4 ~ e'2 ~ e'2 ~ e'2 ~ e'2*5/2 d'2 \divisioMinima
c'2 b2 c'2*4/2 d'2 e'2 d'2*3/2 b2 \divisioMinima
d'4 ~ d'2 ~ d'2 b2*3/2 ~ b4 ~ \finalis
b2 ~ b2*3/2 ~ b2*3/4 e'2*3/2 d'2*3/2 ~ d'2 b2*3/2 c'2*5/2 b2 \finalis
}

tenorMusic = {
b4 a2 g4 ~ g4 ~ g2*4/2 a2 ~ a2*3/2 g4 ~ \divisioMaior
g2 fis4 e2 fis2*3/2 g2 a4 ~ a2 ~ a2*3/2 \divisioMinima
fis4 e2*3/2 fis2 a2 ~ a2 ~ a2 ~ a4 g2 a2*4/2 g2 \divisioMaxima
r4 fis2 g2 ~ g2 ~ g2*5/2 ~ g2 ~ \divisioMinima
g2 ~ g2 ~ g2*4/2 ~ g2 ~ g2 ~ g2*3/2 fis2 \divisioMinima
b4 fis2 g2 a2*3/2 g4 \finalis
r2 g2*3/2 fis2*3/4 e2*3/2 fis2*3/2 g2 ~ g2*3/2 a2*5/2 g2 \finalis
}

bassMusic = {
r2*4/2 c4 b,2*4/2 ~ b,2 ~ b,2*3/2 e4 ~ \divisioMaior
e2 d2*3/2 ~ d2*3/2 c2 ~ c4 b,2 a,2*3/2 \divisioMinima
d4 ~ d2*3/2 ~ d2 ~ d2 c2 b,2 e4 ~ e2 ~ e2*4/2 ~ e2 ~ \divisioMaxima
e4 ~ e2 ~ e2 d2 c2*5/2 b,2 \divisioMinima
a,2 g,2 a,2*4/2 b,2 c2 b,2*3/2 ~ b,2 ~ \divisioMinima
b,4 ~ b,2 ~ b,2 ~ b,2*3/2 e4 ~ \finalis
e2 ~ e2*3/2 d2*3/4 c2*3/2 b,2*3/2 ~ b,2 e2*3/2 ~ e2*5/2 ~ e2 \finalis
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
        "1"
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
