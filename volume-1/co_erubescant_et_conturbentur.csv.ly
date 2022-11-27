\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.192
%(volume.page)

global = {
 \key f \locrian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Erubescant et conturbentur" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Erubescant et conturbentur"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Erubescant et conturbentur" }
    \line {}
  }
}

chantText = \lyricmode {
E -- ru -- bé -- scant, 
\set stanza = " * " et con -- tur -- bén -- _ tur 
o -- mnes in -- i -- mí -- ci me -- _ i 
a -- ver -- tán -- tur re -- trór -- _ sum, 
et e -- ru -- bé -- scant val -- de ve -- ló -- _ _ _ _ ci -- ter. }

chantMusic = {
\tieDown   g'4 ( fis'4) g'4  a'4 ( b'\prall cis''4 b'4) b'4 ( a'4) \divisioMinima
 a'4 ( g'4 g'4) e'4 d'4 ( \once \tweak #'font-size #-4 e' ) e'4 g'4 ( g'4 g'4) e'4 \divisioMaior
 e'4 ( d'4 e'4 \forceBreak
) e'4 ( fis'\prall g'4) d'4 e'4 g'4 ( fis'4) g'4 ( a'4) a'4 ( g'4) ~ g'4 ( fis'4 g'4) g'4 ( fis'4) \divisioMaxima
 e'4 ( a'4) a'4 a'4 ( b'4) a'4 g'4 e'4 ( g'4 a'4 \forceBreak
) b'4 ( a'4 b'4) fis'4 \divisioMaior
 fis'4 ( d'4) e'4 g'4 fis'4 ( g'4 e'4) e'4 \divisioMinima
 d'4 \once \tweak #'font-size #-4 e'  e'4 e'4  e'4 ( d'4 e'4) g'4 ( g'4) a'4 ( b'4 cis''4 b'4 a'4) b'4 ( g'4) ~ g'4 ( f'4) f'4 ( a'4 g'4 f'4) f'4 \finalis

}

altoMusic = {
d'2*3/2 e'2 ~ e'2 fis'2 \divisioMinima
e'2*3/2 b2*3/2 ~ b4 ~ b2*3/2 ~ b4 ~ \divisioMaior
b2*3/2 c'2*3/2 d'2 ~ d'2*4/2 ~ d'4 ~ d'2*4/2 ~ d'2 \divisioMaxima
e'2*3/2 ~ e'2*4/2 d'4 ~ d'2 ~ d'2*4/2 ~ \divisioMaior
d'2*4/2 b2*3/2 ~ b4 \divisioMinima
a2*4/2 b2*3/2 d'2 e'2*6/2 d'2*3/2 ~ d'2*4/2 ~ d'4 \finalis
}

tenorMusic = {
r2*3/2 c'2 ~ c'2 d'2 \divisioMinima
b2*3/2 fis2*3/2 a4 g2*3/2 ~ g4 \divisioMaior
fis2*3/2 g2*3/2 ~ g2 a2*4/2 g4 a2*4/2 b2 \divisioMaxima
a2*3/2 g2*4/2 ~ g4 ~ g2 fis2*4/2 \divisioMaior
a2*4/2 ~ a2*3/2 g4 \divisioMinima
fis2*4/2 g2*3/2 ~ g2 ~ g2*6/2 ~ g2*3/2 a2*4/2 b4 \finalis
}

bassMusic = {
b2*3/2 ~ b2 a2 d2 \divisioMinima
e2*3/2 ~ e2*3/2 ~ e4 ~ e2*3/2 ~ e4 \divisioMaior
b,2*3/2 a,2*3/2 b,2 ~ b,2*4/2 ~ b,4 ~ b,2*4/2 ~ b,2 \divisioMaxima
c2*3/2 ~ c2*4/2 ~ c4 b,2 ~ b,2*4/2 ~ \divisioMaior
b,2*4/2 e2*3/2 ~ e4 ~ \divisioMinima
e2*4/2 ~ e2*3/2 b,2 c2*6/2 b,2*3/2 ~ b,2*4/2 ~ b,4 \finalis
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
        "4"
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
