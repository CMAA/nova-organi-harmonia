\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.27
%(volume.page)

%Proofed 3/14

global = {
 \key g \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- _ ctus, 
\set stanza = " * " San -- ctus, San -- _ ctus Dó -- mi -- nus De -- us Sá -- ba -- oth. 
Ple -- ni sunt cœ -- li et ter -- ra gló -- ri -- a tu -- a. 
Ho -- sán -- na in ex -- cél -- _ sis. 
Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- _ mi -- ni. 
Ho -- _ _ sán -- na in ex -- cél -- _ _ _ sis. }

chantMusic = {
\tieDown   g'4 ( c''4 a'4 g'4 e'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 g'4 ( b'4 c''4 d''4) c''4 ( b'4 a'4 g'4) \divisioMinima
 g'4 ( c''4 a'4 g'4 e'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 \forceBreak
 g'4 e'4 f'4 e'4 d'4 f'4 ( a'4 g'4) f'4 ( g'4) g'4 \divisioMaxima
 g'4 b'4 c''4 d''4 c''4 b'4 d''4 c''4 \divisioMinima
 \forceBreak
 b'4 ( a'4 g'4) a'4 ( c''4) g'4 ( e'4) f'4 ( e'4) d'4 \divisioMaxima
 f'4 ( a'4 g'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 g'4 ( b'4 c''4 d''4) c''4 ( b'4 a'4 g'4) a'4 ( c''4 g'4 e'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMaxima
 \forceBreak
 g'4 b'4 c''4 d''4 c''4 b'4 ( a'4) g'4 \divisioMinima
 a'4 c''4 g'4 e'4 f'4 ( e'4 d'4) f'4 ( a'4 g'4) f'4 ( g'4) g'4 \divisioMaxima
 \forceBreak
 g'4 ( e'4) f'4 ( e'4 d'4) f'4 ( a'4 g'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 g'4 ( b'4 c''4 d''4) c''4 ( b'4 a'4 g'4) a'4 ( c''4 g'4 e'4) f'4 ( e'4 d'4.) a'4 ( g'4) a'4 ( \once \tweak #'font-size #-4 b' ) a'4 ( g'4) \finalis

}

altoMusic = {
e'2*3/2 ~ e'2 c'2 d'4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2 ~ d'2 \divisioMinima
e'2*3/2 ~ e'2 c'2 d'4 \divisioMinima
c'2*3/2 a2 c'2*3/2 ~ c'2 b4 \divisioMaxima
d'2*3/2 ~ d'2*3/2 g'2 \divisioMinima
e'2*3/2 ~ e'2 c'2 a2 ~ a4 \divisioMaxima
d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2 ~ d'2 e'2 c'2 ~ c'2 b4 \divisioMaxima
g'2 ~ g'2*3/2 ~ g'2 d'4 ~ \divisioMinima
d'4 c'2*3/2 a2*3/2 c'2*3/2 ~ c'2 d'4 \divisioMaxima
c'2 a2*3/2 ~ a2*3/2 ~ a2 d'4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2 ~ d'2 e'2 c'2 a2*7/4 d'2 c'2 ~ c'4 b4 \finalis
}

tenorMusic = {
c'2*3/2 ~ c'2 ~ c'2 ~ c'4 \divisioMinima
b2 a2 \shiftRight g2 b2 \divisioMinima
c'2*3/2 b2 a2 g4 ~ \divisioMinima
g2*3/2 f2 \shiftRight d2*3/2 ~ d2 ~ d4 \divisioMaxima
g2*3/2 ~ g2*3/2 ~ g2 ~ \divisioMinima
g2*3/2 ~ g2 ~ g2 ~ g2 f4 \divisioMaxima
a2*3/2 c'2 b4 ~ \divisioMinima
b2 a2 \shiftRight g2 ~ g2 ~ g2 e2 d2 ~ d4 \divisioMaxima
b2 a2*3/2 c'2 b4 ~ \divisioMinima
b4 g2*3/2 ~ g2*3/2 f2*3/2 a2 g4 \divisioMaxima
g2 ~ g2*3/2 f2*3/2 d2 ~ d4 \divisioMinima
g2 ~ g2 ~ g2 ~ g2 ~ g2 ~ g2 ~ g2*7/4 f2 ~ f2 d2 \finalis
}

bassMusic = {
r2*3/2 b2 a2 g4 ~ \divisioMinima
g2 ~ g2 ~ g2 ~ g2 \divisioMinima
c2*3/2 ~ c2 d2 b,4 \divisioMinima
a,2*3/2 d2 ~ d2*3/2 g,2 ~ g,4 \divisioMaxima
g,2*3/2 b,2*3/2 e2 \divisioMinima
d2*3/2 c2 a,2 d2 ~ d4 \divisioMaxima
d2*3/2 ~ d2 g4 ~ \divisioMinima
g2 ~ g2 ~ g2 e2 c2 b,2 a,2 g,4 \divisioMaxima
g2 ~ g2*3/2 ~ g2 ~ g4 ~ \divisioMinima
g4 e2*3/2 d2*3/2 ~ d2*3/2 ~ d2 b,4 \divisioMaxima
a,2 d2*3/2 ~ d2*3/2 c2 b,4 ~ \divisioMinima
b,2 a,2 g,2 b,2 c2 a,2 d2*7/4 ~ d2 ~ d2 g,2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*82/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*1/2 g2*1/2


s2*16/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" d2*3/2 d2*1/2


s2*39/4
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
