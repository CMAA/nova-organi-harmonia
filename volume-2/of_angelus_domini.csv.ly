\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.11
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Angelus Domini" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Angelus Domini"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Angelus Domini" }
    \line {}
  }
}

chantText = \lyricmode {
An -- ge -- _ _ lus 
\set stanza = " * " Dó -- _ _ mi -- ni 
de -- scén -- _ _ _ _ _ _ _ _ dit 
de cœ -- _ _ _ lo, _ _ 
et di -- _ _ _ xit mu -- li -- é -- _ _ _ ri -- bus: 
Quem quǽ -- _ _ _ ri -- tis, 
sur -- ré -- _ _ _ _ xit, 
sic -- ut di -- _ _ xit, 
al -- le -- _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 c''4 a'4 g'4) ~ g'4 ( f'4) g'4 ( a'4 g'4) g'4 \divisioMinima
 a'4 ( g'4 a'4) c''4 ( c''4) d''4 ( c''4 a'4) g'4 ( f'4 a'4) a'4 \divisioMaior
 a'4 c''4 ( a'4) ~ a'4 ( f'4 \forceBreak
) g'4 ( a'4 g'4 f'4) ~ f'4 ( d'4 e'4 c'4) \divisioMinima
 c'4 ( d'4) f'4 ( f'4) g'4 ( a'4) c''4 ( a'4 g'4) ~ g'4 ( f'4 g'4) g'4 \divisioMaior
 g'4 ( a'4 b'\prall c''4) c''4 ( c''4 b'4) c''4 ( g'4. \forceBreak
) a'4 ( c''4 b'4 c''4) d''4 ( e''4 c''4 c''4) d''4 ( b'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMaior
 g'4 g'4 ( g'4) ~ g'4 ( e'4 d'4) e'4 ( g'4) a'4 ( g'4 f'4 g'4) g'4 \divisioMinima
 g'4 a'4 ( c''4 \forceBreak
) b'4 ( g'4) a'4 c''4 ( c''4) d''4 ( e''4 d''4 b'4) c''4 ( d''4 c''4) b'4 ( c''4) a'4 ( b'4 g'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( g'4 f'4) g'4 ( f'4 e'4) f'4. g'4 ( a'4 f'4) ~ f'4 ( d'4 g'4) f'4 ( g'4) g'4 \divisioMaior \forceBreak

 a'4 g'4 ( c''4 b'4 g'4) a'4 ( a'4) f'4 ( a'4 c''4 g'4 f'4) ~ f'4 ( d'4) e'4 ( f'4 g'4 a'4 g'4) g'4 \divisioMaior
 g'4 g'4 ( c''4) c''4 ( c''4 b'4) c''4 ( a'4) ~ a'4 ( g'4) a'4 \divisioMaior \forceBreak

 a'4 ( b'\prall c''4 \once \tweak #'font-size #-4 b' ) c''4 ( d''4 c''4 a'4.) g'4 ( b'4.) a'4 ( c''4 b'4 a'4.) g'4 c''4 ( c''4) a'4 ( b'4 g'4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
f'2 e'2*4/2 d'2*3/2 f'2*3/2 e'4 ~ \divisioMinima
e'2*3/2 ~ e'2*5/2 f'2*3/2 e'2 ~ e'4 f'2 ~ f'4 e'2*3/2 d'2 ~ d'4 c'2 ~ \divisioMinima
c'2 ~ c'2 ~ c'2 ~ c'2 d'2*4/2 ~ d'4 \divisioMaior
e'2*4/2 f'2*3/2 g'2*5/4 e'2*4/2 g'2*7/2 d'2 ~ d'4 ~ \divisioMaior
d'4 e'2 c'2*3/2 ~ c'2 b2*4/2 c'4 ~ \divisioMinima
c'4 e'2 g'2*3/2 ~ g'2 ~ g'2*4/2 ~ g'2*3/2 ~ g'2 d'2 ~ d'4 \divisioMaxima
c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/4 d'2 ~ d'2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMaior
d'4 g'2*4/2 f'2 ~ f'2*4/2 d'2 ~ d'4 c'2 d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 g'2 e'2*4/2 ~ e'2*3/2 ~ e'4 \divisioMaior
f'2*4/2 g'2*9/4 ~ g'2*5/4 e'2*3/2 ~ e'2*5/4 ~ e'2 f'2*3/2 d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
c'2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'2*3/2 ~ c'2*5/2 ~ c'2*3/2 ~ c'2 ~ c'4 ~ c'2*3/2 a2*3/2 ~ a2*3/2 ~ a2 ~ \divisioMinima
a2 ~ a2 g2 ~ g2 c'2*4/2 b4 \divisioMaior
c'2*4/2 ~ c'2*3/2 ~ c'2*5/4 ~ c'2*4/2 ~ c'2*7/2 ~ c'2 b4 ~ \divisioMaior
b4 c'2 g2*3/2 ~ g2 d2*4/2 e4 ~ \divisioMinima
e4 c'2 ~ c'2*3/2 a2 b2*4/2 g2*3/2 d'2 c'2 b4 \divisioMaxima
e2 ~ e2*3/2 f2*3/2 a2*3/4 ~ a2 c'2 ~ c'2 a2 b4 ~ \divisioMaior
b4 c'2*4/2 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 a2 c'2*3/2 b4 ~ \divisioMaior
b4 c'2 ~ c'2*4/2 d'2*3/2 c'4 ~ \divisioMaior
c'2*4/2 ~ c'2*9/4 d'2*5/4 ~ d'2*3/2 c'2*5/4 a2 c'2*3/2 ~ c'2*3/2 b4 \finalis
}

bassMusic = {
a2 c'2*4/2 r2*7/2 \divisioMinima
b2*3/2 a2*5/2 ~ a2*3/2 ~ a2 ~ a4 d2*3/2 ~ d2*3/2 ~ d2*3/2 a2 \divisioMinima
g2 f2 ~ f2 e2 g2*4/2 ~ g4 \divisioMaior
c2*4/2 d2*3/2 e2*5/4 a2*4/2 e2*7/2 g2 ~ g4 ~ \divisioMaior
g4 c2 ~ c2*3/2 ~ c2 ~ c2*4/2 ~ c4 ~ \divisioMinima
c4 ~ c2 e2*3/2 ~ e2 ~ e2*4/2 ~ e2*3/2 ~ e2 g2 ~ g4 \divisioMaxima
c2 a,2*3/2 ~ a,2*3/2 ~ a,2*3/4 d2 ~ d2 g2 ~ g2 ~ g4 ~ \divisioMaior
g4 e2*4/2 f2 d2*4/2 ~ d2*3/2 g2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g4 e2 a2*4/2 ~ a2*3/2 ~ a4 \divisioMaior
d2*4/2 e2*9/4 ~ e2*5/4 a2*3/2 ~ a2*5/4 ~ a2 d2*3/2 g2*3/2 ~ g4 \finalis
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
