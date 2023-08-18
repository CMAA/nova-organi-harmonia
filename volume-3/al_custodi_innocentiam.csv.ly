\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.234
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Custodi innocentiam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Custodi innocentiam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Custodi innocentiam" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- _ ia, 
\set stanza = " * " _ _ _ _ _ _ ℣. 
Cu -- stó -- di _ _ _ in -- no -- cén -- ti -- am, 
et vi -- de æ -- qui -- tá -- tem: 
quó -- _ ni -- _ am sunt re -- lí -- qui -- _ æ 
hó -- _ mi -- ni 
\set stanza = " * " pa -- cí -- fi -- co. _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 d'4 ( f'4) g'4 ( f'4) e'4 ( f'4 d'4)  f'4 ( g'\prall a'4) bes'4 ( a'4 g'4) g'4 ( a'4) \divisioMinima
 d'4 f'4 ( f'4 e'4) f'4 ( g'4 a'4 g'4 f'4.) g'4 ( a'4 g'4) a'4 ( f'4) g'4 ( f'4) ~ f'4 ( e'4) \finalis
 a'4 a'4  g'4 ( bes'4 a'4) bes'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( e'4) \divisioMinima
 f'4 ( d'4) e'4 ( f'4) g'4 ( a'4)  a'4 ( bes'4 a'4 g'4 a'\prall bes'4 a'4 bes'4) bes'4 ( a'4) \divisioMaior
 a'4 a'4 g'4 ( a'4 g'4) f'4 ( d'4) d'4 ( g'4 f'4 f'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima
 f'4 ( d'4) e'4 ( f'4 g'4 a'4)  a'4 ( bes'4 a'4 g'4) a'4 ( bes'4) a'4 ( g'4) \divisioMinima
 g'4 ( a'4) a'4 ( g'4) g'4 ( a'4 g'4 e'4) f'4 ( g'\prall a'4 g'4 f'4 e'4) f'4 ( e'4 d'4 e'4) e'4 ( d'4) \divisioMaior
 e'4 ( f'4 g'4 f'4 e'4) f'4 ( e'4 d'4) d'4 ( e'\prall f'4 e'4 f'4) e'4 ( d'4) \divisioMinima
 d'4 ( c'4) f'4 ( g'\prall a'4)  a'4 ( bes'4 a'4 g'4) g'4 ( a'4) \divisioMinima
 d'4 f'4 ( f'4 e'4) f'4 ( g'4 a'4 g'4 f'4) g'4 ( a'4 g'4) a'4 ( f'4) g'4 ( f'4) ~ f'4 ( e'4) \finalis

}

altoMusic = {
r4 a2 ~ a2 ~ a2*3/2 ~ a2*3/2 d'2*3/2 c'2 ~ \divisioMinima
c'4 bes2*3/2 c'2*11/4 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'4 \finalis
r4 d'4 ~ d'2*3/2 ~ d'2*4/2 c'2*3/2 \divisioMinima
d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2*5/2 f'2 ~ \divisioMaior
f'4 c'4 ~ c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'2*4/2 ~ c'2 \divisioMaxima
a2 ~ a2*4/2 d'2*4/2 ~ d'2 c'2 ~ \divisioMinima
c'2 ~ c'2 ~ c'2*4/2 ~ c'2*6/2 ~ c'2*4/2 ~ c'2 ~ \divisioMaior
c'2*5/2 a2*3/2 ~ a2*5/2 ~ a2 ~ \divisioMinima
a2 ~ a2*3/2 d'2*4/2 ~ d'2 ~ \divisioMinima
d'4 bes2*3/2 c'2*5/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'4 \finalis
}

tenorMusic = {
r4 f2 e2 g2*3/2 f2*3/2 ~ f2*3/2 ~ f2 ~ \divisioMinima
f4 ~ f2*3/2 ~ f2*11/4 e2*3/2 f2*3/2 g2 a4 \finalis
r4 c'4 bes2*3/2 b2*4/2 c'2*3/2 ~ \divisioMinima
c'2*4/2 ~ c'2 a2*3/2 bes2*5/2 c'2 ~ \divisioMaior
c'4 f4 e2*3/2 g2 f2*4/2 g2*4/2 a2 \divisioMaxima
f2 g2*4/2 f2*4/2 ~ f2 e2 \divisioMinima
f2 d2 e2*4/2 a2*6/2 g2*4/2 f2 \divisioMaior
e2*5/2 d2*3/2 g2*5/2 f2 \divisioMinima
e2 d2*3/2 f2*4/2 ~ f2 ~ \divisioMinima
f4 ~ f2*3/2 ~ f2*5/2 e2*3/2 f2*3/2 g2 a4 \finalis
}

bassMusic = {
r4 d2 ~ d2 ~ d2*3/2 ~ d2*3/2 bes,2*3/2 f,2 ~ \divisioMinima
f,4 g,2*3/2 a,2*11/4 ~ a,2*3/2 ~ a,2*3/2 ~ a,2 ~ a,4 \finalis
r2*5/2 g2*4/2 a2*3/2 ~ \divisioMinima
a2*4/2 g2 ~ g2*3/2 ~ g2*5/2 f2 ~ \divisioMaior
f4 a,4 ~ a,2*3/2 ~ a,2 ~ a,2*4/2 ~ a,2*4/2 ~ a,2 \divisioMaxima
d2 ~ d2*4/2 c2*4/2 bes,2 c2 \divisioMinima
a,2 ~ a,2 ~ a,2*4/2 ~ a,2*6/2 ~ a,2*4/2 ~ a,2 ~ \divisioMaior
a,2*5/2 d2*3/2 ~ d2*5/2 ~ d2 ~ \divisioMinima
d2 ~ d2*3/2 c2*4/2 bes,2 ~ \divisioMinima
bes,4 g,2*3/2 a,2*5/2 ~ a,2*3/2 ~ a,2*3/2 ~ a,2 ~ a,4 \finalis
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
        "4"
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
