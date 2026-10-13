\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.147
%(volume.page)

%Proofed 3/14

global = {
 \key f \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- ctus, 
\set stanza = " * " San -- ctus, San -- ctus Dó -- mi -- nus De -- us Sá -- ba -- oth. 
Ple -- ni sunt cœ -- li et ter -- ra gló -- ri -- a tu -- a. 
Ho -- sán -- na in ex -- cél -- sis. 
Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- sán -- na in ex -- cél -- sis. }

chantMusic = {
\tieDown   ees'4 ( ees'4 \once \tweak #'font-size #-4 f' ) f'4 \divisioMinima
 g'4 ( ees'4 f'4) f'4 \divisioMinima
 aes'4 ( bes'4) f'4 \divisioMinima
 g'4 bes'4 bes'4 bes'4 g'4 bes'4 bes'4 c''4 \divisioMaxima
 \forceBreak
 c''4 c''4 c''4 ( \once \tweak #'font-size #-4 bes' ) c''4 ( ees''4) bes'4 c''4 g'4 ( aes'4) g'4 \divisioMinima
 g'4 ( f'4 ees'4) f'4 f'4 ( aes'4 g'4) f'4 f'4 \divisioMaxima
 \forceBreak
 f'4 g'4 aes'4 bes'4 aes'4 f'4 ( ees'4) ~ ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaxima
 g'4 g'4 g'4 ( f'4) ees'4 g'4 bes'4 ( c''4) c''4 \divisioMinima
 \forceBreak
 bes'4 c''4 ( ees''4) bes'4 g'4 ( bes'4) aes'4 ( g'4) f'4 ( g'4) g'4 \divisioMaxima
 f'4 f'4 ( g'4) ees'4 ( c'4) ees'4 f'4 ( aes'4 g'4) f'4 ( ees'4) ~ ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 \finalis

}

altoMusic = {
c'2*4/2 \divisioMinima
c'2*3/2 ~ c'4 \divisioMinima
des'2*3/2 \divisioMinima
g'2*3/2 f'2 ~ f'2 g'4 \divisioMaxima
aes'2 ~ aes'2 ~ aes'2 f'2 ees'2 ~ ees'4 ~ \divisioMinima
ees'2*4/2 ~ ees'2*3/2 c'2 \divisioMaxima
c'4 ees'2 f'2*3/2 bes2*3/2 c'4 \divisioMaxima
ees'2 d'!2 ees'2 f'2 g'4 ~ \divisioMinima
g'4 ~ g'2*3/2 ~ g'2 ees'2 ~ ees'2 d'!4 \divisioMaxima
r4 bes2 ~ bes2*3/2 c'2*4/2 bes2*3/2 aes4 \finalis
}

tenorMusic = {
aes2*4/2 \divisioMinima
bes2*3/2 aes4 \divisioMinima
bes2*3/2 \divisioMinima
ees'2*3/2 des'2 ~ des'2 ees'4 \divisioMaxima
ees'2 ~ ees'2 ~ ees'2 d'!2 ~ d'2 c'4 \divisioMinima
bes2*4/2 aes2*3/2 ~ aes2 \divisioMaxima
aes4 bes2 ~ bes2*3/2 g2*3/2 aes4 \divisioMaxima
c'2*4/2 ~ c'2 d'!2 ees'4 ~ \divisioMinima
ees'4 c'2*3/2 d'!2 c'2 aes2 bes4 \divisioMaxima
f4 ~ f2 g2*3/2 f2*4/2 c2*3/2 ~ c4 \finalis
}

bassMusic = {
r2*4/2 \divisioMinima
f2*3/2 ~ f4 \divisioMinima
r2*8/2 c'2 ~ c'4 \divisioMaxima
aes2 g2 f2 g2 c2 ~ c4 ~ \divisioMinima
c2*4/2 ~ c2*3/2 f2 \divisioMaxima
ees4 ~ ees2 des2*3/2 f2*3/2 ~ f4 \divisioMaxima
c'2*4/2 c'2 ~ c'2 ~ c'4 ~ \divisioMinima
c'4 ees2*3/2 g2 ~ g2 ~ g2 ~ g4 \divisioMaxima
r4 d!2 c2*3/2 aes,2*4/2 g,2*3/2 f,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*42/2
\allowVoiceLineBreak
\voiceLine "down" "up" bes2*3/2 bes2*1/2


s2*12/2
\allowVoiceLineBreak
\voiceLine "down" "down" c'2*1/2 c'2*1/2


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
