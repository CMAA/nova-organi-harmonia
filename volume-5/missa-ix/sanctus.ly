\version  "2.18.0"
\language "english"
\include "../../noh.ily"

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
  a'16( a \tieDown fs4)~ \ga fs d \gb e fs e d4 \quarterBar
  \gb fs fs e d4 \quarterBar
  \ga d fs \ga a a \gc d cs b cs \ga b a \quarterBar \forceBreak
  d4 cs \ga b cs \gb d cs b a4 \ga fs d \gc g fs e fs \ga e d d4 \singleBar

  %2
  fs4 \ga fs e d4 e fs a \forceBreak
  b16( cs \tieDown b4)~ b16( \once \teeny a16*3) a4 \quarterBar
  d \ga cs b \ga a fs \gb g fs e \ga e d \noBreak \singleBar

  %3
  fs4 \gb a b a \ga a a fs4 d \gb e fs e \ga e d \singleBar \break

  %4
  \gc d' cs b cs a4 \ga b cs cs4 \ga b cs \gb d cs b a4 \quarterBar
  d \gb cs b a \ga b cs \ga b a a4 \ga fs d \gc g fs e fs \forceBreak
  \ga e d d4 \singleBar

  %5
  \ga d e fs16( d4.*1/2) e16( fs g fs e4) fs4. \ga d fs \gb a a b a4 \quarterBar
  d \gb cs b a fs16( e d4.*2/3) \gb fs a fs \gb d e d d4 \doubleBar
}

altoMusic = \relative c' {
  %1
  d2*1/4~
  d2 -\tweak Glissando.Y-offset #-1.2 \glissando e4*3/2
  s4
  cs2*3/4 -\tweak Glissando.Y-offset #-0.5 \glissando d4~
  d2*1/2 e fs2*1/4~ fs2*1/2~ fs
  a2 g2*1/2 fs2*5/4 d2*1/2~ d2*3/4 a2*1/2~ a4

  %2
  s4 d2~ d2*3/2
  fs2*1/4 e2*3/2
  d2~ d2*1/2~
  d2*3/4 -\tweak Glissando.Y-offset #-0.8 \glissando e4

  %3
  s4 e2*3/4~ e2*1/2 d2 a2*3/4~ a2*1/2

  %4
  fs'2*5/4~ fs2*3/2~ fs2*5/4~
  fs4 g2*5/4 fs2 d2*1/2~ d2*1/4~ d2*1/2
  b2

  %5
  a2 b~ b2*3/4 d2*1/2 e2*5/4
  d4~ d2*3/4~ d2*3/4~ d2*3/4 a~ a4
}

tenorMusic = \relative c' {
  %1
  fs,2*1/4 a2  g2*3/4 fs4~ \quarterBar
  fs2*3/4~ fs4 \quarterBar
  a2*1/2~ a2*1/2~ a2*1/4 b2*1/2 cs2*1/2 \quarterBar
  d2~ d2*1/2~ d2*5/4 b2*1/2~ b2*3/4 g2*1/2 fs4

  %2
  s4 fs2 a2*3/2~ a2*1/4~ a2*3/2~ \quarterBar
  a2 b2*1/2~ b2*3/4 a2*1/2

  %3
  s4 a2*3/4~ a2*1/2~ a2 g2*3/4 fs2*1/2

  %4
  d'2*5/4 cs2*3/2 b2*5/4~ \quarterBar
  b4 d2*5/4 cs2 b2*1/2 a2*1/4 g2*1/2 fs2

  %5
  d2~ d2~ d2*3/4 a'2*1/2~ a2*5/4 \quarterBar
  a4 fs2*3/4 a~ a g fs4
}

bassMusic = \relative c {
  %1
  d2*1/4~ d2~  d2*3/4~ d4
  a2*3/4 b4~
  b2*1/2 cs2*1/2 d2*1/4~ d2*1/2 fs2*1/2~
  fs2 e2*1/2 b'2*5/4 a2*1/2 g2*3/4 d2*1/2 d4

  %2
  b4~ b2~ b2*3/2 d2*1/4 cs2*3/2
  b2 d2*1/2 e2*3/4 fs2*1/2

  %3
  d4~ d2*3/4 cs2*1/2 b2 d2*3/4~ d2*1/2

  %4
  b'2*5/4 fs2*3/2 d2*5/4~
  d4 e2*5/4 fs2 d2*1/2 b2*1/4~ b2*1/2~ b2

  %5
  fs2 g2 b2*3/4~ b2*1/2 cs2*5/4
  b4~ b2*3/4~ b d~ d~ d4
}

voiceLines = \relative c' {
  \voiceLineStyle

  %1
  s2*7 s4
  \voiceLine "down" "up"   d2*5/4 d2*1/2
  \voiceLine "down" "down" g,2*3/4 g2*1/2

  %3
  s2*9 s4 s8
  \voiceLine "down" "up" a2 a2*3/4

  %5
  s2*16
  \voiceLine "down" "up" a2*3/4 a
}

voiceLinesDown = \relative c' {
  \voiceLineStyle

  %1
  s2*7 s4
  \voiceLine "down" "down" b2*5/4 b2*1/2
}

\score {
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

    \new Lyrics \lyricsto chant \chantText
  >>
}
