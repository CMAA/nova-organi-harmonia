\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.94
%(volume.page)

global = {
 \key d \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exaltabo te" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exaltabo te"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exaltabo te" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- _ _ _ ia. 
\set stanza = " * " 
_ _ _ _ _ _ _ _ _ _ _ _ _ ℣ 
Ex -- al -- tá -- bo te, De -- us me -- us _ _ Rex, 
et be -- ne -- dí -- _ _ cam nó -- mi -- _ _ _ _ _ _ ni san -- cto tu -- o Je -- _ _ _ _ su, 
in _ _ sǽ -- cu -- _ lum 
et in _ _ sǽ -- _ _ cu -- lum 
\set stanza = " * " 
sǽ -- _ _ _ _ _ _ _ _ _ _ _ _ cu -- _ li. }

chantMusic = {
\tieDown   d'4 d'4 ( fis'4) a'4 ( a'4 gis'4) a'4 ( gis'4 fis'4) e'4 a'4 ( a'4) ~ a'4 ( gis'4 fis'4) gis'4 ( a'4 b'4) a'4 ( b'4 a'4 gis'4 fis'4) \divisioMaior
 a'4 ( gis'4 a'4) fis'4 ( b'4 a'4 b'4. \forceBreak
) a'4 ( cis''4 b'4) cis''4 ( b'4 a'4) ~ a'4 ( gis'4 fis'4 e'4) a'4. \divisioMinima
 fis'4 ( d'4) fis'4 ( e'4) a'4. b'4 ( a'4) ~ a'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 fis'4 ( gis'4 fis'4) a'4 ( a'4) b'4 ( fis'4 d'4 e'4) ~ e'4 ( d'4) \finalis \forceBreak

 fis'4 d'4 fis'4 a'4 b'4 \divisioMinima
 a'4 b'4 a'4 b'4 ( gis'4) a'4 ( b'4 a'4 gis'4) a'4 ( gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMaior
 fis'4 ( e'4) a'4 b'4 ( cis''4 \forceBreak
) cis''4 ( b'4 a'4) ~ a'4 ( gis'4 fis'4) b'4 ( cis''4 b'4 a'4) b'4 ( a'4) \divisioMinima
 fis'4 ( b'4 a'4 b'4) cis''4 ( b'4) ~ b'4 ( a'4) b'4 ( b'4) a'4 ( a'4) ~ a'4 ( gis'4 e'4) fis'4 ( e'4 \forceBreak
) fis'4 ( gis'\prall a'4 gis'4 fis'4 gis'4) gis'4 ( fis'4) fis'4 ( \once \tweak #'font-size #-4 gis' ) fis'4 fis'4 ( gis'4) fis'4 \divisioMinima
 fis'4 ( e'4) fis'4 a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( e'4) ~ e'4 ( d'4) d'4 ( e'4) \divisioMaior
 e'4 ( fis'4 e'4 \forceBreak
) fis'4 ( e'4 d'4) e'4 ( fis'4) a'4 a'4 b'4 ( b'4 a'4) a'4 \divisioMaior
 d'4 d'4 ( e'4) a'4 ( a'4 gis'4) a'4 ( gis'4 fis'4) e'4 a'4 ( a'4) ~ a'4 ( gis'4 fis'4) gis'4 ( a'4 b'4 \forceBreak
) a'4 ( b'4 a'4 gis'4 fis'4) \divisioMaior
 a'4 ( gis'4 a'4) fis'4 ( b'4 a'4 b'4.) a'4 ( cis''4 b'4) cis''4 ( b'4 a'4) ~ a'4 ( gis'4 fis'4 e'4) a'4. \divisioMinima
 fis'4 ( d'4) fis'4 ( e'4) a'4. b'4 ( a'4) ~ a'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \divisioMinima \forceBreak

 fis'4 ( gis'4 fis'4) a'4 ( a'4) b'4 ( fis'4 d'4) d'4 ( e'4) ~ e'4 ( d'4) d'4 \finalis

}

altoMusic = {
d'4 ~ d'2 e'2*3/2 ~ e'2*4/2 ~ e'2 d'2*6/2 cis'2*4/2 ~ cis'4 ~ \divisioMaior
cis'2*3/2 d'2*9/4 e'2*3/2 fis'2 e'2*5/2 ~ e'2*3/4 \divisioMinima
d'2*4/2 e'2*5/4 ~ e'2*3/2 b2 ~ b4 \divisioMinima
d'2*3/2 e'2 d'2*3/2 a2*3/2 \finalis
d'2 ~ d'2 ~ d'4 \divisioMinima
e'2*3/2 d'2*6/2 cis'2*4/2 ~ cis'2 \divisioMaior
d'2 e'2*3/2 ~ e'2 d'2*4/2 fis'2*4/2 e'2 \divisioMinima
d'2*5/2 e'2*5/2 ~ e'2 ~ e'2*3/2 cis'2 ~ cis'2*6/2 ~ cis'2 ~ cis'2*3/2 ~ cis'2 ~ cis'4 ~ \divisioMinima
cis'2*3/2 ~ cis'2 ~ cis'2*3/2 a2*3/2 b2 ~ \divisioMaior
b2*3/2 d'2*5/2 e'2 fis'2*3/2 ~ fis'4 \divisioMaior
d'4 ~ d'2 e'2*3/2 d'2*4/2 e'2 ~ e'2*6/2 cis'2*4/2 ~ cis'4 \divisioMaior
d'2*3/2 e'2*9/4 fis'2*5/2 e'2*5/2 ~ e'2*3/4 \divisioMinima
d'2*4/2 e'2*5/4 ~ e'2*3/2 r2*3/2 \divisioMinima
cis'2*3/2 e'2 d'2*3/2 ~ d'4 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
r4 a2 ~ a2*3/2 b2*4/2 a2 ~ a2*6/2 ~ a2 b2 a4 ~ \divisioMaior
a2*3/2 ~ a2*9/4 ~ a2*3/2 ~ a2 ~ a2*5/2 ~ a2*3/4 ~ \divisioMinima
a2*4/2 ~ a2*5/4 b2*3/2 a2 gis4 \divisioMinima
a2*3/2 ~ a2 ~ a2*3/2 fis2*3/2 \finalis
a2 fis2 ~ fis4 \divisioMinima
e2*3/2 fis2*6/2 ~ fis2*4/2 b4 a4 ~ \divisioMaior
a2 ~ a2*3/2 ~ a2 ~ a2*4/2 ~ a2*4/2 ~ a2 ~ \divisioMinima
a2*5/2 ~ a2*5/2 b2 ~ b2*3/2 a2 ~ a2*6/2 b2 a2*3/2 gis2 a4 ~ \divisioMinima
a2*3/2 ~ a2 ~ a2*3/2 ~ a2*3/2 fis4 gis4 \divisioMaior
a2*3/2 ~ a2*5/2 ~ a2 ~ a2*3/2 b4 ~ \divisioMaior
b4 a2 ~ a2*3/2 ~ a2*4/2 ~ a2 b2*6/2 ~ b2*4/2 a4 ~ \divisioMaior
a2*3/2 ~ a2*9/4 ~ a2*5/2 ~ a2*5/2 r2*3/4 \divisioMinima
a2*4/2 ~ a2*5/4 b2*3/2 ~ b2*3/2 \divisioMinima
a2*3/2 ~ a2 ~ a2*3/2 g4 ~ g2*3/2 fis4 \finalis
}

bassMusic = {
d4 ~ d2 cis2*3/2 ~ cis2*4/2 ~ cis2 b,2*6/2 fis2 ~ fis2 ~ fis4 ~ \divisioMaior
fis2*3/2 b,2*9/4 cis2*3/2 d2 ~ d2*5/2 cis2*3/4 \divisioMinima
d2*4/2 cis2*5/4 e2*3/2 ~ e2 ~ e4 \divisioMinima
d2*3/2 cis2 b,2*3/2 d2*3/2 ~ \finalis
d2 ~ d2 ~ d4 \divisioMinima
cis2*3/2 b,2*6/2 fis2*4/2 ~ fis2 \divisioMaior
d2 cis2*3/2 fis,2 gis,2*4/2 d2*4/2 cis2 \divisioMinima
b,2*5/2 cis2*5/2 ~ cis2 e2*3/2 a2 gis2*6/2 fis2 ~ fis2*3/2 ~ fis2 ~ fis4 \divisioMinima
r2*3/2 gis2 fis2*3/2 ~ fis2*3/2 e2 ~ \divisioMaior
e2*3/2 d2*5/2 cis2 d2*3/2 ~ d4 ~ \divisioMaior
d4 ~ d2 cis2*3/2 b,2*4/2 cis2 e2*6/2 fis2*4/2 ~ fis4 \divisioMaior
b,2*3/2 cis2*9/4 d2*5/2 cis2*5/2 ~ cis2*3/4 \divisioMinima
d2*4/2 cis2*5/4 e2*3/2 gis2*3/2 \divisioMinima
fis2*3/2 cis2 b,2*3/2 ~ b,4 d2*3/2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
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
