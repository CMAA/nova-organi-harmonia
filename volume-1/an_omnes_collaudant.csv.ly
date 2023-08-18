\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.307
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Omnes collaudant" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Omnes collaudant"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Omnes collaudant" }
    \line {}
  }
}

chantText = \lyricmode {
O -- mnes 
\set stanza = " * " col -- láu -- dant no -- men tu -- um, et di -- cunt: 
<<Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni: 
Ho -- sán -- na in ex -- cél -- sis>>. 
E u o u a e. }

chantMusic = {
\tieDown   ees'4 ( f'4) f'4  f'4 g'4 f'4 g'4 f'4 f'4 ( ees'4 g'4) g'4 g'4 ( bes'4 a'4) f'4 f'4 \divisioMaior \forceBreak

 ees'4 f'4 g'4 f'4 f'4 g'4 f'4 f'4 g'4 f'4 f'4 ( g'4) g'4 ( f'4 ees'4) f'4 ( ees'4) ees'4 \divisioMaior \forceBreak

 ees'4 ( g'4) bes'4 f'4 ees'4 ( d'4 c'4) ees'4 f'4 ( g'4) f'4 f'4 \finalis
 bes'4 bes'4 a'4 bes'4 g'4 f'4 \finalis

}

altoMusic = {
r2 d'2 ees'2 ~ ees'2 ~ ees'2*4/2 c'2*3/2 ~ c'2 \divisioMaior
ees'2 d'2*3/2 c'2*3/2 bes2 ~ bes2 ~ bes2*3/2 g2*3/2 \divisioMaior
ees'2 bes2 r2*3/2 ees'4 ~ ees'2 c'2 \finalis
f'2 ~ f'2 c'2 \finalis
}

tenorMusic = {
bes2 ~ bes2 ~ bes2 ~ bes2 ~ bes2*4/2 ~ bes2*3/2 a2 \divisioMaior
bes2 ~ bes2*3/2 a2*3/2 g2 f2 ees2*3/2 ~ ees2*3/2 \divisioMaior
g2 f2 bes2*4/2 ~ bes2 ~ bes4 a4 \finalis
bes2 c'2 bes4 a4 \finalis
}

bassMusic = {
g2 r2 ees2 d2 c2*4/2 f2*3/2 ~ f2 \divisioMaior
g2 bes2*3/2 r2*5/2 d2 ~ d2*3/2 c2*3/2 ~ \divisioMaior
c2 d2 g2*4/2 ees2 f2 \finalis
d2 ~ d2 f2 \finalis
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
