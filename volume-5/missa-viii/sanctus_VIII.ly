\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.50
%(volume.page)

%Proofed 3/14

global = {
 \key f \major
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- _ _ ctus, 
\set stanza = " * " San -- ctus, San -- _ ctus 
Dó -- _ mi -- nus De -- us Sá -- _ _ _ ba -- oth. 
Ple -- ni sunt cœ -- li et ter -- ra gló -- ri -- a tu -- a. 
Ho -- sán -- na in ex -- cél -- _ sis. 
Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- sán -- na in ex -- cél -- _ _ sis. }

chantMusic = {
\tieDown   f'4 ( g'4) a'4 ( f'4) g'4 ( g'4 \once \tweak #'font-size #-4 f' ) f'4 \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 e' ) d'4 ( c'4) \divisioMinima
 f'4 ( g'4 a'4) c''4 ( a'4) ~ a'4 ( g'4 f'4) g'4( f'4) \divisioMaior
  f'4 ( a'4) c''4 ( bes'4 c''4) \forceBreak
 bes'4 ( a'4) a'4 c''4  bes'4 ( a'4) g'4 ( f'4) g'4 ( a'4 f'4) ~ f'4 ( d'4 c'4.) f'4 ( g'4 a'4) c''4 ( a'4) ~ a'4 ( g'4 f'4) g'4 ( f'4) f'4 \divisioMaxima
 \forceBreak
 f'4 a'4 ( c''4) c''4 a'4 ( g'4 c''4) c''4 c''4 ( \once \tweak #'font-size #-4 d'' )  d''4 ( c''4 bes'4 c''4) bes'4 ( a'4) \divisioMinima
 c''4  bes'4 ( a'4) g'4 ( a'4) a'4 ( g'4 f'4) f'4 \divisioMaxima
 \forceBreak
 f'4 f'4 ( \once \tweak #'font-size #-4 e' ) d'4 ( c'4) f'4 g'4 ( a'4) a'4 c''4 ( a'4) ~ a'4 ( g'4 f'4) g'4 ( f'4) \divisioMaxima
 f'4 a'4 ( c''4) c''4 ( a'4 g'4 c''4) c''4 c''4 ( d''4) \forceBreak
  d''4 ( c''4 bes'4 c''4) bes'4 ( a'4) \divisioMinima
 a'4 a'4 f'4 a'4 c''4 ( c''4 d''4) c''4 c''4 \divisioMaxima
 c''4  c''4 ( d''4) ~ d''4 ( c''4 a'4 bes'4) g'4 ( f'4) \divisioMinima
 \forceBreak
 g'4 ( a'4) f'4 ( e'4) d'4 ( c'4.) f'4 ( g'4 a'4) c''4 ( a'4) ~ a'4 ( g'4 f'4) g'4 ( f'4) \finalis

}

altoMusic = {
c'2*4/2 ~ c'2*3/2 ~ c'4 \divisioMinima
c'2 \glissando d'4 c'4 \divisioMinima
c'2*4/2 d'2*4/2 a2 f'2 ~ f'2*3/2 ~ f'2*3/2 c'2*3/2 d'2*4/2 a2*3/2 \glissando c'4. ~ c'2*4/2 d'2*4/2 c'2 ~ c'4 \divisioMaxima
f'4 ~ f'2*3/2 e'2*4/2 f'2 ~ f'2*4/2 ~ f'2 \divisioMinima
c'2*3/2 d'2 c'2*3/2 ~ c'4 \divisioMaxima
r4 c'2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 r2*4/2 e'2 d'2*4/2 c'2 \divisioMaxima
r2*10/2 f'2*4/2 ~ f'2 ~ \divisioMinima
f'4 f'2*3/2 g'2*4/2 ~ g'4 \divisioMaxima
r4 f'4 ~ f'2*3/2 e'2 d'2 ~ \divisioMinima
d'2 c'2 \glissando d'4 c'4. ~ c'2*4/2 d'2*4/2 c'2 \finalis
}

tenorMusic = {
a2*4/2 bes2*3/2 a4 \divisioMinima
g2 e2 \divisioMinima
f2*4/2 ~ f2*4/2 ~ f2 \divisioMaior
a2 g2*3/2 f2*3/2 ~ f2*3/2 ~ f2*4/2 ~ f2*3/2 e2*3/4 f2*4/2 ~ f2*4/2 bes2 a4 \divisioMaxima
r4 f2*3/2 g2*4/2 a2 bes2*4/2 c'2 \divisioMinima
f2*3/2 ~ f2 ~ \shiftRight f2*3/2 a4 \divisioMaxima
f4 g2 e2 f2*3/2 ~ f2 ~ f2*4/2 a2 \divisioMaxima
d'2*3/2 ~ d'2*5/2 e'2 r2*6/2 \divisioMinima
r2*4/2 f'2*4/2 e'4 \divisioMaxima
r4 a4 ~ a2*3/2 g2 f2 ~ \divisioMinima
f2 ~ f2 e2*5/4 f2*4/2 ~ f2*4/2 bes4 a4 \finalis
}

bassMusic = {
f2*4/2 ~ f2*3/2 ~ f4 \divisioMinima
c2 ~ c2 \divisioMinima
a,2*4/2 bes,2*4/2 d2 ~ d2 ~ d2*3/2 ~ d2*3/2 a,2*3/2 bes,2*4/2 d2*3/2 ~ d2*3/4 a,2*4/2 bes,2*4/2 f2 ~ f4 \divisioMaxima
d4 ~ d2*3/2 ~ d2*4/2 ~ d2 ~ d2*4/2 f2 \divisioMinima
a,2*3/2 bes,2 f2*3/2 ~ f4 \divisioMaxima
r4 c2 ~ c2 d2*3/2 c2 bes,2*4/2 f2 \divisioMaxima
r2*3/2 c'2*5/2 ~ c'2 g2*4/2 a2 ~ \divisioMinima
a4 d'2*3/2 c'2*4/2 ~ c'4 \divisioMaxima
f4 ~ f4 d2*3/2 ~ d2 c2 \divisioMinima
bes,2 a,2 ~ a,2*5/4 ~ a,2*4/2 bes,2*4/2 f2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*20/2
\allowVoiceLineBreak
\voiceLine "up" "down" a2*2/2 a2*1/2


s2*45/4
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f2*4/2 f2*1/2


s2*16/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f2*2/2 f2*1/2


s2*18/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f2*4/2 f2*1/2


s2*18/2
\allowVoiceLineBreak
\voiceLine "up" "down" f'2*3/2 f'2*1/2


s2*47/4
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f2*4/2 f2*1/2


}

voiceLinesTwo = {
\voiceLineStyle


s2*43/4
s2*50/4


s2*20/2
\allowVoiceLineBreak
\voiceLine "down" "up" c'2*2/2 c'2*1/2
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
	\new Voice {
        \voiceFour \global \voiceLinesTwo
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
