\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.180
%(volume.page)

global = {
 \key fis \minor
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
Bo -- num est _ _ _ _ 
\set stanza = " * " 
con -- fi -- té -- ri Dó -- mi -- no _ _ _ _ _ 
et psál -- _ le -- re nó -- mi -- ni tu -- o Al -- tís -- _ _ si -- me. _ ℣. 
Ad an -- nun -- ti -- án -- dum ma -- _ _ _ ne 
mi -- se -- ri -- cór -- di -- am tu -- am, _ _ _ _ 
et ve -- ri -- tá -- tem tu -- _ am _ _ per no -- ctem. _ ℣. 
Qui -- a de -- le -- ctá -- sti me, Dó -- mi -- _ ne, 
in fa -- ctú -- ra tu -- _ _ a, _ _ _ _ 
et in o -- pé -- ri -- bus _ _ _ má -- _ nu -- um tu -- á -- _ _ rum 
\set stanza = " * " ex -- sul -- _ tá -- bo. _ _ _ _ _ _ }

chantMusic = {
\tieDown   fis'4 e'4 ( fis'4 e'4 cis'4) e'4 ( fis'4.) e'4 ( fis'4) a'4 ( gis'4) a'4 ( a'4 gis'4 fis'4) gis'4 ( gis'4 fis'4) \divisioMaior
 e'4 fis'4 a'4 ( a'4 gis'4) b'4 a'4 ( a'4 gis'4) fis'4 ( e'4) e'4 ( fis'4) gis'4 ( fis'4) gis'4 ( gis'4 fis'4) gis'4 ( a'4) b'4 ( fis'4) ~ fis'4 ( e'4) \divisioMaior
 gis'4 ( a'4) fis'4 ( e'4) fis'4 ( gis'\prall a'4 b'4) a'4 ( b'4) a'4 ( gis'4 a'4) b'4 e'4 e'4 fis'4 a'4 ( gis'4) a'4 b'4 ( fis'4) b'4 ( a'4) ~ a'4 ( gis'4 fis'4) e'4 ( fis'4) fis'4 gis'4 ( gis'4 fis'4) \finalis
 e'4 fis'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 a'4 ( b'4 a'4) fis'4 fis'4 ( a'4 gis'4 a'4.) gis'4 ( a'4) cis''4 ( b'4 gis'4) a'4 ( gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMaior
 fis'4 fis'4 a'4 ( gis'4) a'4 ( b'4) a'4 ( gis'4 e'4) fis'4 gis'4 ( fis'4 gis'4) fis'4 ( e'4) gis'4 ( gis'4 fis'4) gis'4 ( a'4) b'4 ( fis'4) ~ fis'4 ( e'4) \divisioMaxima
 e'4 gis'4 ( a'4) fis'4 fis'4 ( gis'4) fis'4 fis'4 ( e'4) fis'4 ( gis'\prall a'4 b'4) a'4 ( b'4 a'4 gis'4) a'4 ( gis'4 fis'4 e'4) fis'4 ( e'4) \divisioMinima
 fis'4 ( a'4 fis'4) a'4 ( a'4 gis'4 fis'4) fis'4 gis'4 ( gis'4 fis'4) \finalis
 fis'4 gis'4 e'4 fis'4 a'4 a'4 ( a'4 b'4) fis'4 a'4 ( b'4) b'4 ( a'4 gis'4) a'4 ( gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMaior
 fis'4 a'4 ( \once \tweak #'font-size #-4 gis' ) a'4 fis'4 fis'4 a'4 ( a'4) ~ a'4 ( a'4 a'4) fis'4 ( e'4) gis'4 ( gis'4 fis'4) gis'4 ( a'4) b'4 ( fis'4) ~ fis'4 ( e'4) \divisioMaxima
 fis'4 cis'4 cis'4 e'4 ( fis'4) fis'4 ( e'4) fis'4 a'4 ( a'4) ~ a'4 ( fis'4 e'4) fis'4 ( e'4 fis'4) \divisioMinima
 e'4 ( fis'4) a'4 ( a'4 b'4) a'4 a'4 a'4 ( b'4) a'4 b'4 ( a'4) ~ a'4 ( e'4) fis'4 ( gis'\prall a'4 gis'4) \divisioMinima
 a'4 gis'4 ( a'4) b'4 ( a'4 b'4) fis'4 fis'4 ( e'4) fis'4 a'4 ( a'4) b'4 ( cis''4 b'4 gis'4 a'4) \divisioMinima
 gis'4 ( a'4) cis''4 ( b'4 a'4) ~ a'4 ( gis'4 fis'4) gis'4 ( gis'4 fis'4) \finalis

}

altoMusic = {
a4 b2*5/2 cis'2*3/4 ~ cis'2 ~ cis'2 ~ cis'2*4/2 ~ cis'2*3/2 \divisioMaior
e'2 d'2*4/2 e'2*3/2 cis'2 ~ cis'2*4/2 d'2*3/2 ~ d'2*3/2 b2 ~ b4 \divisioMaior
e'2 d'2 cis'2*4/2 d'2 e'2*3/2 b2 ~ b4 cis'2*4/2 b2 cis'2 ~ cis'2*3/2 ~ cis'2 ~ cis'4 ~ cis'2 ~ cis'4 ~ \finalis
cis'2 d'2*3/2 e'2*3/2 d'4 cis'2*3/2 ~ cis'2*7/4 ~ cis'2*3/2 ~ cis'2*4/2 ~ cis'2 \divisioMaior
d'2 e'2 d'2 e'2 ~ e'4 cis'4 ~ cis'2*3/2 b2 r2*3/2 e'2*3/2 r2*3/2 \divisioMaxima
e'4 ~ e'2 cis'4 ~ cis'2*3/2 b2 cis'2*4/2 d'2*4/2 e'2*4/2 r2 \divisioMinima
cis'2*3/2 d'2*4/2 cis'4 ~ cis'2 ~ cis'4 ~ \finalis
cis'2 d'2 e'4 ~ e'2*3/2 d'4 ~ d'2 e'2*3/2 cis'2*4/2 ~ cis'2 ~ \divisioMaior
cis'4 d'2 e'2 d'4 ~ d'2 cis'2*3/2 b2 cis'2*3/2 ~ cis'2*3/2 b2*3/2 \divisioMaxima
cis'4 ~ cis'2 b2 ~ b2 cis'4 ~ cis'2 ~ cis'2*3/2 b2 a4 \divisioMinima
b2 cis'2*3/2 ~ cis'2 d'2 e'2 ~ e'2 ~ e'4 d'2 ~ d'2 \divisioMinima
e'2*3/2 d'2*3/2 ~ d'4 ~ d'2*3/2 e'2 fis'2*3/2 e'2 ~ \divisioMinima
e'2 ~ e'2 cis'2*4/2 ~ cis'2*3/2 \finalis
}

tenorMusic = {
fis4 gis2*5/2 a2*3/4 ~ a2 ~ a2 b2*4/2 a2*3/2 ~ \divisioMaior
a2 ~ a2*4/2 ~ a2*3/2 gis2 b2*4/2 ~ b2*3/2 a2*3/2 ~ a2 gis4 \divisioMaior
a2 ~ a2 ~ a2*4/2 ~ a2 ~ a2*3/2 ~ a2 gis4 fis2*4/2 ~ fis2 ~ fis2 ~ fis2*3/2 gis2 a4 b2 a4 \finalis
r2 b2*3/2 cis'2*3/2 b4 a2*3/2 ~ a2*7/4 gis2*3/2 fis2*4/2 b4 a4 ~ \divisioMaior
a2 ~ a2 ~ a2 b2*3/2 a4 b2*3/2 ~ b2 cis'2*3/2 ~ cis'2*3/2 ~ cis'2*3/2 ~ \divisioMaxima
cis'4 b2 ~ b4 a2*3/2 b2 a2*4/2 b2*4/2 cis'2*4/2 b2 ~ \divisioMinima
b2*3/2 a2*5/2 b2 a4 ~ \finalis
a2 b2 cis'4 ~ cis'2*3/2 b4 ~ b2 ~ b2*3/2 cis'2*4/2 b4 a4 ~ \divisioMaior
a4 b2 cis'2 b4 ~ b2 a2*3/2 b2 ~ b2*3/2 a2*3/2 gis2*3/2 \divisioMaxima
a2*3/2 ~ a2 gis2 a4 ~ a2 ~ a2*3/2 gis2 fis4 \divisioMinima
gis2 fis2*3/2 ~ fis2 ~ fis2 e2 a2*3/2 ~ a2 b2 \divisioMinima
a2*3/2 ~ a2*3/2 b4 a2*3/2 ~ a2 ~ a2*3/2 ~ a2 \divisioMinima
cis'2 a2 ~ a2*4/2 b2 a4 \finalis
}

bassMusic = {
r2*15/4 gis2 fis2 ~ fis2*4/2 ~ fis2*3/2 \divisioMaior
cis2 b,2*4/2 cis2*3/2 ~ cis2 ~ cis2*4/2 b,2*3/2 ~ b,2*3/2 e2 ~ e4 \divisioMaior
cis2 b,2 a,2*4/2 b,2 cis2*3/2 e2 ~ e4 ~ e2*4/2 d2 e2 fis2*3/2 ~ fis2 ~ fis4 ~ fis2 ~ fis4 \finalis
a2 ~ a2*3/2 ~ a2*3/2 ~ a4 ~ a2*3/2 fis2*7/4 a2*3/2 fis2*4/2 ~ fis2 \divisioMaior
d2 cis2 b,2 cis2*3/2 fis4 ~ fis2*3/2 gis2 a2*3/2 b2*3/2 cis'2*3/2 \divisioMaxima
cis4 ~ cis2 fis4 ~ fis2*3/2 gis2 a2*4/2 ~ a2*4/2 ~ a2*4/2 gis2 \divisioMinima
fis2*3/2 ~ fis2*5/2 ~ fis2 ~ fis4 \finalis
r2*5/2 b2*3/2 ~ b4 a2 gis2*3/2 fis2*4/2 ~ fis2 \divisioMaior
a4 ~ a2 ~ a2 b4 a2 ~ a2*3/2 gis2 fis2*3/2 ~ fis2*3/2 gis2*3/2 \divisioMaxima
r2*8/2 gis2 fis2*3/2 ~ fis2 ~ fis4 ~ \divisioMinima
fis2 ~ fis2*3/2 e2 d2 cis2 ~ cis2*3/2 b,2 ~ b,2 \divisioMinima
cis2*3/2 b,2*3/2 ~ b,4 ~ b,2*3/2 cis2 d2*3/2 cis2 ~ \divisioMinima
cis2 ~ cis2 fis2*4/2 ~ fis2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Tract"
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
