\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.235
%(volume.page)

global = {
 \key d \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Quis dabit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Quis dabit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Quis dabit" }
    \line {}
  }
}

chantText = \lyricmode {
Quis da -- bit 
\set stanza = " * " ex Si -- on sa -- lu -- tá -- re Is -- ra -- el? _ _ 
cum a -- vér -- te -- rit Dó -- mi -- nus ca -- pti -- vi -- tá -- tem ple -- bis su -- æ, 
ex -- sul -- tá -- bit Ja -- cob, _ _ _ 
et læ -- tá -- bi -- tur Is -- ra -- el. _ _ _ _ _ }

chantMusic = {
\tieDown   a'4 ( fis'4) a'4 a'4 ( a'4 a'4)  fis'4 a'4 a'4 ( cis''4 b'4 a'4) \divisioMinima
 a'4 b'4 a'4 ( a'4 gis'4) fis'4 ( e'4) fis'4 a'4 ( gis'4 \forceBreak
) a'4. fis'4 a'4 ( a'4) ~ a'4 ( fis'4) \divisioMaxima
 fis'4 a'4 a'4 ( \once \tweak #'font-size #-4 b' ) a'4 a'4 a'4 fis'4 d'4 ( e'4) \divisioMinima
 d'4  e'4 ( g'4) g'4 \forceBreak
 g'4 fis'4 ( \once \tweak #'font-size #-4 e' )  g'4 ( a'4 g'4) fis'4 d'4 ( e'4 d'4) d'4 \divisioMaxima
 a'4 b'4 ( \once \tweak #'font-size #-4 d'' ) d''4 ( cis''4 d''4) d''4 ( cis''4 d''4) b'4 a'4 ( b'4 a'4 fis'4.) b'4 ( gis'4 \forceBreak
) a'4 ( b'4) ~ b'4 ( a'4) \divisioMaior
 a'4 b'4 a'4 a'4 ( a'4 a'4) fis'4 ( gis'\prall a'4 gis'4 e'4) fis'4 a'4 ( gis'4) a'4. fis'4 a'4 ( a'4) ~ a'4 ( fis'4) ~ fis'4 ( e'4) fis'4 ( a'4 fis'4 fis'4) d'4 ( e'4 d'4) \finalis

}

altoMusic = {
cis'2 ~ cis'4 ~ cis'2*5/2 e'2*4/2 \divisioMinima
d'2 e'2*5/2 ~ e'2*3/2 cis'2*5/4 ~ cis'2 ~ cis'2 \divisioMaxima
d'2 e'2*3/2 d'4 cis'2 b4 cis'4 \divisioMinima
b4 ~ b2 ~ b4 ~ b2*3/2 d'2*4/2 a2*3/2 ~ a4 \divisioMaxima
e'4 ~ e'2 d'2*3/2 ~ d'2*3/2 e'4 ~ e'2 ~ e'2*5/4 ~ e'2*3/2 ~ e'2 ~ e'4 ~ \divisioMaior
e'2 ~ e'4 cis'2*3/2 ~ cis'2*6/2 ~ cis'2 b2*5/4 e'2*3/2 d'2*3/2 ~ d'2*4/2 a'2 a4 \finalis
}

tenorMusic = {
r2 gis4 a2*5/2 ~ a2*4/2 ~ \divisioMinima
a2 ~ a2*5/2 ~ a2*3/2 ~ a2*5/4 b2 a2 ~ \divisioMaxima
a2 ~ a2*3/2 ~ a4 ~ a2 ~ a2 ~ \divisioMinima
a4 gis2 ~ gis4 ~ gis2*3/2 ~ gis2*4/2 ~ gis2*3/2 fis4 \divisioMaxima
e4 fis2 ~ fis2*3/2 a2*3/2 gis4 fis2 a2*5/4 gis2*3/2 ~ gis2 a4 ~ \divisioMaior
a2 b4 ~ b2*3/2 a2*6/2 fis2 ~ fis2*5/4 ~ fis2*3/2 ~ fis2*3/2 a2*4/2 gis2 fis4 \finalis
}

bassMusic = {
fis2 ~ fis4 ~ fis2*5/2 cis2*4/2 \divisioMinima
b,2 cis2*5/2 ~ cis2*3/2 fis2*5/4 ~ fis2 ~ fis2 \divisioMaxima
d2 cis2*3/2 fis4 ~ fis2 a2 \divisioMinima
r2*3/2 fis4 e2*3/2 b,2*4/2 d2*3/2 ~ d4 \divisioMaxima
cis4 ~ cis2 b,2*3/2 ~ b,2*3/2 e4 ~ e2 ~ e2*5/4 ~ e2*3/2 cis2 ~ cis4 ~ \divisioMaior
cis2 ~ cis4 fis2*3/2 ~ fis2*6/2 e2 d2*5/4 cis2*3/2 b,2*3/2 ~ b,2*4/2 d2 ~ d4 \finalis
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
        "V"
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
