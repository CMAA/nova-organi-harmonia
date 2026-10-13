\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.9
%(volume.page)

%Proofed 2/13

global = {
 \key a \locrian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- _ re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- _ re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
do -- na nó -- _ bis pa -- cem. }

chantMusic = {
\tieDown   a'4 g'4 ( a'4 g'4 f'4) f'4 a'4 ( c''4) \divisioMinima
 c''4 c''4 ( d''4) c''4 c''4 c''4 ( bes'4) c''4 ( d''4) c''4 ( \once \tweak #'font-size #-4 bes'4 \once \tweak #'font-size #-4 a'4) a'4 \divisioMaior
 \forceBreak
 f'4 g'4 ( bes'4) a'4 ( bes'4 g'4) ~ g'4 ( f'4 a'4.) c''4 ( d''4 c''4 bes'4) c''4 c''4 ( bes'4 a'4) a'4 \finalis
 a'4 g'4 ( a'4 g'4 f'4) f'4 a'4 ( c''4) \divisioMinima
 \forceBreak
 c''4 c''4 ( d''4) c''4 c''4 c''4 ( bes'4) c''4 ( d''4) c''4 ( \once \tweak #'font-size #-4 bes'4 \once \tweak #'font-size #-4 a'4) a'4 \divisioMaior
 f'4 g'4 ( bes'4) a'4 ( bes'4 g'4) ~ g'4 ( f'4 a'4.) c''4 ( d''4 c''4 bes'4) c''4 \forceBreak
 c''4 ( bes'4 a'4) a'4 \finalis
 a'4 g'4 ( a'4 g'4 f'4) f'4 a'4 ( c''4) \divisioMinima
 c''4 c''4 ( d''4) c''4 c''4 c''4 ( bes'4) c''4 ( d''4) c''4 ( \once \tweak #'font-size #-4 bes'4 \once \tweak #'font-size #-4 a'4) a'4 \divisioMaior
 \forceBreak
 f'4 g'4 ( bes'4) a'4 ( bes'4 g'4) ~ g'4 ( f'4 a'4.) c''4 ( d''4 c''4 bes'4) c''4 c''4 ( bes'4 a'4) a'4 \finalis

}

altoMusic = {
f'4 ~ f'2*4/2 ~ f'4 ~ f'2 ~ \divisioMinima
f'4 d'2*3/2 a'4 ~ a'2 g'2 ~ g'2*3/2 f'4 ~ \divisioMaior
f'4 ~ f'2 ~ f'2 c'2*3/2 d'2*3/4 f'2 ~ f'2*3/2 g'2*3/2 f'4 \finalis
f'2*4/2 ~ f'4 f'4 ~ f'2 \divisioMinima
d'4 f'2*4/2 ~ f'2 ~ f'2 g'2*3/2 f'4 \divisioMaior
d'4 ~ d'2 ~ d'2 c'2*3/2 ~ c'2*3/4 f'2 ~ f'2*3/2 g'2*3/2 f'4 \finalis
f'4 ~ f'2*3/2 ~ f'4 f'4 ~ f'2 ~ \divisioMinima
f'4 d'2*3/2 a'4 ~ a'2 g'2 ~ g'2*3/2 f'4 \divisioMaior
c'4 d'2 ~ d'2 c'2*3/2 ~ c'2*3/4 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
d'4 ~ d'2*4/2 c'2*3/2 \divisioMinima
a4 ~ a2*3/2 d'4 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2 ~ d'2 a2*3/2 ~ a2*3/4 ~ a2 g2*3/2 ees'2*3/2 d'4 \finalis
c'4 bes2*4/2 a2*3/2 ~ \divisioMinima
a4 ~ a2*3/2 f4 g2 bes2 d'2*3/2 ~ d'4 \divisioMaior
a4 ~ a2 g2 ~ g2*3/2 f2*3/4 ~ f2 g2*3/2 d'2*3/2 d'4 \finalis
d'4 ~ d'2*4/2 c'2*3/2 \divisioMinima
a2*4/2 d'4 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'4 \divisioMaior
a4 ~ a2 g2 a2*3/2 f2*3/4 ~ f2 g2*3/2 ~ g2*3/2 f4 \finalis
}

bassMusic = {
r4 bes2*4/2 a2*3/2 \divisioMinima
f4 ~ f2*3/2 ~ f4 g2 bes2 d'2*3/2 r4 \divisioMaior
c'4 bes2 g2 ~ g2*3/2 f2*3/4 d2 ~ d2*3/2 ~ d2*3/2 ~ d4 \finalis
f4 ~ f2*4/2 ~ f2*3/2 ~ \divisioMinima
f4 d2*3/2 ~ d4 ~ d2 ~ d2 ~ d2*3/2 ~ d4 ~ \divisioMaior
d4 bes,2 ~ bes,2 a,2*3/2 ~ a,2*3/4 d2 ~ d2*3/2 ~ d2*3/2 ~ d4 \finalis
r4 bes2*4/2 a2*3/2 \divisioMinima
f2*4/2 ~ f4 a2 bes2 \shiftRight d'2*3/2 d4 ~ \divisioMaior
d4 bes,2 ~ bes,2 a,2*3/2 ~ a,2*3/4 g,2 ~ g,2*3/2 bes,2*3/2 d4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*5/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" a2*3/2 a2*1/2


s2*75/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" a2*3/2 a2*1/2


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
