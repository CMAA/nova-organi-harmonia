\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.90
%(volume.page)

%Proofed 3/14

global = {
 \key e \dorian
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
do -- na nó -- bis pa -- cem. 
}

chantMusic = {
\tieDown   fis'4 ( a'4) g'4 g'4 ( fis'4) d'4 ( e'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 fis'4 a'4 a'4 ( b'4) b'4 b'4 b'4 ( a'4) \forceBreak
 b'4 ( cis''4 a'4 a'4) fis'4 \divisioMaior
 a'4 g'4 g'4 ( fis'4) e'4 ( d'4) fis'4 ( g'4 e'4) e'4 \finalis
 fis'4 a'4 a'4 ( b'4) b'4 \divisioMinima
 \forceBreak
 b'4 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaior
 b'4 b'4 ( a'4) b'4 b'4 ( cis''4 b'4) a'4 ( g'4) fis'4 \finalis
 \forceBreak
 fis'4 ( a'4) g'4 g'4 ( fis'4) d'4 ( e'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 fis'4 a'4 a'4 ( b'4) b'4 b'4 b'4 ( a'4) b'4 ( cis''4 a'4 a'4) fis'4 \divisioMaior
 \forceBreak
 a'4 g'4 g'4 ( fis'4) e'4 ( d'4) fis'4 ( g'4 e'4) e'4 \finalis
}

altoMusic = {
d'2*3/2 b2 ~ b2 ~ b2*3/2 \divisioMinima
d'4 e'4 ~ e'2*3/2 d'4 ~ d'2 cis'2*4/2 d'4 \divisioMaior
b2 ~ b2 ~ b2 ~ b2*3/2 ~ b4 \finalis
fis'4 ~ fis'4 e'2 fis'4 ~ \divisioMinima
fis'4 ~ fis'2 e'2 ~ e'2*3/2 fis'2 ~ fis'4 ~ \divisioMaior
fis'4 e'2 d'4 cis'2*3/2 ~ cis'2 d'4 \finalis
d'2*3/2 ~ d'2 ~ d'2 b2 ~ b4 \divisioMinima
d'4 e'4 ~ e'2*3/2 d'4 ~ d'2 cis'2*4/2 d'4 ~ \divisioMaior
d'2 ~ d'2 b2 ~ b2*3/2 ~ b4 \finalis
}

tenorMusic = {
a2*3/2 ~ a2 fis2 g2*3/2 \divisioMinima
a4 ~ a4 ~ a2*3/2 ~ a4 g2 e2*4/2 fis4 ~ \divisioMaior
fis2 g2 a2 ~ a2*3/2 g4 \finalis
d'2 cis'2 d'4 ~ \divisioMinima
d'4 b2 fis2 a2*3/2 ~ a2 b4 \divisioMaior
fis4 ~ fis2 ~ fis4 g2*3/2 e2 b4 \finalis
a2*3/2 ~ a2 ~ a2 ~ a2 g4 \divisioMinima
a4 ~ a4 ~ a2*3/2 ~ a4 g2 e2*4/2 fis4 \divisioMaior
g2 a2 fis2 a2*3/2 g4 \finalis
}

bassMusic = {
d2*3/2 e2 ~ e2 ~ e2*3/2 \divisioMinima
d4 ~ d4 cis2*3/2 b,4 ~ b,2 ~ b,2*4/2 ~ b,4 \divisioMaior
d2 e2 fis2 e2*3/2 ~ e4 \finalis
b2 ~ b2 ~ b4 ~ \divisioMinima
b4 d2 cis2 ~ cis2*3/2 d2 ~ d4 ~ \divisioMaior
d4 cis2 b,4 ~ b,2*3/2 ~ b,2 ~ b,4 \finalis
d2*3/2 b,2 ~ b,2 e2 ~ e4 \divisioMinima
d4 ~ d4 cis2*3/2 b,4 ~ b,2 ~ b,2*4/2 ~ b,4 ~ \divisioMaior
b,2 ~ b,2 ~ b,2 e2*3/2 ~ e4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*38/2
\allowVoiceLineBreak
\voiceLine "down" "down" b2*1/2 b2*1/2


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "I."
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
