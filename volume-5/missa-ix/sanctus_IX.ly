\version  "2.18.0"
\include "gregorian.ly"
\include "noh2.ily"

%Proofed 3/14

global = {
  \key d \major
  \cadenzaOn
}

chantText = \lyricmode {
  San -- _ ctus,
  \set stanza = "*"
  San -- ctus,
  San -- _ _ ctus Dó -- mi -- nus De -- us Sá -- _ ba -- oth.
  Ple -- ni sunt cœ -- li et ter -- ra
  gló -- ri -- a tu -- a.
  Ho -- sán -- na in ex -- cél -- sis.
  Be -- ne -- dí -- ctus qui ve -- nit
  in nó -- _ mi -- ne Dó -- _ mi -- ni.
  Ho -- _ _ _ _ sán -- na in ex -- cél -- _ _ sis.
}

chantMusic = \relative c' {
  %1
  a'4( a \tieDown fis)~ fis( d) e( fis e) d4 \divisioMinima
  fis( fis e) d4 \divisioMinima
  d( fis) a( a) d( cis b cis) b( a) \divisioMinima \forceBreak
  d4 cis b( cis) d( cis b) a fis( d) g( fis e fis) e( d) d \divisioMaxima

  %2
  fis4 fis( e) d e fis a \forceBreak
  b( cis \tieDown b)~ b( \once \tweak #'font-size #-4 a) a4 \divisioMinima
  d cis( b) a( fis) g( fis e) e( d) \divisioMaxima

  %3
  fis4 a( b a) a( a) fis4 d e( fis e) e( d) \divisioMaxima \forceBreak

  %4
  d'( cis b cis) a b( cis) cis b( cis) d( cis b) a4 \divisioMinima
  d cis( b a) b( cis) b( a) a fis( d) g( fis e fis) e( d) d4 \divisioMaxima \forceBreak

  %5
  d( e) fis( d4.) e4( fis g fis e) fis4. d4( fis) a( a b) a4 \divisioMinima
  d cis( b a) fis( e d4.) fis4( a fis) d( e d) d4 \finalis
}

altoMusic = \relative c' {
  %1
  d2~
  d2*3/2 -\tweak Glissando.Y-offset #-1.2 \glissando e4*4
  cis2*3/2 -\tweak Glissando.Y-offset #-0.5 \glissando d4~
  d2 e fis2~ fis2~ fis
  a2 g2 fis2*2 d2~ d2*2 a2~ a4

  %2
  s4 d2*3/2~ d2*3/2
  fis2 e2*2
  d2*3/2~ d2~
  d2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e4*2

  %3
  s4 e2*3/2~ e2 d2 a2*3/2~ a2

  %4
  fis'2*5/2~ fis2*5/2~ fis2*2~
  fis4 g2*5/2 fis2*3/2 d2~ d2~ d2
  b2*3/2

  %5
  a2*9/4 b2*5/2~ b2*3/4 d2 e2*2
  d4~ d2*3/2~ d2*7/4~ d2*3/2 a2*3/2~ a4
}

tenorMusic = \relative c' {
  %1
  fis,2 a2*3/2 g2*3/2 fis4~ \divisioMinima
  fis2*3/2~ fis4 \divisioMinima
  a2~ a2~ a2 b2 cis2 \divisioMinima
  d2~ d2~ d2*2 b2~ b2*2 g2 fis4 \divisioMaxima

  %2
  s4 fis2*3/2 a2*3/2~ a2~ a2*2~ \divisioMinima
  a2*3/2 b2~ b2*3/2 a2 \divisioMaxima

  %3
  s4 a2*3/2~ a2~ a2 g2*3/2 fis2 \divisioMaxima

  %4
  d'2*5/2 cis2*5/2 b2*2~ \divisioMinima
  b4 d2*5/2 cis2*3/2 b2 a2 g2 fis2*3/2 \divisioMaxima

  %5
  d2*9/4~ d2*5/2~ d2*3/4 a'2~ a2*2 \divisioMinima
  a4 fis2*3/2 a2*7/4~ a2*3/2 g2*3/2 fis4 \finalis
}

bassMusic = \relative c {
  %1
  d2~ d2*3/2~ d2*3/2~ d4
  a2*3/2 b4~
  b2 cis2 d2~ d2 fis2~
  fis2 e2 b'2*2 a2 g2*2 d2 d4

  %2
  b4~ b2*3/2~ b2*3/2 d2 cis2*2
  b2*3/2 d2 e2*3/2 fis2

  %3
  d4~ d2*3/2 cis2 b2 d2*3/2~ d2

  %4
  b'2*5/2 fis2*5/2 d2*2~
  d4 e2*5/2 fis2*3/2 d2 b2~ b2~ b2*3/2

  %5
  fis2*9/4 g2*5/2 b2*3/4~ b2 cis2*2
  b4~ b2*3/2~ b2*7/4 d2*3/2~ d2*3/2~ d4
}

voiceLines = \relative c' {
  \voiceLineStyle

  %1
  s2*13 s4
  \voiceLine "down" "up"   d2*2 d2
  \voiceLine "down" "down" g,2*2 g2

  %3
  s2*15 
  \voiceLine "down" "up" a2 a2*3/2

  %5
  s2*29 s8
  \voiceLine "down" "up" a2*3/2 a
}

voiceLinesDown = \relative c' {
  \voiceLineStyle

  %1
  s2*13 s4
  \voiceLine "down" "down" b2*2 b2
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
      \new Voice {
        \voiceFour \global \voiceLinesDown
      }
    >>

  >>
    \context Lyrics {
      \lyricsto chant \chantText
    }
    >>
}
