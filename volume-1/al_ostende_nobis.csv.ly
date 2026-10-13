\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.5
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ostende nobis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ostende nobis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ostende nobis" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- ia, 
\set stanza = " * " 
al -- le -- _ lú -- _ ia. 
_ _ _ _ _ \set stanza = "℣." 
Os -- tén -- _ de no -- bis Dó -- _ mi -- ne 
mi -- se -- ri -- cór -- di -- am tu -- _ _ _ _ am: 
et sa -- lu -- tá -- re tu _ _ _ _ _ _ _ _ _ _ _ um 
\set stanza = " * " 
da _ no -- _ bis. _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown  ees'4 ( f'4 g'4) g'4 ( f'4) g'4 ( \quil a' bes'4 a'4) g'4 ( bes'4) ~ bes'4 ( bes'4) bes'4 ( c''4 bes'4 g'4) ~ g'4 ( f'4) \divisioMaior
 ees'4 ( f'4 g'4) g'4 ( f'4) g'4 ( \quil a' bes'4 a'4) g'4 ( bes'4) \forceBreak
 bes'4 ( bes'4) bes'4 ( c''4 bes'4 g'4) ~ g'4 ( f'4) \divisioMaior
 a'4 ( bes'4.) f'4 ( g'4 f'4 ees'4.) g'4 ( \quil a' bes'4) ~ bes'4 ( a'4.) f'4 ( bes'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis \forceBreak

 bes'4 bes'4. a'4 ( c''4 bes'4) bes'4 bes'4 ( a'4) a'4 a'4 ( bes'4 c''4) ~ c''4 ( bes'4 g'4) bes'4 ( g'4 a'4) a'4 ( g'4) g'4 \divisioMaior
 a'4 a'4 a'4 ( g'4) \forceBreak
 bes'4 ( d''4 c''4) bes'4 a'4 ( bes'4) g'4 ( f'4) bes'4 ( bes'4 a'4 f'4.)  g'4 ( aes'4 g'4 ees'4.) f'4 ( aes'4 g'4 f'4) g'4 ( f'4) f'4 \divisioMaxima
 f'4 f'4 f'4 g'4 ( f'4 bes'4) bes'4 \forceBreak
 bes'4 ( g'4 bes'4 a'4 f'4.) g'4 ( bes'4 g'4 ees'4.)  aes'4 ( g'4 f'4 g'4) bes'4 ( bes'4 bes'4) c''4 ( d''4 bes'4 g'4) \divisioMinima
 a'4 ( c''4 a'4) c''4 ( bes'4 a'4) bes'4 ( f'4.) \forceBreak
 g'4 ( f'4) aes'4 ( f'4.) aes'4 ( g'4 f'4) g'4 ( ees'4) ees'4 \divisioMaior
 g'4 ( ees'4) f'4 ( g'4) bes'4 ( a'4) bes'4 ( g'4 bes'4) a'4 ( bes'4 g'4 f'4) \divisioMinima
 ees'4 ( g'4) bes'4 ( g'4 f'4.) ees'4 ( g'4 \quil a' bes'4 a'4 ) \forceBreak
bes'4 ( a'4 g'4 a'4.) f'4 ( a'4 g'4) a'4 ( f'4 ees'4) f'4 ( g'4 f'4) \divisioMinima
  bes'4 ( bes'4 g'4 f'4) g'4 ( aes'4 f'4 ees'4.)  bes'4 ( bes'4 g'4 f'4) g'4 ( a'!4 g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
