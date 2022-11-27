\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.234
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exaudi Deus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exaudi Deus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exaudi Deus" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- áu -- _ di De -- _ us 
\set stanza = " * " o -- ra -- ti -- ó -- nem _ me -- am, 
et ne de -- spé -- xe -- ris de -- pre -- ca -- ti -- ó -- _ nem _ _ me -- am: 
in -- tén -- de _ in me, _ _ _ _ _ _ _ 
et ex -- _ áu -- _ _ _ di me. }

chantMusic = {
\tieDown   g'4 g'4 ( f'4) a'4 ( g'4 g'4) f'4 g'4. ees'4 ( g'4 f'4) f'4 ( g'4) \divisioMinima
 f'4 ( ees'4) f'4 g'4 ( a'\prall bes'4) bes'4 ( c''4 a'4 bes'4) g'4 ( f'4 \forceBreak
) bes'4 ( bes'4 a'4 g'4 a'\prall bes'4 a'4 g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 ( \once \tweak #'font-size #-4 ees' ) f'4 g'4 ( bes'4 a'4) bes'4 ( c''4 a'4 bes'4) g'4 ( f'4 bes'4) bes'4 \divisioMinima \forceBreak

 bes'4 ( c''4 bes'4 bes'4) a'4 ( f'4) g'4 bes'4 ( a'4) bes'4. g'4 ( c''4 bes'4) a'4 ( bes'4) c''4 ( bes'4) c''4 ( d''4 c''4) a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaxima
 f'4 f'4 ( a'4 \forceBreak
) a'4 ( c''4 a'4) bes'4 ( c''4) g'4 ( \once \tweak #'font-size #-4 f' )  f'4. ees'4 ( aes'4 g'4 f'4) \divisioMinima
 ees'4 ( g'4) bes'4. c''4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( f'4) bes'4 ( bes'4) ~ bes'4 ( g'4 ees'4 f'4) \divisioMaior
 ees'4 ( f'4 g'4 \forceBreak
) f'4 g'4 ( bes'4 a'4) bes'4 ( bes'4 g'4 f'4) g'4 ( f'4) bes'4 ( bes'4 g'4 f'4) g'4 ( a'4) f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
d'4 c'2 d'2*4/2 ~ d'2*3/4 ees'2*3/2 d'2 \divisioMinima
r2*3/2 d'2*3/2 f'2*4/2 ees'2 ~ ees'2*3/2 d'2*5/2 c'2 ~ c'2*4/2 ~ c'2 \divisioMaxima
r2*3/2 d'2*3/2 f'2*4/2 ~ f'2*3/2 ~ f'4 \divisioMinima
ees'2*4/2 f'2*3/2 ~ f'2 ees'2*3/4 d'2*3/2 f'2*4/2 ~ f'2*3/2 ~ f'2*4/2 ~ f'2 ~ \divisioMaxima
f'4 ~ f'2 ~ f'2*5/2 d'2 c'2*3/4 ~ c'2*4/2 \divisioMinima
ees'2 d'2*9/4 f'2 ~ f'4 ees'2 d'2*4/2 \divisioMaior
ees'2*3/2 f'4 ~ f'2*3/2 ~ f'2*4/2 ~ f'2 ees'2*4/2 ~ ees'2 c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
bes4 ~ bes2 ~ bes2*4/2 ~ bes2*3/4 ~ bes2*3/2 ~ bes2 ~ \divisioMinima
bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 ~ bes2*3/2 ~ bes2*5/2 a2 ~ a2*4/2 bes4 a4 \divisioMaxima
bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 c'2*3/2 bes4 ~ \divisioMinima
bes2*4/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/4 ~ bes2*3/2 c'2*4/2 a2*3/2 bes2*4/2 d'2 \divisioMaxima
a4 c'2 bes2*5/2 ~ bes2 aes2*3/4 a2*4/2 \divisioMinima
bes2 ~ bes2*9/4 ~ bes2*3/2 ~ bes2 ~ bes2*4/2 ~ \divisioMaior
bes2*3/2 ~ bes2*4/2 c'2*4/2 bes2 ~ bes2*4/2 ~ bes2 ~ bes2*3/2 a4 \finalis
}

bassMusic = {
r2*7/2 a2*3/4 g2*3/2 ~ g2 ~ \divisioMinima
g2*3/2 ~ g2*3/2 d2*4/2 ees2 g2*3/2 ~ g2*5/2 a2 f2*4/2 ~ f2 \divisioMaxima
g2*3/2 ~ g2*3/2 d2*4/2 ~ d2*3/2 ~ d4 \divisioMinima
c2*4/2 d2*3/2 g2 ~ g2*3/4 ~ g2*3/2 f2*4/2 ~ f2*3/2 d2*4/2 ~ d2 ~ \divisioMaxima
d4 ~ d2 ~ d2*5/2 g2 aes2*3/4 f2*4/2 \divisioMinima
g2 ~ g2*9/4 d2*3/2 c2 bes,2*4/2 \divisioMaior
c2*3/2 d2*4/2 ~ d2*4/2 ~ d2 g2*4/2 c2 f2*3/2 ~ f4 \finalis
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
