\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.163
%(volume.page)

%Proofed 3/14

global = {
 \key f \major
 \cadenzaOn 
}

chantText = \lyricmode {
  Ré -- qui -- em
  \set stanza = "*"
  æ -- tér -- nam do -- na e -- is Dó -- mi -- ne:
  et lux per -- pé -- tu -- a
  lú -- ce -- at e -- is.
  \set stanza = "Ps."
  Te de -- cet hy -- mnus De -- us in Si -- on,
  et ti -- bi red -- dé -- tur vo -- tum in Je -- rú -- sa -- lem:
  \set stanza = "*"
  e -- xáu -- di o -- ra -- ti -- ó -- nem me -- am,
  ad te o -- mnis ca -- ro vé -- ni -- et.
  Ré -- qui -- em
  \set stanza = "*"
  æ -- tér -- nam do -- na e -- is Dó -- mi -- ne:
  et lux per -- pé -- tu -- a
  lú -- ce -- at e -- is.
}

chantMusic = \relative f' {
\tieDown  f4( f g) f f f( g a) a( g) ~ g( f g) g( f) \divisioMaior
f( g a) a( g) a \forceBreak
a( c a g)( \quil a bes a g) f f( g a g f g) g( f) \divisioMaxima
a( \once\teeny g) a( g f) a g( a) g( f) f \divisioMaior \forceBreak
a( g) a a( c a g)( \quil a bes a g) f( g a g f g) g( f) \finalis
f( g) g( f) g( a) a a a a \forceBreak
a g a \divisioMaior
f g a a a a a a a g bes g a \divisioMaxima \forceBreak
f g( \once\teeny a) a a a a a a a a \divisioMaior
a a a a f g( a) g f f \finalis \forceBreak
f4( f g) f f f( g a) a( g) ~ g( f g) g( f) \divisioMaior
f( g a) a( g) a a( c a g)( \quil a bes a g) f f( g a g f g) \forceBreak
g( f) \divisioMaxima
a( \once\teeny g) a( g f) a g( a) g( f) f \divisioMaior
a( g) a a( c a g)( \quil a bes a g) f( g a g f g) g( f) \finalis
}

altoMusic = \relative c' {
  c2*5/2 ~ c2*3/2 e4 d2*2 c2
  f2*3/2 e2~ e4 f2*3/2 d2~ d2*3/2~ d4~ d2~ d2*2 c2
  e2 c2*2 d~ d4
  e2*3/2 f~ f2~ f2*3/2~ f2 e2*2 c2
  s2*3/2 f4~ f2*2 e2 d2 e4
  f4~ f2*3/2 d2*2~ d2~ d~ d4
  c2*11/2~ c2*2 d2*3/2 c2~ c4
  a2*5/2 c2*3/2 d2*5/2~ d2
  c2*3/2~ c~ c d2~ d2*3/2 \glissando f4~ f2 e2*2 c2
  c2~ c2*2 d2 c~ c4
  e2*3/2 f d2~ d2*3/2~ d2 c2*2 a2
}

tenorMusic = \relative a {
  a2*5/2~ \shiftRight a2*3/2 s4 bes2*2 a2 \divisioMaior
  d2*3/2 c2~ c4~ c2*3/2 bes2~ bes2*3/2~ bes4 a2 bes2*2~ bes4 a \divisioMaxima
  a2~ a2*2~ a~ a4 \divisioMaior
  c2*3/2~ c bes2 g2*3/2 a2 c2*2 bes4 a \finalis
  s2 d2~ d2*2 c2 bes2 a4~ \divisioMaior
  a2*2 f~ f2~ f~ f4 \divisioMaxima
  s4 f2*5~ \divisioMaior
  f2*2~ f4 bes2~ bes a4 \finalis
  f2*5/2~ f2*3/2~ f4 bes2*2 a2~ \divisioMaior
  a2*3/2 e2 f4~ f2*3/2~ f2 g2*3/2~ g4 a2~ a2*2~ a2 \divisioMaxima
  f2~ f2*2~ f2~ f a4~ \divisioMaior
  a2*3/2~ a~ a2 g2*3/2 d2 e2*2 c2 \finalis
}

bassMusic = \relative f {
  f2*5/2 a2*3/2~ a4 s2*11/2
  a4~ a2*3/2~ a2 g2*3/2 d4~ d2 bes2*2 f'2
  c2 f2*2 e d4
  c2*3/2 d~ d2~ d2*3/2~ d2 c2*2 f2
  s2*13/2
  d2*2~ d bes2 g d'4
  f,4~ f2*5
  a2*2 bes2*3/2 f'2~ f4
  f,2*5/2 a2*3/2 bes4~ bes2*2 d2
  a2*3/2~ a2~ a4 d2*3/2 bes2~ bes2*3/2 d4~ d2 c2*2 f2
  f,2 a2*2 bes2 a~ a4
  c2*3/2 d bes2 ~ bes2*3/2~ bes2 c2*2 f,2
}

voiceLines = {
\voiceLineStyle


s4*177
\voiceLine "down" "down" c2*2 c2
}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Intr."
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
