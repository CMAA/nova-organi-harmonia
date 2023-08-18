\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.188
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedicam Dominum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedicam Dominum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedicam Dominum" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- ne -- dí -- _ _ _ cam 
\set stanza = " * " Dó -- mi -- num _ _ _ _ _ _ _ _ _ 
in om -- ni tém -- po -- _ _ re: _ _ _ _ _ _ _ _ _ _ _ 
sem -- per _ _ laus e -- _ _ jus _ _ _ _ _ _ _ 
in o -- re _ _ _ _ me -- _ _ _ o. _ _ _ _ _ _ ℣. 
In Dó -- mi -- no _ _ _ _ _ _ _ _ _ 
lau -- dá -- bi -- tur á -- _ ni -- _ ma me -- _ _ a: _ _ _ _ 
áu -- di -- _ ant man -- su -- é -- _ _ _ _ _ _ _ _ _ _ ti, _ _ _ _ _ _ _ _ _ _ 
\set stanza = " * " 
et læ -- tén -- tur. _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( fis'4) e'4 e'4 ( fis'4) a'4 ( a'4) ~ a'4 ( fis'4) ~ fis'4 ( e'4) e'4 ( fis'4) \divisioMinima
 e'4 ( fis'4 a'4) a'4 ( a'4 a'4) a'4 b'4 ( cis''4 a'4 a'4) ~ a'4 ( fis'4 e'4) \divisioMinima \forceBreak

 a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( gis'4 e'4) fis'4 ( e'4.) a'4 ( fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \divisioMaior
 e'4 e'4 ( a'4 \once \tweak #'font-size #-4 gis' ) a'4 ( b'4) b'4 b'4 ( a'4) d''4 ( cis''4 b'4) d''4 ( cis''4 b'4 \forceBreak
) b'4 ( gis'4) a'4 ( b'4) d''4 ( d''4 b'4 a'4) b'4 ( cis''\prall d''4) e''4 ( d''4 d''4) b'4 ( cis''4 b'4) \divisioMinima
 a'4 ( cis''4) b'4 ( cis''4 b'4) cis''4 ( gis'4.) a'4 ( b'4 a'4) b'4 ( a'4) ~ a'4 ( gis'4) \divisioMaxima \forceBreak

 gis'4 ( a'4 b'4) cis''4 ( d''4 b'4) cis''4 ( a'4) ~ a'4 ( gis'4) gis'4 ( a'4 b'4 cis''\prall d''4) b'4 ( a'4) b'4 ( a'4) b'4 ( cis''4 b'4 a'4) a'4 ( a'4) ~ a'4 ( e'4) \divisioMinima
 fis'4 ( gis'4 fis'4 cis''4 \forceBreak
) b'4 ( cis''4 b'4) cis''4 ( a'4) ~ a'4 ( b'4 a'4) b'4 ( a'4) ~ a'4 ( gis'4) \divisioMaior
 a'4 ( fis'4) a'4 ( b'\prall cis''4 b'4 cis''4) cis''4 ( b'4) a'4 ( a'4 fis'4) a'4 ( a'4) cis''4 ( d''4 b'4 a'4) cis''4 ( b'4 a'4 \forceBreak
) b'4 ( a'4) ~ a'4 ( fis'4 e'4) a'4 ( a'4 e'4) \divisioMinima
 a'4 ( b'4 a'4 b'4) cis''4 ( b'4) cis''4 ( d''4 b'4 a'4) b'4 ( cis''4 b'4 cis''4.) e''4 ( cis''4 b'4) cis''4 ( a'4 fis'4.) a'4 ( a'4 a'4) fis'4 ( gis'4 fis'4) \finalis \forceBreak

 e'4 e'4 ( fis'4 a'4) a'4 ( a'4 a'4) a'4 b'4 ( cis''4 a'4 a'4) ~ a'4 ( fis'4 e'4) \divisioMinima
 a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( gis'4 e'4) fis'4 ( e'4.) a'4 ( fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \divisioMaior \forceBreak

 gis'4 ( a'4 \once \tweak #'font-size #-4 b' ) b'4 a'4 a'4 ( gis'4) a'4 ( gis'4) a'4 ( cis''4 b'4) b'4 ( a'4) ~ a'4 ( gis'4 fis'4) gis'4 ( fis'4) \divisioMinima
 a'4 ( fis'4) a'4 ( a'4 fis'4 e'4) fis'4 ( gis'\prall a'4 gis'4 \forceBreak
) a'4 ( a'4) ~ a'4 ( gis'4 fis'4) a'4 ( e'4) fis'4 ( e'4 d'4) e'4 ( d'4) \divisioMaxima
 e'4 d'4 ( cis'4 d'\prall e'4 d'4) e'4 ( fis'4) e'4 d'4 fis'4 a'4 b'4 ( a'4 e'4 fis'4) \divisioMinima \forceBreak

 fis'4 ( gis'\prall a'4 b'4 a'4 e'4 fis'4.) a'4 ( b'4 fis'4) \divisioMinima
 b'4 cis''4 ( gis'4) a'4 ( b'4 a'4 gis'4 fis'4) \divisioMinima
 b'4 cis''4 ( gis'4) a'4 ( b'4 a'4 gis'4 fis'4.) a'4 ( gis'4 a'4 fis'4 e'4) \divisioMinima
 b'4 ( a'4) b'4 ( cis''4 b'4 a'4 \forceBreak
) a'4 ( a'4) ~ a'4 ( fis'4 e'4) fis'4 ( fis'4 e'4) fis'4 ( fis'4) \divisioMinima
 e'4 ( fis'4) a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 gis'4 fis'4) a'4 ( e'4) fis'4 ( e'4 d'4) e'4 ( d'4) \divisioMaior
 e'4 ( fis'4) a'4 ( gis'4 \forceBreak
) a'4 ( b'4) b'4 ( cis''4 b'4 a'4) ~ a'4 ( gis'4) a'4. \divisioMinima
 b'4 ( cis''4 b'4 a'4) ~ a'4 ( gis'4) b'4. d''4 ( d''4) ~ d''4 ( a'4) b'4 ( cis''4 b'4 gis'4.) a'4 ( b'4 gis'4) a'4 ( fis'4 e'4) fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
cis'2*3/2 ~ cis'2 ~ cis'2*3/2 ~ cis'2*3/2 ~ cis'2 \divisioMinima
d'2*3/2 e'2*4/2 d'2*4/2 e'2*3/2 \divisioMinima
cis'2 d'2 cis'2*3/2 ~ cis'2*5/4 ~ cis'2*3/2 b2 ~ b4 ~ \divisioMaior
b4 e'2*3/2 d'2*3/2 e'2 d'2*3/2 fis'2*3/2 e'2*4/2 d'2*4/2 fis'2*3/2 ~ fis'2*3/2 e'2 ~ e'4 ~ \divisioMinima
e'2 ~ e'2*3/2 ~ e'2*5/4 ~ e'2*4/2 ~ e'2*3/2 ~ \divisioMaxima
e'2*3/2 ~ e'2*4/2 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 fis'2 ~ fis'2 ~ fis'2*4/2 e'2 ~ e'2 \divisioMinima
cis'2*4/2 d'2*4/2 fis'2*3/2 ~ fis'2 e'2*3/2 \divisioMaior
cis'2 e'2*5/2 ~ e'2 cis'2*3/2 e'2 d'2*4/2 fis'2*4/2 e'2 d'2 e'2*3/2 \divisioMinima
cis'2*4/2 fis'2 ~ fis'2*4/2 e'2 ~ e'2*5/4 ~ e'2*3/2 ~ e'2*7/4 d'2*3/2 cis'2 ~ cis'4 \finalis
r4 cis'2*3/2 ~ cis'2*3/2 fis'4 ~ fis'2*4/2 e'2 ~ e'4 \divisioMinima
cis'2 d'2 cis'2*3/2 ~ cis'2*5/4 ~ cis'2*3/2 b2 ~ b4 \divisioMaior
e'2*3/2 ~ e'2 ~ e'2 ~ e'2 fis'2*4/2 e'2 ~ e'2 cis'2 \divisioMinima
d'2 e'2*3/2 ~ e'4 d'2*4/2 cis'2 fis'2 ~ fis'4 cis'2 ~ cis'2*3/2 a2 ~ \divisioMaxima
a4 b2*5/2 cis'2*3/2 d'2*3/2 e'2*4/2 \divisioMinima
fis'2*3/2 e'2*9/4 d'2 cis'4 ~ \divisioMinima
cis'4 ~ cis'2 ~ cis'2*5/2 ~ \divisioMinima
cis'4 ~ cis'2 e'2*4/2 ~ e'2*3/4 d'2 b2 ~ b4 \divisioMinima
e'2 ~ e'2*4/2 cis'2 d'2*3/2 b2*3/2 cis'2 ~ \divisioMinima
cis'2 ~ cis'2 ~ cis'2 fis'2*3/2 ~ fis'4 e'2 cis'2*3/2 b2 \divisioMaior
cis'2 e'2 ~ e'2 d'2*3/2 e'2*3/2 cis'2*3/4 \divisioMinima
fis'2*3/2 e'2*3/2 ~ e'2*3/4 d'2 fis'2 e'2*9/4 ~ e'2*3/2 cis'2*3/2 d'2 b2 ~ b4 \finalis
}

tenorMusic = {
a2*3/2 ~ a2 ~ a2*3/2 gis2*3/2 b4 a4 ~ \divisioMinima
a2*3/2 ~ a2*4/2 ~ a2*4/2 ~ a2*3/2 ~ \divisioMinima
a2 b2 ~ b2*3/2 a2*5/4 ~ a2*3/2 ~ a2 gis4 ~ \divisioMaior
gis4 a2*3/2 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ a2*3/2 gis2*4/2 fis2*4/2 ~ fis2*3/2 b2*3/2 a2 gis4 \divisioMinima
fis2 gis2*3/2 ~ gis2*5/4 fis2*4/2 cis'2*3/2 \divisioMaxima
b2*3/2 a2*4/2 b2*3/2 cis'2 ~ cis'2*3/2 ~ cis'2 ~ cis'2 fis2*4/2 a2 ~ a2 ~ \divisioMinima
a2*4/2 fis2*4/2 ~ fis2*3/2 cis'2 b2*3/2 \divisioMaior
a2 ~ a2*5/2 gis2 fis2*3/2 ~ fis2 ~ fis2*4/2 a2*4/2 ~ a2 ~ a2 ~ a2*3/2 ~ \divisioMinima
a2*4/2 ~ a2 ~ a2*4/2 ~ a2 gis2*5/4 ~ gis2*3/2 a2*7/4 b2*3/2 ~ b2 a4 ~ \finalis
a4 ~ a2*3/2 ~ a2*3/2 ~ a4 fis2*4/2 a2*3/2 ~ \divisioMinima
a2 b2 ~ b2*3/2 a2*5/4 ~ a2*3/2 ~ a2 gis4 \divisioMaior
b2*3/2 cis'2 b2 a2 ~ a2*4/2 ~ a2 b2 a2 ~ \divisioMinima
a2 ~ a2*4/2 ~ a2*4/2 ~ a2 ~ a2*3/2 ~ a2 ~ a2*3/2 fis2 ~ \divisioMaxima
fis4 ~ fis2*5/2 a2*3/2 ~ a2*3/2 ~ a2*4/2 ~ \divisioMinima
a2*3/2 ~ a2*9/4 b2 a4 \divisioMinima
gis4 ~ gis2 fis2*5/2 \divisioMinima
gis4 ~ gis2 e2*4/2 a2*3/4 ~ a2 ~ a2 gis4 \divisioMinima
fis2 gis2*4/2 a2 b2*3/2 gis2*3/2 a2 \divisioMinima
b2 a2 ~ a2 ~ a2*4/2 ~ a2 ~ a2*3/2 fis2 \divisioMaior
a2 ~ a2 fis2 ~ fis2*3/2 b2*3/2 a2*3/4 ~ \divisioMinima
a2*3/2 b2*3/2 gis2*3/4 fis2 a2 gis2*9/4 e2*3/2 fis2*3/2 a2 ~ a2 gis4 \finalis
}

bassMusic = {
r2*3/2 gis2 fis2*3/2 cis2*3/2 fis2 \divisioMinima
d2*3/2 cis2*4/2 b,2*4/2 cis2*3/2 \divisioMinima
fis2 ~ fis2 ~ fis2*3/2 ~ fis2*5/4 d2*3/2 e2 ~ e4 ~ \divisioMaior
e4 cis2*3/2 b,2*3/2 cis2 fis2*3/2 d2*3/2 e2*4/2 b,2*4/2 d2*3/2 ~ d2*3/2 e2 ~ e4 ~ \divisioMinima
e2 ~ e2*3/2 cis2*5/4 ~ cis2*4/2 ~ cis2*3/2 ~ \divisioMaxima
cis2*3/2 ~ cis2*4/2 ~ cis2*3/2 ~ cis2 gis2*3/2 fis2 e2 d2*4/2 ~ d2 cis2 \divisioMinima
a,2*4/2 b,2*4/2 d2*3/2 ~ d2 e2*3/2 \divisioMaior
fis2 cis2*5/2 e2 ~ e2*3/2 cis2 b,2*4/2 d2*4/2 cis2 b,2 cis2*3/2 \divisioMinima
fis2*4/2 d2 b,2*4/2 e2 ~ e2*5/4 cis2*3/2 fis2*7/4 ~ fis2*3/2 ~ fis2 ~ fis4 \finalis
r4 gis2*3/2 fis2*3/2 d4 ~ d2*4/2 cis2*3/2 \divisioMinima
fis2 ~ fis2 ~ fis2*3/2 ~ fis2*5/4 d2*3/2 e2 ~ e4 ~ \divisioMaior
e2*3/2 cis2 ~ cis2 fis2 d2*4/2 cis2 ~ cis2 fis2 ~ \divisioMinima
fis2 cis2*4/2 b,2*4/2 fis2 d2*3/2 cis2 a,2*3/2 d2 \divisioMaxima
cis4 b,2*5/2 a,2*3/2 b,2*3/2 cis2*4/2 \divisioMinima
d2*3/2 cis2*9/4 fis2 ~ fis4 ~ \divisioMinima
fis4 e2 fis2*5/2 ~ \divisioMinima
fis4 e2 cis2*4/2 ~ cis2*3/4 b,2 e2 ~ e4 ~ \divisioMinima
e2 ~ e2*4/2 fis2 ~ fis2*3/2 ~ fis2*3/2 ~ fis2 ~ \divisioMinima
fis2 ~ fis2 e2 d2*4/2 cis2 a,2*3/2 b,2 \divisioMaior
a,2 cis2 ~ cis2 b,2*3/2 cis2*3/2 fis2*3/4 \divisioMinima
d2*3/2 e2*3/2 ~ e2*3/4 b,2 ~ b,2 cis2*9/4 ~ cis2*3/2 a,2*3/2 b,2 e2 ~ e4 \finalis
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
        "VII"
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
