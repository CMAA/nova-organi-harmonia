\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.115
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Deus qui praecinxit me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Deus qui praecinxit me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Deus qui praecinxit me" }
    \line {}
  }
}

chantText = \lyricmode {
De -- us 
\set stanza = " * " qui præ -- cín -- xit me _ _ _ vir -- tú -- _ te: 
et pó -- su -- it _ _ _ _ _ _ _ _ _ _ 
im -- ma -- cu -- lá -- _ tam _ _ _ _ _ _ _ _ _ _ 
vi -- _ _ am me -- am. _ _ _ _ _ _ _ _ ℣. 
Qui do -- cet ma -- nus me -- as _ _ _ ad prǽ -- li -- um: _ _ _ 
et po -- su -- í -- sti, _ _ ut ar -- _ _ cum ǽ -- re -- um, _ _ _ _ _ 
brá -- chi -- a 
\set stanza = " * " me -- _ a. _ _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( a'4 fis'4) e'4 ( fis'4 e'4 d'4) \divisioMinima
 e'4 fis'4 ( a'4) a'4 a'4 ( \once \tweak #'font-size #-4 fis' ) a'4 ( b'4) d''4 ( d''4 b'4 gis'4.) b'4 ( cis''4 a'4) ~ a'4 ( gis'4) a'4 a'4 ( b'4) cis''4 ( d''4) cis''4 ( b'4) \divisioMaxima
 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( cis''4) b'4 ( a'4) a'4. gis'4 ( a'4 b'4) ~ b'4 ( a'4) b'4 ( b'4) \divisioMinima
 a'4 ( b'4) d''4 ( d''4) ~ d''4 ( b'4) d''4 ( d''4 cis''4 b'4) cis''4 ( a'4.) b'4 ( a'4 gis'4) a'4 ( gis'4) \divisioMaior
 fis'4 fis'4 ( b'4) b'4 b'4 ( a'4) b'4 ( d''4 cis''4 b'4 a'4) b'4 ( gis'4) a'4 ( fis'4 e'4) fis'4 ( fis'4 e'4) fis'4 ( fis'4) \divisioMinima
 e'4 ( fis'4) a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 gis'4 fis'4) a'4 ( e'4.) fis'4 ( e'4 d'4) e'4 ( d'4) \divisioMaior
 e'4 ( fis'4 gis'\prall a'4) b'4 ( a'4 e'4.) fis'4 gis'4 ( e'4 fis'4) cis'4 ( \once \tweak #'font-size #-4 d' ) e'4 e'4 b'4 ( a'4) b'4 ( e'4) \divisioMinima
 b'4 ( gis'4 b'4) cis''4 ( d''4 b'4 gis'4.) a'4 ( b'4 gis'4) a'4 ( fis'4 e'4) fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \finalis
 e'4 a'4 ( a'4) a'4 a'4 ( b'4) a'4 a'4 ( b'4) a'4 ( a'4) b'4 ( gis'4) a'4 ( b'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 e'4 ( a'4) a'4 ( b'4) b'4 b'4 ( cis''4 b'4 a'4) e''4 ( d''4.) cis''4 ( e''4 d''4 d''4) b'4 ( cis''4 b'4) \divisioMaxima
 fis'4 a'4 ( a'4) a'4 a'4 ( b'4) a'4 ( a'4) b'4 ( gis'4 a'4 b'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 a'4 ( a'4) a'4. gis'4 ( a'4) b'4 ( a'4 b'4 cis''4) b'4 b'4 a'4 ( b'4) b'4 ( d''4 cis''4) b'4 ( d''4 cis''4 b'4) ~ b'4 ( gis'4.) a'4 ( b'4 a'4) b'4 ( fis'4) ~ fis'4 ( e'4) \divisioMaior
 e'4 ( fis'4) e'4 e'4 ( fis'4 a'4)  a'4. gis'4 ( a'4 b'4 a'4 b'4) b'4 ( e'4) \divisioMinima
 b'4 ( gis'4 b'4) cis''4 ( d''4 b'4.) cis''4 ( d''4 cis''4 b'4) cis''4 ( a'4) b'4 ( b'4 gis'4.) a'4 ( b'4 gis'4) a'4 ( fis'4 e'4) fis'4 ( d'4 e'4) \divisioMinima
 a'4 ( a'4 fis'4 e'4) fis'4 ( d'4 b4.) e'4 ( a'4 fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
cis'2*3/2 b2*4/2 \divisioMinima
cis'4 ~ cis'2 ~ cis'4 ~ cis'2 d'2 ~ d'2*3/2 ~ d'2*3/4 ~ d'2 e'2*4/2 fis'2*4/2 e'2 \divisioMaxima
fis'2 e'2*4/2 ~ e'2*7/4 ~ e'2*3/2 d'2 ~ \divisioMinima
d'2 fis'2 ~ fis'2 ~ fis'2*4/2 ~ fis'2*5/4 ~ fis'2*3/2 e'2 \divisioMaior
fis'4 ~ fis'2 ~ fis'4 e'2 fis'2*5/2 e'2 d'2*3/2 cis'2*3/2 ~ cis'2 ~ \divisioMinima
cis'2 ~ cis'2 ~ cis'2 d'2*4/2 e'2*5/4 d'2 ~ d'4 b2 \divisioMaior
e'2*4/2 ~ e'2 ~ e'2*3/4 cis'4 ~ cis'2*3/2 r2 b2 ~ b2*4/2 \divisioMinima
e'2*3/2 d'f2*3/2 d'2*3/4 ~ d'2*3/2 e'2 ~ e'4 d'2 b2 ~ b4 \finalis
e'4 ~ e'2*3/2 ~ e'2*3/2 fis'2 e'2 ~ e'2*4/2 r2*3/2 \divisioMinima
e'2 ~ e'2*3/2 ~ e'2*4/2 fis'2*5/4 ~ fis'2*4/2 ~ fis'2*3/2 ~ \divisioMaxima
fis'4 ~ fis'2*3/2 ~ fis'2 ~ fis'2 ~ fis'2*4/2 cis'2*3/2 \divisioMinima
e'2 ~ e'2*7/4 d'2*5/2 e'2*3/2 d'2*3/2 fis'2*3/2 ~ fis'2 e'2*3/4 ~ e'2*4/2 r2*3/2 \divisioMaior
cis'2 e'4 ~ e'2*3/2 fis'2*3/4 ~ fis'2*5/2 e'2 ~ \divisioMinima
e'2*3/2 fis'2 ~ fis'2*3/4 ~ fis'2*4/2 ~ fis'2 cis'2*7/4 ~ cis'2*3/2 ~ cis'2*3/2 b2 ~ b4 \divisioMinima
cis'2*4/2 b2 ~ b2*3/4 e'2*4/2 b2 ~ b4 \finalis
}

