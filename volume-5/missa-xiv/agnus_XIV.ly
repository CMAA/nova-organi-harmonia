\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.83
%(volume.page)

%Proofed 3/14

global = {
 \key g \mixolydian
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
\tieDown   g'4 ( g'4 a'4) g'4 f'4 ( e'4) d'4 ( f'4 g'4) \divisioMinima
 g'4 ( a'4) a'4 ( g'4 g'4) f'4 a'4 ( c''4) b'4 ( a'4 c''4) a'4 ( g'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMaior
 \forceBreak
 g'4 f'4 ( g'4) a'4 ( f'4) e'4 ( f'4) g'4 g'4 \finalis
 a'4 g'4 ( a'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 a'4 ( c''4) c''4 d''4 \forceBreak
 c''4 ( b'4) a'4 c''4 ( c''4) a'4 ( g'4) \divisioMaior
 g'4 f'4 ( g'4) a'4 ( f'4) e'4 ( f'4) g'4 g'4 \finalis
 g'4 ( g'4 a'4) g'4 f'4 ( e'4) d'4 ( f'4 g'4) \divisioMinima
 \forceBreak
 g'4 ( a'4) a'4 ( g'4 g'4) f'4 a'4 ( c''4) b'4 ( a'4 c''4) a'4 ( g'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMaior
 g'4 f'4 ( g'4) a'4 ( f'4) e'4 ( f'4) g'4 g'4 \finalis

}

altoMusic = {
e'2*4/2 c'2 ~ c'2 d'4 \divisioMinima
g'2 f'2*3/2 ~ f'4 g'2 ~ g'2*3/2 e'2 d'2 e'4 ~ \divisioMaior
e'4 d'2 c'2 e'2 d'2 \finalis
e'4 ~ e'2 ~ e'2 d'4 \divisioMinima
f'4 ~ f'2 g'2 ~ g'2*3/2 ~ g'2 e'2 ~ \divisioMaior
e'4 d'2 c'2 ~ c'2 ~ c'4 b4 \finalis
e'2*4/2 d'2 ~ d'2 ~ d'4 \divisioMinima
c'2 ~ c'2*4/2 ~ c'2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ c'4 \divisioMaior
d'4 c'2 ~ c'2 ~ c'2 ~ c'4 b4 \finalis
}

tenorMusic = {
c'2*4/2 g2 a2 b4 \divisioMinima
c'2 ~ c'2*4/2 ~ c'2 d'2*3/2 b2 c'2 ~ c'4 \divisioMaior
b4 a2 f2 c'2 ~ c'4 b4 \finalis
c'4 b2 a2 ~ a4 ~ \divisioMinima
a4 c'2 ~ c'2 d'2*3/2 c'2 ~ c'2 \divisioMaior
b4 a2 f2 d2 ~ d2 \finalis
c'2*4/2 a2 ~ a2 g4 ~ \divisioMinima
g2 f2*4/2 e2 ~ e2*3/2 f2 d2 e4 \divisioMaior
d4 ~ d2 f2 c2 d2 \finalis
}

bassMusic = {
c2*4/2 ~ c2 g2 ~ g4 \divisioMinima
e2 d2*4/2 e2 ~ e2*3/2 ~ e2 c2 ~ c4 ~ \divisioMaior
c4 ~ c2 d2 ~ d2 g2 \finalis
c4 ~ c2 d2 ~ d4 ~ \divisioMinima
d4 ~ d2 e2 ~ e2*3/2 ~ e2 c2 ~ \divisioMaior
c4 ~ c2 d2 a,2 g,2 \finalis
c2*4/2 d2 f2 ~ f4 \divisioMinima
e2 d2*4/2 c2 a,2*3/2 ~ a,2 c2 ~ c4 \divisioMaior
b,4 a,2 ~ a,2 ~ a,2 g,2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*4/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*2/2 g2*1/2


s2*48/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" d2*2/2 d2*1/2


}

\score{
  <<
    \new Lyrics
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
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
  \layout{
  }
  
}
