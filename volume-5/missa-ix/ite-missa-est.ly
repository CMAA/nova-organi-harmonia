\version  "2.18.0"
\language "english"
\include "../../noh.ily"

global = {
  \key g \major
  \cadenzaOn
}

textA = \lyricmode {
  I -- _ te, _ _ mis -- sa est.
}

textB = \lyricmode {
  De -- _ o _ _ grá -- ti -- as.
}

chantMusic = \relative c' {
  \ga e g \gc a b a g \ga fs e \gc g e d e \ga d e
  \ga g a g4 \ga fs e \doubleBar
}

altoMusic = \relative c' {
  e2*5/4 b2*1/2 d2*5/4 c2 b2*1/2
}

tenorMusic = \relative c' {
  g2*5/4~ g2*1/2~ g2*5/4~ g2~ g2*1/2
}

bassMusic = \relative c {
  e2*5/4~ e2*1/2 b2*5/4 a2 e'2*1/2
}

\score {
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

    \new Lyrics \lyricsto chant \textA
    \new Lyrics \lyricsto chant \textB
  >>

  \layout {
    ragged-last = ##t
  }
}
