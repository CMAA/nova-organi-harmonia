\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.151
%(volume.page)

global = {
 \key f \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Manducaverunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Manducaverunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Manducaverunt" }
    \line {}
  }
}

chantText = \lyricmode {
Man -- du -- ca -- vé -- runt, _ _ 
\set stanza = " * " et sa -- tu -- rá -- ti sunt ni -- mis, 
et de -- si -- dé -- ri -- um e -- ó -- rum át -- tu -- lit e -- is _ Dó -- mi -- _ nus: 
non sunt frau -- dá -- ti a _ de -- si -- dé -- ri -- o _ su -- o. }

chantMusic = {
\tieDown   f'4 ( g'4) ees'4 f'4 aes'4 ( bes'4) c''4 ( aes'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMinima
 aes'4 ( c''4) bes'4 aes'4 ( g'4) aes'4 ( c''4) bes'4 bes'4 ( \once \tweak #'font-size #-4 aes' ) bes'4 f'4 \divisioMaxima \forceBreak

 f'4 aes'4 ( g'4) aes'4 bes'4 ( c''4) bes'4 bes'4 bes'4 bes'4 ( aes'4 bes'4) f'4 ( g'4 ees'4) \divisioMinima
 aes'4 ( bes'4) aes'4 aes'4 aes'4  aes'4 ( bes'4 c''4 \forceBreak
) des''4 ( bes'4 c''\prall des''4 c''4 bes'4) aes'4 aes'4 ( bes'4) c''4 ( bes'4 aes'4 bes'4) bes'4 ( aes'4) \divisioMaxima
 c''4 bes'4 bes'4 ( \once \tweak #'font-size #-4 aes' ) bes'4 ( bes'4) f'4 \divisioMinima
 f'4 ( g'\prall aes'4) ~ aes'4 ( g'4 f'4 f'4 \forceBreak
) ees'4 f'4 aes'4 ( bes'4) bes'4 bes'4 ( c''4 aes'4) bes'4 ( aes'4 g'4) f'4 ( g'\prall aes'4 g'4 aes'4) g'4 ( f'4) \finalis

}

altoMusic = {
c'2*4/2 ~ c'2 ees'2*3/2 ~ ees'2*3/2 ~ \divisioMinima
ees'2*5/2 ~ ees'2*3/2 ~ ees'2 des'2 \divisioMaxima
c'4 ees'2*3/2 ~ ees'2*3/2 ~ ees'2 ~ ees'2*3/2 bes2 ~ bes4 \divisioMinima
c'2*3/2 f'2 ees'2*3/2 des'2*6/2 d'4 ees'2 ~ ees'2*4/2 c'2 \divisioMaxima
des'2 ees'2 f'2*3/2 \divisioMinima
des'2 ees'2*3/2 c'2 ~ c'2 ~ c'2*3/2 ~ c'2*6/2 des'2 ~ des'2*3/2 c'2 \finalis
}

tenorMusic = {
aes2*4/2 ~ aes2 ~ aes2*3/2 g2*3/2 \divisioMinima
aes2*5/2 ~ aes2*3/2 f2 ~ f2 ~ \divisioMaxima
f4 ees2*3/2 aes2*3/2 ~ aes2 g2*3/2 aes2 g4 \divisioMinima
f2*3/2 ~ f2 ~ f2*3/2 ~ f2*6/2 bes4 aes2 g2*4/2 aes2 \divisioMaxima
f2 ~ f2 ~ f2*3/2 \divisioMinima
bes2 aes2*3/2 g2 ~ g2 f2*3/2 ~ f2*6/2 ~ f2 bes2*3/2 ~ bes4 aes4 \finalis
}

bassMusic = {
r2*4/2 f2 c2*3/2 ees2*3/2 \divisioMinima
f2*5/2 c2*3/2 ~ c2 bes,2 \divisioMaxima
r4 c2*3/2 ~ c2*3/2 ees2 ~ ees2*3/2 ~ ees2 ~ ees4 ~ \divisioMinima
ees2*3/2 des2 c2*3/2 bes,2*6/2 ~ bes,4 c2 ees2*4/2 f2 \divisioMaxima
bes,2 c2 des2*3/2 \divisioMinima
d2 c2*3/2 ~ c2 bes,2 aes,2*3/2 f,2*6/2 bes,2 ~ bes,2*3/2 f2 \finalis
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
        "I"
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
