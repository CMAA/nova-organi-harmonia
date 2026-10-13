\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.15
%(volume.page)

% Proofed 2/18

global = {
 \key d \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- _ _ ctus, 
\set stanza = " * " San -- _ _ ctus, San -- _ _ ctus Dó -- mi -- nus De -- us Sá -- ba -- oth. 
Ple -- ni sunt cœ -- li et ter -- ra gló -- ri -- a tu -- a. 
Ho -- sán -- na in ex -- cél -- sis. 
Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- sán -- na in ex -- cél -- sis. }

chantMusic = {
\tieDown   c'4 ( e'4 d'4) g'4 ( g'4 f'4 e'4) f'4 ( d'4) d'4 \divisioMinima
 d'4 ( a'4) c''4 ( b'4 g'4 f'4) g'4 ( a'4) a'4 ( g'4 f'4 e'4 d'4) \divisioMinima
 c'4 ( e'4 d'4) \forceBreak
 g'4 ( g'4 f'4 e'4) f'4 ( d'4) d'4 \divisioMinima
 d'4 d'4 d'4 ( a'4) a'4 ( g'4 f'4) e'4 ( d'4) g'4 g'4 ( a'4) a'4 \divisioMaior
 c'4 e'4 ( d'4) d'4 ( g'4) g'4 ( a'4) \forceBreak
 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( \quil b' c''4 a'4) a'4 \divisioMinima
 d''4 ( c''4 b'4 a'4) g'4 g'4 ( a'4) d'4 d'4 ( \quil e' f'4 e'4 d'4 c'4) \divisioMaior \forceBreak
 c'4 e'4 ( \once \tweak #'font-size #-4 d' )
 d'4 ( g'4) ~ g'4 ( f'4 e'4 d'4) f'4 e'4 ( f'4 e'4) d'4 d'4 \divisioMaxima
 c'4 e'4 ( d'4) d'4 ( g'4) g'4 ( a'4) a'4 ( g'4) a'4 ( \quil b' c''4 a'4) a'4 \divisioMinima
 d''4 \forceBreak
 c''4 ( b'4 a'4) g'4 g'4 ( a'4) d'4 d'4 d'4 ( \quil e' f'4 e'4 d'4 c'4) \divisioMaior
 c'4 e'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( g'4) ~ g'4 ( f'4 e'4 d'4) f'4 e'4 ( f'4 e'4) d'4 d'4 \finalis

}

altoMusic = {
r2 d'4 ~ d'2 ~ d'2 a2 ~ a4 \divisioMinima
d'2 c'2*4/2 ~ c'2 ~ c'2 ~ c'2 a4 \divisioMinima
g2*3/2 a2*4/2 ~ a2 ~ a4 \divisioMinima
r2 d'2 c'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 ~ d'4 ~ d'2 c'4 \divisioMaior
c'4 ~ c'4 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 d'2 ~ d'2 c'4 ~ c'2 ~ c'2 e'2 ~ e'4 \divisioMinima
d'2 ~ d'2 ~ d'4 c'2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 a2 c'2*3/2 ~ c'4 \divisioMaior
r4 b2*3/2 c'2 ~ c'2 a2 c'2*3/2 a2 \divisioMaxima
r2*3/2 d'2 c'2 d'2 e'2 ~ e'2 ~ e'4 ~ \divisioMinima
e'4 ~ e'2 ~ e'2 c'2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 d'4 a2 c'2*3/2 ~ c'4 \divisioMaior
r4 b2*3/2 c'2 ~ c'2 a2 c'2*3/2 a2 \finalis
}

tenorMusic = {
g2*3/2 a2 g2 ~ g2 f4 ~ \divisioMinima
f2 e2 f2 e2 ~ e2 g2 f4 \divisioMinima
e2*3/2 \shiftRight d2*4/2 g2 f4 \divisioMinima
a2 ~ a2 ~ a2*3/2 c'2 b4 e'2 ~ e'4 \divisioMaior
r4 g2 ~ g2 e2 ~ e4 f2 e2 a2 ~ a4 ~ \divisioMinima
a2 g2 ~ g4 ~ g2 ~ g4 f2 g2*3/2 e4 \divisioMaior
r4 g2*3/2 e2 c2 f2 g2*3/2 ~ g4 f4 \divisioMaxima
r2*7/2 b2 c'2 d'2 c'4 \divisioMinima
b4 a2 ~ a2 e2 f2 ~ \shiftRight f2 g2*3/2 e4 \divisioMaior
r4 g2*3/2 e2 c2 f2 g2*3/2 ~ g4 f4 \finalis
}

bassMusic = {
e2*3/2 d2 ~ d2 ~ d2 ~ d4 ~ \divisioMinima
d2 a,2*4/2 ~ a,2 c2 ~ c2 d4 ~ \divisioMinima
d2*3/2 ~ d2*4/2 ~ d2 ~ d4 \divisioMinima
f2 ~ f2 \shiftRight a2*3/2 c'2 b4 ~ b2 a4 \divisioMaior
c4 ~ c2 b,2 ~ b,2 a,4 ~ a,2 ~ a,2 ~ a,2 c4 \divisioMinima
b,2 ~ b,2 e4 ~ e2 d4 ~ d2 c2*3/2 ~ c4 \divisioMaior
r4 g,2*3/2 a,2 ~ a,2 d2 ~ d2*3/2 ~ d2 \divisioMaxima
r2*3/2 b2 a2 ~ a2 ~ a2 ~ a2 ~ a4 ~ \divisioMinima
a4 ~ \shiftRight a2 c2 d2 ~ d2 f2 c2*3/2 ~ c4 \divisioMaior
r4 g,2*3/2 a,2 ~ a,2 d2 ~ d2*3/2 ~ d2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*32/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f4 f2


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
