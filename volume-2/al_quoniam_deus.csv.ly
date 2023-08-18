\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.209
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Quoniam Deus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Quoniam Deus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Quoniam Deus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ _ ia, 
\set stanza = " * " al -- le -- lú -- _ _ _ ia. _ _ _ _ _ _ _ _ 
_ _ _ _ _ _ _ _ ℣. 
Quó -- ni -- am De -- us ma -- _ _ _ _ _ gnus 
Dó -- _ _ _ _ _ _ _ _ mi -- nus, 
et Rex ma -- _ _ _ gnus _ _ 
su -- per o -- _ _ _ mnem _ _ _ _ 
\set stanza = " * " ter -- ram. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 e'4 e'4 ( fis'4) a'4 ( a'4) ~ a'4 ( a'4) b'4 ( cis''4) b'4 \divisioMinima
 e'4 e'4 e'4 ( fis'4) a'4 ( a'4) ~ a'4 ( a'4) b'4 ( cis''4) b'4 \divisioMinima
 a'4 ( b'4) cis''4 ( a'4 \forceBreak
) cis''4 ( b'4) cis''4 ( b'4) ~ b'4 ( a'4) b'4 ( cis''4 a'4) ~ a'4 ( gis'4 e'4) fis'4 ( fis'4 e'4) \divisioMaior
 fis'4 a'4 ( a'4) b'4 ( cis''4 b'4 b'4) gis'4 ( a'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 fis'4 ( a'4) b'4 ( cis''4 a'4) ~ a'4 ( gis'4 fis'4 e'4) fis'4 ( fis'4 e'4) \finalis \forceBreak

 e'4 ( fis'4) e'4 e'4 a'4 ( a'4) a'4 ( b'4 cis''4) b'4 d''4 ( d''4) ~ d''4 ( b'4 a'4 gis'4) a'4 ( b'4 cis''4 b'4 a'4) b'4 ( a'4) cis''4 ( b'4) b'4 \divisioMaior \forceBreak

 b'4 ( e'4) fis'4 ( a'4) ~ a'4 ( e'4) fis'4 ( a'4 e'4) ~ e'4 ( d'4) \divisioMinima
 fis'4 ( a'4.) gis'4 ( a'4) cis''4 ( b'4 a'4) ~ a'4 ( gis'4 fis'4) a'4 ( fis'4 gis'\prall a'4 gis'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaxima \forceBreak

 e'4 ( a'4) a'4 ( b'4 cis''4) b'4. a'4 ( b'4 cis''4 a'4 gis'4) b'4 ( a'4 gis'4) \divisioMinima
 b'4 ( cis''4 b'4 a'4 b'4) b'4 ( cis''4 a'4) b'4 ( a'4 gis'4) a'4 ( gis'4) \divisioMaior \forceBreak

 a'4 gis'4 ( a'4 b'\prall cis''4) cis''4 ( b'4) cis''4 ( a'4 fis'4) b'4 ( a'4 gis'4 e'4) \divisioMinima
 fis'4 ( a'4 gis'4 a'4) a'4 ( b'4 a'4 gis'4) a'4. fis'4 ( gis'\prall a'4) b'4 ( a'4) ~ a'4 ( gis'4 fis'4 e'4) fis'4 ( e'4) \divisioMinima \forceBreak

 gis'4 ( a'4 \once \tweak #'font-size #-4 b' ) b'4. a'4 ( b'4) d''4 ( cis''4 b'4) d''4 ( d''4) ~ d''4 ( a'4) b'4 ( cis''4 b'4 gis'4.) a'4 ( b'4 gis'4) a'4 ( fis'4 e'4) fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
