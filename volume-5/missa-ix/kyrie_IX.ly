\version  "2.18.0"
\include "gregorian.ly"
\include "noh2.ily"

%Proofed 3/14

global = {
  \key g \major
  \cadenzaOn
}

chantText = \lyricmode {
  Ky -- _ ri -- e _
  \set stanza = "*" e -- lé -- i -- son.
  Ky --   ri -- e _ e -- lé -- i -- son.
  Ky -- _ ri -- e _ e -- lé -- i -- son.

  Chri --   ste _ e -- lé -- i -- son.
  Chri -- _ ste _ e -- lé -- i -- son.
  Chri --   ste _ e -- lé -- i -- son.

  Ky -- ri -- e _ _ e --   lé -- i -- son.
  Ky -- ri -- e     e -- _ lé -- i -- son.
  Ky -- ri -- e _ _ _
  \set stanza = "*" _ _ _ _
  \set stanza = "**" _ _ _ e -- lé -- i -- son.
}

chantMusic = \relative c' {
  %1
  e4( g) a( b) a( g) fis( e4.)
  g4( e d e) d( e) g( a) g fis( e) \finalis

  %2
  b4 d( e) e4. g4( e d e) \forceBreak
  d( e) g( a) g fis( e) \finalis

  %3
  e4( g) a( b) a( g) fis( e4.)
  g4( e d e) d( e) g( a) g fis( e) \finalis \forceBreak

  %4
  b'4 b( a4.) c4( b a a)
  g a( c) a b \finalis

  %5
  b( a g) a( g) fis( e) g( e d e) d( e) g( a) g fis( e) \finalis \forceBreak

  %6
  b'4 b( a4.) c4( b a a)
  g a( c) a b \finalis

  %7
  b4 d( e) e4. d4( e b4.) a4( b c b a a) g a( c) a b \finalis \forceBreak

  %8
  b( a g) a( g) fis( e4.) g4( e d e) d( e) g( a) g fis( e) \finalis

  %9
  b'4 d( e) e4. d4( e b4.) a4( b c b a g) a( b b) \divisioMinima \forceBreak
  b( d e4.) d4( e b4.) a4( b c b a g) a( b b) \divisioMinima
  b( a g) a( g fis e4.) g4( e d e) d( e) g( a) g fis( e) \finalis
}

altoMusic = \relative c' {
  %1
  e2*3 b2*5/4 d2*3 c2*3/2 b2

  %2
  b2*3/2~ b2*3/4~ b2*2~ b2 d2*3/2 b2

  %3
  e2*3 b2*5/4 d2*3 c2*3/2 b2

  %4
  e4~ e2*5/4~ e2*5/2~ e2*3/2~ e4

  %5
  e2*5/2 b2 d2*3 c2*3/2 b2

  %6
  e4~ e2*5/4~ e2*5/2~ e2*3/2~ e4

  %7
  s4 a2 g2*7/4 e2*3/4~ e2*2~ e2*3/2~ e~ e4

  %8
  e2*5/2 b2*5/4 d2*3 c2*3/2 b2

  %9
  s4 b'2 a2*7/4 g2*3/4~ g2*3~ g2*3/2
  e2 fis2*7/4 e2*3/4~ e2*2~ e2 d2*3/2~
  d b2*9/4 c2*3 d2*3/2 b2
}

tenorMusic = \relative c' {
  %1
  g2*3~ g2*5/4~ g2*3~ g2*3/2~ g2 \finalis

  %2
  g2*3/2~ g2*3/4 a2*2 g2~ g2*3/2~ g2 \finalis

  %3
  g2*3~ g2*5/4~ g2*3~ g2*3/2~ g2 \finalis

  %4
  g4~ g2*5/4 a2*5/2 fis2*3/2 g4 \finalis

  %5
  g2*5/2~ g2~ g2*3~ g2*3/2~ g2 \finalis

  %6
  g4~ g2*5/4 a2*5/2 fis2*3/2 g4 \finalis

  %7
  g4 a2 b2*7/4 g2*3/4~ g2*2 a2*3/2 fis g4 \finalis

  %8
  g2*5/2~ g2*5/4~ g2*3~ g2*3/2~ g2 \finalis

  %9
  s4 b2~ b2*7/4~ b2*3/4 c2*3 b2*3/2 \divisioMinima
  g2 a2*7/4 g2*3/4~ g2*2 fis2~ fis2*3/2 \divisioMinima
  g~ g2*9/4~ g2*3~ g2*3/2~ g2 \finalis
}

bassMusic = \relative c {
  %1
  e2*3~ e2*5/4 b2*3 a2*3/2 e'2

  %2
  s2*3/2 e2*3/4~ e2*2~ e2 b2*3/2 e2

  %3
  e2*3~ e2*5/4 b2*3 a2*3/2 e'2

  %4
  e4 c2*5/4~ c2*5/2 e2*3/2~ e4

  %5
  e2*5/2~ e2 b2*3 a2*3/2 e'2

  %6
  e4 c2*5/4~ c2*5/2 e2*3/2~ e4

  %7
  s4 fis2 e2*7/4 d2*3/4 c2*2~ c2*3/2 e~ e4

  %8
  e2*5/2~ e2*5/4 b2*3 a2*3/2 e'2

  %9
  g4~ g2 fis2*7/4 e2*3/4~ e2*3~ e2*3/2
  e2~ e2*7/4 d2*3/4 c2*2~ c2 b2*3/2~
  b g2*9/4 a2*3 b2*3/2 e2
}

\score {
  <<
    \new Lyrics
  \new GrandStaff <<
    \set GrandStaff.instrumentName = "I."

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
    >>

  >>
    \context Lyrics {
      \lyricsto chant \chantText
    }
>>
}
