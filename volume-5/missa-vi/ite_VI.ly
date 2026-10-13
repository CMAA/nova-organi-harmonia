\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.40
%(volume.page)

%Proofed 3/14

global = {
 \key e \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantTextA = \lyricmode {
I -- te, _ _ _ _ mis -- sa est. }
chantTextB = \lyricmode {
De -- o, _ _ _ _ grá -- ti -- as. }

chantMusic = {
\tieDown   e'4 ( fis'4 gis'4) gis'4. fis'4 ( a'4 gis'4 e'4) fis'4 ( e'4 fis'4 d'4) \divisioMinima
 d'4 ( fis'4) a'4 ( a'4 gis'4 fis'4 e'4) fis'4 ( gis'4) e'4 e'4 \finalis

}

altoMusic = {
cis'2*3/2 ~ cis'2*3/4 ~ cis'2*4/2 d'2*4/2 ~ \divisioMinima
d'2 e'2*4/2 ~ e'4 b2 ~ b2 \finalis
}

tenorMusic = {
cis'2*3/2 b2*3/4 ~ b2*4/2 a2*4/2 ~ \divisioMinima
a2 ~ a2*5/2 ~ a2 ~ a4 gis4 \finalis
}

bassMusic = {
cis2*3/2 ~ cis2*3/4 fis2*4/2 ~ fis2*4/2 \divisioMinima
b,2 cis2*5/2 e2 ~ e2 \finalis
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
