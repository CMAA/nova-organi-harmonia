\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.147
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Deus judex justus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Deus judex justus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Deus judex justus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, 
\set stanza = " * " 
al -- le -- lú -- _ ia. 
_ _ _ _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ ℣. 
De -- us ju -- dex ju -- _ _ _ stus, 
for -- _ tis _ et pá -- ti -- ens: 
num -- quid i -- ra -- scé -- _ _ tur 
\set stanza = " * " 
per sín -- gu -- los di -- es? _ _ _ 
_ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 g'4 g'4 ( g'4 e'4 d'4) g'4 ( a'4) g'4 \divisioMaior
 g'4 g'4 g'4 ( g'4 e'4 d'4) g'4 ( a'4) g'4 \divisioMaior
 d'4 ( e'4.) d'4 ( e'4 c'4.) g'4 ( a'4. \forceBreak
) g'4 ( b'4 a'4) g'4 ( b'4 a'4 g'4 g'4) \divisioMinima
 f'4 ( g'4 a'4) c''4 ( a'4) c''4. b'4 ( c''4 a'4 g'4) \divisioMaior
 f'4 ( g'4 a'4) c''4 ( a'4) d''4. c''4 ( e''4 d''4 c''4) ~ c''4 ( b'4 a'4 g'4 g'4) \divisioMinima \forceBreak

 f'4 ( g'4 a'4) d''4 ( c''4 b'4.) g'4 ( c''4 a'4) b'4 ( a'4) ~ a'4 ( g'4) \finalis
 g'4 g'4 ( a'4) g'4 ( g'4 g'4) d'4 e'4. d'4 ( e'4 c'4.) g'4 ( a'\prall b'4 a'4) b'4 ( a'4 g'4 a'4 \forceBreak
) g'4 \divisioMaior
 g'4 ( f'4) d'4 ( \once \tweak #'font-size #-4 e' ) e'4. d'4 ( e'4 c'4) g'4 ( a'4 \once \tweak #'font-size #-4 b' ) b'4 a'4 ( b'\prall c''4 d''4 c''4 a'4 g'4 f'4 g'4) g'4 \divisioMaxima
 b'4 g'4 \forceBreak
 a'4 ( b'\prall c''4) c''4 ( b'4 a'4) f'4 ( a'4) c''4 ( a'4) b'4 ( g'4) g'4 \divisioMaior
 f'4 f'4 ( a'4 c''4) b'4 ( a'4) c''4 ( b'4) a'4 ( g'4) g'4 \divisioMinima
 f'4 ( g'4 a'4) c''4 ( a'4) c''4. \forceBreak
 b'4 ( c''4 a'4 g'4) \divisioMaior
 f'4 ( g'4 a'4) c''4 ( a'4) d''4. c''4 ( e''4 d''4 c''4) ~ c''4 ( b'4 a'4 g'4 g'4) \divisioMinima
 f'4 ( g'4 a'4) d''4 ( c''4 b'4.) g'4 ( c''4 a'4) b'4 ( a'4) ~ a'4 ( g'4) \finalis

}

altoMusic = {
b2 c'2*4/2 d'2 ~ d'4 \divisioMaior
b2 c'2*4/2 d'2 ~ d'4 \divisioMaior
b2*5/4 g2*7/4 c'2*5/4 e'2*3/2 d'2*5/2 \divisioMinima
c'2*3/2 f'2 e'2*3/4 ~ e'2*3/2 ~ e'4 \divisioMaior
c'2*3/2 f'2 ~ f'2*9/4 e'2*4/2 ~ e'2 \divisioMinima
d'2*3/2 ~ d'2*7/4 ~ d'2 c'2 ~ c'2 b4 \finalis
r4 c'2 d'2*3/2 ~ d'4 c'2*5/2 b2*4/2 e'2*4/2 d'4 \divisioMaior
c'2*4/2 b2*3/4 a2*3/2 d'2*3/2 e'4 ~ e'2*3/2 ~ e'2*4/2 d'2 ~ d'4 ~ \divisioMaxima
d'2 e'2*3/2 ~ e'2*3/2 ~ e'2*4/2 d'2 ~ d'4 \divisioMaior
r4 f'4 ~ f'2*4/2 e'2 ~ e'2*3/2 \divisioMinima
c'2*3/2 f'2 e'2*3/4 ~ e'2*3/2 ~ e'4 \divisioMaior
c'2*3/2 f'2 ~ f'2*9/4 e'2*4/2 ~ e'2 \divisioMinima
d'2*3/2 ~ d'2*7/4 ~ d'2 c'2 ~ c'2 b4 \finalis
}

tenorMusic = {
r2 a2*4/2 c'2 b4 \divisioMaior
d2 g2*4/2 ~ g2 ~ g4 ~ \divisioMaior
g2*5/4 e2*7/4 g2*5/4 ~ g2*3/2 ~ g2*5/2 \divisioMinima
a2*3/2 ~ a2 ~ a2*3/4 g2*3/2 b4 \divisioMaior
a2*3/2 ~ a2 ~ a2*9/4 ~ a2*4/2 e2 \divisioMinima
a2*3/2 g2*7/4 e2 ~ e2 d2 ~ d4 \finalis
g4 ~ g2 ~ g2*4/2 ~ g2*5/2 ~ g2*4/2 ~ g2*4/2 ~ g4 ~ \divisioMaior
g2*4/2 ~ g2*3/4 e2*3/2 d2*3/2 c4 e2*3/2 a2*4/2 ~ a2 g4 ~ \divisioMaxima
g2 e2*3/2 a2*3/2 c'2*4/2 ~ c'2 b4 \divisioMaior
a4 ~ a4 c'2*4/2 ~ c'2 b2*3/2 \divisioMinima
a2*3/2 ~ a2 ~ a2*3/4 g2*3/2 b4 \divisioMaior
a2*3/2 ~ a2 ~ a2*9/4 ~ a2*4/2 e2 \divisioMinima
a2*3/2 g2*7/4 e2 ~ e2 d2 ~ d4 \finalis
}

bassMusic = {
g2 ~ g2*4/2 ~ g2 ~ g4 \divisioMaior
g,2 a,2*4/2 c2 b,4 \divisioMaior
g,2*5/4 c2*7/4 e2*5/4 c2*3/2 b,2*5/2 \divisioMinima
d2*3/2 ~ d2 c2*3/4 e2*3/2 ~ e4 ~ \divisioMaior
e2*3/2 ~ e2 d2*9/4 a,2*4/2 c2 ~ \divisioMinima
c2*3/2 b,2*7/4 c2 ~ c2 g,2 ~ g,4 \finalis
r4 a,2 b,2*4/2 c2*5/2 e2*4/2 c2*4/2 b,4 \divisioMaior
a,2*4/2 g,2*3/4 a,2*3/2 b,2*3/2 c4 ~ c2*3/2 ~ c2*4/2 ~ c2 b,4 \divisioMaxima
g,2 c2*3/2 ~ c2*3/2 d2*4/2 g2 ~ g4 \divisioMaior
r4 d4 ~ d2*4/2 a2 e2*3/2 ~ \divisioMinima
e2*3/2 d2 c2*3/4 e2*3/2 ~ e4 ~ \divisioMaior
e2*3/2 ~ e2 d2*9/4 a,2*4/2 c2 ~ \divisioMinima
c2*3/2 b,2*7/4 c2 ~ c2 g,2 ~ g,4 \finalis
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
        "VIII"
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
