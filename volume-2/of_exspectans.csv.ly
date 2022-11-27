\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.211
%(volume.page)

global = {
 \key d \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exspectans" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exspectans"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exspectans" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- spé -- _ _ ctans 
\set stanza = " * " ex -- spe -- ctá -- _ vi Dó -- mi -- num, 
et re -- spé -- _ _ xit me: 
et ex -- au -- dí -- vit _ de -- pre -- ca -- _ ti -- ó -- _ nem me -- _ _ _ am, 
et im -- mí -- sit _ in os _ _ me -- _ _ um 
cán -- ti -- cum no -- vum, _ _ 
hy -- mnum _ _ De -- _ _ o no -- _ _ stro. }

chantMusic = {
\tieDown   fis'4 fis'4 a'4 ( a'4) ~ a'4 ( b'4) a'4 ( b'4) \divisioMinima
 a'4 b'4 b'4 ( d''4 b'4) cis''4 ( d''4) b'4 a'4 a'4 ( a'4 a'4) fis'4 ( a'4) \divisioMaior \forceBreak

 e'4 fis'4 a'4. ~ a'4 ( a'4 a'4) ~ a'4 ( b'4 a'4) a'4 ( b'4 cis''4 \tiny b' a' 4) b'4 ( a'4) \divisioMaxima
 fis'4 fis'4 ( a'4 b'4) b'4 ( b'4 \once \tweak #'font-size #-4 a'  \forceBreak
) a'4 ( b'4 a'4 gis'4) a'4 ( a'4 a'4) fis'4 ( gis'4 fis'4) \divisioMinima
 fis'4 fis'4 fis'4 a'4 ( a'4 fis'4) e'4 fis'4 ( a'4) b'4 ( a'4) a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( a'4) ~ a'4 ( fis'4.) a'4 ( b'4 a'4 \forceBreak
) b'4 ( fis'4 gis'\prall a'4 fis'4) fis'4 \divisioMaxima
 e'4 fis'4 a'4 ( a'4) b'4 ( cis''4 a'4 a'4) fis'4 ( gis'4 fis'4) \divisioMinima
 fis'4 fis'4 ( a'4) ~ a'4 ( gis'4) a'4 ( gis'4 gis'4 \forceBreak
) e'4 ( a'4) gis'4 ( a'4 fis'4) gis'4 ( gis'4 fis'4) fis'4 \divisioMaior
 a'4 ( a'4) fis'4 ( e'4) fis'4 ( e'4 fis'4) a'4 ( b'4) a'4 ( gis'4) a'4 ( b'4) ~ b'4 ( a'4) \divisioMaxima \forceBreak

 a'4 a'4 ( a'4) ~ a'4 ( fis'4) ~ fis'4 ( \once \tweak #'font-size #-4 e' ) fis'4 ( d'4) e'4 ( fis'4) b'4 ( a'4 gis'4 e'4) fis'4 ( e'4 fis'4) fis'4 a'4 ( a'4 fis'4 e'4 d'4) e'4 ( fis'4 e'4 d'4) d'4 \finalis

}

altoMusic = {
r2*4/2 fis'2 ~ fis'2 ~ \divisioMinima
fis'2 ~ fis'2*3/2 ~ fis'2*3/2 d'4 cis'2*3/2 ~ cis'2 \divisioMaior
b2 cis'2*3/4 fis'2*3/2 e'2*3/2 d'2 ~ d'2*3/2 e'2 \divisioMaxima
r4 d'4 cis'2 fis'2*3/2 e'2*4/2 d'2*3/2 cis'2*3/2 \divisioMinima
b2*3/2 cis'2*4/2 ~ cis'2*4/2 e'2*3/2 d'2*7/4 cis'2*3/2 fis'2*3/2 d'2 cis'4 \divisioMaxima
b2 cis'2 e'2*4/2 cis'2*3/2 ~ \divisioMinima
cis'2 e'2*3/2 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 cis'2*3/2 ~ cis'4 \divisioMaior
e'2 cis'2 d'2*3/2 e'2 d'2*3/2 e'2*3/2 \divisioMaxima
d'4 cis'2*3/2 ~ cis'2*3/2 d'2*4/2 e'2 ~ e'2 d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2 cis'2 a4 \finalis
}

tenorMusic = {
d'2 e'2 ~ e'2 ~ e'4 d'4 \divisioMinima
cis'2 fis2*3/2 b2*3/2 ~ b4 ~ b2*3/2 a2 \divisioMaior
gis2 fis2*3/4 ~ fis2*3/2 ~ fis2*3/2 ~ fis2 a2*3/2 ~ a2 \divisioMaxima
fis2 ~ fis2 ~ fis2*3/2 ~ fis2*4/2 ~ fis2*3/2 ~ fis2*3/2 ~ \divisioMinima
fis2*3/2 ~ fis2*4/2 ~ fis2*4/2 ~ fis2*3/2 ~ fis2*7/4 ~ fis2*3/2 ~ fis2*3/2 ~ fis2 ~ fis4 ~ \divisioMaxima
fis2 ~ fis2 e2*4/2 a2*3/2 ~ \divisioMinima
a2 b2*3/2 cis'2*3/2 ~ cis'2 b2*3/2 ~ b2*3/2 a4 ~ \divisioMaior
a2 ~ a2 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ \divisioMaxima
a4 ~ a2*3/2 ~ a2*3/2 ~ a2*4/2 e2 b2 a2*4/2 fis2 a2*3/2 ~ a2 e2 fis4 \finalis
}

bassMusic = {
r2 cis'2 ~ cis'2 b2 \divisioMinima
fis2 d2*3/2 ~ d2*3/2 fis4 ~ fis2*3/2 ~ fis2 \divisioMaior
cis2 e2*3/4 d2*3/2 cis2*3/2 b,2 ~ b,2*3/2 cis2 \divisioMaxima
r2 e2 d2*3/2 cis2*4/2 b,2*3/2 a,2*3/2 \divisioMinima
gis,2*3/2 fis,2*4/2 a,2*4/2 cis2*3/2 b,2*7/4 e2*3/2 d2*3/2 b,2 a,4 \divisioMaxima
gis,2 fis,2 cis2*4/2 fis2*3/2 \divisioMinima
d2 cis2*3/2 ~ cis2*3/2 fis2 ~ fis2*3/2 ~ fis2*3/2 ~ fis4 \divisioMaior
cis2 e2 d2*3/2 cis2 b,2*3/2 cis2*3/2 \divisioMaxima
fis4 ~ fis2*3/2 d2*3/2 b,2*4/2 cis2 ~ cis2 ~ cis2*4/2 b,2 ~ b,2*3/2 a,2 ~ a,2 d4 \finalis
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
        "V."
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
