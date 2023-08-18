\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.262
%(volume.page)

global = {
 \key fis \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laetabimur" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laetabimur"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laetabimur" }
    \line {}
  }
}

chantText = \lyricmode {
Læ -- tá -- _ _ bi -- mur 
\set stanza = " * " in sa -- lu -- tá -- ri tu -- _ o: 
et in nó -- mi -- ne Dó -- mi -- ni _ De -- i _ no -- stri _ ma -- gni -- fi -- cá -- _ _ bi -- _ mur. }

chantMusic = {
\tieDown   fis'4 fis'4 ( e'4) fis'4 ( e'4 dis'4) e'4 ( fis'4 e'4 fis'4) gis'4 fis'4 ( gis'\prall a'4) \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 fis' ) a'4 ( b'4 a'4) b'4 ( cis''4 b'4) cis''4 ( e''4 dis''4 cis''4) b'4 \forceBreak
 a'4 ( gis'4) a'4 ( b'4 a'4 b'4) fis'4 ( gis'\prall a'4) \divisioMaior
 fis'4 a'4 b'4 ( cis''4) b'4 b'4 cis''4 b'4 ( a'4) a'4 ( b'4 a'4 a'4) fis'4 ( gis'4 fis'4) \divisioMinima
 a'4 ( a'4 gis'4 \forceBreak
) a'4 ( b'4) cis''4 ( b'4 cis''4) a'4 a'4. fis'4 ( gis'4 fis'4 e'4) \divisioMinima
 e'4 a'4 ( gis'4) a'4 ( b'4) b'4. gis'4 ( b'4 a'4 gis'4 fis'4.) e'4 ( fis'4) e'4 ( dis'4 e'\prall fis'4 e'4) fis'4 ( gis'4) fis'4 \finalis

}

altoMusic = {
r4 cis'2 b2*3/2 ~ b2*5/2 cis'2 ~ cis'4 \divisioMinima
e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*5/2 ~ e'2*6/2 cis'2*3/2 ~ \divisioMaior
cis'2 e'2*4/2 ~ e'4 ~ e'2 ~ e'2*4/2 cis'2*3/2 ~ \divisioMinima
cis'2*3/2 ~ cis'2 fis'2*3/2 e'4 ~ e'2*3/4 cis'2*4/2 \divisioMinima
e'4 ~ e'2*4/2 ~ e'2*3/4 ~ e'2*4/2 ~ e'2*3/4 cis'2 ~ cis'2*5/2 ~ cis'2 ~ cis'4 \finalis
}

tenorMusic = {
fis4 ~ fis2 ~ fis2*3/2 gis2*5/2 ~ gis2 fis4 ~ \divisioMinima
fis2 e2*3/2 a2*3/2 gis2*5/2 a2*6/2 ~ a2*3/2 \divisioMaior
fis2 gis2*4/2 ~ gis4 a2 b2*4/2 ~ b2*3/2 \divisioMinima
a2*3/2 fis2 ~ fis2*3/2 ~ fis4 a2*3/4 gis2*4/2 ~ \divisioMinima
gis4 a2*4/2 gis2*3/4 b2*4/2 a2*3/4 gis2 a2*5/2 b2 a4 \finalis
}

bassMusic = {
r4 a,2 gis,2*3/2 ~ gis,2*5/2 a,2 ~ a,4 \divisioMinima
cis2 ~ cis2*3/2 ~ cis2*3/2 ~ cis2*5/2 ~ cis2*6/2 fis2*3/2 \divisioMaior
e2 ~ e2*4/2 cis4 ~ cis2 ~ cis2*4/2 fis2*3/2 ~ \divisioMinima
fis2*3/2 e2 dis2*3/2 cis4 ~ cis2*3/4 ~ cis2*4/2 ~ \divisioMinima
cis4 ~ cis2*4/2 ~ cis2*3/4 ~ cis2*4/2 ~ cis2*3/4 ~ cis2 fis2*5/2 ~ fis2 ~ fis4 \finalis
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
