\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.164
%(volume.page)

%Proofed 3/14

global = {
 \key f \major
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e 
\set stanza = " * " e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Chri -- ste e -- lé -- i -- son. 
Chri -- ste e -- lé -- i -- son. 
Chri -- ste e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Ký -- ri -- e _ _ 
\set stanza = " * " e -- lé -- i -- son.
}

chantMusic = \relative f' {
\tieDown   
f4( g a bes) a a( g) \divisioMinima
a( g f e f) g f f \finalis
f4( g a bes) a a( g) \divisioMinima \forceBreak
a( g f e f) g f f \finalis
f4( g a bes) a a( g) \divisioMinima
a( g f e f) g f f \finalis \forceBreak
f( g a bes) a( g) \divisioMinima
a( g f e f) g f f \finalis
f( g a bes) a( g) \divisioMinima
a( g f e f) g f f \finalis \forceBreak
f( g a bes) a( g) \divisioMinima
a( g f e f) g f f \finalis
f( g a bes) a a( g) \divisioMinima
a( g f e f) g f f \finalis \forceBreak
f( g a bes) a a( g) \divisioMinima
a( g f e f) g f f \finalis
c' f, f4. c'4( bes) c( d c bes a g) \divisioMinima
a( g f e f) g f f \finalis
}

altoMusic = \relative f' {
  f2*5/2 e2 c2*5/2~ c2~ c4
  c2*5/2~ c2~ c~ c2*3/2 d2 c4
  f2~ f2*3/2 e2
  f2 d2*3/2 c2~ c4
  f2~ f e
  c2 bes2*3/2~ bes2 a4
  d2~ d e
  f d2*3/2 c2~ c4
  c2*2~ c2~ c~ c2*3/2 d2 c4
  f2~ f2*3/2 e2 c2*5/2~ c2~ c4
  d2~ d2*3/2 c2~ c2 d2*3/2~ d2 c4
  e4 f2*5/4~ f2~ f2*3/2 d~ d2 bes2*3/2~ bes2 a4
}

tenorMusic = \relative d' {
  d2*5/2 c2~ \divisioMinima
  c a2*3/2 bes2 a4 \finalis
  f2*5/2 e2 \divisioMinima
  f2~ f2*3/2~ f2~ f4 \finalis
  d'2~ d2*3/2 c2~ \divisioMinima
  c2 bes2*3/2~ bes2 a4 \finalis
  a2 g~ g \divisioMinima
  f~ f2*3/2~ f2~ f4 \finalis
  bes2~ bes c~ \divisioMinima
  c2 bes2*3/2~ bes2 a4 \finalis
  f2*2 e2 \divisioMinima
  f2~ f2*3/2~ f2~ f4 \finalis
  d'2 bes2*3/2 c2~ \divisioMinima
  c2~ c2*3/2 bes2 a4 \finalis
  bes2 g2*3/2 e2 \divisioMinima
  f2~ f2*3/2~ f2~ f4 \finalis
  c'2*7/4 d2 a2*3/2 bes \divisioMinima
  f2~ f2*3/2~ f2~ f4 \finalis
}

bassMusic = \relative f {
  s4*7 f2~ f2*3/2~ f2~ f4
  a,2*5/2 c2 s2 d2*3/2 bes2 a4
  s2 g'2*3/2 \shiftRight c2 a2 \shiftRight bes2*3/2 f2~ f4
  d2~ d c a g2*3/2 f2~ f4
  s2 g'2 \shiftRight c2 a2 \shiftRight bes2*3/2 f2~ f4
  a,2*2 c2 s2 d2*3/2 bes2 a4
  g'2~ g2*3/2 \shiftRight c2 f,2 a2*3/2 \shiftRight bes2 s4
  bes,2~ bes2*3/2 c2 s2 d2*3/2 bes2 a4
  a'2*7/4 g2~ g2*3/2~ g bes,2 g2*3/2 f2~ f4
}

voiceLines = {
\voiceLineStyle
}

\score{
  <<
    \new Lyrics
    \context Lyrics {
    } 
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "VI."
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
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
  \layout{
  }
  
}
