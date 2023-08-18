\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.265
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Imitatores" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Imitatores"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Imitatores" }
    \line {}
  }
}

chantText = \lyricmode {
I -- mi -- ta -- tó -- res me -- i 
\set stanza = " * " e -- stó -- te, fra -- tres, 
et ob -- ser -- vá -- te e -- os qui i -- ta ám -- bu -- lant, 
sic -- ut ha -- bé -- tis for -- mam no -- stram. }

chantMusic = {
\tieDown   d'4 f'4 ( e'4) f'4 g'4 ( a'4) g'4 f'4 g'4  f'4 d'4 ( e'4 c'4) c'4 f'4 ( a'4) g'4 \divisioMaior
 g'4 ( f'4) g'4 a'4 f'4 d'4 f'4 ( e'4 f'4) d'4 \divisioMinima
 d'4 ( c'4) f'4 g'4 ( a'4) a'4 ( c''4 a'4 b'\prall c''4) g'4 f'4 ( g'4 f'4 d'4) \divisioMaior
 f'4 ( e'4) f'4 g'4 a'4 g'4  c''4 ( c''4 a'4 bes'4 g'4) g'4 ( a'4 f'4) f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 ~ c'2 e'4 ~ \divisioMaior
e'2*4/2 d'2 a2*3/2 ~ a4 ~ \divisioMinima
a2 ~ a4 b2 c'2*6/2 ~ c'2*4/2 \divisioMaior
d'2*4/2 e'2 f'2*5/2 c'2*3/2 ~ c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
r4 a2*3/2 g2*3/2 a2*3/2 g2*4/2 a2 c'4 \divisioMaior
a2*4/2 ~ a2 g2*3/2 f4 \divisioMinima
e2 d4 ~ d2 e2*6/2 f2*4/2 ~ \divisioMaior
f2*4/2 ~ f2 ~ f2*5/2 g2*3/2 ~ g2*3/2 a4 \finalis
}

bassMusic = {
d4 ~ d2*3/2 e2*3/2 f2*3/2 ~ f2*4/2 ~ f2 c4 ~ \divisioMaior
c2*4/2 d2 ~ d2*3/2 ~ d4 ~ \divisioMinima
d2 ~ d4 ~ d2 a,2*6/2 ~ a,2*4/2 \divisioMaior
bes,2*4/2 c2 d2*5/2 e2*3/2 ~ e2*3/2 f4 \finalis
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
        "VI"
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
