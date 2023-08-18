\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.137
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Bonum est confiteri" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Bonum est confiteri"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Bonum est confiteri" }
    \line {}
  }
}

chantText = \lyricmode {
Bo -- num est 
\set stanza = " * " con -- fi -- té -- _ _ ri Dó -- mi -- _ no, 
et psál -- _ _ le -- re _ _ nó -- _ mi -- ni tu -- _ o, 
Al -- tís -- si -- me. _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( ees'4) ees'4 ( g'4 f'4) f'4 ( c'4) \divisioMinima
 c'4 ( f'4) g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) f'4 ( ees'4 f'\prall g'4 f'4 ees'4 f'4) f'4 f'4 ( g'4 \forceBreak
) bes'4 ( g'4 a'4) g'4 ( f'4) \divisioMaxima
 ees'4 ( f'4) f'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) c''4 ( d''4) bes'4 ( a'4) bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( f'4) \divisioMinima
 f'4 bes'4 ( bes'4 bes'4) bes'4 ( c''4 bes'4 a'4 g'4 a'4) g'4 \forceBreak
 f'4 ( g'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 ees'4 ( g'4 \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 bes'4 ( a'4) bes'4 ( g'4 ees'4 f'\prall g'4 f'4 g'4) bes'4 c''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 g'4) bes'4 ( bes'4 g'4 f'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
bes2 ~ bes2*3/2 c'2 ~ \divisioMinima
c'2 ~ c'2 d'2 ~ d'2*3/2 bes2*5/2 ees'2*3/2 d'2 ~ d'2*3/2 ~ d'2 \divisioMaxima
ees'2 d'2 ~ d'2*3/2 f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'4 d'2*3/2 ees'2*3/2 d'2*4/2 c'2 ~ c'2*4/2 bes2 \divisioMaior
ees'4 ~ ees'2 f'2 ~ f'2 ~ f'2 ees'2 d'2*3/2 ~ d'2 ~ d'2*3/2 c'2*3/2 d'2*4/2 ~ d'2 c'2 ~ c'4 \finalis
}

tenorMusic = {
ees2 ~ ees2*3/2 g2 ~ \divisioMinima
g2 ~ g2 ~ g2 a2*3/2 bes2*5/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 a2 \divisioMaxima
bes2 a2 g2*3/2 f2*4/2 g2*3/2 a2*3/2 ~ \divisioMinima
a4 r2*3/2 g2*3/2 ~ g2*4/2 d2 ~ d2*4/2 ~ d2 \divisioMaior
rc4 ees2 d2 f2 g2 ~ g2 ~ g2*3/2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g2*4/2 ~ g2 bes2 a4 \finalis
}

bassMusic = {
g,2 c2*3/2 ~ c2 \divisioMinima
d2 ees2 g2 ~ g2*3/2 ~ g2*5/2 bes2*3/2 a2 g2*3/2 d2 \divisioMaxima
bes,2 ~ bes,2 ~ bes,2*3/2 d2*4/2 ~ d2*3/2 ~ d2*3/2 \divisioMinima
g4 ~ g2*3/2 c2*3/2 bes,2*4/2 a,2 g,2*4/2 ~ g,2*3/2 c2 d2 ~ d2 ~ d2 c2 bes,2*3/2 a,2 g,2*3/2 ~ g,2*3/2 ~ g,2*4/2 ees2 f2 ~ f4 \finalis
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
