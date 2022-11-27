\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.16
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Si consurrexistis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Si consurrexistis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Si consurrexistis" }
    \line {}
  }
}

chantText = \lyricmode {
Si _ con -- sur -- re -- xís -- tis 
\set stanza = " * " cum Chri -- sto, 
quæ sur -- sum sunt quǽ -- ri -- te, al -- le -- _ lú -- ia, 
u -- bi Chri -- stus est 
in déx -- te -- ra De -- i se -- _ dens: 
quæ sur -- sum sunt sá -- pi -- te, 
al -- le -- _ _ _ lú -- ia. }

chantMusic = {
\tieDown   e'4 ( a'4 fis'4) ~ fis'4 ( e'4) e'4 e'4 ( a'4 gis'4) a'4 b'4 a'4 \divisioMinima
 gis'4 b'4 ( cis''4 b'4 cis''4) b'4 ( cis''4 b'4) \divisioMaior
 b'4 cis''4 ( b'4 cis''\prall d''4 e''4 \forceBreak
) cis''4 b'4 cis''4 ( b'4 cis''4) a'4 a'4 \divisioMinima
 fis'4 ( a'4 gis'4) a'4. fis'4 ( gis'4 e'4) e'4 ( fis'4 e'4) e'4 \divisioMaxima
 e'4 fis'4 ( gis'4) gis'4 gis'4 ( fis'4 gis'4 \forceBreak
) fis'4 ( e'4) \divisioMaior
 e'4 fis'4 ( gis'4) gis'4 gis'4 ( e'4) gis'4 ( b'4) b'4 a'4 ( cis''4 b'4) ~ b'4 ( gis'4 a'4) a'4 ( gis'4) \divisioMaxima
 b'4 cis''4 ( b'4 cis''\prall d''4 e''4) cis''4 b'4 \forceBreak
 cis''4 ( b'4 cis''4) a'4 ( a'4 gis'4) e'4 \divisioMaior
 fis'4 ( gis'\prall a'4) a'4 ( b'4 a'4) gis'4 ( b'4 a'4.) fis'4 ( a'4 gis'4 a'4) fis'4 ( gis'4 e'4) e'4 ( fis'4 e'4) e'4 \finalis

}

altoMusic = {
d'2 cis'2*3/2 ~ cis'4 ~ cis'2*4/2 e'2*3/2 ~ e'2*4/2 ~ e'2 ~ e'4 ~ \divisioMaior
e'4 fis'2*5/2 ~ fis'2 e'2*4/2 ~ e'4 \divisioMinima
d'2*3/2 e'2*3/4 b2*3/2 ~ b2*3/2 ~ b4 \divisioMaxima
r4 cis'2 e'4 b2*3/2 ~ b2 \divisioMaior
r4 cis'2*3/2 e'2 ~ e'2 ~ e'4 ~ e'2 ~ e'2*4/2 ~ e'2 \divisioMaxima
fis'4 ~ fis'2*5/2 ~ fis'2 e'2*3/2 ~ e'2*3/2 ~ e'4 \divisioMaior
cis'2*3/2 ~ cis'2*3/2 e'2*7/4 b2*4/2 ~ b2*3/2 ~ b2*3/2 ~ b4 \finalis
}

tenorMusic = {
a2 ~ a2*3/2 ~ a4 ~ a2*4/2 ~ a2*3/2 gis2*4/2 fis2 gis4 ~ \divisioMaior
gis4 a2*5/2 gis2 ~ gis2*4/2 a4 ~ \divisioMinima
a2*3/2 ~ a2*3/4 ~ a2*3/2 fis2*3/2 gis4 \divisioMaxima
a4 ~ a2 b4 a2*3/2 gis2 \divisioMaior
a4 ~ a2*3/2 b2 ~ b2 gis4 fis2 gis2*4/2 b2 \divisioMaxima
fis4 a2*5/2 gis2 a2*3/2 b2*3/2 gis4 \divisioMaior
a2*3/2 ~ a2*3/2 ~ a2*7/4 ~ a2*4/2 ~ a2*3/2 fis2*3/2 gis4 \finalis
}

bassMusic = {
r2*5/2 gis4 fis2*4/2 cis2*3/2 ~ cis2*4/2 e2 ~ e4 ~ \divisioMaior
e4 d2*5/2 ~ d2 cis2*4/2 ~ cis4 \divisioMinima
b,2*3/2 cis2*3/4 e2*3/2 ~ e2*3/2 ~ e4 \divisioMaxima
r2*3/2 e4 ~ e2*3/2 ~ e2 \divisioMaior
r2*4/2 e2 cis2 ~ cis4 e2 ~ e2*4/2 ~ e2 \divisioMaxima
d4 ~ d2*5/2 ~ d2 cis2*3/2 e2*3/2 ~ e4 \divisioMaior
r2*3/2 fis2*3/2 cis2*7/4 d2*4/2 e2*3/2 ~ e2*3/2 ~ e4 \finalis
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
