\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.95
%(volume.page)

%Proofed 3/14

global = {
 \key ees \lydian
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
\tieDown   bes'4 ( bes'4) g'4 ees'4 ( f'4 ees'4) ees'4 \divisioMinima
 ees'4 ( g'4) bes'4 ( bes'4 c''4) bes'4 c''4 ( ees''4) ees''4 ( d''4) c''4 ( bes'4) c''4 bes'4 \divisioMaior
 \forceBreak
 bes'4 g'4 ees'4 f'4 ( g'4) ees'4 ( f'4 ees'4) ees'4 \finalis
 bes4 ( c'4) ees'4 ees'4 ( f'4 ees'4) ees'4 \divisioMinima
 ees'4 ( g'4) bes'4 ( bes'4 c''4) bes'4 \forceBreak
 c''4 ( ees''4) ees''4 ( d''4) c''4 ( bes'4) c''4 bes'4 \divisioMaior
 bes'4 g'4 ees'4 f'4 ( g'4) ees'4 ( f'4 ees'4) ees'4 \finalis
 bes'4 ( bes'4) g'4 ees'4 ( f'4 ees'4) ees'4 \divisioMinima
 \forceBreak
 ees'4 ( g'4) bes'4 ( bes'4 c''4) bes'4 c''4 ( ees''4) ees''4 ( d''4) c''4 ( bes'4) c''4 bes'4 \divisioMaior
 bes'4 g'4 ees'4 f'4 ( g'4) ees'4 ( f'4 ees'4) ees'4 \finalis

}

altoMusic = {
ees'2*3/2 bes2*3/2 ~ bes4 \divisioMinima
r2 f'2*3/2 ~ f'4 g'2 ~ g'2 ~ g'2 ~ g'2 ~ \divisioMaior
g'4 ~ g'4 ees'4 ~ ees'2 bes2*3/2 ~ bes4 \finalis
bes2*3/2 ~ bes2*3/2 ~ bes4 \divisioMinima
ees'2 f'2*4/2 ees'2 ~ ees'2 ~ ees'2 ~ ees'4 ~ ees'4 \divisioMaior
c'2 ~ c'4 ~ c'2 bes2*3/2 ~ bes4 \finalis
ees'2*3/2 ~ ees'4 s2*5/2 f'2*3/2 ~ f'4 g'2 ~ g'2 ~ g'2 ~ g'2 \divisioMaior
ees'2 ~ ees'4 ~ ees'2 bes2*3/2 ~ bes4 \finalis
}

tenorMusic = {
g2*3/2 aes2*3/2 g4 \divisioMinima
ees'2 ~ ees'2*3/2 d'4 ees'2 c'2 ~ c'2 d'2 ~ \divisioMaior
d'2 c'4 bes2 aes2*3/2 g4 \finalis
g2*3/2 aes2*3/2 g4 \divisioMinima
g2 ~ g2*4/2 ~ g2 ~ g2 ~ g2 f4 -\tweak Glissando.Y-offset #-0.8 \glissando \voiceTwo \change Staff = "up" bes4 \change Staff = "down" \divisioMaior
\voiceOne ees2 f4 aes2 ~ aes2*3/2 g4 \finalis
bes2*3/2 ~ bes2*3/2 ~ bes4 \divisioMinima
ees'2 ~ ees'2*3/2 d'4 ees'2 c'2 ~ c'2 d'2 \divisioMaior
c'2 bes4 aes2 ~ aes2*3/2 g4 \finalis
}

bassMusic = {
ees2*3/2 ~ ees2*3/2 ~ ees4 \divisioMinima
r2*6/2 c'2 bes2 aes2 g2 \divisioMaior
ees2*3/2 ~ ees2 ~ ees2*3/2 ~ ees4 \finalis
r2*7/2 \divisioMinima
ees2 d2*4/2 c2 bes,2 aes,2 ~ aes,4 g,4 \divisioMaior
aes,2*3/2 ~ aes,2 ees2*3/2 ~ ees4 \finalis
g2*3/2 aes2*3/2 g4 \divisioMinima
r2*6/2 c'2 bes2 aes2 g2 \divisioMaior
c2 ~ c4 ~ c2 ees2*3/2 ~ ees4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*13/2
\allowVoiceLineBreak
\voiceLine "down" "down" c'2*2/2 c'2*1/2


s2*57/2
\allowVoiceLineBreak
\voiceLine "down" "down" c'2*2/2 c'2*1/2


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "V."
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
