\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.22
%(volume.page)

%Proofed 3/14

global = {
 \key e \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- _ ta mun -- di: 
mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- _ ta mun -- di: 
mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- _ ta mun -- di: 
do -- na nó -- bis pa -- cem. }

chantMusic = {
\tieDown   f'4 ( e'4 d'4) d'4 ( e'4) e'4 ( f'4 e'4) e'4 \divisioMinima
 d'4 ( c'4) d'4 ( e'4 f'4 g'4 f'4 d'4) ~ d'4 ( \once \tweak #'font-size #-4 e' ) e'4 \divisioMinima
 g'4 a'4 ( c''4 b'4) \forceBreak
 c''4 ( d''4) d''4 ( c''4 b'4 a'4 a'4) g'4 ( \quil a' b'4 c''4 a'4 g'4) a'4 (g'4) \divisioMaior
 g'4 ( f'4 f'4) e'4 ( d'4) f'4 f'4 ( g'4 f'4) e'4 e'4 \finalis
 \forceBreak
 c'4 d'4 ( e'4) e'4 ( f'4 e'4) e'4 \divisioMinima
 d'4 ( c'4) d'4 ( e'4 f'4 g'4 f'4 d'4) ~ d'4 ( \once \tweak #'font-size #-4 e' ) e'4 \divisioMinima
 g'4 a'4 ( c''4 b'4) c''4 ( d''4) \forceBreak
 d''4 ( c''4 b'4 a'4 a'4) g'4 ( \quil a' b'4 c''4 a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 ( f'4 f'4) e'4 ( d'4) f'4 f'4 ( g'4 f'4) e'4 e'4 \finalis
 \forceBreak
 f'4 ( e'4 d'4) d'4 ( e'4) e'4 ( f'4 e'4) e'4 \divisioMinima
 d'4 ( c'4) d'4 ( e'4 f'4 g'4 f'4 d'4) ~ d'4 ( \once \tweak #'font-size #-4 e' ) e'4 \divisioMinima
 g'4 a'4 ( c''4 b'4) c''4 ( d''4) \forceBreak
 d''4 ( c''4 b'4 a'4 a'4) g'4 ( \quil a' b'4 c''4 a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 ( f'4 f'4) e'4 ( d'4) f'4 f'4 ( g'4 f'4) e'4 e'4 \finalis

}

altoMusic = {
r2*3/2 d'2 ~ d'2*3/2 c'4 \divisioMinima
a2 ~ a2*3/2 ~ a2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 r2 c'4 ~ \divisioMinima
c'4 ~ c'2*3/2 ~ c'2 e'2*3/2 ~ e'2 d'2*3/2 e'2*3/2 d'2 ~ \divisioMaior
d'2*3/2 ~ d'2 c'4 b2*3/2 c'2 \finalis
r4 d'2 ~ d'2*3/2 c'4 \divisioMinima
a2 ~ a2*3/2 ~ a2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 r2 c'4 ~ \divisioMinima
c'4 ~ c'2*3/2 ~ c'2 e'2*3/2 ~ e'2 d'2*3/2 e'2*3/2 ~ e'2 \divisioMaior
c'2*3/2 ~ c'2 ~ c'4 b2*3/2 c'2 \finalis
r2*3/2 d'2 ~ d'2*3/2 c'4 \divisioMinima
a2 ~ a2*3/2 ~ a2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 r2 c'4 ~ \divisioMinima
c'4 ~ c'2*3/2 ~ c'2 e'2*3/2 ~ e'2 d'2*3/2 e'2*3/2 d'2 \divisioMaior
c'2*3/2 ~ c'2 ~ c'4 b2*3/2 d'4 c'4 \finalis
}

tenorMusic = {
a2*3/2 ~ a2 ~ a2*4/2 \divisioMinima
f2 ~ f2*3/2 ~ f2 g2*3/2 ~ g4 \divisioMinima
e4 ~ e2*3/2 ~ e2 a2*3/2 ~ a2 b2*3/2 a2*3/2 d2 \divisioMaior
a2*3/2 f2 ~ f4 d2*3/2 a2 \finalis
a4 ~ a2 g2*3/2 ~ g4 \divisioMinima
f2 ~ f2*3/2 ~ f2 g2*3/2 ~ g4 \divisioMinima
e4 ~ e2*3/2 ~ e2 a2*3/2 ~ a2 b2*3/2 a2*3/2 b2 \divisioMaior
a2*3/2 f2 d4 ~ d2*3/2 a2 \finalis
a2*3/2 ~ a2 ~ a2*4/2 \divisioMinima
f2 ~ f2*3/2 ~ f2 g2*3/2 ~ g4 \divisioMinima
e4 ~ e2*3/2 ~ e2 a2*3/2 ~ a2 b2*3/2 a2*3/2 d2 ~ \divisioMaior
d2*3/2 f2 a4 ~ a2*3/2 ~ a2 \finalis
}

bassMusic = {
d2*3/2 f2 \shiftRight a2*3/2 ~ a4 \divisioMinima
r2 e2*3/2 d2 b,2*3/2 c4 ~ \divisioMinima
c4 b,2*3/2 a,2 ~ a,2*3/2 c2 e2*3/2 c2*3/2 b,2 \divisioMaior
d2*3/2 ~ d2 a,4 ~ a,2*3/2 ~ a,2 \finalis
r4 f2 c2*3/2 ~ c4 \divisioMinima
r2 e2*3/2 d2 b,2*3/2 c4 ~ \divisioMinima
c4 b,2*3/2 a,2 ~ a,2*3/2 c2 ~ c2*3/2 ~ c2*3/2 e2 \divisioMaior
a,2*3/2 ~ a,2*3/2 ~ a,2*3/2 ~ a,2 \finalis
d2*3/2 f2 \shiftRight a2*3/2 ~ a4 \divisioMinima
r2 e2*3/2 d2 b,2*3/2 c4 ~ \divisioMinima
c4 b,2*3/2 a,2 ~ a,2*3/2 c2 e2*3/2 c2*3/2 b,2 \divisioMaior
a,2*3/2 ~ a,2*3/2 ~ a,2*3/2 ~ a,2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*37/2
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
