\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.213
%(volume.page)

global = {
 \key fis \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine Dominus noster" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine Dominus noster"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine Dominus noster" }
    \line {}
  }
}

chantText = \lyricmode {
Dó -- mi -- ne 
\set stanza = " * " Dó -- mi -- nus no -- ster, 
quam ad -- mi -- rá -- bi -- le est no -- _ men tu -- _ _ um 
in u -- ni -- vér -- _ _ _ sa ter -- ra! }

chantMusic = {
\tieDown   fis'4 e'4 ( gis'\prall a'4 gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMinima
 a'4 ( b'4 a'4) a'4 ( gis'4) fis'4 ( e'4) fis'4 ( gis'\prall a'4 gis'4 a'4) gis'4 ( fis'4) \divisioMaxima
  a'4 ( b'4 cis''4 d''4 cis''4) cis''4 \forceBreak
 cis''4 ( b'4) cis''4 b'4 b'4 cis''4 \divisioMinima
 a'4 ( gis'4 e'4) fis'4 ( gis'4) fis'4 fis'4 ( b'4 a'4) ~ a'4 ( gis'4 e'4) fis'4 ( gis'\prall a'4 gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMaior \forceBreak

 cis'4 e'4 ( fis'4) fis'4 ( e'4) fis'4 a'4 ( a'4) ~ a'4 ( fis'4 e'4 dis'4.) e'4 ( gis'4 e'4 fis'4) fis'4 fis'4 ( gis'4 a'4 gis'4 fis'4 gis'4) gis'4 ( fis'4) \finalis

}

altoMusic = {
cis'4 b2*6/2 cis'2 \divisioMinima
e'2*3/2 ~ e'2*4/2 cis'2*5/2 ~ cis'2 fis'2*6/2 ~ fis'2 ~ fis'4 ~ fis'2 e'4 ~ \divisioMinima
e'2*6/2 d'2 ~ d'2*4/2 cis'2*6/2 ~ cis'2 ~ \divisioMaior
cis'4 b2 cis'2 ~ cis'4 ~ cis'2 ~ cis'2*9/4 ~ cis'2*4/2 ~ cis'4 ~ cis'2*6/2 ~ cis'2 \finalis
}

tenorMusic = {
a4 gis2*6/2 a2 ~ \divisioMinima
a2*3/2 b2*4/2 ~ b2*5/2 a2 ~ a2*6/2 b2 fis4 gis2 ~ gis4 \divisioMinima
a2*6/2 ~ a2 b2*4/2 ~ b2*6/2 a2 ~ \divisioMaior
a4 ~ a2 ~ a2 gis4 r2 a2*9/4 gis2*4/2 b4 ~ b2*6/2 a2 \finalis
}

bassMusic = {
fis4 ~ fis2*6/2 ~ fis2 \divisioMinima
cis2*3/2 ~ cis2*4/2 fis2*5/2 ~ fis2 d2*6/2 ~ d2 ~ d4 ~ d2 cis4 ~ \divisioMinima
cis2*6/2 b,2 ~ b,2*4/2 fis2*6/2 ~ fis2 \divisioMaior
r2*6/2 fis2 ~ fis2*9/4 cis2*4/2 ~ cis4 fis2*6/2 ~ fis2 \finalis
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
        "2"
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
