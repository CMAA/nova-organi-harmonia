\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.237
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ab occultis meis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ab occultis meis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ab occultis meis" }
    \line {}
  }
}

chantText = \lyricmode {
Ab oc -- cúl -- tis 
\set stanza = " * " me -- _ _ _ is 
mun -- _ da me _ Dó -- _ mi -- ne: _ _ _ _ _ 
et ab a -- li -- é -- _ _ _ _ nis _ _ _ _ _ 
par -- ce ser -- _ vo tu -- _ o. _ _ _ _ _ _ _ ℣. 
Si me -- i non fú -- e -- rint do -- mi -- ná -- _ _ _ _ _ _ _ _ _ ti 
tunc im -- ma -- cu -- lá -- tus e -- _ _ _ _ _ _ _ _ ro: 
et e -- mun -- dá -- _ _ _ bor _ _ _ _ _ 
a de -- lí -- _ cto 
\set stanza = " * " má -- xi -- mo. _ _ _ }

chantMusic = {
\tieDown   cis'4 cis'4 e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4  a'4 ( fis'4 gis'4) a'4 ( fis'4 e'4) gis'4 ( e'4) fis'4 ( gis'4) fis'4 \divisioMaior
 a'4 ( fis'4) a'4 ( b'4 cis''4) a'4 ( gis'4 fis'4 \forceBreak
)  fis'4 ( e'4) g'4 ( fis'4 e'4) \divisioMinima
 e'4 ( d'4) fis'4 ( e'4 fis'4) fis'4 ( e'4 fis'4) fis'4 ( d'4) e'4 ( fis'4) a'4 ( a'4 fis'4 e'4.) fis'4 ( gis'\prall a'4) b'4 ( a'4 a'4) fis'4 ( gis'4 fis'4) \divisioMaxima \forceBreak

 a'4 ( a'4) a'4 a'4 a'4 a'4 ( gis'4) a'4 ( b'4 cis''4 a'4 gis'4) a'4 ( a'4 gis'4) \divisioMinima
 b'4 ( a'4) b'4 ( a'4 fis'4) fis'4 ( a'4 fis'4 e'4) fis'4 ( a'4) ~ a'4 ( fis'4 \forceBreak
) a'4 ( a'4 gis'4 fis'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima
 d'4 ( e'4 fis'4) fis'4 fis'4 a'4 ( gis'4 fis'4 gis'4) e'4 ( fis'4) a'4 ( fis'4) a'4 ( b'4) b'4 ( a'4) b'4 ( cis''4 b'4 a'4) \divisioMinima \forceBreak

 cis''4 ( a'4) cis''4 ( d''4 b'4 gis'4) a'4 ( fis'4 e'4.) fis'4 ( gis'\prall a'4 b'4.) a'4 ( b'4 cis''4) \divisioMinima
 b'4 ( cis''4 b'4 cis''4 a'4 fis'4 gis'\prall a'4 fis'4) \finalis
 fis'4 a'4 \forceBreak
 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 ( cis''4) cis''4 ( b'4 a'4 gis'4) a'4 ( fis'4 e'4) \divisioMinima
 gis'4 ( e'4) fis'4 a'4 ( a'4) b'4 ( cis''4 b'4 cis''4) \divisioMinima \forceBreak

 a'4 ( cis''4 d''4 b'4 gis'4) a'4 ( fis'4 e'4.) fis'4 ( gis'4 fis'4 e'4 fis'4) \divisioMinima
 b'4 ( cis''\prall d''4 cis''4) d''4 ( cis''4 b'4 cis''4) cis''4 ( b'4) \divisioMaxima
 b'4 ( cis''\prall d''4 cis''4 b'4 cis''\prall d''4 cis''4 b'4 \forceBreak
) b'4 b'4 b'4 b'4 b'4 ( cis''4) cis''4 ( a'4) cis''4 ( b'4 a'4) ~ a'4 ( fis'4) a'4 ( a'4 fis'4) a'4. ~ a'4 ( a'4) ~ a'4 ( fis'4) \divisioMinima
 a'4 ( b'4 cis''4 b'4 a'4 \forceBreak
) cis''4 ( b'4 a'4) b'4 ( fis'4) fis'4 \divisioMaxima
 a'4 ( a'4) a'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( a'4 gis'4 e'4) fis'4 ( a'4 gis'4 e'4) fis'4 ( a'4) \divisioMinima
 gis'4 ( b'4 cis''4 a'4 fis'4 \forceBreak
) fis'4 ( a'4 fis'4 e'4) fis'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 gis'4 fis'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima
 d'4 e'4 ( fis'4) fis'4 a'4 ( gis'4 fis'4 gis'4) e'4 ( fis'4)  a'4 ( fis'4) a'4 ( b'4 \forceBreak
) b'4 ( cis''4 a'4 gis'4) a'4 ( b'4) \divisioMinima
 e'4 ( fis'4 a'4) ~ a'4 ( cis''4 b'4 a'4 gis'4 fis'4 gis'\prall a'4 fis'4) \finalis

}

altoMusic = {
cis'2 b2 ~ b4 cis'2*3/2 ~ cis'2*3/2 ~ cis'2 ~ cis'2*3/2 \divisioMaior
fis'2 e'2*6/2 b2 ~ b2*3/2 ~ \divisioMinima
b2*5/2 cis'2*3/2 d'2*4/2 e'2*9/4 cis'2*6/2 ~ cis'2 ~ cis'4 ~ \divisioMaxima
cis'2*3/2 d'2 e'2*7/2 ~ e'2*3/2 \divisioMinima
fis'2*5/2 cis'2*5/2 ~ cis'2*3/2 e'2*5/2 ~ e'4 r2 \divisioMaxima
d'2*4/2 cis'4 b2*4/2 e'2 ~ e'2*4/2 fis'2 e'2*4/2 ~ \divisioMinima
e'2 d'2*4/2 cis'2*7/4 ~ cis'2*3/2 fis'2*3/4 e'2*3/2 \divisioMinima
fis'2 ~ fis'2*3/2 cis'2 ~ cis'2 \finalis
fis'2 ~ fis'2*3/2 ~ fis'2*3/2 e'4 ~ e'2 ~ e'2*7/2 ~ \divisioMinima
e'2*3/2 ~ e'2 ~ e'2*4/2 ~ \divisioMinima
e'2 d'2*3/2 cis'2 ~ cis'2*3/4 ~ cis'2*5/2 \divisioMinima
fis'2*4/2 ~ fis'2*4/2 e'2 \divisioMaxima
fis'2*4/2 ~ fis'2*5/2 ~ fis'2*3/2 ~ fis'4 ~ fis'2 ~ fis'2*4/2 ~ fis'2 ~ fis'4 e'2*3/2 ~ e'2*3/4 d'2 cis'2 \divisioMinima
e'2*5/2 fis'2*3/2 ~ fis'2 ~ fis'4 \divisioMaxima
e'2*3/2 d'2 e'2*4/2 ~ e'2*6/2 ~ \divisioMinima
e'2*5/2 cis'2*5/2 d'2*3/2 cis'2*5/2 r2*3/2 \divisioMaxima
d'4 ~ d'2 e'4 ~ e'2*4/2 ~ e'2 cis'2*4/2 fis'2*4/2 e'2 \divisioMinima
d'2 e'2*4/2 ~ e'2 cis'2 ~ cis'2 \finalis
}

tenorMusic = {
a2 ~ a2 gis4 r2*3/2 a2*3/2 b2 a2*3/2 ~ \divisioMaior
a2 ~ a2*6/2 ~ a2 gis2*3/2 \divisioMinima
fis2*5/2 a2*3/2 ~ a2*4/2 ~ a2*9/4 ~ a2*6/2 b2 a4 ~ \divisioMaxima
a2*3/2 ~ a2 ~ a2*7/2 b2*3/2 ~ \divisioMinima
b2*5/2 ~ b2*5/2 a2*3/2 ~ a2*5/2 ~ a2 b4 \divisioMaxima
a2*4/2 fis4 ~ fis2*4/2 gis2 a2*4/2 ~ a2 ~ a2*4/2 ~ \divisioMinima
a2 ~ a2*4/2 ~ a2*7/4 ~ a2*3/2 ~ a2*3/4 ~ a2*3/2 ~ \divisioMinima
a2 b2*3/2 ~ b2 a2 \finalis
fis'2 e'2*3/2 d2*3/2 d'4 cis'2 ~ cis'2*7/2 \divisioMinima
b2*3/2 fis2 gis2*4/2 \divisioMinima
a2 ~ a2*3/2 ~ a2 gis2*3/4 a2*5/2 ~ \divisioMinima
a2*4/2 ~ a2*4/2 gis2 \divisioMaxima
d'2*4/2 ~ d'2*5/2 ~ d'2*3/2 cis'4 d'2 cis'2*4/2 ~ cis'2*3/2 ~ cis'2*3/2 a2*3/4 ~ a2 ~ a2 ~ \divisioMinima
a2*5/2 ~ a2*3/2 ~ a2 b4 \divisioMaxima
a2*3/2 ~ a2 ~ a2*4/2 ~ a2*6/2 \divisioMinima
b2*5/2 ~ b2*5/2 a2*3/2 ~ a2*5/2 ~ a2*3/2 ~ \divisioMaxima
a2*3/2 ~ a4 b2*4/2 a2 ~ a2*4/2 ~ a2*4/2 ~ a2 ~ \divisioMinima
a2 ~ a2*4/2 b2 ~ b2 a2 \finalis
}

bassMusic = {
r2*5/2 fis2*3/2 ~ fis2*3/2 ~ fis2 ~ fis2*3/2 \divisioMaior
d2 cis2*6/2 e2 ~ e2*3/2 \divisioMinima
b,2*5/2 ~ b,2*3/2 ~ b,2*4/2 cis2*9/4 fis2*6/2 ~ fis2 ~ fis4 ~ \divisioMaxima
fis2*3/2 ~ fis2 cis2*7/2 e2*3/2 \divisioMinima
d2*5/2 fis2*5/2 ~ fis2*3/2 cis2*5/2 b,2 ~ b,4 \divisioMaxima
fis2*4/2 e4 d2*4/2 cis2 ~ cis2*4/2 d2 cis2*4/2 ~ \divisioMinima
cis2 b,2*4/2 fis2*7/4 e2*3/2 d2*3/4 cis2*3/2 \divisioMinima
d2 ~ d2*3/2 fis2 ~ fis2 \finalis
r2*11/2 a2*7/2 \divisioMinima
e2*3/2 ~ e2 ~ e2*4/2 \divisioMinima
fis2 ~ fis2*3/2 ~ fis2 ~ fis2*3/4 ~ fis2*5/2 \divisioMinima
d2*4/2 b,2*4/2 e2 \divisioMaxima
r2*4/2 b2*5/2 ~ b2*3/2 ~ b4 ~ b2 a2*4/2 fis2*3/2 ~ fis2*3/2 ~ fis2*3/4 ~ fis2 ~ fis2 \divisioMinima
cis2*5/2 d2*3/2 ~ d2 ~ d4 \divisioMaxima
cis2*3/2 b,2 cis2*4/2 ~ cis2*6/2 ~ \divisioMinima
cis2*5/2 fis2*5/2 ~ fis2*3/2 ~ fis2*5/2 ~ fis2*3/2 \divisioMaxima
b,2*3/2 cis4 ~ cis2*4/2 ~ cis2 fis2*4/2 d2*4/2 cis2 \divisioMinima
b,2 cis2*4/2 ~ cis2 fis2 ~ fis2 \finalis
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
