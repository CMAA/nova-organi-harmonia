\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.127
%(volume.page)

%Proofed 3/14

global = {
 \key g \minor
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e _ 
\set stanza = " * " e -- lé -- i -- son. 
Ký -- ri -- e e -- _ lé -- i -- son. 
Ký -- ri -- e _ e -- lé -- i -- son. 
Chri -- ste _ _ e -- lé -- i -- son. 
Chri -- ste e -- _ lé -- i -- son. 
Chri -- ste _ _ e -- lé -- i -- son. 
Ký -- ri -- e e -- _ lé -- i -- son. 
Ký -- ri -- e e -- _ lé -- i -- son. 
Ký -- ri -- e _ _ _ _ 
\set stanza = " * " 
_ e -- _ lé -- i -- son. }

chantMusic = {
\tieDown   g'4 g'4 ( f'4) f'4 ( f'4 g'4.)  g'4 ( bes'4 a'4 g'4 f'4) \divisioMinima
 a'4 ( c''4 bes'4 g'4 f'4) a'4 a'4 g'4 \finalis
 g'4 g'4 ( f'4) \forceBreak
 f'4 ( g'4) ~ g'4 ( d'4) c'4 ( d'4) f'4 ( f'4 d'4) f'4 g'4 g'4 \finalis
 g'4 g'4 ( f'4) f'4 ( f'4 g'4.) g'4 ( bes'4 a'4 g'4 f'4) \divisioMinima
 \forceBreak
 a'4 ( c''4 bes'4 g'4 f'4) a'4 a'4 g'4 \finalis
 g'4 ( \quil a' bes'4) bes'4 ( a'4) bes'4 ( d''4 c''4) bes'4 ( bes'4 f'4) \divisioMinima
 a'4 ( c''4 bes'4 g'4 f'4) a'4 a'4 g'4 \finalis
 \forceBreak
 g'4 g'4 ( f'4 d'4) f'4 ( g'4 f'4) g'4 ( bes'4 a'4) f'4 g'4 g'4 \finalis
 g'4 ( \quil a' bes'4) bes'4 ( a'4) bes'4 ( d''4 c''4) bes'4 ( bes'4 f'4) \divisioMinima
 a'4 ( c''4 bes'4 g'4 f'4) a'4 a'4 g'4 \finalis
 \forceBreak
 g'4 ( d''4) d''4 ( c''4) c''4 ( d''4) ~ d''4 ( bes'4) \divisioMinima
 d''4 ( d''4 c''4) bes'4 ( bes'4 g'4) f'4 ( g'4) a'4 g'4 \finalis
 g'4 g'4 ( f'4) c''4 bes'4 ( \quil c'' d''4 c''4 bes'4) \forceBreak
 c''4 ( c''4 g'4) f'4 ( g'4) a'4 g'4 \finalis
 g'4 ( d''4) d''4 ( c''4) c''4 ( d''4) ~ d''4 ( bes'4) \divisioMinima
 d''4 ( d''4 c''4 bes'4) c''4 ( c''4 bes'4.) g'4 ( bes'4 a'4 f'4 g'4) \divisioMaior
 \forceBreak
 f'4 ( g'4 a'4) bes'4 ( c''4 d''4) ~ d''4 ( bes'4) \divisioMinima
 d''4 ( d''4 c''4) bes'4 ( bes'4 g'4) f'4 ( g'4) a'4 g'4 \finalis

}

altoMusic = {
r2*3/2 d'2*7/4 f'2*5/2 ~ \divisioMinima
f'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 f'4 d'2 ~ d'4 \finalis
r4 \set tieWaitForNote = ##t bes2 ~ s4 bes2*3/2 ~ bes2 ~ bes2*3/2 a2 d'4 \finalis
ees'4 d'2 ees'2*7/4 d'2*5/2 ~ \divisioMinima
d'2*5/2 ~ d'2 ~ d'4 \finalis
d'2*3/2 ees'2 f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2*4/2 ~ f'4 d'2 ~ d'4 \finalis
r4 c'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2 ees'4 \finalis
d'2*3/2 ees'2 f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2*4/2 ~ f'4 d'2 ~ d'4 \finalis
g'2 ~ g'2*3/2 f'2*3/2 \divisioMinima
g'2*3/2 f'2*3/2 ~ f'2 d'2 \finalis
r2 f'4 ~ f'4 ~ f'2*5/2 g'2 ~ g'4 d'2*3/2 ees'4 \finalis
g'2 ~ g'2*3/2 f'2 ~ f'4 ~ \divisioMinima
f'2*4/2 ees'2*7/4 d'2*5/2 \divisioMaior
f'2*3/2 ~ f'2 ~ f'2 ~ f'4 ~ \divisioMinima
f'2*3/2 d'2*3/2 f'2 d'2 \finalis
}

tenorMusic = {
r4 a2 bes2*7/4 ~ bes2*5/2 \divisioMinima
c'2*5/2 ~ c'2 bes4 \finalis
g4 ~ \set tieWaitForNote = ##t g2 ~ s4 g2*3/2 ~ g2 f2*3/2 d2 ~ d4 \finalis
c'4 ~ c'2 ~ c'2*7/4 bes2*5/2 \divisioMinima
a2*5/2 c'2 bes4 \finalis
g2*3/2 ~ g2 f2*3/2 bes2*3/2 \divisioMinima
c'2*5/2 ~ c'2 bes4 \finalis
r4 r2*3/2 bes2*3/2 ~ bes2*3/2 c'2 ~ c'4 \finalis
bes2*3/2 c'2 d'2*3/2 ~ d'2*3/2 \divisioMinima
c'2*5/2 ~ c'2 bes4 \finalis
r2 ees'2*3/2 d'2*3/2 \divisioMinima
ees'2*3/2 d'2*3/2 c'2 ~ c'4 bes4 \finalis
d'4 c'2*3/2 d'2*5/2 ees'2*3/2 \shiftRight c'2*4/2 \finalis
d'2 ees'2*3/2 ~ ees'2 d'4 \divisioMinima
bes2*4/2 ~ bes2*7/4 ~ bes2*5/2 \divisioMaior
c'2*3/2 bes2 a2 bes4 \divisioMinima
a2*3/2 bes2*3/2 c'2 ~ c'4 bes4 \finalis
}

bassMusic = {
g4 ~ g2 ~ g2*7/4 d2*5/2 ~ \divisioMinima
d2*5/2 g2 ~ g4 \finalis
s2*4/2 f2*3/2 ees2 d2*3/2 ~ \shiftRight d2 bes,4 \finalis
r2*23/4 \divisioMinima
f2*5/2 g2 ~ g4 \finalis
bes,2*3/2 c2 d2*3/2 ~ d2*3/2 ~ \divisioMinima
d2*5/2 g2 ~ g4 \finalis
r4 a2*3/2 ~ a2*3/2 g2*3/2 \shiftRight c'2*3/2 \finalis
g2*3/2 ~ g2 ~ g2*3/2 d2*3/2 ~ \divisioMinima
d2*5/2 g2 ~ g4 \finalis
r2 r2*6/2 \divisioMinima
c'2*3/2 \shiftRight d'2*3/2 a2 g2 \finalis
bes4 a2*3/2 g2*5/2 c'2*3/2 ~ c'2*3/2 ~ c'4 \finalis
bes2 ~ bes2*3/2 ~ bes2 ~ bes4 \divisioMinima
a2*4/2 g2*7/4 ~ g2*5/2 \divisioMaior
d2*3/2 ~ d2 ~ d2 ~ d4 \divisioMinima
f2*3/2 g2*3/2 a2 g2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*146/2
\allowVoiceLineBreak
\voiceLine "down" "down" bes2*1/2 bes2*1/2


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "II."
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
