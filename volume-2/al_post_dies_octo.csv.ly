\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.39
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Post dies octo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Post dies octo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Post dies octo" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- _ _ ia. 
\set stanza = " * " _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ _ ℣. 
Post di -- es o -- _ _ _ cto, 
já -- nu -- is clau -- sis, 
ste -- tit Je -- sus 
in mé -- _ _ _ di -- o di -- sci -- pu -- ló -- rum su -- ó -- rum, 
et di -- xit: _ 
\set stanza = " * " Pax _ vo -- bis. 
_ _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 d'4 ( e'4.) d'4 ( e'4 d'4 c'4) c'4 ( e'4) g'4 ( g'4) a'4 ( b'4 a'4) \divisioMinima
 g'4 ( a'4) b'4 ( g'4.) b'4 ( a'4) b'4 ( a'4 g'4.) e'4 ( g'4 fis'4 d'4) e'4 ( e'4 d'4) \divisioMaior \forceBreak

 c'4 ( e'4) g'4 ( g'4) a'4 ( b'4 g'4.) b'4 ( a'4) b'4 ( a'4 g'4.) e'4 ( g'4 fis'4 d'4) e'4 ( e'4 d'4) \divisioMinima
 c'4 ( e'4) g'4 ( g'4) a'4 ( b'4 a'4 g'4) ~ g'4 ( fis'4 e'4 d'4) e'4 ( e'4 d'4) \finalis \forceBreak

 d'4 ( e'4) g'4 ( fis'4) g'4 ( a'4) a'4 ( b'4) c''4 ( b'4) c''4 ( b'4 a'4) b'4 ( c''4) b'4 ( a'4) \divisioMaior
 a'4 ( g'4 g'4) e'4 e'4 ( g'4 fis'4 e'4 fis'4) d'4 ( e'4 d'4) d'4 \divisioMaxima \forceBreak

 d'4 d'4 ( g'4 fis'4) g'4 ( a'4 g'4) a'4 \divisioMaior
 a'4 a'4 ( b'4) c''4 ( b'4) c''4 ( b'4 a'4) b'4 ( c''4) b'4 ( a'4) a'4 \divisioMinima
 a'4 a'4 ( b'4) a'4 a'4 ( g'4 g'4) e'4 \forceBreak
 e'4 ( g'4 fis'4 e'4 fis'4) d'4 ( e'4 d'4) d'4 \divisioMaxima
 d'4 d'4 d'4 ( e'4.) d'4 ( e'4 d'4 c'4) \divisioMinima
 c'4 ( e'4) g'4 ( e'4) g'4 ( a'4 b'4) a'4 \divisioMaior \forceBreak

 g'4 ( a'4) b'4 ( g'4.) b'4 ( a'4) b'4 ( a'4 g'4.) e'4 ( g'4 fis'4) d'4 e'4 ( e'4 d'4) \divisioMaior
 c'4 ( e'4) g'4 g'4 a'4 ( b'4 g'4.) b'4 ( a'4) b'4 ( a'4 g'4.) e'4 ( g'4 fis'4 d'4) e'4 ( e'4 d'4) \divisioMinima \forceBreak

 c'4 ( e'4) g'4 ( g'4) a'4 ( b'4 a'4 g'4) ~ g'4 ( fis'4 e'4 d'4) e'4 ( e'4 d'4) \finalis

}

