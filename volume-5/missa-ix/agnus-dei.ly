\version  "2.18.0"
\language "english"
\include "../../noh.ily"

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
  do -- na -- no -- bis pa -- cem.
}

chantMusic = \relative c' {
  %1
  d4 \ga fs a \ga fs e \ga a a \ga b a \quarterBar
  \gb a b cs d16( cs b a b4) a \quarterBar
  d \ga b cs d4 \forceBreak
  \gc cs b a b a4 \halfBar
  \gb fs g a \gb a g fs \ga e d \ga e fs \gb d e d d4 \doubleBar

  %2
  d4 \ga fs a \ga fs e \ga a a \ga b a \quarterBar \forceBreak
  fs4 \gb g fs e d4 a' fs g \ga a b a4 \halfBar
  \gb fs g a \gb a g fs \ga e d \ga e fs \gb d e d d4 \doubleBar \break

  %3
  d4 \ga fs a \ga fs e \ga a a \ga b a \quarterBar
  \gb a b cs d16( cs b a b4) a \quarterBar
  d \ga b cs d4 \gc cs b a b a4 \halfBar \forceBreak
  \gb fs g a \gb a g fs \ga e d \ga e fs \gb d e d d4 \doubleBar
}

altoMusic = \relative c' {
  %1
  d4~
  d2*1/2 -\tweak Glissando.Y-offset #-0.4 \glissando fs16
  e16*3~ e2
  fs2*3/4~ fs2 e4
  fs4 g2 e2*3/4~ e4
  d2*3/4~
  d -\tweak Glissando.Y-offset #-0.6 \glissando e4*2
  a,2*3/4~ a4

  %2
  d4~ d2*1/2~ d e~ e~ e4 d2*3/4~ d2~ d~ d2*1/2 cs4
  d2*3/4 a b2 a2*3/4~ a4

  %3
  d4~
  d2*1/2 -\tweak Glissando.Y-offset #-0.4 \glissando fs16
  e16*3~ e2
  fs2*3/4~ fs2 e4
  fs4 g2 e2*3/4~ e4
  d2*3/4~
  d -\tweak Glissando.Y-offset #-0.6 \glissando e4*2
  a,2*3/4~ a4
}

tenorMusic = \relative c' {
  %1
  s4 a2*1/2 b cs2~ \quarterBar
  cs2*3/4 s2 cs4 \quarterBar
  d4~ d2~ d2*3/4 cs4 \halfBar
  b2*3/4 a b2 g2*3/4 fs4

  %2
  s4 a2*1/2 b a~ a~ \quarterBar
  a4 b2*3/4 fs2 d e2*1/2~ e4 \halfBar
  d2*3/4~ d~ d2 e2*3/4 fs4

  %3
  s4 a2*1/2 b cs2~ \quarterBar
  cs2*3/4 \shiftRight b2 cs4 \quarterBar
  d4~ d2~ d2*3/4 cs4 \halfBar
  b2*3/4 a b2 g2*3/4 fs4
}

bassMusic = \relative c {
  %1
  d4~ d2*1/2 a'~ a2
  fs2*3/4 b2~ b4~
  b e,2 a2*3/4~ a4
  b2*3/4 fs g2 d2*3/4~ d4

  %2
  d4~ d2*1/2~ d~ d cs~
  cs4 b2*3/4~ b2~ b a2*1/2~ a4
  b2*3/4 fs g2 d'2*3/4~ d4

  %3
  d4~ d2*1/2 a'~ a2
  fs2*3/4 b2~ b4~
  b e,2 a2*3/4~ a4
  b2*3/4 fs g2 d2*3/4~ d4
}

voiceLines = \relative c' {
  \voiceLineStyle

  %1
  s4
  \offsetVoiceLineY
  \voiceLine "down" "down" a2*1/2 a

  s2*7 s4
  \voiceLine "down" "down" g2 g2*3/4

  %3
  s2*11 s4
  \offsetVoiceLineY
  \voiceLine "down" "down" a2*1/2 a

  s2*7 s4
  \voiceLine "down" "down" g2 g2*3/4
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
    >>

    \new Lyrics \lyricsto chant \chantText
  >>

  \layout {
    ragged-last = ##t
  }
}
