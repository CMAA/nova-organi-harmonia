\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.17
%(volume.page)

% Proofed 3/11

global = {
 \key g \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e, 
\set stanza = " * " _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ e -- lé -- i -- son. 
Chri -- _ ste, _ _ _ e -- lé -- i -- son. 
Chri -- ste, _ _ _ _ e -- lé -- i -- son. 
Chri -- _ ste, _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e, _ _ _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e, _ _ _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e, _ _ _ 
\set stanza = " * " 
_ _ _ _ _ 
\set stanza = " ** "  
_ _ _ _ e -- lé -- i -- son. }

chantMusic = {
\tieDown   g'4 ( aes'4 bes'4 aes'4 g'4) f'4 ( g'4) g'4 \divisioMinima
 g'4 ( bes'4 c''4 bes'4 aes'4 g'4.) bes'4 ( g'4) aes'4 ( g'4 f'4 ees'4) f'4 aes'4 f'4 g'4 \finalis
 \forceBreak
 g'4 bes'4 ( c''4) c''4 ( bes'4 aes'4 f'4 g'4) \divisioMinima
 g'4 ( bes'4) c''4 ( f'4.) g'4 ( bes'4 aes'4 f'4 ees'4) f'4 aes'4 f'4 g'4 \finalis
 \forceBreak
 g'4 ( aes'4 bes'4 aes'4 g'4) f'4 ( g'4) g'4 \divisioMinima
 g'4 ( bes'4 c''4 bes'4 aes'4 g'4.) bes'4 ( g'4) aes'4 ( g'4 f'4 ees'4) f'4 aes'4 f'4 g'4 \finalis
 \forceBreak
 g'4 ( f'4 ees'4) f'4 ( g'4) g'4 ( aes'4) ~ aes'4 ( g'4) \divisioMinima
 g'4 ( aes'4 bes'4 c''4 c''4) c''4 ( bes'4 aes'4 f'4) g'4 ( f'4 ees'4) f'4 aes'4 f'4 g'4 \finalis
 \forceBreak
 g'4 ( aes'4) g'4. f'4 ( g'4 aes'4 bes'4) ~ bes'4 ( g'4) \divisioMinima
 g'4 ( bes'4) c''4 ( f'4) g'4 ( bes'4 aes'4 f'4 ees'4) f'4 aes'4 f'4 g'4 \finalis
 \forceBreak
 g'4 ( f'4 ees'4) f'4 ( g'4)
 g'4 ( aes'4) ~ aes'4 ( g'4) \divisioMinima
 g'4 ( aes'4 bes'4 c''4 c''4) c''4 ( bes'4 aes'4 f'4) g'4 ( f'4 ees'4) f'4 aes'4 f'4 g'4 \finalis
  f'4 ( c''4 des''4) c''4 \forceBreak
 c''4. bes'4 ( aes'4 bes'4) c''4 ( bes'4 aes'4 g'4) \divisioMinima
 g'4 ( aes'4) bes'4 ( g'4) aes'4 ( g'4 f'4 ees'4) f'4 aes'4 f'4 g'4 \finalis
 aes'4 g'4 ( f'4) \forceBreak
 g'4. f'4 ( ees'4 f'4) aes'4 ( f'4 g'4) \divisioMinima
 g'4 ( aes'4) bes'4 ( g'4) aes'4 ( g'4 f'4 ees'4) f'4 aes'4 f'4 g'4 \finalis
  f'4 ( c''4 des''4) c''4 \forceBreak
 c''4. bes'4 ( aes'4 bes'4) c''4 ( bes'4 aes'4 g'4) \divisioMinima
 g'4 ( aes'4 bes'4) ~ bes'4 ( aes'4 f'4 g'4) \divisioMaior
  f'4 ( c''4) des''4 ( c''4 c''4) bes'4 ( aes'4 bes'4) c''4 ( bes'4 aes'4 g'4) \divisioMinima
 \forceBreak
 g'4 ( aes'4 bes'4) ~ bes'4 ( aes'4 f'4 g'4) \divisioMaior
 g'4 ( aes'4) bes'4 ( aes'4) c''4 ( bes'4 aes'4 g'4) \divisioMinima
 g'4 ( aes'4 bes'4) ~ bes'4 ( aes'4 f'4 ees'4) f'4 aes'4 f'4 g'4 \finalis

}

altoMusic = {
ees'2*5/2 ~ ees'2 ~ ees'4 \divisioMinima
d'2 g'2*3/2 ~ g'4. f'2 c'2*5/2 ees'2*3/2 \finalis
r4 f'2 ees'2 ~ ees'2*3/2 \divisioMinima
c'2 ~ c'2*5/4 ~ c'2*3/2 ~ c'2*3/2 bes2*3/2 \finalis
ees'2*5/2 ~ ees'2 ~ ees'4 \divisioMinima
d'2 c'2*9/4 ~ c'2 ~ c'2*5/2 ~ c'2*3/2 \finalis
bes2*3/2 ~ bes2*3/2 ees'2*3/2 \divisioMinima
c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'2*4/2 ees'2*3/2 \finalis
ees'2 ~ ees'2*3/4 ~ ees'2*3/2 ~ ees'2*3/2 \divisioMinima
c'2 ~ c'2 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 \finalis
bes2*3/2 ~ bes2*3/2 ees'2*3/2 \divisioMinima
c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'2*4/2 ees'2*3/2 f'2*4/2 ~ f'2*3/4 ~ f'2*3/2 ees'2 ~ ees'2 ~ \divisioMinima
ees'2*4/2 c'2 ~ c'2*3/2 ees'2*3/2 \finalis
c'4 ~ c'2 ~ c'2*3/4 ~ c'2*3/2 bes2*3/2 \divisioMinima
c'2*4/2 ~ c'2*5/2 ~ c'2*3/2 f'2*4/2 ~ f'2*3/4 ~ f'2*3/2 ees'2 ~ ees'2 ~ \divisioMinima
ees'2 ~ ees'2 ~ ees'2*3/2 f'2 ~ f'2*3/2 ~ f'2*3/2 ees'2 ~ ees'2 ~ \divisioMinima
ees'2 ~ ees'2 ~ ees'2*3/2 ~ \divisioMaior
ees'2*4/2 ~ ees'2 c'2 ~ \divisioMinima
c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'4 \finalis
}

tenorMusic = {
ees2 f2*3/2 aes2 g4 ~ \divisioMinima
g2 ~ g2*3/2 c'2*3/4 ~ c'2 bes2 aes2*3/2 c'2*3/2 \finalis
ees4 g2 aes2 bes2*3/2 ~ \divisioMinima
bes2 aes2*5/4 ees2*3/2 ~ ees2*3/2 ~ ees2*3/2 \finalis
ees2 f2*3/2 aes2 g4 ~ \divisioMinima
g2 ~ g2*9/4 \shiftRight f2 bes2 aes2*3/2 ees2*3/2 \finalis
ees2*3/2 ~ ees2*3/2 ~ ees2*3/2 ~ \divisioMinima
ees2*3/2 ~ ees2 f2*4/2 aes2*4/2 bes2*3/2 \finalis
c'2 ~ c'2*3/4 ~ c'2*3/2 bes2*3/2 ~ \divisioMinima
bes2 aes2 g2 f2*4/2 ees2*3/2 \finalis
ees2*3/2 ~ ees2*3/2 ~ ees2*3/2 ~ \divisioMinima
ees2*3/2 ~ ees2 f2*4/2 aes2*4/2 bes2*3/2 \finalis
aes2*4/2 ~ aes2*3/4 ~ aes2*3/2 ~ aes2 c'2 \divisioMinima
bes2*4/2 ~ bes2 aes2*3/2 c'2*3/2 \finalis
f4 ~ f2 ees2*3/4 ~ ees2*3/2 ~ ees2*3/2 \divisioMinima
g2*4/2 \shiftRight f2 aes2*3/2 ees2*3/2 \finalis
aes2*4/2 ~ aes2*3/4 ~ aes2*3/2 ~ aes2 bes2 ~ \divisioMinima
bes2 c'2 bes2*3/2 \divisioMaior
c'2 aes2*3/2 ~ aes2*3/2 ~ aes2 bes2 \divisioMinima
c'2 ~ c'2 ~ c'2*3/2 \divisioMaior
g2 f2 aes2 ees2 ~ \divisioMinima
ees2 f2*3/2 c2*3/2 d2 ees4 \finalis
}

bassMusic = {
c2*5/2 ~ c2 ~ c4 \divisioMinima
f2 ees2*3/2 ~ ees2*3/4 f2 ~ f2 ~ f2*3/2 \shiftRight c'2*3/2 \finalis
r4 d2 c2 ees2*3/2 \divisioMinima
f2 ~ f2*5/4 c2*3/2 aes,2*3/2 \shiftRight ees2*3/2 \finalis
c2*5/2 ~ c2 ~ c4 \divisioMinima
f2 ees2*9/4 f2 ~ f2 ~ f2*3/2 c2*3/2 \finalis
r2*3/2 d2*3/2 c2*3/2 \divisioMinima
bes,2*3/2 aes,2 ~ aes,2*4/2 ~ aes,2*4/2 ees2*3/2 \finalis
r2 bes2*3/4 aes2*3/2 g2*3/2 \divisioMinima
f2 ~ f2 ~ f2 ~ \shiftRight f2*4/2 c2*3/2 \finalis
r2*3/2 d2*3/2 c2*3/2 \divisioMinima
bes,2*3/2 aes,2 ~ aes,2*4/2 ~ aes,2*4/2 ees2*3/2 f2*4/2 ees2*3/4 des2*3/2 c2 ~ c2 \divisioMinima
ees2*4/2 f2 ~ f2*3/2 \shiftRight c'2*3/2 \finalis
r4 c2 ~ c2*3/4 aes,2*3/2 \shiftRight ees2*3/2 ~ \divisioMinima
ees2*4/2 f2 ~ f2*3/2 c2*3/2 f2*4/2 ees2*3/4 des2*3/2 c2 ees2 \divisioMinima
f2 ees2 ~ ees2*3/2 aes2 f2*3/2 des2*3/2 c2 ~ c2 ~ \divisioMinima
c2 f2 c2*3/2 ~ \divisioMaior
c2*4/2 ~ c2 bes,2 \divisioMinima
aes,2 ~ aes,2*3/2 ~ aes,2*3/2 c2 ~ c4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*419/4
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" aes2*2/2 aes2*1/2


s2*29/2
\allowVoiceLineBreak
\voiceLine "down" "down" c2*3/2 c2*1/2


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