altoMusic = {
r2*13/4 c'4 ~ c'2 b2 d'2 ~ d'4 ~ \divisioMinima
d'2*9/4 ~ d'2 ~ d'2*7/4 ~ d'2*4/2 ~ d'2 ~ d'4 \divisioMaior
c'2 b2 e'2*7/4 ~ e'2 d'2*7/4 ~ d'2*4/2 ~ d'2 ~ d'4 \divisioMinima
c'2 b2 d'2*3/2 c'2*5/2 a2 ~ a4 \finalis
r2*6/2 e'2*4/2 ~ e'2*3/2 ~ e'2 ~ e'2 \divisioMaior
d'2*4/2 ~ d'2*5/2 a2*3/2 ~ a4 \divisioMaxima
d'4 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 e'2*4/2 ~ e'2*5/2 fis'2 d'4 ~ \divisioMinima
d'4 b2*3/2 ~ b2*4/2 ~ b2*5/2 a2*3/2 ~ a4 \divisioMaxima
b2 ~ b2*5/4 g2*3/2 c'4 ~ \divisioMinima
c'2*4/2 d'2*3/2 ~ d'4 ~ \divisioMaior
d'2 ~ d'2*5/4 e'2 d'2*7/4 ~ d'2 ~ d'2 a2 ~ a4 \divisioMaior
c'2 b2 e'2*7/4 ~ e'2 d'2*7/4 ~ d'2*4/2 ~ d'2 ~ d'4 \divisioMinima
c'2 b2 d'2*3/2 c'2*5/2 a2 ~ a4 \finalis
}

tenorMusic = {
r4 g2*5/4 a2*4/2 g2 ~ g2 ~ g2 fis4 \divisioMinima
g2*9/4 fis2 g2*7/4 a2*4/2 g2 fis4 \divisioMaior
g2 ~ g2 ~ g2 e2*3/4 ~ e2 g2*7/4 a2*4/2 ~ a2*3/2 \divisioMinima
g2 ~ g2 ~ g2*3/2 ~ g2*5/2 ~ g2 fis4 \finalis
d'2 ~ d'2*4/2 ~ d'2*4/2 e'2*3/2 d'2 c'2 \divisioMaior
b2*4/2 ~ b2 g2*3/2 ~ g2*3/2 fis4 ~ \divisioMaxima
fis4 g2*3/2 ~ g2*3/2 fis4 ~ \divisioMaior
fis4 e2*4/2 a2*5/2 ~ a2 fis4 ~ \divisioMinima
fis4 ~ fis2*3/2 g2*4/2 ~ g2*5/2 ~ g2*3/2 fis4 \divisioMaxima
g2 ~ g2*5/4 ~ g2*4/2 ~ \divisioMinima
g2*4/2 ~ g2*3/2 fis4 \divisioMaior
r2 g2*5/4 ~ g2 ~ g2*7/4 b2 g2 ~ g2 fis4 \divisioMaior
g2 ~ g2 ~ g2 e2*3/4 ~ e2 g2*7/4 a2*4/2 g2 fis4 \divisioMinima
g2 ~ g2 ~ g2*3/2 ~ g2*5/2 ~ g2 fis4 \finalis
}

bassMusic = {
r2*15/4 e2 ~ e2 d2 ~ d4 \divisioMinima
b.2*9/4 b,2 ~ b,2*7/4 d2*4/2 ~ d2 ~ d4 \divisioMaior
e2 ~ e2 d2 ~ d2*3/4 c2 b,2*7/4 d2*4/2 fis2*3/2 \divisioMinima
e2 ~ e2 b,2*3/2 a,2*5/2 d2 ~ d4 \finalis
r2 b2*4/2 a2*4/2 ~ a2*3/2 ~ a2 ~ a2 \divisioMaior
r2*4/2 b,2 ~ b,2*3/2 d2*3/2 ~ d4 \divisioMaxima
b,4 ~ b,2*3/2 d2*3/2 ~ d4 ~ \divisioMaior
d4 c2*4/2 ~ c2*5/2 d2 ~ d4 ~ \divisioMinima
d4 ~ d2*3/2 e2*4/2 g2*5/2 r2*4/2 \divisioMaxima
r2 e2*5/4 ~ e2*4/2 \divisioMinima
a,2*4/2 b,2*3/2 d4 \divisioMaior
e2 ~ e2*5/4 c2 b,2*7/4 ~ b,2 ~ b,2 d2 ~ d4 \divisioMaior
e2 ~ e2 d2 ~ d2*3/4 c2 b,2*7/4 d2*4/2 ~ d2 ~ d4 \divisioMinima
e2 ~ e2 b,2*3/2 a,2*5/2 d2 ~ d4 \finalis
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