r2*3/2 d'2 ~ d'2*4/2 ~ d'2 g'2 f'2*3/2 c'2 ~ c'4 \divisioMaior
bes2*3/2 ees'2 d'2*4/2 ~ d'2 ees'2 f'2*3/2 d'2*3/2 ~ \divisioMaior
d'2*5/4 c'2*9/4 ees'2 f'2*7/4 d'2 ~ d'2 c'2 ~ c'4 \finalis
r4 g'2*3/4 ~ g'2*4/2 f'2*3/2 ~ f'2 g'2*4/2 ees'2*3/2 f'2*3/2 ~ \divisioMaior
f'2 ~ f'2 ~ f'2*4/2 ~ f'2 ~ f'2 d'2*3/2 ~ d'2*3/4 c'2*3/2 bes2*3/4 c'2*4/2 d'2 ~ d'4 \divisioMaxima
r4 bes2 d'2*4/2 bes2*4/2 c'2*3/4 d'2*3/2 ees'2*3/4 ~ ees'2*4/2 f'2*3/2 ~ f'2*4/2 ~ \divisioMinima
f'2*6/2 ~ f'2*5/4 d'2 ees'2*5/4 ~ ees'2*3/2 d'2 bes4 \divisioMaior
ees'2*4/2 f'2*5/2 ~ f'2*4/2 \divisioMinima
ees'2 d'2*7/4 ees'2*3/2 ~ ees'2 f'2*9/4 ~ f'2*3/2 bes2*3/2 c'2*3/2 bes2*4/2 ~ bes2*9/4 ees'2*4/2 ~ ees'2 c'2 ~ c'4 \finalis
}

tenorMusic = {
r2*3/2 bes2 ~ bes2*4/2 ~ bes2 ~ bes2 ~ bes2*3/2 ~ bes2 a4 \divisioMaior
g2*3/2 ~ g2 ~ g2*4/2 bes2 ~ bes2 ~ bes2*3/2 a2*3/2 \divisioMaior
g2*5/4 ~ g2*9/4 bes2 c'2*7/4 ~ c'2 bes2 ~ bes2 a4 \finalis
r2*5/4 d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 c'2*3/2 d'2*3/2 ~ \divisioMaior
d'2 c'2 bes2*4/2 g2 a2 g2*3/2 d2*3/4 ees2*3/2 ~ ees2*3/4 ~ ees2*4/2 d2 bes4 \divisioMaxima
r4 d2 ~ d2*4/2 ~ d2*4/2 ~ d2*3/4 ~ d2*3/2 g2*3/4 c'2*4/2 ~ c'2*3/2 bes2*4/2 \divisioMinima
d'2*3/2 g2*3/2 f2*5/4 ~ f2 ees2*5/4 f2*3/2 ~ f2 g4 ~ \divisioMaior
g2*4/2 f2*5/2 bes2*4/2 ~ \divisioMinima
bes2 ~ bes2*7/4 ~ bes2*3/2 c'2 ~ c'2*9/4 bes2*3/2 g2*3/2 a2*3/2 f2*4/2 ees2*3/2 g2*3/4 ~ g2*4/2 bes2 ~ bes2 a4 \finalis
}

bassMusic = {
r2*5/2 g2*4/2 f2 ees2 d2*3/2 f2 ~ f4 \divisioMaior
r2*3/2 c2 bes,2*4/2 ~ bes,2 c2 d2*3/2 ~ d2*3/2 \divisioMaior
bes,2*5/4 c2*9/4 ~ c2 d2*7/4 g2 ees2 f2 ~ f4 \finalis
r2*19/4 c'2 bes2*10/2 \divisioMaior
d2 ~ d2 ~ d2*4/2 ~ d2 ~ d2 bes,2*3/2 ~ bes,2*3/4 ~ bes,2*3/2 g,2*3/4 aes,2*4/2 bes,2 ~ bes,4 \divisioMaxima
r2*3/2 bes,2*4/2 g,2*4/2 a,2*3/4 bes,2*3/2 c2*3/4 ~ c2*4/2 d2*3/2 ~ d2*4/2 ~ \divisioMinima
d2*3/2 ~ d2*3/2 ~ d2*5/4 bes,2 c2*5/4 ~ c2*3/2 bes,2 ees4 \divisioMaior
c2*4/2 d2*5/2 ~ d2*4/2 \divisioMinima
g2 ~ g2*7/4 c2*3/2 ~ c2 d2*9/4 ~ d2*3/2 f2*3/2 ~ f2*3/2 d2*4/2 ees2*3/2 ~ ees2*3/4 c2*4/2 ~ c2 f2 ~ f4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new Lyrics
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
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
  \layout{
  }
  
}
