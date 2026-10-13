\version  "2.18.0"
\include "gregorian.ly"
\include "noh2.ily"

%Proofed 3/14

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
  e4( g) a( b a g) fis( e) g( e d e) d( e)
  g( a) g fis( e) \finalis
}

altoMusic = \relative c' {
  e2*3 b2 d2*3 c2*3/2 b2
}

tenorMusic = \relative c' {
  g2*3~ g2~ g2*3~ g2*3/2~ g2 \finalis
}

bassMusic = \relative c {
  e2*3~ e2 b2*3 a2*3/2 e'2
}

\score {
  <<
    \new Lyrics = "chanta"
    \new Lyrics = "chantb"
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
    \context Lyrics = "chanta" {
      \lyricsto chant \textA
    }
    \context Lyrics = "chantb" {
      \lyricsto chant \textB
    }
  >>
}
