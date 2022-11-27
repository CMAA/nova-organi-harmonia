\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.115
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Jubilate Deo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Jubilate Deo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Jubilate Deo" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ _ 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ ℣. 
Ju -- bi -- lá -- te De -- o _ _ 
o -- _ _ mnis ter -- _ _ ra: 
ser -- ví -- _ te _ Dó -- _ _ _ _ mi -- no 
\set stanza = " * " 
in læ -- tí -- ti -- a. _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( e'4 f'4) d'4 ( g'4) g'4 ( b'4 a'4 b'\prall c''4) b'4 ( c''4 a'4) b'4 ( g'4) ~ g'4 ( e'4) \divisioMinima
 e'4 ( e'4 f'4) d'4 ( g'4) g'4 ( b'4 a'4 b'\prall c''4 \forceBreak
) b'4 ( c''4 a'4) b'4 ( g'4) g'4 e'4 \divisioMinima
 g'4 ( g'4 f'4 g'4) c''4 ( b'4 g'4 f'4 e'4) f'4 ( g'4 f'4) ~ f'4 ( e'4) \finalis
 g'4 g'4 g'4 ( b'4) b'4 \forceBreak
 b'4 ( a'4 b'\prall c''4 b'4) b'4. a'4 ( b'4 a'4) ~ a'4 ( g'4) \divisioMaior
 c''4. ~ c''4 ( c''4 c''4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 b'4 c''4 ( d''4 a'4 g'4) b'4 ( d''4 c''4 d''4) c''4 ( b'4) \divisioMaxima \forceBreak

 g'4 g'4 c''4 ( c''4) a'4 c''4 ( c''4) g'4 ( a'4 f'4) g'4 ( f'4) ~ f'4 ( f'4 d'4) \divisioMinima
 f'4 ( a'4 g'4 f'4) g'4 ( a'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaior \forceBreak

 e'4 ( e'4 f'4) d'4 ( g'4) g'4 ( c''4) b'4 ( c''4 d''4 a'4 g'4 c''4) b'4 \divisioMinima
 g'4 ( a'4 b'\prall c''4 b'4 c''4) b'4 ( c''4 b'4) a'4 ( b'4 a'4) g'4 ( a'4 g'4 e'4) \divisioMinima \forceBreak

 g'4 ( g'4 f'4 g'4) c''4 ( b'4 g'4 f'4 e'4) f'4 ( g'4 f'4) ~ f'4 ( e'4) \finalis

}

altoMusic = {
c'2*3/2 d'2 e'2 g'2*3/2 f'2*4/2 e'2 ~ e'4 \divisioMinima
c'2*3/2 b2 d'2 e'2*3/2 f'2 ~ f'2 e'2 ~ e'4 \divisioMinima
c'2*4/2 ~ c'2 ~ c'2*3/2 b2 c'2*3/2 \finalis
g'2 ~ g'2*3/2 ~ g'2*3/2 ~ g'2 ~ g'2*3/4 ~ g'2 d'2*3/2 \divisioMaior
e'2*3/4 ~ e'2*3/2 ~ e'2*3/2 g'2*5/2 ~ g'2*4/2 ~ g'2 \divisioMaxima
d'4 e'4 ~ e'2*3/2 g'2 c'2*5/2 d'2 ~ d'4 \divisioMinima
c'2*4/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2 ~ \divisioMaior
c'2*3/2 d'2 e'2 g'2*6/2 ~ g'4 ~ \divisioMinima
g'2*3/2 e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*4/2 ~ \divisioMinima
e'2*4/2 c'2*5/2 ~ c'2 ~ c'2*3/2 \finalis
}

tenorMusic = {
c'2*3/2 b2 ~ b2 c'2*3/2 ~ c'2*4/2 b2 g4 \divisioMinima
a2*3/2 ~ a2 ~ a2 ~ a2*3/2 ~ a2 c'2 b2 g4 ~ \divisioMinima
g2*4/2 ~ g2 e2*3/2 d2 a2*3/2 \finalis
e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2 d'2*3/4 c'2 b2*3/2 \divisioMaior
r2*3/4 b2*3/2 c'2*3/2 e'4 d'2 c'2 b2 e'2 d'2 \divisioMaxima
b2 a2*3/2 g2 a2*5/2 ~ a2*3/2 ~ \divisioMinima
a2*4/2 f2*3/2 g2 d2 a2 ~ \divisioMaior
a2*3/2 b2 c'2 d'4 e'2 c'2*3/2 d'4 \divisioMinima
b2*3/2 a2*3/2 ~ a2*3/2 ~ a2*3/2 b2*4/2 \divisioMinima
c'2*4/2 g2 a2*3/2 ~ a2 ~ a2*3/2 \finalis
}

bassMusic = {
a2*3/2 ~ a2 g2 e2*3/2 d2*4/2 e2 ~ e4 \divisioMinima
a,2*3/2 ~ a,2 b,2 c2*3/2 d2 ~ d2 e2 ~ e4 ~ \divisioMinima
e2*4/2 a,2 ~ a,2*3/2 ~ a,2 ~ a,2*3/2 \finalis
r2 d'2*3/2 c'2*3/2 a2 ~ a2*3/4 ~ a2 b2*3/2 \divisioMaior
a'2*3/4 a2*3/2 ~ a2*3/2 e2*3/2 ~ e2 ~ e2 ~ e2 g2 \divisioMaxima
r2*5/2 e2 ~ e2*5/2 d2*3/2 \divisioMinima
a,2*4/2 ~ a,2*3/2 ~ a,2*4/2 ~ a,2 \divisioMaior
a2*3/2 ~ a2 ~ a2 e2*3/2 ~ e2*3/2 g4 ~ \divisioMinima
g2*3/2 a2*3/2 a,2*3/2 c2*3/2 ~ c2*4/2 ~ \divisioMinima
c2*4/2 e2 ~ e2*3/2 d2 a,2*3/2 \finalis
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
        "3"
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
