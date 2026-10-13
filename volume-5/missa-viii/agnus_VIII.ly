\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.52
%(volume.page)

%Proofed 3/14

global = {
 \key f \major
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
\tieDown   f'4 ( g'4) ~ g'4 ( f'4) g'4 ( a'4) f'4 ( g'4 f'4) f'4 \divisioMinima
 f'4 f'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( c'4) d'4 c'4 d'4 ( f'4) f'4 ( g'4 f'4) f'4 \divisioMaior
 \forceBreak
 f'4 g'4 ( a'4) a'4  g'4 ( bes'4 a'4 g'4 a'4) f'4 ( g'4 f'4) f'4 \finalis
 f'4 a'4 ( c''4) c''4 ( a'4 g'4 c''4) c''4 \divisioMinima
 c''4 a'4 ( g'4 a'4) \forceBreak
 f'4 g'4 f'4 g'4 ( a'4) f'4 ( g'4 f'4) f'4 \divisioMaior
 f'4 g'4 ( a'4) a'4  g'4 ( bes'4 a'4 g'4 a'4) f'4 ( g'4 f'4) f'4 \finalis
 \forceBreak
 f'4 ( g'4) ~ g'4 ( f'4) g'4 ( a'4) f'4 ( g'4 f'4) f'4 \divisioMinima
 f'4 f'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( c'4) d'4 c'4 d'4 ( f'4) f'4 ( g'4 f'4) f'4 \divisioMaior
 \forceBreak
 f'4 g'4 ( a'4) a'4  g'4 ( bes'4 a'4 g'4 a'4) f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
r2*6/2 c'2*3/2 ~ c'4 ~ \divisioMinima
c'4 d'2 a2*3/2 ~ a2*3/2 d'2*4/2 \divisioMaior
c'2*3/2 d'4 ~ d'2*3/2 ~ d'2 c'2*3/2 ~ c'4 \finalis
f'4 ~ f'2 ~ f'2*4/2 e'4 ~ \divisioMinima
e'4 d'2*3/2 ~ d'2 c'2*3/2 a2*4/2 \divisioMaior
c'2*3/2 d'4 ~ d'2*3/2 d'2 c'2*3/2 ~ c'4 \finalis
r2*6/2 c'2*3/2 ~ c'4 ~ \divisioMinima
c'4 d'2 a2*3/2 ~ a2*3/2 d'2*4/2 \divisioMaior
c'2*3/2 d'4 ~ d'2*3/2 ~ d'2 c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
r4 c'2*3/2 bes2 ~ bes2*3/2 a4 ~ \divisioMinima
a4 ~ a2 e2*3/2 f2*3/2 ~ f2*4/2 ~ \divisioMaior
f2*3/2 ~ f4 g2*3/2 bes2 ~ bes2*3/2 a4 \finalis
r4 f2 g2*4/2 ~ g4 ~ \divisioMinima
g4 f2*3/2 ~ f2 ~ f2*3/2 ~ f2*4/2 ~ \divisioMaior
f2*3/2 ~ f4 g2*3/2 bes2 ~ bes2*3/2 a4 \finalis
r4 c'2*3/2 bes2 ~ bes2*3/2 a4 ~ \divisioMinima
a4 ~ a2 e2*3/2 f2*3/2 ~ f2*4/2 ~ \divisioMaior
f2*3/2 ~ f4 g2*3/2 bes2 ~ bes2*3/2 a4 \finalis
}

bassMusic = {
f4 ~ f2*3/2 ~ f2 ~ f2*3/2 ~ f4 ~ \divisioMinima
f4 d2 ~ d2*3/2 ~ d2*3/2 bes,2*4/2 \divisioMaior
a,2*3/2 bes,4 ~ bes,2*3/2 ~ bes,2 f2*3/2 ~ f4 \finalis
d4 ~ d2 c2*4/2 ~ c4 ~ \divisioMinima
c4 ~ c2*3/2 bes,2 a,2*3/2 d2*4/2 \divisioMaior
a,2*3/2 bes,4 ~ bes,2*3/2 ~ bes,2 f2*3/2 ~ f4 \finalis
f4 ~ f2*3/2 ~ f2 ~ f2*3/2 ~ f4 ~ \divisioMinima
f4 d2 ~ d2*3/2 ~ d2*3/2 bes,2*4/2 \divisioMaior
a,2*3/2 bes,4 ~ bes,2*3/2 ~ bes,2 f2*3/2 ~ f4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*11/2
\allowVoiceLineBreak
\voiceLine "down" "up" a2*2/2 a2*1/2


s2*67/2
\allowVoiceLineBreak
\voiceLine "down" "up" a2*2/2 a2*1/2


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "VI."
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
