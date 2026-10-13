\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.148
%(volume.page)

%Proofed 3/14

global = {
 \key g \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- ctus, 
\set stanza = " * " San -- ctus, San -- ctus Dó -- mi -- nus De -- us Sá -- ba -- oth. 
Ple -- ni sunt cœ -- li et ter -- ra gló -- ri -- a tu -- a. 
Ho -- sán -- na in ex -- cél -- _ sis. 
Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- sán -- na in ex -- cél -- _ sis. }

chantMusic = {
\tieDown   ees'4 ( f'4 \once \tweak #'font-size #-4 aes' ) aes'4 ( aes'4 g'4 f'4) \divisioMinima
 bes'4 ( aes'4 bes'4) bes'4 \divisioMinima
 g'4 ( f'4 aes'4) aes'4 ( aes'4 g'4 f'4 g'4) \divisioMinima
 f'4 g'4 bes'4 aes'4 bes'4 \forceBreak
 g'4 ( f'4) aes'4 ( aes'4 g'4) g'4 \divisioMaxima
 f'4 g'4 bes'4 ( c''4 ees''4) c''4 ( bes'4 aes'4) bes'4 bes'4 ( c''4) bes'4 ( aes'4 g'4) g'4 \divisioMinima
 bes'4 ( aes'4) g'4 aes'4 ( bes'4) aes'4 ( g'4 f'4) f'4 \divisioMaxima
 \forceBreak
 g'4 aes'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 aes'4 bes'4 g'4 ( f'4) aes'4 ( aes'4 g'4) g'4 \divisioMaxima
 f'4 g'4 bes'4 ( c''4 ees''4) c''4 c''4 c''4 ( bes'4) c''4 ( ees''4) \divisioMinima
 \forceBreak
 bes'4 bes'4 ( aes'4) g'4 aes'4 ( bes'4) aes'4 aes'4 ( g'4 f'4) f'4 \divisioMaxima
 g'4 aes'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 aes'4 bes'4 g'4 ( f'4) aes'4 ( aes'4 g'4) g'4 \finalis

}

altoMusic = {
c'2*3/2 ~ c'2*4/2 \divisioMinima
ees'2*3/2 ~ ees'4 \divisioMinima
c'2*3/2 ees'2*5/2 \divisioMinima
d'2*3/2 ees'2 ~ ees'2 ~ ees'2*3/2 ~ ees'4 \divisioMaxima
f'2 ees'2*3/2 ~ ees'2*4/2 ~ ees'2 ~ ees'2*3/2 ~ ees'4 ~ \divisioMinima
ees'2*3/2 ~ ees'2 c'2*3/2 ~ c'4 \divisioMaxima
ees'4 ~ ees'2 ~ ees'4 ~ ees'2 ~ ees'2 d'2*3/2 ees'4 \divisioMaxima
r4 g'4 ~ g'2*5/2 ~ g'2 ~ g'2 ~ \divisioMinima
g'4 ees'2*3/2 ~ ees'2*3/2 c'2*3/2 ~ c'4 \divisioMaxima
ees'4 ~ ees'2 ~ ees'4 ~ ees'2 ~ ees'2 d'2*3/2 ees'4 \finalis
}

tenorMusic = {
aes2*3/2 ~ aes2*4/2 \divisioMinima
f2*3/2 g4 \divisioMinima
aes2*3/2 c'2*5/2 ~ \divisioMinima
c'2*3/2 ~ c'2 bes2 aes2*3/2 c'4 \divisioMaxima
bes2 g2*3/2 aes2*4/2 g2 aes2*3/2 bes4 ~ \divisioMinima
bes2*3/2 c'2 bes2*3/2 aes4 \divisioMaxima
ees4 f2 g4 aes2 bes2 c'2*3/2 ~ c'4 \divisioMaxima
f'2 ees'2*5/2 ~ ees'2 ~ ees'2 \divisioMinima
d'4 c'2*3/2 ~ c'2*3/2 bes2*3/2 aes4 \divisioMaxima
ees4 f2 g4 aes2 bes2 c'2*3/2 ~ c'4 \finalis
}

bassMusic = {
r2*3/2 f2*4/2 \divisioMinima
ees2*3/2 ~ ees4 \divisioMinima
r2*8/2 \divisioMinima
c2*3/2 ~ c2 ~ c2 ~ c2*3/2 ~ c4 \divisioMaxima
d2 c2*3/2 ~ c2*4/2 ees2 ~ ees2*3/2 ~ ees4 \divisioMinima
g2*3/2 ~ g2 f2*3/2 ~ f4 \divisioMaxima
c4 ~ c2 ~ c4 ~ c2 ~ c2 ~ c2*3/2 ~ c4 \divisioMaxima
r2*7/2 d'2 c'2 \divisioMinima
g4 ~ g2*3/2 f2*3/2 ~ f2*3/2 ~ f4 \divisioMaxima
c4 ~ c2 ~ c4 ~ c2 ~ c2 ~ c2*3/2 ~ c4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*11/2
\allowVoiceLineBreak
\voiceLine "up" "down" c'2*3/2 c'2*1/2


s2*33/2
\allowVoiceLineBreak
\voiceLine "down" "up" c'2*2/2 c'2*1/2


s2*30/2
\allowVoiceLineBreak
\voiceLine "down" "up" c'2*3/2 c'2*1/2


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
