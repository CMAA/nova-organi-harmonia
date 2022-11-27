\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.47
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tollite portas" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tollite portas"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tollite portas" }
    \line {}
  }
}

chantText = \lyricmode {
Tol -- _ li -- te 
\set stanza = " * " por -- _ _ _ tas, prín -- _ ci -- pes, ve -- _ _ _ stras: 
et e -- le -- vá -- _ _ mi -- ni, 
por -- _ _ tæ æ -- ter -- ná -- _ les, 
et in -- tro -- í -- _ bit _ 
Rex _ gló -- ri -- æ. _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown  cis'4 ( e'4) fis'4 ( gis'4 fis'4) fis'4 fis'4  fis'4 ( gis'\prall a'4) b'4 ( gis'4) a'4 ( fis'4) ~ fis'4 ( \once \tweak #'font-size #-4 e' ) fis'4 \divisioMinima
 fis'4 a'4 ( a'4 a'4) a'4 a'4 ( cis''4 b'4 \forceBreak
) b'4 ( a'4) ~ a'4 ( a'4) ~ a'4 ( fis'4 e'4) fis'4 ( gis'\prall a'4 fis'4) fis'4 \divisioMaxima
 fis'4 ( gis'4 e'4) a'4 a'4 ( b'4 fis'4) a'4 ( a'4 a'4) cis''4 ( b'4 a'4) ~ a'4 ( gis'4 fis'4 \forceBreak
) gis'4 ( fis'4) fis'4 \divisioMaior
 fis'4 ( gis'\prall a'4) b'4 ( a'4) ~ a'4 ( gis'4 fis'4) fis'4 a'4 ( fis'4 a'4) e'4 ( fis'4 \once \tweak #'font-size #-4 e' ) a'4 ( b'4) d''4 ( cis''4 b'4) b'4 ( a'4) \divisioMaxima
 a'4 ( fis'4) a'4 ( b'4 \forceBreak
) b'4 ( a'4) a'4 ( fis'4) b'4 ( a'4 gis'4 fis'4) fis'4 ( a'4 fis'4) ~ fis'4 ( e'4) \divisioMaior
 e'4 ( fis'4) a'4 ( a'4 b'4) cis''4 ( d''4 b'4 a'4) a'4 ( gis'4) a'4 ( a'4) ~ a'4 ( fis'4) \divisioMinima \forceBreak

 a'4 b'4 ( a'4) ~ a'4 ( a'4) ~ a'4 ( a'4) ~ a'4 ( fis'4) b'4 ( a'4) gis'4 ( a'4 fis'4.) b'4 ( a'4) ~ a'4 ( a'4) ~ a'4 ( e'4) fis'4. \finalis

}

altoMusic = {
c'2*7/2 d'2*6/2 c'2*3/2 ~ c'4 ~ \divisioMinima
c'4 d'2*4/2 e'2*3/2 f'2 ~ f'2 c'2*3/2 ~ c'2*4/2 ~ c'4 \divisioMaxima
d'2*4/2 ~ d'2*3/2 e'2*5/2 ~ e'2*4/2 c'2 ~ c'4 ~ \divisioMaior
c'2*4/2 ~ c'2*5/2 ~ c'2*3/2 e'2*3/2 ~ e'2 d'2*3/2 c'2 \divisioMaxima
f'2*4/2 e'2 d'2*6/2 ~ d'2 b2 ~ b4 \divisioMaior
c'2 ~ c'2*3/2 f'2*4/2 e'2 c'2 ~ c'2 \divisioMinima
f'2*3/2 e'2 ~ e'2 d'2*4/2 e'2*11/4 ~ e'2 c'2 ~ c'2*3/4 \finalis
}

tenorMusic = {
a2*7/2 g2*6/2 b2*3/2 a4 ~ \divisioMinima
a4 ~ a2*4/2 ~ a2*3/2 ~ a2 b2 c'2*3/2 b2*4/2 a4 \divisioMaxima
b2*4/2 a2*3/2 ~ a2*5/2 b2*4/2 ~ b2 a4 ~ \divisioMaior
a2*4/2 ~ a2*5/2 ~ a2*3/2 g2*3/2 a2 ~ a2*3/2 ~ a2 ~ \divisioMaxima
a2*4/2 ~ a2 ~ a2*6/2 ~ a2 ~ a2 g4 \divisioMaior
a2 ~ a2*3/2 ~ a2*4/2 c'2 b2 a2 \divisioMinima
b2*3/2 ~ b2 a2 ~ a2*4/2 ~ a2*11/4 b2 g2 a2*3/4 \finalis
}

bassMusic = {
f2*7/2 ~ f2*6/2 ~ f2*3/2 ~ f4 ~ \divisioMinima
f4 b,2*4/2 c2*3/2 d2 ~ d2 f2*3/2 ~ f2*4/2 ~ f4 \divisioMaxima
b,2*4/2 ~ b,2*3/2 c2*5/2 ~ c2*4/2 f2 ~ f4 \divisioMaior
r2*4/2 g2*5/2 f2*3/2 ~ f2*3/2 ~ f2 ~ f2*3/2 ~ f2 \divisioMaxima
d2*4/2 c2 b,2*6/2 d2 e2 ~ e4 \divisioMaior
r2 g2*3/2 f2*4/2 ~ f2 ~ f2 ~ f2 \divisioMinima
d2*3/2 c2 ~ c2 b,2*4/2 c2*11/4 ~ c2 f2 ~ f2*3/4 \finalis
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
        "II"
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
