\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.254
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego clamavi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego clamavi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego clamavi" }
    \line {}
  }
}

chantText = \lyricmode {
E -- go cla -- má -- vi, _ 
\set stanza = " * " 
quó -- ni -- am ex -- au -- dí -- sti me De -- us: 
in -- clí -- na au -- rem tu -- am, 
et ex -- áu -- _ di ver -- _ ba me -- a. }

chantMusic = {
\tieDown   ees'4 ( f'4) f'4 ( g'4) g'4 g'4 ( ees'4 f'4) f'4 ( d'4) ees'4 ( c'4) \divisioMaior
 ees'4 ( f'4) f'4 f'4 ( g'4) f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( a'4 bes'4 \forceBreak
) g'4 ( c''4) c''4 a'4 ( bes'4) a'4 ( g'4) \divisioMaxima
 bes'4 bes'4 ( d''4) c''4 ( d''4 c''4) bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 c''4 ( d''4 c''4 bes'4) bes'4 ( g'4) \divisioMaior \forceBreak

 bes'4 ( a'4) bes'4 c''4 ( a'4) bes'4 ( \once \tweak #'font-size #-4 c'' ) g'4 ( f'4) \divisioMinima
 ees'4 ( d'4 c'4) f'4 ( d'4 f'4) f'4 f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
bes2 ~ bes2*3/2 ~ bes2*3/2 c'2*4/2 ~ \divisioMaior
c'2*3/2 d'2*3/2 ~ d'2 ~ d'2*3/2 ees'2*3/2 d'2 ~ d'2 \divisioMaxima
r4 f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*4/2 d'2 ~ \divisioMaior
d'2*3/2 c'2*4/2 d'2 \divisioMinima
r2*7/2 c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
g2 ~ g2*3/2 ~ g2*3/2 ~ g2*4/2 ~ \divisioMaior
g2*3/2 bes2*3/2 a2 g2*3/2 ~ g2*3/2 ~ g2 ~ g2 \divisioMaxima
r4 f2 a2*3/2 bes2*3/2 a2*4/2 bes2 \divisioMaior
g2*3/2 ~ g2*4/2 a2 \divisioMinima
bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 a4 \finalis
}

bassMusic = {
r2 ees2*3/2 d2*3/2 c2*4/2 ~ \divisioMaior
c2*3/2 bes,2*3/2 ~ bes,2 ~ bes,2*3/2 c2*3/2 g,2 bes,2 \divisioMaxima
r4 d2 ~ d2*3/2 ~ d2*3/2 f2*4/2 g2 \divisioMaior
f2*3/2 ees2*4/2 d2 \divisioMinima
c2*3/2 d2*4/2 f2*3/2 ~ f4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
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
