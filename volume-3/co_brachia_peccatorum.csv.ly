\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.121
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Brachia peccatorum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Brachia peccatorum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Brachia peccatorum" }
    \line {}
  }
}

chantText = \lyricmode {
Brá -- chi -- a 
\set stanza = " * " pec -- ca -- tó -- _ rum _ con -- te -- rén -- _ tur, 
con -- fír -- mat au -- _ tem ju -- _ stos Dó -- mi -- _ nus. }

chantMusic = {
\tieDown   ees'4 ( f'4 g'4) f'4 f'4 \divisioMinima
 f'4 f'4 f'4 ( g'4) bes'4 ( a'4) a'4 ( g'4) bes'4 ( c''4 bes'4) \divisioMinima
 a'4 ( bes'4) g'4 ( f'4 g'4)  g'4. f'4 ( aes'4 g'4 ees'4) ees'4 \divisioMaxima
 ees'4 ( \once \tweak #'font-size #-4 f' ) d'4 ( ees'4 f'4) f'4 f'4. ees'4 ( g'4 f'4) f'4 \divisioMinima
 f'4 ( g'4) a'4 ( g'4 a'\prall bes'4) g'4 ( a'4 g'4) f'4 f'4 ( g'4) a'4 ( g'4 f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
ees'2*3/2 ~ ees'2 \divisioMinima
c'2 d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 c'2*3/4 ~ c'2*4/2 bes4 \divisioMaxima
c'2 bes2*4/2 ~ bes2*3/4 c'2*3/2 d'4 ~ \divisioMinima
d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 f'2 ees'2*4/2 c'2 \finalis
}

tenorMusic = {
r2*3/2 bes2 \divisioMinima
r2 bes2 ~ bes2 c'2 d'2*3/2 \divisioMinima
g2 ~ g2*3/2 ~ g2*3/4 aes2*4/2 g4 ~ \divisioMaxima
g2 f2*4/2 bes2*3/4 ~ bes2*3/2 ~ bes4 \divisioMinima
a2 g2*4/2 ~ g2*3/2 a4 bes2 ~ bes2*4/2 ~ bes4 a4 \finalis
}

bassMusic = {
r2*5/2 \divisioMinima
a2 ~ a2 g2 ~ g2 ~ g2*3/2 ~ \divisioMinima
g2 f2*3/2 ees2*3/4 ~ ees2*4/2 ~ ees4 \divisioMaxima
c2 d2*4/2 ~ d2*3/4 ees2*3/2 bes,4 ~ \divisioMinima
bes,2 ~ bes,2*4/2 d2*3/2 ~ d4 ~ d2 c2*4/2 f2 \finalis
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
