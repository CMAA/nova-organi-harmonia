\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.61
%(volume.page)

%Proofed 3/14

global = {
 \key fis \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
do -- na nó -- bis pa -- cem. }

chantMusic = {
\tieDown   fis'4 e'4 ( d'4) e'4 ( fis'4) fis'4 \divisioMinima
 fis'4 a'4 b'4 a'4 ( g'4) a'4 a'4 ( g'4) fis'4 fis'4 \divisioMaior
 \forceBreak
 fis'4 fis'4 ( e'4) g'4 e'4 ( fis'4) fis'4 fis'4 \finalis
 a'4 a'4 b'4 a'4 \divisioMinima
 g'4 a'4 b'4 a'4 ( g'4) a'4 a'4 ( g'4) \forceBreak
 fis'4 fis'4 \divisioMaior
 g'4 ( fis'4) g'4 ( a'4) g'4 ( g'4 fis'4) e'4 ( d'4) e'4 ( fis'4) fis'4 \finalis
 fis'4 e'4 ( d'4) e'4 ( fis'4) fis'4 \divisioMinima
 fis'4 a'4 b'4 \forceBreak
 a'4 ( g'4) a'4 a'4 ( g'4) fis'4 fis'4 \divisioMaior
 fis'4 fis'4 ( e'4) g'4 e'4 ( fis'4) fis'4 fis'4 \finalis

}

altoMusic = {
d'2 ~ d'4 cis'2*3/2 ~ \divisioMinima
cis'4 e'2 d'2 e'4 d'2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 fis'4 \divisioMaior
r2*4/2 cis'2 d'2 \finalis
fis'2 e'2 \divisioMinima
d'4 e'2 d'2 ~ d'4 ~ d'2 ~ d'2 \divisioMaior
b2*4/2 d'2*4/2 ~ d'4 cis'2 d'4 \finalis
d'2 ~ d'4 cis'2*3/2 ~ \divisioMinima
cis'4 e'2 d'2 e'4 ~ e'2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 fis'4 \divisioMaior
r2*3/2 g'4 cis'2 d'2 \finalis
}

tenorMusic = {
b2*3/2 ~ b2*3/2 ~ \divisioMinima
b4 cis'2 b2 ~ b4 ~ b2 cis'2 ~ \divisioMaior
cis'4 b2 ~ b4 ~ b2 ~ b2 \finalis
d'2 cis'2 \divisioMinima
r4 cis'2 b2 ~ b4 ~ b2 a2 \divisioMaior
g2*4/2 ~ g2*5/2 a2 b4 \finalis
b2*3/2 ~ b2*3/2 ~ \divisioMinima
b4 cis'2 b2 ~ b4 ~ b2 cis'2 ~ \divisioMaior
cis'4 b2 ~ b4 ~ b2 ~ b2 \finalis
}

bassMusic = {
r2*6/2 \divisioMinima
b4 ~ b2 ~ b2 e4 ~ e2 fis2 ~ \divisioMaior
fis4 g2 e4 ~ e2 b,2 \finalis
r2*4/2 \divisioMinima
b4 ~ b2 ~ b2 b,4 d2 ~ d2 \divisioMaior
e2*4/2 b,2*5/2 ~ b,2 ~ b,4 \finalis
r2*6/2 \divisioMinima
b4 ~ b2 ~ b2 e4 ~ e2 fis2 ~ \divisioMaior
fis4 g2 e4 ~ e2 b,2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*6/2
\allowVoiceLineBreak
\voiceLine "up" "down" cis'2*1/2 cis'2*1/2


s2*48/2
\allowVoiceLineBreak
\voiceLine "up" "down" cis'2*1/2 cis'2*1/2




}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "IV."
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
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
  \layout{
  }
  
}
