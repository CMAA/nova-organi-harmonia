\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.52
%(volume.page)

%Proofed 3/14

global = {
 \key d \major
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantTextA = \lyricmode {
I -- _ te, _ _ _ _ _ mis -- sa est. }
chantTextB = \lyricmode {
De -- _ o, _ _ _ _ _ grá -- ti -- as. }

chantMusic = {
\tieDown    d'4 fis'4 ( g'4 a'4) a'4. b'4 ( a'4 g'4 a'4.) d''4 ( b'4 a'4 g'4) a'4 ( b'4 a'4) \divisioMinima
  a'4 ( fis'4 e'4 d'4) g'4 ( fis'4) e'4 e'4 d'4 \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*4/2 e'2*3/2 d'2*4/2 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 e'4 d'4 \finalis
}

tenorMusic = {
r4 a2*3/2 fis2*3/4 e2*3/2 fis2*3/4 ~ fis2*4/2 a2*3/2 ~ \divisioMinima
a2*4/2 ~ a2 g2 fis4 \finalis
}

bassMusic = {
d4 ~ d2*3/2 ~ d2*3/4 ~ d2*3/2 ~ d2*3/4 b,2*4/2 cis2*3/2 fis2*4/2 d2 ~ d2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new Lyrics = "chanta"
    \new Lyrics = "chantb"
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "V."
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
    \context Lyrics = "chanta" {
      \lyricsto chant {
      \chantTextA
    }
    }
    \context Lyrics = "chantb" {
      \lyricsto chant {
      \chantTextB
    }
    }
  >>
  \layout{
  }
  
}
