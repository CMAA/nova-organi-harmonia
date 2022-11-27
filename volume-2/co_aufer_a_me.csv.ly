\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.226
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Aufer a me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Aufer a me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Aufer a me" }
    \line {}
  }
}

chantText = \lyricmode {
Au -- fer a me _ 
\set stanza = " * " op -- pró -- bri -- um et con -- tém -- ptum. 
qui -- a man -- dá -- ta tu -- a ex -- qui -- sí -- vi, Dó -- mi -- ne: 
nam et te -- sti -- mó -- ni -- a tu -- a 
me -- di -- tá -- ti -- o me -- a est. }

chantMusic = {
\tieDown   bes'4 ( c''4) c''4 ( d''4) c''4 bes'4 ( c''4 d''4) ~ d''4 ( c''4) \divisioMinima
 c''4 d''4 c''4 bes'4 ( a'4) bes'4 ( d''4) c''4 ( \once \tweak #'font-size #-4 bes' ) c''4 g'4 \divisioMaior \forceBreak

 g'4 g'4 ( f'4) g'4 ( bes'4 a'4) bes'4 g'4 bes'4 ( d''4 c''4) c''4 \divisioMinima
 a'4 ( bes'4) a'4 ( g'4) a'4 ( c''4) c''4 a'4 ( bes'4) a'4 g'4 \divisioMaxima
 a'4 ( bes'4 a'4) g'4 \forceBreak
 a'4 ( bes'4 a'4) g'4 a'4 g'4 g'4 ( f'4) g'4 g'4 ( d'4) \divisioMaior
 f'4 g'4 g'4 ( bes'4 a'4 g'4) f'4 ( g'4) g'4 g'4 ( bes'4 a'4 g'4) a'4 g'4 \finalis

}

altoMusic = {
f'2 ~ f'2*3/2 g'2 a'2*4/2 ~ a'2 f'2 d'2 ~ d'2 g'2 \divisioMaior
f'4 ees'2 d'2*3/2 f'2 ~ f'2*3/2 ~ f'4 ~ \divisioMinima
f'2 ~ f'2 ~ f'2*3/2 ~ f'2 d'2 \divisioMaxima
f'2*4/2 ~ f'2*4/2 d'2 ~ d'2 ~ d'4 ~ d'2 ~ \divisioMaior
d'2 ~ d'2*4/2 c'2*3/2 ~ c'2*4/2 ~ c'4 bes4 \finalis
}

tenorMusic = {
d'2 ~ d'2*3/2 ~ d'2 f'2*3/2 ~ \divisioMinima
f'4 d'2 c'2 bes2 g2 ~ g2 ~ \divisioMaior
g4 ~ g2 ~ g2*3/2 ~ g2 ~ g2*3/2 a4 \divisioMinima
c'2 d'2 ~ d'2*3/2 c'2 ~ c'4 bes4 \divisioMaxima
c'2*4/2 ~ c'2*4/2 bes2 a2 ~ a4 bes2 \divisioMaior
a2 g2*4/2 d2*3/2 ees2*4/2 d2 \finalis
}

bassMusic = {
bes2 a2*3/2 g2 f2*4/2 ~ f2 ~ f2 g2 ~ g2 ees2 \divisioMaior
d4 c2 bes,2*3/2 d2 f2*3/2 ~ f4 ~ \divisioMinima
f2 ~ f2 d2*3/2 ~ d2 g2 \divisioMaxima
f2*4/2 d2*4/2 ~ d2 ~ d2 bes,4 ~ bes,2 ~ \divisioMaior
bes,2 ~ bes,2*4/2 a,2*3/2 g,2*4/2 ~ g,2 \finalis
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
        "II."
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
