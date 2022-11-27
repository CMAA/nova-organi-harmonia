\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.315
%(volume.page)

global = {
 \key b \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Probasti Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Probasti Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Probasti Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Pro -- bá -- sti, 
\set stanza = " * " Dó -- mi -- _ ne, _ _ _ _ 
cor _ me -- _ _ _ um, _ _ _ 
et vi -- si -- tá -- _ _ sti no -- _ _ _ _ cte. _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
I -- gne me e -- xa -- mi -- ná -- _ _ _ _ sti, 
et non _ est in -- vén -- _ _ _ ta in me 
\set stanza = " * " in -- í -- qui -- tas. _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   b4 d'4 ( d'4) d'4 ( fis'4) \divisioMinima
  fis'4 ( g'4 fis'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4 e'4) d'4. cis'4 ( e'4 fis'4.) d'4 ( e'4 fis'4 d'4 cis'4 b4) cis'4 ( d'4 e'4) ~ e'4 ( d'4) \divisioMaior
  d'4 ( e'4) g'4 ( fis'4)  g'4 ( g'4) ~ g'4 ( g'4) ~ g'4 ( e'4 d'4) e'4 ( g'4 a'4 g'4 fis'4 g'4) g'4. fis'4 ( g'4 a'4) fis'4 ( g'4 e'4.) fis'4 ( g'4 fis'4 g'4 e'4) \divisioMaxima
 d'4 d'4 d'4  fis'4 ( d'4) e'4 ( g'4) ~ g'4 ( d'4) d'4 \divisioMinima
  d'4 ( d'4 e'4 d'4) ~ d'4 ( a4) b4 ( d'4.) cis'4 ( e'4) fis'4 ( g'4 e'4)  e'4 ( fis'4 g'4 e'4 d'4.)  fis'4 ( e'4 fis'4) d'4 ( fis'4) a'4 ( gis'4) a'4 ( fis'4) \divisioMinima
  g'4. fis'4 ( g'4 e'4.) g'4 ( fis'4) g'4 ( e'4 d'4 e'4) \divisioMinima
 d'4 ( e'4 d'4) ~ d'4 ( d'4) ~ d'4 ( fis'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis
  a'4 ( b'4) a'4 ( b'4) a'4 ( gis'4 a'4) \divisioMinima
 a'4 a'4 a'4  a'4 ( b'4 a'4) ~ a'4 ( a'4 fis'4.) g'4 ( fis'4 e'4) fis'4 ( e'4 d'4) fis'4 a'4 ( a'4 fis'4 e'4 fis'4) fis'4 \divisioMaxima
 a'4 b'4 ( a'4) b'4 ( cis''\prall d''4 d''4) d''4 ( e''4 a'4) \divisioMinima
 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( cis''4 d''4 b'4 gis'4) a'4 ( fis'4 e'4.) fis'4 ( gis'\prall a'4) ~ a'4 ( \once \tweak #'font-size #-4 b' ) a'4 a'4 ( a'4) a'4 ( b'4 a'4) \divisioMinima
 fis'4 fis'4 ( a'4 b'4 cis''4) a'4 ( gis'4) a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 fis'4) \divisioMinima
 d'4 ( e'4) fis'4 a'4 ( a'4) b'4 ( cis''4 gis'4 a'4 fis'4.)  e'4 ( g'4 fis'4 d'4) \finalis

}

altoMusic = {
b4 ~ b2 ~ b2 ~ b2*5/2 ~ b2*4/2 ~ b2*3/4 ~ b2*7/4 ~ b2*8/2 a2 ~ a4 d'2*4/2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'2*6/2 ~ d'2*9/4 b2*7/4 ~ b2*5/2 \divisioMaxima
r2 d'4 ~ d'2*3/2 ~ d'2*3/2 b4 ~ b2*3/2 a2*3/2 fis2*9/4 b2*4/2 ~ b2*9/4 a2*5/2 ~ a2*4/2 b2*3/4 a2*11/4 b2*4/2 ~ \divisioMinima
b2*3/2 ~ b2 ~ b2*4/2 a2 ~ a4 d'2*4/2 cis'2*3/2 ~ \divisioMinima
cis'2*3/2 d'2*3/2 ~ d'2*7/4 ~ d'2*3/2 ~ d'2*4/2 cis'2*5/2 d'4 \divisioMaxima
r4 e'2 fis'2*4/2 a'2*3/2 \divisioMinima
fis'2 d'2*5/2 cis'2*7/4 ~ cis'2 ~ cis'2*4/2 fis'2 e'2*3/2 ~ \divisioMinima
e'4 fis'2*4/2 ~ fis'2 ~ fis'2 e'2 d'2 b2 cis'2*3/2 \divisioMinima
d'2*3/2 e'2 ~ e'2*3/2 cis'2*5/4 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
r4 fis2 ~ fis2 d2*5/2 e2*4/2 fis2*3/4 e2*7/4 fis2*8/2 e2 fis4 g2*4/2 d2 e2 fis2*3/2 g2*6/2 a2*9/4 ~ a2*7/4 g2*5/2 \divisioMaxima
r4 fis2 a2*3/2 g2*3/2 ~ g4 d2*3/2 ~ d2*3/2 ~ d2*9/4 ~ d2*4/2 ~ d2*9/4 ~ d2*5/2 cis2*4/2 e2*3/4 fis2*11/4 e2*4/2 \divisioMinima
fis2*3/2 ~ fis2 g2*4/2 ~ g2 fis4 a2*4/2 ~ a2*3/2 ~ \divisioMinima
a2*3/2 ~ a2*3/2 b2*7/4 ~ b2*3/2 ~ b2*4/2 a2*5/2 ~ a4 \divisioMaxima
r4 cis'2 d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2 cis'2*5/2 ~ cis'2*7/4 b2 a2*4/2 ~ a2 ~ a2*3/2 ~ \divisioMinima
a4 ~ a2*4/2 b2 cis'2 ~ cis'2 a2*4/2 ~ a2*3/2 ~ \divisioMinima
a2*3/2 ~ a2 ~ a2*3/2 ~ a2*5/4 g2*3/2 fis4 \finalis
}

bassMusic = {
b,4 ~ b,2 a,2 g,2*5/2 ~ g,2*4/2 b,2*3/4 ~ b,2*7/4 ~ b,2*8/2 cis2 d4 b,2*4/2 ~ b,2 ~ b,2 ~ b,2*3/2 ~ b,2*6/2 ~ b,2*9/4 e2*7/4 ~ e2*5/2 \divisioMaxima
b,4 ~ b,2 ~ b,2*3/2 ~ b,2*3/2 g,4 ~ g,2*3/2 fis,2*3/2 b,2*9/4 a,2*4/2 g,2*9/4 fis,2*5/2 ~ fis,2*4/2 e,2*3/4 ~ e,2*11/4 ~ e,2*4/2 \divisioMinima
b,2*3/2 a,2 g,2*4/2 d2 ~ d4 fis2*4/2 ~ fis2*3/2 ~ \divisioMinima
fis2*3/2 ~ fis2*3/2 ~ fis2*7/4 e2*3/2 g2*4/2 a2*5/2 d4 \divisioMaxima
r2*3/2 b2*4/2 fis2*3/2 ~ \divisioMinima
fis2 ~ fis2*5/2 ~ fis2*7/4 ~ fis2 ~ fis2*4/2 d2 cis2*3/2 ~ \divisioMinima
cis4 d2*4/2 ~ d2 fis2 ~ fis2 ~ fis2*4/2 ~ fis2*3/2 \divisioMinima
b,2*3/2 cis2 a,2*3/2 ~ a,2*5/4 d2*3/2 ~ d4 \finalis
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
