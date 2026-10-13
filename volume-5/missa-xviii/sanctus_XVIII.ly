\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.97
%(volume.page)

%Proofed 3/14

global = {
 \key g \minor
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
\tieDown   a'4 a'4 ( g'4) \divisioMinima
 a'4 a'4 ( g'4) \divisioMinima
 f'4 g'4 a'4 a'4 a'4 a'4 a'4 a'4 g'4 a'4 \divisioMaxima
 \forceBreak
 f'4 g'4 a'4 a'4 a'4 a'4 a'4 g'4 bes'4 a'4 a'4 g'4 f'4 \divisioMaxima
 f'4 g'4 a'4 \forceBreak
 a'4 a'4 g'4 a'4 \divisioMaxima
 f'4 g'4 a'4 a'4 a'4 a'4 a'4 g'4 bes'4 a'4 g'4 \forceBreak
 a'4 g'4 f'4 \divisioMaxima
 d'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 a'4 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( g'4) \finalis

}

altoMusic = {
f'4 d'2 \divisioMinima
c'4 bes2 \divisioMinima
d'4 ees'4 f'2*3/2 ~ f'2 ~ f'4 ees'4 d'4 \divisioMaxima
c'2*3/2 d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2 \divisioMaxima
f'4 ~ f'2 ~ f'2 ees'4 f'4 \divisioMaxima
d'4 ees'4 f'2*3/2 ~ f'2 ~ f'4 ~ f'2*3/2 ~ f'2 ~ f'4 \divisioMaxima
a4 c'2 d'2*3/2 c'2 bes2 \finalis
}

tenorMusic = {
d'4 c'4 bes4 \divisioMinima
f4 d2 \divisioMinima
r2 d'2*3/2 c'2 bes2 a4 \divisioMaxima
a2*3/2 f2*3/2 ~ f2 g2*3/2 a2 \divisioMaxima
r4 d'2 c'2 bes4 a4 \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ d'2*3/2 ~ d'2 a4 \divisioMaxima
f4 ~ f2 ~ f2*3/2 d2 ~ d2 \finalis
}

bassMusic = {
d4 g2 \divisioMinima
d4 g,2 \divisioMinima
d2 ~ d2*3/2 ~ d2 g2 f4 \divisioMaxima
d2*3/2 c2*3/2 bes,2 ~ bes,2*3/2 d2 \divisioMaxima
d4 ~ d2 ~ d2 ~ d2 \divisioMaxima
r2*5/2 c'2 bes4 g2*3/2 d2 ~ d4 \divisioMaxima
c4 bes,2 ~ bes,2*3/2 a,2 g,2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*3/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" d2*1/2 d2*0


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        ""
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