cis'2 ~ cis'2 ~ cis'2 e'2 ~ e'2 ~ e'4 \divisioMinima
cis'2 d'2 e'2 cis'2 e'2 ~ e'4 \divisioMinima
cis'2*4/2 fis'2*3/2 ~ fis'2*3/2 ~ fis'2 e'2*3/2 ~ e'4 b2 ~ b4 ~ \divisioMaior
b4 cis'2 fis'2*4/2 cis'2 ~ cis'2*3/2 \divisioMinima
d'2 ~ d'2 ~ d'2 ~ d'2*3/2 b2 ~ b4 \finalis
cis'2 ~ cis'2 ~ cis'2 fis'2*4/2 ~ fis'2 ~ fis'2*4/2 e'2 ~ e'2*3/2 ~ e'2 ~ e'2 ~ e'4 ~ \divisioMaior
e'2*3/2 cis'2*3/2 ~ cis'2 b2*3/2 \divisioMinima
cis'2*9/4 fis'2 e'2*4/2 d'2*3/2 ~ d'2 cis'2*3/2 b2 \divisioMaxima
cis'2 e'2*3/2 ~ e'2*3/4 cis'2*5/2 e'2*3/2 \divisioMinima
fis'2*5/2 ~ fis'2*3/2 ~ fis'2*3/2 e'2 ~ \divisioMaior
e'4 ~ e'2*4/2 ~ e'2 d'2*3/2 e'2*3/2 ~ e'4 \divisioMinima
d'2*4/2 ~ d'2*4/2 cis'2*3/4 ~ cis'2*4/2 d'2 ~ d'2*3/2 b2 \divisioMinima
e'2*3/2 fis'2*3/4 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'2 e'2*3/2 ~ e'2*3/4 d'2*3/2 cis'2*3/2 a2 ~ a2 gis4 \finalis
}

tenorMusic = {
a2 ~ a2 ~ a2 ~ a2 ~ a2 gis4 \divisioMinima
a2 ~ a2 ~ a2 ~ a2 ~ a2 gis4 \divisioMinima
a2*4/2 ~ a2*3/2 d'2*3/2 cis'2 b2*4/2 a2 gis4 ~ \divisioMaior
gis4 fis2 ~ fis2*4/2 ~ fis2 gis2*3/2 \divisioMinima
a2 ~ a2 fis2 a2*3/2 ~ a2 gis4 \finalis
a2 ~ a2 ~ a2 cis'2*4/2 ~ cis'2 b2*4/2 ~ b2 a2*3/2 ~ a2 fis2 gis4 ~ \divisioMaior
gis2*3/2 a2*3/2 ~ a2 fis2*3/2 ~ \divisioMinima
fis2*9/4 ~ fis2 a2*4/2 ~ a2*3/2 fis2 a2*3/2 ~ a4 gis4 \divisioMaxima
a2 ~ a2*3/2 gis2*3/4 a2*5/2 cis'2*3/2 \divisioMinima
b2*5/2 d'2*3/2 cis'2*3/2 b2 \divisioMaior
cis'4 b2*4/2 a2 b2*3/2 cis'2*4/2 \divisioMinima
a2*4/2 fis2*4/2 ~ fis2*3/4 ~ fis2*4/2 ~ fis2 a2*3/2 gis2 \divisioMinima
b2*3/2 ~ b2*3/4 cis'2 b2*3/2 ~ b2 a2 gis2*3/2 e2*3/4 fis2*3/2 ~ fis2*3/2 d2 b,2 ~ b,4 \finalis
}

bassMusic = {
r2 gis2 fis2 cis2 e2 ~ e4 \divisioMinima
a,2 b,2 cis2 fis2 e2 ~ e4 \divisioMinima
fis2*4/2 e2*3/2 d2*3/2 ~ d2 e2*4/2 ~ e2 ~ e4 ~ \divisioMaior
e4 ~ e2 d2*4/2 a,2 cis2*3/2 ~ \divisioMinima
cis2 b,2 ~ b,2 ~ b,2*3/2 e2 ~ e4 \finalis
r2 gis2 fis2 e2*4/2 d2 ~ d2*4/2 cis2 ~ cis2*3/2 e2 ~ e2 ~ e4 \divisioMaior
cis2*3/2 fis2*3/2 a,2 b,2*3/2 \divisioMinima
a,2*9/4 d2 cis2*4/2 b,2*3/2 ~ b,2 d2*3/2 e2 \divisioMaxima
a,2 cis2*3/2 e2*3/4 fis2*5/2 cis2*3/2 \divisioMinima
d2*5/2 ~ d2*3/2 ~ d2*3/2 e2 \divisioMaior
cis4 ~ cis2*4/2 fis2 ~ fis2*3/2 cis2*4/2 ~ \divisioMinima
cis2*4/2 b,2*4/2 fis,2*3/4 a,2*4/2 b,2 ~ b,2*3/2 e2 ~ \divisioMinima
e2*3/2 d2*3/4 ~ d2 ~ d2*3/2 b,2 ~ b,2 cis2*3/2 ~ cis2*3/4 b,2*3/2 a,2*3/2 b,2 e,2 ~ e,4 \finalis
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
        "VII."
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
