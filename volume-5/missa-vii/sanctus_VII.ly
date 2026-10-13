\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.45
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- _ ctus, 
\set stanza = " * " San -- _ _ ctus, San -- _ _ _ ctus 
Dó -- mi -- nus De -- us Sá -- _ ba -- oth. 
Ple -- ni sunt cœ -- li et _ ter -- _ _ ra gló -- ri -- a tu -- a. 
Ho -- _ _ sán -- na in ex -- cél -- _ _ _ _ sis. 
Be -- ne -- dí -- ctus qui _ ve -- _ _ nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- sán -- na in ex -- cél -- _ _ _ _ sis. }

chantMusic = {
\tieDown   f'4 ( g'4) bes'4 ( a'4 bes'4) g'4 ( f'4) \divisioMinima
 c''4 ( d''4 c''4.) f'4 ( g'4) bes'4 ( a'4 bes'4) g'4 ( f'4) \divisioMinima
 f'4 ( g'4 d'4) ees'4 ( c'4 bes4.) f'4 ( g'4 d'4) ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaior
 \forceBreak
 f'4 g'4 ( a'4) bes'4 a'4 ( g'4 f'4) f'4 g'4 ( bes'4 a'4) bes'4 ( g'4 f'4) g'4 ( ees'4) f'4 \divisioMaxima
 c''4 d''4 ( c''4) bes'4 ( a'4 c''4) \divisioMinima
 \forceBreak
 c''4 d''4 ( c''4) bes'4 ( a'4) bes'4 ( g'4 f'4) ees'4 ( g'4) bes'4 ( f'4) g'4 ( ees'4) f'4 \divisioMinima
 c''4 bes'4 ( a'4) g'4 ( f'4) ees'4 ( f'4 g'4) ~ g'4 ( d'4) d'4 \divisioMaxima
 \forceBreak
 f'4 ( g'4) bes'4 ( f'4) g'4 ( ees'4) g'4 ( g'4) f'4 \divisioMinima
 g'4 ( f'4 ees'4) d'4 ( c'4 bes4) bes4 d'4 ( ees'4 f'4) g'4 ( f'4) g'4 ( d'4) ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaxima
 \forceBreak
 c''4 ( d''4 c''4) bes'4 ( c''4) c''4 ( d''4 c''4 c''4) f'4 \divisioMinima
 f'4 ( g'4 a'4) bes'4 ( g'4 f'4 f'4) ees'4 ( f'4 g'4) bes'4 ( f'4) g'4 ( ees'4) f'4 \divisioMinima
 g'4 a'4 ( bes'4) f'4 ees'4 \forceBreak
 f'4 g'4 bes'4 \divisioMaxima
 c''4 ( d''4 bes'4 a'4 bes'4) g'4 ( g'4) f'4 \divisioMinima
 g'4 ( f'4 ees'4) d'4 ( c'4 bes4) bes4 d'4 ( ees'4 f'4) g'4 ( f'4) g'4 ( d'4) ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 \finalis

}

altoMusic = {
d'2 ~ d'2*3/2 c'2 \divisioMinima
f'2*7/4 ~ f'2 ees'2*3/2 c'2 \divisioMinima
bes2*3/2 ~ bes2 ~ bes4. ~ bes2*3/2 ~ bes2 c'4 \divisioMaior
d'2*3/2 ~ d'4 ~ d'2*3/2 c'4 bes2*3/2 ~ bes2*3/2 ~ bes2 a4 \divisioMaxima
f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2*3/2 d'2 ~ d'2*3/2 ees'2 f'2 ees'2 c'4 \divisioMinima
f'4 d'2 ~ d'2 ees'2 d'2*3/2 ~ d'4 \divisioMaxima
f'2*4/2 ees'2 c'2 ~ c'4 ~ \divisioMinima
c'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 r2*2/2 bes4 ~ bes2*3/2 ~ bes2 ~ bes2 ~ bes2 a4 \divisioMaxima
f'2*3/2 ~ f'2 ~ f'2*4/2 ~ f'4 ~ \divisioMinima
f'2*3/2 ~ f'2*3/2 ~ f'4 ees'2*3/2 d'2 c'2 bes4 \divisioMinima
d'4 ~ d'2 c'2 ees'2 d'4 \divisioMaxima
f'2 ~ f'2*3/2 d'2*3/2 \divisioMinima
c'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 r2*2/2 bes4 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 c'4 \finalis
}

tenorMusic = {
bes2 ~ bes2*3/2 c'2 \divisioMinima
a2*7/4 bes2 ~ bes2*3/2 ~ bes4 a4 \divisioMinima
f2*3/2 g2 f2*3/4 ~ f2*3/2 g2 a4 ~ \divisioMaior
a4 g2 f4 ~ f2*3/2 ~ f4 ~ f2*3/2 ees2*3/2 ~ ees2 c4 \divisioMaxima
a2*3/2 g2*3/2 \divisioMinima
a2*3/2 bes2 c'2*3/2 bes2 ~ bes2 ~ bes2 a4 ~ \divisioMinima
a4 \shiftRight g2 a2 bes2 c'2*3/2 bes4 \divisioMaxima
bes2*4/2 ~ bes2 ~ bes2 a4 \divisioMinima
g2*3/2 ~ g2*3/2 f4 ~ f2*3/2 d2 ~ d2 bes,2 c4 \divisioMaxima
a2*3/2 g2 a2*4/2 ~ a4 \divisioMinima
c'2*3/2 bes2*4/2 ~ bes2*3/2 ~ bes2 ees2 d4 ~ \divisioMinima
d4 g2 ~ g2 ees2 f4 \divisioMaxima
f2 ~ f2*3/2 a2*3/2 \divisioMinima
g2*3/2 ~ g2*3/2 f4 ~ f2*3/2 ~ f2*4/2 g2 a4 \finalis
}

bassMusic = {
r2 a2*3/2 ~ a2 \divisioMinima
f2*7/4 d2 c2*3/2 f2 \divisioMinima
d2*3/2 c2 d2*3/4 g,2*3/2 ~ g,2 f,4 \divisioMaior
d2*3/2 ~ d4 bes,2*3/2 a,4 g,2*3/2 ~ g,2*3/2 c2 f,4 \divisioMaxima
f2*3/2 ~ f2*3/2 ~ \divisioMinima
f2*3/2 g2 ~ g2*3/2 ~ g2 d2 c2 f4 ~ \divisioMinima
f4 g2 ~ g2 ~ g2 ~ g2*3/2 ~ g4 \divisioMaxima
d2*4/2 c2 f2 ~ f4 \divisioMinima
ees2*3/2 ~ ees2*3/2 d4 bes,2*3/2 ~ bes,2 g,2 ~ g,2 f,4 \divisioMaxima
f2*3/2 ~ f2 ~ f2*4/2 d4 ~ \divisioMinima
d2*3/2 ~ d2*4/2 c2*3/2 bes,2 ~ bes,2 ~ bes,4 ~ \divisioMinima
bes,4 ~ bes,2 c2 ~ c2 bes,4 \divisioMaxima
\shiftRight f2 d2*3/2 ~ d2*3/2 \divisioMinima
ees2*3/2 ~ ees2*3/2 d4 bes,2*3/2 g,2*4/2 ~ g,2 f,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*5/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" a2*2/2 a2*1/2


s2*36/2
\allowVoiceLineBreak
\voiceLine "down" "down" c2*2/2 c2*1/2


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
