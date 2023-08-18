\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.208
%(volume.page)

global = {
 \key b \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Bonum est confiteri" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Bonum est confiteri"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Bonum est confiteri" }
    \line {}
  }
}

chantText = \lyricmode {
Bo -- num est _ _ _ _ _ 
\set stanza = " * " 
con -- fi -- té -- _ ri Dó -- mi -- no: _ _ _ 
et psál -- le -- re nó -- _ mi -- ni tu -- _ _ o, 
Al -- tís -- _ si -- me. _ _ _ _ _ _ _ _ ℣. 
Ad an -- nun -- ti -- án -- _ dum ma -- ne _ _ _ _ _ _ _ _ _ _ _ _ 
mi -- se -- ri -- cór -- _ _ _ _ _ di -- am _ _ tu -- _ am, _ _ _ 
et ve -- ri -- tá -- tem tu -- _ _ _ am _ _ _ _ _ 
\set stanza = " * " 
per no -- _ ctem. _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( d'4) d'4 ( e'4) d'4 ( d'4) b4 d'4 ( d'4) e'4 ( cis'4) d'4 ( e'4 b4) cis'4 ( b4) ~ b4 ( a4) \divisioMaior
 d'4 fis'4 \forceBreak
 a'4 ( fis'4) a'4 ( a'4 a'4) a'4 ( gis'4 b'4) b'4 ( a'4) a'4 ( gis'4) a'4 ( a'4 fis'4) \divisioMinima
 a'4 ( a'4 fis'4) a'4 ( b'4 a'4 a'4) fis'4 ( gis'4 fis'4) \divisioMaxima
 fis'4 ( a'4) fis'4 ( a'4 b'4 \forceBreak
) a'4 ( b'4) a'4 ( a'4) \divisioMinima
 fis'4 ( a'4) b'4 ( a'4 b'4) a'4 gis'4 ( a'4) fis'4 ( e'4 fis'4) a'4 ( a'4) b'4 ( a'4 gis'4) a'4 \divisioMaior
 a'4 ( a'4) a'4 ( b'4 a'4 fis'4 \forceBreak
) a'4 ( b'4 a'4 b'4) a'4 ( gis'4) a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 fis'4) \divisioMinima
 d'4 ( e'4 fis'4) a'4 ( a'4) b'4 ( cis''4 gis'4 a'4 fis'4.)  e'4 ( g'4 fis'4 d'4) \finalis \forceBreak

  d'4 fis'4 d'4 fis'4 a'4 b'4 ( cis''4 a'4) a'4 \divisioMinima
 a'4 b'4 ( a'4) ~ a'4 ( e'4.) a'4 ( b'4 a'4) b'4 ( a'4) ~ a'4 ( e'4) \divisioMinima
 a'4 ( b'4) d''4. \forceBreak
 e''4 ( d''4 b'4) cis''4 ( a'4 fis'4) \divisioMinima
 a'4 ( gis'4) b'4 ( cis''4 a'4.) cis''4 ( b'4 a'4) cis''4 ( b'4 a'4) ~ a'4 ( gis'4 fis'4) \divisioMaxima
 a'4 ( a'4) a'4 a'4 b'4 ( a'4) b'4 ( cis''4 a'4. \forceBreak
) b'4 ( a'4) b'4 ( cis''4 b'4 cis''4.) a'4 ( b'4) cis''4 ( b'4 cis''4) cis''4 cis''4 ( a'4) cis''4 ( d''4 b'4) a'4 ( a'4 fis'4) \divisioMinima
 a'4 ( fis'4) a'4 ( a'4 a'4) a'4 ( fis'4 gis'\prall a'4 b'4. \forceBreak
) a'4 ( b'4) cis''4 ( a'4 a'4) b'4 ( b'4 a'4) \divisioMaxima
 a'4 ( a'4) a'4 a'4 a'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( a'4 gis'4 e'4.) fis'4 ( a'4 gis'4 e'4) fis'4 ( a'4) \divisioMinima \forceBreak

 gis'4 ( b'4 cis''4 a'4 fis'4) fis'4 ( a'4 fis'4 e'4) fis'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 gis'4 fis'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima
 a'4 ( a'4) a'4 ( b'4 a'4 fis'4) a'4 ( b'4 a'4 b'4 \forceBreak
) a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 fis'4) \divisioMinima
 d'4 ( e'4 fis'4) a'4 ( a'4) b'4 ( cis''4 gis'4 a'4 fis'4.)  e'4 ( g'4 fis'4 d'4) \finalis

}

altoMusic = {
a'2 a2 ~ a2 b4 ~ b2 a2 b2 ~ b4 r2*4/2 \divisioMaior
d'2 ~ d'2 ~ d'2*3/2 e'2*3/2 cis'2 d'2 cis'2*3/2 \divisioMinima
e'2*3/2 d'2*4/2 cis'2*3/2 ~ \divisioMaxima
cis'2 d'4 ~ d'2 ~ d'2 e'2 \divisioMinima
fis'2 ~ fis'2*4/2 e'2 cis'2*3/2 d'2 e'2*4/2 ~ \divisioMaior
e'2 ~ e'2*4/2 d'2*4/2 cis'2 ~ cis'2 fis'2 e'2 d'2 cis'2*3/2 \divisioMinima
d'2*3/2 e'2 ~ e'2*4/2 d'2*3/4 b2*3/2 a4 d'2 ~ d'4 fis'2 <f' d'>2*3/2 e'4 ~ \divisioMinima
e'2 ~ e'2 ~ e'2*3/4 d'2*4/2 e'2 ~ e'4 \divisioMinima
fis'2 ~ fis'2*3/4 ~ fis'2*3/2 ~ fis'2*3/2 ~ \divisioMinima
fis'2 ~ fis'2*7/4 ~ fis'2*3/2 e'2*3/2 d'2 cis'4 \divisioMaxima
fis'2*4/2 e'2*11/4 d'2*13/4 e'2*6/2 fis'2 ~ fis'2*3/2 ~ fis'2*3/2 \divisioMinima
d'2 cis'2*3/2 ~ cis'2*4/2 fis'2*3/4 e'2 d'2*3/2 e'2*3/2 \divisioMaxima
cis'2 ~ cis'2*3/2 fis'2 e'2 ~ e'2*5/4 cis'2*4/2 ~ cis'2 ~ \divisioMinima
cis'2 ~ cis'2*3/2 ~ cis'2*5/2 d'2*3/2 cis'2*5/2 b2*3/2 \divisioMaxima
cis'2 d'2*4/2 cis'2*4/2 ~ cis'2 fis'2 e'2 d'2 cis'2*3/2 \divisioMinima
d'2*3/2 e'2 ~ e'2*4/2 d'2*3/4 b2*3/2 a4 \finalis
}

tenorMusic = {
fis2 g2 fis2*3/2 ~ fis2*4/2 ~ fis2 d2 e2*3/2 \divisioMaior
fis2 ~ fis2 ~ fis2*3/2 e2*3/2 fis2 b2 a2*3/2 \divisioMinima
fis2*3/2 ~ fis2*4/2 ~ fis2*3/2 \divisioMaxima
a2 ~ a4 fis2 ~ fis2 e2 \divisioMinima
a2 d'2*4/2 b2 a2*3/2 b2 cis'2*4/2 ~ \divisioMaior
cis'2 ~ cis'2*4/2 b2*4/2 ~ b2 a2 ~ a2 ~ a2 fis2 ~ fis2*3/2 ~ \divisioMinima
fis2*3/2 e2 a2*4/2 ~ a2*3/4 g2*3/2 fis4 r2 cis'2*3/2 b2*3/2 cis'4 \divisioMinima
r2*25/4 \divisioMinima
d'2 ~ d'2*3/4 b2*3/2 a2*3/2 \divisioMinima
b2 cis'2*7/4 d'2*3/2 cis'2*3/2 b2 a4 ~ \divisioMaxima
a2*4/2 ~ a2*11/4 ~ a2*13/4 ~ a2*6/2 ~ a2 b2*3/2 cis'2*3/2 \divisioMinima
b2 a2*3/2 fis2*4/2 ~ fis2*3/4 ~ fis2 ~ fis2*3/2 e2*3/2 \divisioMaxima
fis2 ~ fis2*3/2 ~ fis2 g2 b2*5/4 ~ b2*4/2 a2 \divisioMinima
b2 a2*3/2 ~ a2*5/2 fis2*3/2 ~ fis2*5/2 ~ fis2*3/2 ~ \divisioMaxima
fis2 ~ fis2*4/2 ~ fis2*4/2 ~ fis2 ~ fis2 ~ fis2 ~ fis2 ~ fis2*3/2 ~ \divisioMinima
fis2*3/2 e2 a2*4/2 ~ a2*3/4 g2*3/2 fis4 \finalis
}

bassMusic = {
d2 ~ d2 ~ d2*3/2 b,2*4/2 ~ b,2 b2 cis2*3/2 \divisioMaior
d2 cis2 b,2*3/2 cis2*3/2 fis2 ~ fis2 ~ fis2*3/2 \divisioMinima
cis2*3/2 b,2*4/2 a,2*3/2 ~ \divisioMaxima
a,2 b,4 ~ b,2 ~ b,2 cis2 \divisioMinima
d2 ~ d2*4/2 e2 a2*3/2 ~ a2 ~ a2*4/2 \divisioMaior
g2 fis2*4/2 ~ fis2*4/2 ~ fis2 ~ fis2 d2 cis2 b,2 fis,2*3/2 \divisioMinima
b,2*3/2 cis2 ~ cis2*4/2 d2*3/4 ~ d2*3/2 ~ d4 r2*9/2 \divisioMinima
d'2 cis'2*7/4 b2*4/2 cis'2*3/2 ~ \divisioMinima
cis'2 b2*3/4 ~ b2*3/2 fis2*3/2 ~ \divisioMinima
fis2 ~ fis2*7/4 ~ fis2*3/2 ~ fis2*3/2 ~ fis2 ~ fis4 \divisioMaxima
d2*4/2 cis2*11/4 b,2*13/4 cis2*6/2 d2 ~ d2*3/2 fis2*3/2 ~ \divisioMinima
fis2 ~ fis2*3/2 e2*4/2 d2*3/4 cis2 b,2*3/2 cis2*3/2 \divisioMaxima
r2 e2*3/2 d2 cis2 ~ cis2*5/4 fis2*4/2 ~ fis2 ~ \divisioMinima
fis2 ~ fis2*3/2 d2*5/2 b,2*3/2 a,2*5/2 b,2*3/2 \divisioMaxima
fis,2 b,2*4/2 fis2*4/2 e2 d2 cis2 b,2 a,2*3/2 \divisioMinima
b,2*3/2 cis2 ~ cis2*4/2 d2*3/4 ~ d2*3/2 ~ d4 \finalis
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
