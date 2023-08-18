\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.100
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Spiritus est" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Spiritus est"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Spiritus est" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia. _ 
\set stanza = " * " 
_ _ _ _ _ _ _ ℣. 
Spí -- ri -- tus est _ _ qui vi -- ví -- fi -- cat: 
ca -- ro _ _ au -- tem non prod -- _ _ _ est 
\set stanza = " * " 
quid -- _ quam. _ 
_ _ _ _ _ _ _ _ _ 
Non repetitur Allelúia. }

chantMusic = {
\tieDown   g'4 g'4 g'4 ( a'4 c''4 \tiny b' a' 4) c''4 ( d''4 c''4 g'4.) a'4 ( g'4 f'4 g'4) \divisioMaior
 d'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4.) a'4 c''4 ( a'4) b'4 ( g'4) \divisioMinima
 d'4 g'4 a'4 ( g'4) ~ g'4 ( f'4. \forceBreak
) a'4 ( b'4 c''4 g'4) \finalis
 g'4 ( g'4) g'4 g'4 ( b'4) b'4 ( c''4 b'4 g'4.) a'4 ( b'4 a'4) ~ a'4 ( g'4) \divisioMinima
 g'4 ( a'4) g'4 ( d'4) g'4 g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima \forceBreak

 g'4 g'4 ( e'4.) f'4 ( g'4 f'4 e'4) f'4 ( e'4 d'4) g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( c''4 g'4) \divisioMinima
 g'4 ( f'4 a'4) a'4. g'4 ( c''4 a'4) b'4 ( a'4. \forceBreak
) g'4 ( c''4 a'4 b'4) a'4 ( g'4) \divisioMaior
 g'4 ( a'4) c''4 ( \tiny b' a' 4) c''4 ( d''4 c''4 g'4.) a'4 ( g'4 f'4 g'4) \divisioMaior
 d'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4.) a'4 c''4 ( a'4) b'4 ( g'4) \divisioMinima \forceBreak

 d'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4.) a'4 ( b'4 c''4 g'4) \finalis
 
}

altoMusic = {
e'2 ~ e'2 ~ e'2*3/2 g'2*3/2 ~ g'2*3/4 d'2*3/2 ~ d'4 ~ \divisioMaior
d'2*3/2 ~ d'2*9/4 ~ d'2 ~ d'2 ~ \divisioMinima
d'2*3/2 c'2*7/4 ~ c'2*3/2 b4 \finalis
r2*3/2 e'2 ~ e'2*9/4 ~ e'2 d'2*3/2 \divisioMinima
c'2 d'2*3/2 ~ d'2*6/2 ~ d'2 \divisioMaxima
r4 c'2*5/4 ~ c'2 ~ c'2 a2*3/2 d'2*6/2 c'2*3/2 ~ \divisioMinima
c'2*3/2 ~ c'2*3/4 ~ c'2*3/2 e'2*5/4 d'2*4/2 ~ d'2 \divisioMaior
e'2 ~ e'2*3/2 g'2*3/2 ~ g'2*3/4 d'2*3/2 ~ d'4 ~ \divisioMaior
d'2*3/2 ~ d'2*9/4 ~ d'2 ~ d'2 ~ \divisioMinima
d'2*3/2 c'2*7/4 ~ c'2*3/2 b4 \finalis
}

tenorMusic = {
c'2 c2 c'2*3/2 ~ c'2*9/4 ~ c'2*3/2 b4 \divisioMaior
g2*3/2 a2*9/4 ~ a2 g2 ~ \divisioMinima
g2*3/2 c2*7/4 d2*3/2 ~ d4 \finalis
r2*5/2 d'2*9/4 c'2 b2*3/2 \divisioMinima
a2 b2*3/2 c'2*6/2 b2 \divisioMaxima
g4 ~ g2*5/4 a2 g2 f2*3/2 d2*6/2 e2*3/2 \divisioMinima
f2*3/2 e2*3/4 ~ e2*3/2 c'2*5/4 ~ c'2*4/2 b2 \divisioMaior
c'2 ~ c'2*3/2 ~ c'2*9/4 ~ c'2*3/2 b4 \divisioMaior
g2*3/2 a2*9/4 ~ a2 g2 ~ \divisioMinima
g2*3/2 c2*7/4 d2*3/2 ~ d4 \finalis
}

bassMusic = {
r2 'b2 a2*3/2 e2*9/4 g2*3/2 ~ g4 \divisioMaior
b,2*3/2 d2*9/4 g2 ~ g2 \divisioMinima
b,2*3/2 a,2*7/4 g,2*3/2 ~ g,4 \finalis
r2*29/4 \divisioMinima
r2*5/2 g2*6/2 ~ g2 \divisioMaxima
r4 c2*5/4 a,2 ~ a,2 d2*3/2 b,2*6/2 a,2*3/2 ~ \divisioMinima
a,2*3/2 ~ a,2*3/4 c2*3/2 ~ c2*5/4 g2*4/2 ~ g2 \divisioMaior
r2 a2*3/2 e2*9/4 g2*3/2 ~ g4 \divisioMaior
b,2*3/2 d2*9/4 g2 ~ g2 \divisioMinima
b,2*3/2 a,2*7/4 g,2*3/2 ~ g,4 \finalis
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
