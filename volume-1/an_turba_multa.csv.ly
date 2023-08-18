\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.303
%(volume.page)

global = {
 \key g \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Turba multa" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Turba multa"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Turba multa" }
    \line {}
  }
}

chantText = \lyricmode {
Tur -- ba mul -- ta, 
\set stanza = " * " quæ con -- vé -- ne -- rat ad di -- em fe -- stum, cla -- má -- bat Dó -- mi -- no: 
Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni: 
Ho -- sán -- na in ex -- cél -- sis. }

chantMusic = {
\tieDown   bes'4 bes'4 aes'4 ( bes'4) aes'4 \divisioMinima
 g'4 aes'4 bes'4 bes'4 bes'4 bes'4 bes'4 aes'4 bes'4 ( c''4) bes'4 ( c''4 bes'4) \divisioMinima \forceBreak

 g'4 ( aes'4) bes'4 aes'4 aes'4 ( g'4) f'4 ( g'4) g'4 \divisioMaxima
 g'4 aes'4 bes'4 aes'4 ( c''4 bes'4 c''4) \divisioMinima
 bes'4 aes'4 bes'4 aes'4 \forceBreak
 f'4 ( aes'4) g'4 f'4 ( g'4) ees'4 ees'4 ees'4 \divisioMaior
 aes'4 aes'4 ( g'4) f'4 ( ees'4) aes'4 aes'4 ( bes'4) g'4 g'4 \finalis

}

altoMusic = {
ees'2 c'2*3/2 \divisioMinima
ees'2 ~ ees'2 des'2 c'2 f'2 ~ f'2*3/2 \divisioMinima
ees'2 ~ ees'2 c'2 ~ c'2 ~ c'4 \divisioMaxima
ees'2 ~ ees'4 ~ ees'2 ~ ees'2 ~ \divisioMinima
ees'4 ~ ees'2*3/2 c'2*3/2 ~ c'2 bes2*3/2 \divisioMaior
c'4 ~ c'2 f'4 ees'4 ~ ees'4 d2 ees'2 \finalis
}

tenorMusic = {
g2 f2*3/2 \divisioMinima
ees2 f2 ~ f2 ~ f2 ~ f2 bes2*3/2 ~ \divisioMinima
bes2 g2 f2 aes2 g4 \divisioMaxima
c'2 g4 aes2 g2 ~ \divisioMinima
g4 f2*3/2 bes2*3/2 aes2 g2*3/2 \divisioMaior
f4 ees2 g2 aes4 f2 c'2 \finalis
}

bassMusic = {
ees2 f2*3/2 \divisioMinima
c2 bes,2 ~ bes,2 f2 des2 ~ des2*3/2 \divisioMinima
ees2 ~ ees2 f2 ~ f2 c4 ~ \divisioMaxima
c2 ~ c4 ~ c2 ees2 ~ \divisioMinima
ees4 f2*3/2 ~ f2*3/2 ~ f2 g2*3/2 \divisioMaior
r4 c2 ~ c2 ~ c4 ~ c2 ~ c2 \finalis
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
        "IV"
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
