\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.299
%(volume.page)

global = {
 \key f \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Pueri... portantes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Pueri... portantes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Pueri... portantes" }
    \line {}
  }
}

chantText = \lyricmode {
Pu -- e -- ri He -- bræ -- ó -- rum, 
\set stanza = " * " por -- tán -- tes ra -- mos o -- li -- vá -- rum, 
ob -- vi -- a -- vé -- runt Dó -- mi -- no, 
cla -- mán -- tes, et di -- cén -- tes: Ho -- sán -- na in ex -- cél -- sis. }

chantMusic = {
\tieDown   f'4 aes'4 f'4 ( ees'4) aes'4 bes'4 aes'4 ( c''4) c''4 \divisioMinima
 c''4 c''4 ees''4 c''4 bes'4 c''4 ( bes'4) aes'4 \forceBreak
 bes'4 ( c''4) c''4 \divisioMaior
 aes'4 c''4 bes'4 c''4 bes'4 ( \once \tweak #'font-size #-4 aes' ) bes'4 aes'4 ( g'4) f'4 \divisioMaior
 aes'4 aes'4 ( aes'4 g'4) f'4 ( ees'4) ees'4 f'4 ( aes'4 \forceBreak
) aes'4 ( aes'4 bes'4) aes'4 \divisioMinima
 aes'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( bes'4 g'4) aes'4 g'4 f'4 f'4 \finalis

}

altoMusic = {
r2*4/2 ees'2 ~ ees'2 ~ ees'4 \divisioMinima
aes'4 ~ aes'2 ~ aes'2 g'2*3/2 f'2 g'4 \divisioMaior
aes'4 g'2 aes'4 ees'2 ~ ees'4 ~ ees'2 c'4 ~ \divisioMaior
c'4 ees'2*3/2 r2*3/2 des'2 ees'2*4/2 \divisioMinima
f'4 ~ f'2 ees'2*3/2 ~ ees'2 c'2 \finalis
}

tenorMusic = {
aes2 bes2 c'2 ~ c'2 ~ c'4 \divisioMinima
ees'4 ~ ees'2 ~ ees'2 ~ ees'2*3/2 d'2 ees'4 ~ \divisioMaior
ees'4 ~ ees'2 ~ ees'4 c'2 ~ c'4 bes2 ~ bes4 \divisioMaior
aes4 ~ aes2*3/2 g2*3/2 aes2 ~ aes2*4/2 ~ \divisioMinima
aes4 f2 g2*3/2 bes2 ~ bes4 aes4 \finalis
}

bassMusic = {
r2*6/2 bes2 aes4 ~ \divisioMinima
aes4 g2 f2 c'2*3/2 ~ c'2 ~ c'4 ~ \divisioMaior
c'4 bes2 aes4 g2 f4 ~ f2 ~ f4 ~ \divisioMaior
f4 c2*3/2 ~ c2*3/2 bes,2 c2*4/2 \divisioMinima
des4 d2 ees2*3/2 ~ ees2 f2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Ant"
        "1"
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
