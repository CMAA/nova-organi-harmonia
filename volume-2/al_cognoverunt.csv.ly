\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.42
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Cognoverunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Cognoverunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Cognoverunt" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- ia, 
\set stanza = " * " al -- le -- _ _ lú -- ia. _ _ _ _ _ 
_ _ _ _ _ 
_ _ _ _ _ _ ℣. 
Co -- gno -- vé -- runt _ _ di -- scí -- pu -- li _ _ 
Dó -- _ mi -- num Je -- sum _ _ _ _ _ 
in fra -- cti -- ó -- ne 
\set stanza = " * " pa -- nis. _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 e'4 ( g'4 f'4) e'4 ( f'4 e'4 d'4) e'4 ( e'4 d'4) g'4 ( a'\prall b'4 c''4) b'4 ( a'4) \divisioMinima
 e'4 e'4 ( g'4 f'4) e'4 ( f'4 e'4 d'4) e'4 ( e'4 d'4 \forceBreak
) g'4 ( a'\prall b'4 c''4) b'4 ( a'4) \divisioMinima
 c''4 ( b'4 a'4) c''4 ( c''4 b'4) g'4 ( a'4) b'4 ( a'4) ~ a'4 ( g'4) \divisioMaior
 g'4 ( a'4) c''4 ( c''4 b'4 g'4) a'4 ( a'4) g'4 ( a'4) b'4 ( g'4) \divisioMaior \forceBreak

 g'4 ( a'4) c''4 ( c''4 b'4 g'4) a'4 ( a'4 g'4 f'4.) g'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( e'4) \finalis
 e'4 ( f'4 e'4 d'4) g'4 a'4 ( c''4) b'4 ( a'4) c''4 ( d''4 c''4 a'4 g'4) a'4 ( a'4 g'4) \divisioMinima \forceBreak

 a'4 ( b'4 a'4) b'4 ( c''4 b'4) a'4 ( g'4) a'4 ( b'\prall c''4 b'4) d''4 ( c''4) ~ c''4 ( b'4) \divisioMaior
 g'4 c''4 ( c''4) c''4 ( c''4) b'4 ( a'4) b'4 g'4 a'4 ( a'4 f'4) g'4 ( g'4 \forceBreak
) e'4 ( g'4 e'4) ~ e'4 ( d'4) e'4 ( f'4 e'4) \divisioMaxima
 e'4 e'4 ( g'4 f'4) e'4 ( f'4 g'4) a'4 ( b'4 a'4 g'4) g'4 ( a'4 c''4)  c''4 b'4 ( a'4) c''4 ( b'4 a'4) c''4 ( c''4 b'4) g'4 ( a'4 \forceBreak
) b'4 ( a'4) ~ a'4 ( g'4) \divisioMaior
 g'4 ( a'4) c''4 ( c''4 b'4 g'4) a'4 ( a'4) g'4 ( a'4) b'4 ( g'4) \divisioMinima
 g'4 ( a'4) c''4 ( c''4 b'4 g'4) a'4 ( a'4 g'4 f'4.) g'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( e'4) \finalis

}

altoMusic = {
r2*11/2 g'2*4/2 e'2 \divisioMinima
r4 c'2*3/2 ~ c'2*4/2 ~ c'2*3/2 d'2 g'2 e'2 \divisioMinima
f'2*3/2 g'2*3/2 ~ g'2*3/2 e'2*3/2 \divisioMaior
c'2 f'2*4/2 e'2 d'2 ~ d'2 ~ \divisioMaior
d'2 c'2*4/2 ~ c'2*9/4 b2*4/2 ~ b2 ~ b4 \finalis
r2*3/2 d'4 ~ d'4 e'2*4/2 g'2*4/2 ~ g'4 e'2*3/2 ~ \divisioMinima
e'2*3/2 f'2*5/2 g'2*5/2 ~ g'2*3/2 ~ \divisioMaior
g'4 e'2 ~ e'2*4/2 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'2 ~ e'4 ~ e'4 d'4 ~ d'2 c'4 \divisioMaxima
r4 c'2*3/2 ~ c'2*3/2 e'2*4/2 ~ e'2*3/2 ~ e'4 f'2 g'2*3/2 ~ g'2*3/2 ~ g'2*3/2 e'2 ~ e'4 \divisioMaior
g'2 f'2*4/2 e'2 d'2 ~ d'2 ~ \divisioMinima
d'2 c'2*4/2 ~ c'2*9/4 b2*4/2 ~ b2 ~ b4 \finalis
}

tenorMusic = {
r4 c'2*3/2 a2*4/2 ~ a2*3/2 d'2*4/2 ~ d'4 c'4 \divisioMinima
g4 a2*3/2 ~ a2*4/2 ~ a2*3/2 g2 d'2 ~ d'4 c'4 \divisioMinima
a2*3/2 g2*3/2 c'2*3/2 b2*3/2 \divisioMaior
g2 a2*4/2 ~ a2 b2 g2 \divisioMaior
e2 ~ e2*4/2 f2*9/4 ~ f2*4/2 e2 g4 \finalis
c'2*4/2 b4 a2*4/2 g2*5/2 b2*3/2 \divisioMinima
c'2*3/2 ~ c'2*5/2 ~ c'2*5/2 d'2*3/2 \divisioMaior
b4 a2 d'2*4/2 c'2 ~ c'2*3/2 b2 a2 ~ a2*3/2 ~ a2*3/2 \divisioMaxima
r4 g2*3/2 ~ g2*3/2 c'2*4/2 b2*3/2 a4 ~ a2 g2*3/2 d'2*3/2 c'2*3/2 b2 ~ b4 \divisioMaior
g2 a2*4/2 ~ a2 b2 g2 \divisioMinima
e2 ~ e2*4/2 f2*9/4 ~ f2*4/2 g2 ~ g4 \finalis
}

bassMusic = {
r4 a2*3/2 g2*4/2 f2*3/2 e2*4/2 a2 \divisioMinima
c4 ~ c2*3/2 d2*4/2 f2*3/2 e2 ~ e2 a2 \divisioMinima
d2*3/2 e2*3/2 ~ e2*3/2 ~ e2*3/2 ~ \divisioMaior
e2 d2*4/2 c2 b,2 ~ b,2 ~ \divisioMaior
b,2 a,2*4/2 ~ a,2*9/4 d2*4/2 e2 ~ e4 \finalis
a2*4/2 ~ a4 ~ a2*4/2 e2*5/2 ~ e2*3/2 \divisioMinima
c2*3/2 d2*5/2 e2*5/2 g2*3/2 ~ \divisioMaior
g4 a2 ~ a2*4/2 ~ a2 c2*3/2 ~ c2 ~ c2 f2*3/2 a2*3/2 \divisioMaxima
e4 ~ e2*3/2 c2*3/2 ~ c2*4/2 ~ c2*3/2 ~ c4 d2 e2*3/2 ~ e2*3/2 ~ e2*3/2 ~ e2 ~ e4 ~ \divisioMaior
e2 d2*4/2 c2 b,2 ~ b,2 ~ \divisioMinima
b,2 a,2*4/2 ~ a,2*9/4 d2*4/2 e2 ~ e4 \finalis
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
        "III"
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
