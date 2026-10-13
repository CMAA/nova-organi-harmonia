\version  "2.18.0"
\include "gregorian.ly"
\include "noh2.ily"

%Proofed 3/14

global = {
  \key d \major
  \cadenzaOn
}

chantText = \lyricmode {
  A -- gnus De -- _ i,
  \set stanza = "*"
  qui tol -- lis pec -- cá -- ta mun -- di:
  mi -- se -- ré -- re no -- bis.

  A -- gnus De -- _ i,
  \set stanza = "*"
  qui tol -- lis pec -- cá -- ta mun -- di:
  mi -- se -- ré -- re no -- bis.

  A -- gnus De -- _ i,
  \set stanza = "*"
  qui tol -- lis pec -- cá -- ta mun -- di:
  do -- na no -- bis pa -- cem.
}

chantMusic = \relative c' {
  %1
  d4 fis( a) fis( e) a( a) b( a) \divisioMinima
  a( b cis) d( cis b a b4) a \divisioMinima
  d b( cis) d4 cis( b a b) a4 \divisioMaior \forceBreak
  fis( g a) a( g fis) e( d) e( fis) d( e d) d4 \finalis

  %2
  d4 fis( a) fis( e) a( a) b( a) \divisioMinima \forceBreak
  fis4 g( fis e) d4 a' fis g a( b) a4 \divisioMaior
  fis( g a) a( g fis) e( d) e( fis) d( e d) d4 \finalis \forceBreak

  %3
  d4 fis( a) fis( e) a( a) b( a) \divisioMinima
  a( b cis) d( cis b a b4) a \divisioMinima
  d b( cis) d4 cis( b a b) a4 \divisioMaior \forceBreak
  fis( g a) a( g fis) e( d) e( fis) d( e d) d4 \finalis
}

altoMusic = \relative c' {
  %1
  d4~
  d2 -\tweak Glissando.Y-offset #-0.4 \glissando fis4
  e4~ e2*2
  fis2*3/2~ fis2*5/2 e4
  fis4 g2*3/2 e2*2~ e4
  d2*3/2~
  d2*3/2 -\tweak Glissando.Y-offset #-0.6 \glissando e4
  d e fis a,2*3/2~ a4

  %2
  d4~ d2~ d e~ e~ e4 d2*3/2~ d2~ d~ d2 cis4
  d2*3/2 a b2*2 a2*3/2~ a4

  %3
  d4~
  d2 -\tweak Glissando.Y-offset #-0.4 \glissando fis4
  e4 e2*2
  fis2*3/2~ fis2*5/2 e4
  fis4 g2*3/2 e2*2~ e4
  d2*3/2~
  d -\tweak Glissando.Y-offset #-0.6 \glissando e4
  d e fis a,2*3/2~ a4
}

tenorMusic = \relative c' {
  %1
  s4 a2 b cis2*2~ \divisioMinima
  cis2*3/2 s2*5/2 cis4 \divisioMinima
  d4~ d2*3/2~ d2*2 cis4 \divisioMaior
  b2*3/2 a b2*2 g2*3/2 fis4 \finalis

  %2
  s4 a2 b a~ a~ \divisioMinima
  a4 b2*3/2 fis2 d e2~ e4 \divisioMaior
  d2*3/2~ d~ d2*2 e2*3/2 fis4 \finalis 

  %3
  s4 a2 b cis2*2~ \divisioMinima
  cis2*3/2 \shiftRight b2*5/2 cis4 \divisioMinima
  d4~ d2*3/2~ d2*2 cis4 \divisioMaior
  b2*3/2 a b2*2 g2*3/2 fis4 \finalis
}

bassMusic = \relative c {
  %1
  d4~ d2 a'~ a2*2
  fis2*3/2 b2*5/2~ b4~
  b e,2*3/2 a2*2~ a4
  b2*3/2 fis g2*2 d2*3/2~ d4

  %2
  d4~ d2~ d~ d cis~
  cis4 b2*3/2~ b2~ b a2~ a4
  b2*3/2 fis g2*2 d'2*3/2~ d4

  %3
  d4~ d2 a'~ a2*2
  fis2*3/2 b2*5/2~ b4~
  b e,2*3/2 a2*2~ a4
  b2*3/2 fis g2*2 d2*3/2~ d4
}

voiceLines = \relative c' {
  \voiceLineStyle

  %1
  s4
  \offsetVoiceLineY
  \voiceLine "down" "down" a2 a

  s2*14 
  \voiceLine "down" "down" g2*2 g2*3/2

  %3
  s2*18
  \offsetVoiceLineY
  \voiceLine "down" "down" a2 a

  s2*14
  \voiceLine "down" "down" g2*2 g2*3/2
}

\score {
  <<
    \new Lyrics
  \new GrandStaff <<
    \set GrandStaff.instrumentName = "V."

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
      \lyricsto chant \chantText
    }
  >>
}

 

