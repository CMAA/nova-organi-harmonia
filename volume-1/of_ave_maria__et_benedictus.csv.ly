\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.42
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ave Maria... et benedictus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ave Maria... et benedictus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ave Maria... et benedictus" }
    \line {}
  }
}

chantText = \lyricmode {
A -- _ _ _ _ _ _ ve 
\set stanza = " * " 
Ma -- rí -- _ _ _ _ a, 
grá -- _ _ ti -- a ple -- _ na, 
Dó -- _ _ _ _ _ _ _ _ _ _ _ mi -- nus te -- _ _ _ cum: 
be -- ne -- dí -- _ cta _ tu _ _ 
in mu -- _ li -- é -- ri -- _ bus, 
et be -- ne -- dí -- ctus _ 
fru -- _ _ ctus ven -- _ _ tris tu -- _ i. }

chantMusic = {
\tieDown   f'4 ( g'4) a'4 ( g'4 a'4) f'4 ( a'4 f'4) g'4 ( f'4 e'4.) d'4 ( e'4 f'4 g'4 a'4) f'4 ( a'4 f'4) g'4 ( a'4) g'4 \divisioMaior
 a'4 c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( a'4 g'4 f'4) g'4 ( a'4 \forceBreak
) c''4 ( a'4 f'4 g'4) g'4 \divisioMaxima
 g'4 ( d'4) f'4. e'4 ( f'4 d'4) ~ d'4 ( e'4 f'4 g'4) f'4 ( g'4) g'4 g'4 ( a'4) ~ a'4 ( g'4) g'4 \divisioMaxima
 c''4 ( b'4 a'4) d''4 ( c''4.) b'4 ( c''4 a'4 \forceBreak
) b'4 ( g'4.) a'4 ( b'4) c''4 ( g'4) \divisioMinima
 c''4 ( b'4 a'4) d''4 ( c''4.) b'4 ( c''4 a'4) b'4 ( g'4.) a'4 ( b'4) c''4 ( g'4) f'4 ( g'4) g'4 \divisioMinima
 g'4 ( g'4 g'4) a'4 ( g'4 f'4 \forceBreak
) g'4 ( d'4.) g'4 ( c''4 a'4 b'4) a'4 ( g'4) \divisioMaxima
 a'4 c''4 ( c''4) c''4 ( d''4 e''4) ~ e''4 ( d''4) c''4 ( d''4) ~ d''4 ( c''4) c''4 ( b'4) c''4 ( d''4 a'4) ~ a'4 ( g'4) \divisioMaior
 g'4 g'4 ( c''4) ~ c''4 ( b'4 a'4 \forceBreak
) a'4 ( d''4 c''4) c''4 ( c''4 b'4 a'4) c''4 ( b'4 a'4) b'4 ( c''4) b'4 \divisioMaxima
 g'4 b'4 c''4 ( d''4 c''4) a'4 ( c''4 g'4 a'4) f'4 ( g'4 a'4) ~ a'4 ( g'4) \divisioMaior \forceBreak

 g'4 ( f'4) g'4 ( a'4 f'4) ~ f'4 ( e'4) d'4 d'4 ( e'4 f'4 g'4) a'4 ( f'4 e'4 d'4) \divisioMinima
 d'4 ( e'4 f'4 g'4) f'4 ( a'4 f'4 g'4) g'4 ( a'4) ~ a'4 ( g'4) g'4 \finalis

}

altoMusic = {
f'2*5/2 ~ f'2*3/2 c'2*7/4 d'2*5/2 f'2*3/2 ~ f'2*3/2 \divisioMaior
e'4 c'2 e'2 f'2*4/2 ~ f'2 d'2*4/2 c'4 ~ \divisioMaxima
c'2*7/4 ~ c'2*3/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'4 e'2*3/2 c'4 \divisioMaxima
g'2*11/4 ~ g'2*3/2 ~ g'2*5/4 ~ g'2*4/2 ~ \divisioMinima
g'2*11/4 ~ g'2*3/2 ~ g'2*5/4 ~ g'2*4/2 f'2 e'4 \divisioMinima
c'2*6/2 d'2*5/4 c'2*4/2 d'2 \divisioMaxima
e'4 ~ e'2 a'2 ~ a'2*4/2 g'2*3/2 f'2*4/2 e'2*3/2 ~ \divisioMaior
e'2 ~ e'2*4/2 ~ e'2*3/2 f'2*4/2 g'2*3/2 e'2 ~ e'4 \divisioMaxima
g'2 ~ g'2*3/2 e'2*4/2 f'2 d'2*3/2 \divisioMaior
c'2*4/2 ~ c'2*4/2 a2*4/2 c'2*4/2 \divisioMinima
a2*4/2 c'2*5/2 ~ c'2*3/2 b4 \finalis
}

tenorMusic = {
d'2*5/2 c'2*3/2 a2*7/4 ~ a2*5/2 c'2*3/2 ~ c'2*3/2 \divisioMaior
e4 ~ e2 g2 a2*4/2 ~ a2 ~ a2*4/2 c'4 \divisioMaxima
r2 c2*3/4 d2*3/2 f2*4/2 ~ f2*3/2 e4 ~ e2*3/2 ~ e4 \divisioMaxima
g2*11/4 e'2*3/2 d'2*5/4 c'2*4/2 ~ \divisioMinima
c'2*11/4 e'2*3/2 ~ e'2*5/4 ~ e'2*4/2 d'2 c'4 ~ \divisioMinima
c'2*6/2 ~ c'2*5/4 a2*4/2 b2 \divisioMaxima
c'4 ~ c'2 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*4/2 b2*3/2 \divisioMaior
g2 a2*4/2 ~ a2*3/2 ~ a2*4/2 g2*3/2 a2 g4 \divisioMaxima
d'2 c'2*3/2 ~ c'2*4/2 ~ c'2 b2*3/2 \divisioMaior
g2*4/2 a2*4/2 f2*4/2 ~ f2*4/2 ~ \divisioMinima
f2*4/2 ~ f2*4/2 d4 ~ d2*3/2 ~ d4 \finalis
}

bassMusic = {
r2*5/2 a2*3/2 ~ a2*7/4 f2*5/2 d2*3/2 c2*3/2 ~ \divisioMaior
c4 a,2 ~ a,2 d2*4/2 e2 f2*4/2 e4 \divisioMaxima
a,2 ~ a,2*3/4 ~ a,2*3/2 ~ a,2*4/2 d2*3/2 ~ d4 c2*3/2 ~ c4 \divisioMaxima
e2*11/4 ~ e2*3/2 ~ e2*5/4 ~ e2*4/2 \divisioMinima
a2*11/4 ~ a2*3/2 d'2*5/4 c'2*4/2 ~ c'2 ~ c'4 \divisioMinima
e2*6/2 g2*5/4 ~ g2*4/2 ~ g2 \divisioMaxima
r4 a2 g2 f2*4/2 e2*3/2 d2*4/2 e2*3/2 ~ \divisioMaior
e2 a,2*4/2 c2*3/2 d2*4/2 e2*3/2 ~ e2 ~ e4 ~ \divisioMaxima
e2 ~ e2*3/2 c2*4/2 d2 g2*3/2 \divisioMaior
e2*4/2 d2*4/2 ~ d2*4/2 a,2*4/2 \divisioMinima
f,2*4/2 a,2*4/2 ~ a,4 g,2*3/2 ~ g,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
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
