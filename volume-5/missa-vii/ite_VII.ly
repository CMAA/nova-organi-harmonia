\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.46
%(volume.page)

%Proofed 3/14

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantTextA = \lyricmode {
I -- te, _ _ _ _ _ mis -- sa est. }
chantTextB = \lyricmode {
De -- o, _ _ _ _ _ grá -- ti -- as. }

chantMusic = {
\tieDown   bes'4 a'4 ( g'4 f'4) ~ f'4 ( ees'4 g'4) \divisioMinima
 bes'4 ( a'4 \once \tweak #'font-size #-4 f'4) g'4 ( f'4) ~ f'4 ( ees'4 g'4) ~ g'4 ( c'4) \divisioMinima
 c'4 ( d'4 ees'4 \quil f' g'4)( f'4 ees'4 d'4 c'4) \divisioMinima
 c'4 ( d'4 ees'4 \quil f' g'4) ~ g'4 ( f'4) g'4 ( ees'4) g'4 g'4 f'4 \finalis

}

altoMusic = {
d'4 ~ d'2 c'2*4/2 \divisioMinima
d'2*4/2 c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2 bes2*5/2 ~ \divisioMinima
bes2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2 a4 \finalis
}

tenorMusic = {
g4 ~ g2 ~ g2*4/2 ~ \divisioMinima
g2*4/2 ~ g2*3/2 ees2*3/2 \divisioMinima
f2 g2 ~ g2*5/2 \divisioMinima
f2 ees2 d2*3/2 c2 ~ c2 ~ c4 \finalis
}

bassMusic = {
r4 d2 ees2*4/2 \divisioMinima
bes,2*4/2 c2*3/2 ~ c2*3/2 ~ \divisioMinima
c2 ~ c2 g,2*5/2 ~ \divisioMinima
g,2 ~ g,2 ~ g,2*3/2 ~ g,2 ees,2 f,4 \finalis
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
        "VIII."
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
