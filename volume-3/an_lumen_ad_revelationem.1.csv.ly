\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.61
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page ""
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "" }
    \line {}
  }
}

chantText = \lyricmode {
Lu -- men 
\set stanza = " * " ad re -- ve -- la -- ti -- ó -- nem gén -- ti -- um: 
et gló -- ri -- am ple -- bis tu -- æ Is -- ra -- el. Cant. 
Nunc di -- mít -- tis ser -- vum tu -- um, Dó -- mi -- ne, 
\set stanza = " * " 
se -- cún -- dum ver -- bum tu -- um in pa -- ce. }

chantMusic = {
\tieDown   bes'4 a'4  f'4 a'4 bes'4 g'4 f'4 g'4 f'4 g'4 f'4 ees'4 \divisioMaior
 ees'4 ( g'4) bes'4 bes'4 a'4 ( f'4) a'4 bes'4 g'4 g'4 a'4 g'4 f'4 \finalis
 f'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 bes'4 \divisioMaxima
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 a'4 bes'4 g'4 f'4 \finalis

}

altoMusic = {
f'2 ~ f'4 ~ f'2 d'2 ~ d'2 bes2*3/2 \divisioMaior
ees'2 f'2 ~ f'2 d'2 ~ d'2 c'2 ~ c'4 \finalis
d'2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ d'4 ~ \divisioMaxima
d'4 ees'2 f'2 ~ f'2*3/2 c'2 \finalis
}

tenorMusic = {
d'2 r4 f2 g2 a2 g2*3/2 ~ \divisioMaior
g2 f2 c'2 ~ c'2 bes2 c'4 bes4 a4 \finalis
r2*4/2 g2*4/2 a2 bes4 ~ \divisioMaxima
bes4 ~ bes2 ~ bes2 c'2*3/2 bes4 a4 \finalis
}

bassMusic = {
r2 d4 ~ d2 ~ d2 ~ d2 ees2*3/2 \divisioMaior
c2 d2 ~ d2 g2 ~ g2 f2 ~ f4 \finalis
bes2 a2*6/2 g2 ~ g4 \divisioMaxima
bes,4 c2 d2 f2*3/2 ~ f2 \finalis
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
        "VIII."
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
