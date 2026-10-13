\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.66
%(volume.page)

%Proofed 3/14

global = {
 \key e \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
A -- _ gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
do -- na nó -- bis pa -- cem. }

chantMusic = {
\tieDown   e'4 ( fis'4) g'4 ( e'4) e'4 ( d'4) d'4 ( e'4) e'4 \divisioMinima
 fis'4 a'4 ( b'4) a'4 ( g'4 fis'4) fis'4 ( g'4 a'4) a'4 ( g'4 fis'4) e'4 ( d'4) e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 \divisioMaior
 \forceBreak
 fis'4 a'4 ( b'4) a'4 ( e'4) g'4 ( fis'4 e'4) d'4 ( e'4) e'4 \finalis
 e'4 ( fis'4) a'4 ( b'4)  b'4 ( c''4) b'4 \divisioMinima
 a'4 ( b'4 a'4 g'4) fis'4 ( e'4 fis'4) fis'4 g'4 \forceBreak
 a'4 e'4 g'4 ( \once \tweak #'font-size #-4 fis'4 \once \tweak #'font-size #-4 e'4) d'4 \divisioMaior
 fis'4 a'4 ( b'4) a'4 ( g'4) fis'4 ( e'4) d'4 ( e'4) e'4 \finalis
 e'4 ( fis'4) a'4 ( g'4 fis'4) a'4 b'4 \divisioMinima
 \forceBreak
 b'4 ( a'4) d''4 e''4 d''4 ( cis''4 b'4) a'4 ( b'4 g'4) fis'4 e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 ( e'4 d'4) \divisioMaior
 fis'4 a'4 ( b'4) g'4 ( a'4) g'4 ( fis'4 e'4) d'4 ( e'4) e'4 \finalis

}

altoMusic = {
r2 b2 ~ b2 ~ b2 ~ b4 \divisioMinima
r4 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2 b2 ~ b2*3/2 ~ b2 ~ b4 \finalis
r2 fis'2 g'2 ~ g'4 \divisioMinima
d'2*4/2 ~ d'2*5/2 e'2 d'2*3/2 a4 ~ \divisioMaior
a4 d'2 ~ d'2 ~ d'2 ~ d'4 e'4 b4 \finalis
e'4 fis'4 ~ fis'2*3/2 ~ fis'2 \divisioMinima
e'2 fis'2 fis'2*3/2 e'2*4/2 b2 d'2 a4 ~ \divisioMaior
a4 d'2 ~ d'2 ~ d'2*3/2 b2 ~ b4 \finalis
}

tenorMusic = {
r2*4/2 fis2 a2 g4 \divisioMinima
r4 fis2 b2*3/2 a2*3/2 fis2*3/2 g2 e2 b4 \divisioMaior
a4 fis2 ~ fis2 e2*3/2 fis2 g4 \finalis
e'2 d'2 e'2 d'4 \divisioMinima
fis2*4/2 a2*5/2 ~ a2 ~ a2*3/2 fis4 ~ \divisioMaior
fis4 ~ fis2 e2 fis2 a2 g4 \finalis
e'2 d'2*3/2 ~ d'2 \divisioMinima
cis'2 \shiftRight b2 ~ b2*3/2 ~ b2*4/2 g2 a2 fis4 ~ \divisioMaior
fis4 ~ fis2 g2 b2*3/2 a2 g4 \finalis
}

bassMusic = {
e2 ~ e2 ~ e2 ~ e2 ~ e4 \divisioMinima
r4 b,2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2 ~ b,2 ~ b,4 \divisioMaior
d4 ~ d2 e2 ~ \shiftRight e2*3/2 ~ e2 ~ e4 \finalis
r2*4/2 c'2 g4 \divisioMinima
b,2*4/2 ~ b,2*5/2 c2 d2*3/2 ~ d4 ~ \divisioMaior
d4 b,2 ~ b,2 ~ b,2 ~ b,2 e4 \finalis
r2*5/2 cis'4 b4 ~ \divisioMinima
b2 ~ b2 d2*3/2 e2*4/2 ~ e2 d2 ~ d4 ~ \divisioMaior
d4 b,2 ~ b,2 ~ b,2*3/2 ~ b,2 e4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*55/2
\allowVoiceLineBreak
\voiceLine "down" "up" a2*3/2 a2*1/2


s2*24/2
\allowVoiceLineBreak
\voiceLine "down" "up" b2*4/2 b2*1/2


s2*9/2
\allowVoiceLineBreak
\voiceLine "down" "up" b2*3/2 b2*1/2


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
