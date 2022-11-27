\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.297
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ecce quam bonum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ecce quam bonum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ecce quam bonum" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- _ ia, 
\set stanza = " * " 
al -- le -- _ lú -- _ ia. 
_ _ _ _ _ _ _ ℣. 
Ec -- ce quam bo -- num, et quam ju -- cún -- _ _ _ dum 
ha -- bi -- tá -- re fra -- tres in u -- _ num: 
sic -- ut un -- guén -- tum in cá -- _ pi -- te, 
quod de -- scén -- _ _ _ dit in bar -- bam, bar -- bam 
\set stanza = " * " A -- a -- ron. 
_ _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 e'4 ( f'4 g'4.) a'4 ( b'4 a'4 g'4) f'4 ( g'4 a'4) ~ a'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMaior
  g'4 e'4 ( f'4 g'4.) a'4 ( b'4 a'4 g'4) f'4 ( g'4 a'4) ~ a'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMaior
 g'4 ( f'4 d'4) e'4 ( f'4 g'4.) a'4 ( b'4 a'4 g'4) f'4 ( g'4 g'4) \divisioMinima
 d''4 ( c''4 b'4 a'4 g'4.) f'4 ( g'4 a'4) ~ a'4 ( g'4) \finalis
 g'4 g'4 a'4 e'4 ( f'4 g'4) g'4 \divisioMinima
 g'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 b'4 ( c''4 a'4) c''4 ( b'4) ~ b'4 ( a'4 g'4 f'4) a'4 ( g'4) g'4 \divisioMaior
 g'4 g'4 g'4 g'4 ( f'4 d'4) e'4 ( f'4 g'4) g'4 ( a'4 b'4 a'4 g'4) g'4 f'4 ( g'4 a'4) ~ a'4 ( g'4) g'4 \divisioMaxima
 g'4 g'4 g'4 ( \once \tweak #'font-size #-4 d'' ) d''4 ( c''4 b'4 a'4 a'4) g'4 g'4 f'4 ( g'4 a'4) ~ a'4 ( g'4) f'4 ( g'4) g'4 \divisioMaior
 g'4 a'4 ( b'4) b'4 ( c''4 a'4) c''4 ( b'4) ~ b'4 ( a'4 g'4 f'4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 g'4 g'4 g'4 ( f'4 d'4) e'4 ( f'4 g'4) g'4 ( a'4 b'4 a'4 g'4)  f'4 ( g'4) a'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 ( f'4 d'4) e'4 ( f'4 g'4.) a'4 ( b'4 a'4 g'4) f'4 ( g'4 g'4) \divisioMinima
 d''4 ( c''4 b'4 a'4 g'4.) f'4 ( g'4) a'4 ( a'4 g'4) \finalis

}

altoMusic = {
r4 e'2*7/4 ~ e'2*4/2 d'2 ~ d'2*3/2 ~ d'4 r4 e'2*7/4 ~ e'2*4/2 d'2 c'2*3/2 ~ c'4 ~ \divisioMaior
c'2*3/2 ~ c'2*7/4 ~ c'2*4/2 ~ c'2*3/2 \divisioMinima
d'2*4/2 c'2*7/4 ~ c'2 b4 \finalis
e'2*3/2 ~ e'2*4/2 ~ \divisioMinima
e'4 ~ e'2*3/2 g'2*4/2 d'2*5/2 ~ d'2 ~ d'4 ~ \divisioMaior
d'2 ~ d'4 c'2*3/2 b2*4/2 c'2*5/2 ~ c'2 ~ c'2*3/2 b4 \divisioMaxima
r2 g'2 e'2*7/2 d'2 ~ d'2*5/2 ~ d'4 ~ \divisioMaior
d'2*3/2 g'2*4/2 ~ g'2*5/2 d'2 ~ d'4 ~ \divisioMinima
d'4 ~ d'4 c'2*3/2 ~ c'2*4/2 ~ c'2*4/2 ~ c'2 ~ c'2*3/2 b4 \divisioMaior
c'2*3/2 ~ c'2*7/4 ~ c'2*4/2 ~ c'2*3/2 \divisioMinima
d'2*4/2 c'2*7/4 ~ c'2 b4 \finalis
}

tenorMusic = {
r4 c'2*7/4 ~ c'2*4/2 ~ c'2 ~ c'2*3/2 b4 r4 c'2*7/4 b2*4/2 a2 f2*3/2 g4 \divisioMaior
a2*3/2 g2*7/4 d2*4/2 e2*3/2 \divisioMinima
g2*4/2 ~ g2*7/4 d2 ~ d4 \finalis
c'2*3/2 ~ c'2*4/2 ~ \divisioMinima
c'4 ~ c'2*3/2 d'2*4/2 c'2*5/2 a2 b4 ~ \divisioMaior
b2 ~ b4 a2*3/2 g2*4/2 f2*5/2 e2 d2*3/2 ~ d4 \divisioMaxima
b2*4/2 c'2*7/2 ~ c'2 ~ c'2*5/2 b4 ~ \divisioMaior
b2*3/2 c'2*4/2 d'2*5/2 c'2 b4 ~ \divisioMinima
b4 a4 ~ a2*3/2 g2*4/2 f2*4/2 e2 d2*3/2 ~ d4 \divisioMaior
f2*3/2 g2*7/4 d2*4/2 e2*3/2 \divisioMinima
g2*4/2 ~ g2*7/4 d2 ~ d4 \finalis
}

bassMusic = {
r2*9/4 a2*4/2 ~ a2 g2*3/2 ~ g4 r4 c2*7/4 ~ c2*4/2 d2 ~ d2*3/2 e4 \divisioMaior
f2*3/2 c2*7/4 ~ c2*4/2 ~ c2*3/2 \divisioMinima
b,2*4/2 a,2*7/4 g,2 ~ g,4 \finalis
r2*3/2 b2*4/2 ~ \divisioMinima
b4 a2*3/2 g2*4/2 ~ g2*5/2 ~ g2 ~ g4 ~ \divisioMaior
g2 g,4 ~ g,2*3/2 ~ g,2*4/2 ~ g,2*5/2 ~ g,2 ~ g,2*3/2 ~ g,4 \divisioMaxima
g2*4/2 a2*7/2 ~ a2 g2*5/2 ~ g4 ~ \divisioMaior
g2*3/2 e2*4/2 g2*5/2 ~ g2 ~ g4 ~ \divisioMinima
g4 d4 ~ d2*3/2 ~ d2*4/2 ~ d2*4/2 ~ d2 g,2*3/2 ~ g,4 \divisioMaior
a,2*3/2 c2*7/4 ~ c2*4/2 ~ c2*3/2 \divisioMinima
b,2*4/2 a,2*7/4 g2 g,4 \finalis
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
