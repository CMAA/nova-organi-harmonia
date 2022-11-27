\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.301
%(volume.page)

global = {
 \key f \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Pueri Hebraeorum vestimenta" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Pueri Hebraeorum vestimenta"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Pueri Hebraeorum vestimenta" }
    \line {}
  }
}

chantText = \lyricmode {
Pú -- e -- ri He -- bræ -- ó -- rum 
\set stanza = " * " ve -- sti -- mén -- ta pro -- ster -- né -- bant in vi -- a, et cla -- má -- bant di -- cén -- tes: 
Ho -- sán -- na fí -- li -- o Da -- vid: 
be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. }

chantMusic = {
\tieDown   f'4 aes'4 f'4 ( ees'4) aes'4 bes'4 aes'4 ( c''4) c''4 \divisioMinima
 c''4 c''4 c''4 ( ees''4) c''4 c''4 bes'4 \forceBreak
 c''4 bes'4 aes'4 aes'4 ( bes'4) bes'4 \divisioMinima
 c''4 aes'4 bes'4 g'4 aes'4 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaxima
 f'4 aes'4 f'4 g'4 aes'4 bes'4 \forceBreak
 aes'4 bes'4 \divisioMaior
 g'4 aes'4 bes'4 ( c''4) bes'4 aes'4 aes'4 ( bes'4) aes'4 \divisioMinima
 g'4 bes'4 g'4 aes'4 ( g'4) f'4 f'4 f'4 \finalis

}

altoMusic = {
c'2 ~ c'2 ees'2 d'2 ees'4 ~ \divisioMinima
ees'2 ~ ees'2*3/2 f'2 ees'2*3/2 ~ ees'2 ~ ees'4 ~ \divisioMinima
ees'2 ~ ees'4 ~ ees'2 c'2 ~ c'4 ~ \divisioMaxima
c'4 des'2 ees'2*3/2 ~ ees'2 ~ \divisioMaior
ees'2 f'2*3/2 ees'4 ~ ees'2*3/2 ~ \divisioMinima
ees'4 bes2 ~ bes2 ~ bes2 aes4 \finalis
}

tenorMusic = {
f2 g2 aes2 f2 g4 ~ \divisioMinima
g2 aes2*3/2 ~ aes2 ~ aes2*3/2 f2 g4 \divisioMinima
aes2 ~ aes4 bes2 ~ bes2 aes4 ~ \divisioMaxima
aes4 bes2 ~ bes2*3/2 f4 g4 \divisioMaior
bes2 aes2*3/2 ~ aes4 ~ aes2*3/2 \divisioMinima
ees4 ~ ees2 ~ ees2 c2 ~ c4 \finalis
}

bassMusic = {
aes,2 c2 ~ c2 ~ c2 ~ c4 \divisioMinima
bes,2 aes,2*3/2 des2 c2*3/2 ees2 ~ ees4 \divisioMinima
c2 ees4 ~ ees2 f2 ~ f4 ~ \divisioMaxima
f4 ~ f2 ees2*3/2 ~ ees2 \divisioMaior
c2 des2*3/2 d4 c2*3/2 ~ \divisioMinima
c4 g,2 ees,2 f,2 ~ f,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Antiphon"
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