tenorMusic = {
a2*3/2 ~ a2*4/2 ~ \divisioMinima
a4 ~ a2 ~ a4 fis2 ~ fis2 ~ fis2*3/2 ~ fis2*3/4 a2 ~ a2*4/2 ~ a2*4/2 gis2 \divisioMaxima
a2 ~ a2*4/2 e2*7/4 fis2*3/2 ~ fis2 \divisioMinima
a2 ~ a2 b2 ~ b2*4/2 e'2*5/4 d'2*3/2 cis'2 \divisioMaior
d'4 ~ d'2 ~ d'4 cis'2 d'2*5/2 cis'2 b2*3/2 ~ b2*3/2 a2 \divisioMinima
gis2 fis2 ~ fis2 ~ fis2*4/2 ~ fis2*5/4 ~ fis2*3/2 a2 ~ \divisioMaior
a2*4/2 cis'2*7/4 a4 b2*3/2 a2 ~ a2 gis2*4/2 \divisioMinima
e2*3/2 b,2*3/2 b2*3/4 a2*3/2 ~ a2*3/2 ~ a2 ~ a2 gis4 \finalis
r4 cis'2*3/2 d'2*3/2 ~ d'2 cis'2 ~ cis'2*4/2 ~ cis'2*3/2 ~ \divisioMinima
cis'2 b2*3/2 a2*4/2 b2*5/4 ~ b2*4/2 d'2*3/2 ~ \divisioMaxima
d'4 cis'2*3/2 ~ cis'2 ~ cis'2 b2*4/2 ~ b2*3/2 \divisioMinima
a2 e2*7/4 fis2*5/2 e2*3/2 fis2*3/2 a2*3/2 b2 ~ b2*3/4 ~ b2*4/2 ~ b2*3/2 ~ \divisioMaior
b2*3/2 a2*3/2 ~ a2*3/4 b2*5/2 a2 \divisioMinima
gis2*3/2 fis2 ~ fis2*3/4 a2*4/2 ~ a2 gis2*7/4 fis2*3/2 ~ fis2*3/2 a2 gis4 \divisioMinima
fis2*4/2 ~ fis2*7/4 a2*4/2 ~ a2 gis4 \finalis
}

bassMusic = {
r2*7/2 \divisioMinima
r4 gis2 fis4 e2 d2 cis2*3/2 b,2*3/4 ~ b,2 cis2*4/2 d2*4/2 e2 \divisioMaxima
d2 cis2*4/2 ~ cis2*7/4 b,2*3/2 ~ b,2 \divisioMinima
fis2 ~ fis2 a2 b2*4/2 ~ b2*5/4 ~ b2*3/2 cis'2 \divisioMaior
r4 cis'2 b4 ~ b2 ~ b2*5/2 ~ b2 ~ b2*3/2 fis2*3/2 ~ fis2 ~ \divisioMinima
fis2 ~ fis2 e2 d2*4/2 cis2*5/4 b,2*3/2 ~ b,2 \divisioMaior
cis2*4/2 ~ cis2*7/4 fis4 ~ fis2*3/2 ~ fis2 e2 ~ e2*4/2 \divisioMinima
cis2*6/2 b,2*3/4 ~ b,2*3/2 cis2*3/2 d2 e2 ~ e4 \finalis
r2*11/2 a2*4/2 cis'2*3/2 \divisioMinima
a2 ~ a2*3/2 ~ a2*4/2 ~ a2*5/4 b2*4/2 ~ b2*3/2 ~ \divisioMaxima
b4 a2*3/2 gis2 fis2 d2*4/2 cis2*3/2 ~ \divisioMinima
cis2 ~ cis2*7/4 b,2*5/2 cis2*3/2 d2*3/2 ~ d2*3/2 ~ d2 e2*3/4 fis2*4/2 gis2*3/2 \divisioMaior
cis2*3/2 ~ cis2*3/2 d2*3/4 ~ d2*5/2 e2 ~ \divisioMinima
e2*3/2 ~ e2 d2*3/4 ~ d2*4/2 fis2 ~ fis2*7/4 ~ fis2*3/2 e2*3/2 ~ e2 ~ e4 ~ \divisioMinima
e2*4/2 d2*7/4 cis2*4/2 e2 ~ e4 \finalis
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
