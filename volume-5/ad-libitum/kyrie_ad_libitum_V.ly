\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.130
%(volume.page)

%Proofed 3/14

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e _ _ 
\set stanza = " * " _ e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ e -- lé -- i -- son. 
Chri -- ste _ _ e -- lé -- i -- son. 
Chri -- ste e -- lé -- i -- son. 
Chri -- ste _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ _ 
\set stanza = " * " _ _ _ _ _ _ 
\set stanza = " ** "  _ _ e -- lé -- i -- son. }

chantMusic = {
\tieDown   f'4 ( g'4 f'4) ees'4 ( f'4) f'4. ees'4 ( g'4) bes'4 ( a'4 g'4) \divisioMinima
 bes'4 ( c''4 bes'4 a'4 f'4) g'4 ( f'4 ees'4) g'4 g'4 f'4 \finalis
 \forceBreak
 c'4 ( d'4) ees'4 ( f'4) f'4 ( g'4 f'4 ees'4 g'4) \divisioMinima
 g'4 ( bes'4) ~ bes'4 ( a'4 g'4 f'4 f'4) ees'4 f'4 f'4 \finalis
 f'4 ( g'4 f'4) ees'4 ( f'4) \forceBreak
 f'4. ees'4 ( g'4) bes'4 ( a'4 g'4) \divisioMinima
 bes'4 ( c''4 bes'4 a'4 f'4) g'4 ( f'4 ees'4) g'4 g'4 f'4 \finalis
 c''4 ( d''4 c''4) bes'4 ( bes'4 a'4 g'4) \divisioMinima
 g'4 ( c''4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 f'4) \forceBreak
 g'4 ( f'4 ees'4) g'4 g'4 f'4 \finalis
 c'4 ( d'4 ees'4 f'4) f'4 ( g'4 f'4 ees'4 g'4) \divisioMinima
 g'4 ( bes'4) ~ bes'4 ( a'4 g'4 f'4 f'4) ees'4 f'4 f'4 \finalis
 \forceBreak
 c''4 ( d''4 c''4) bes'4 ( bes'4 a'4 g'4) \divisioMinima
 g'4 ( c''4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 f'4) g'4 ( f'4 ees'4) g'4 g'4 f'4 \finalis
 c''4 ( d''4 c''4) bes'4 ( c''4) \forceBreak
 c''4. bes'4 ( d''4) ees''4 ( d''4 c''4) d''4 ( c''4 bes'4) d''4 ( ees''4) c''4 c''4 \finalis
 c''4 ( d''4 c''4) bes'4 ( bes'4 a'4) g'4 \divisioMinima
 g'4 ( c''4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 f'4) \forceBreak
 g'4 ( f'4 ees'4) g'4 g'4 f'4 \finalis
 c''4 ( d''4 c''4) bes'4 ( c''4) c''4. bes'4 ( d''4) ees''4 ( d''4 c''4) d''4 ( c''4 bes'4) d''4 ( ees''4 c''4) \divisioMinima
 c''4 ( d''4 c''4 bes'4) c''4 ( c''4) \forceBreak
 bes'4 ( d''4) ees''4 ( d''4 c''4) d''4 ( c''4 bes'4) d''4 ( ees''4 c''4) \divisioMinima
 c''4 ( d''4 c''4 bes'4) ~ bes'4 ( a'4 g'4 g'4) c''4 ( d''4 c''4 bes'4 a'4 f'4) g'4 ( f'4 ees'4) g'4 g'4 f'4 \finalis

}

altoMusic = {
d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando ees'4 r2*5/4 ees'2 d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2 ~ d'2*3/2 c'2 ~ c'4 \finalis
c'2*4/2 ~ c'2 ~ c'2*3/2 \divisioMinima
ees'4 f'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 r2 bes2 c'4 \finalis
d'2*3/2 c'2 d'2*3/4 ees'2 d'2*3/2 \divisioMinima
f'2*3/2 ~ f'2 d'2*3/2 c'2*3/2 \finalis
f'2*3/2 d'2*4/2 \divisioMinima
g'2 f'2 ~ f'2*3/2 ~ f'4 ees'2 ~ ees'4 c'2 ~ c'4 \finalis
r2 c'2 d'2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 r2 \divisioMinima
d'4 f'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 r2*5/2 \finalis
g'2*3/2 ~ g'2*4/2 ~ \divisioMinima
g'2 ~ g'2 ees'2*4/2 d'2*3/2 c'2 ~ c'4 \finalis
g'2*3/2 f'2 g'2*3/4 bes'2 ~ bes'2*3/2 g'2*3/2 ~ g'2*3/2 ~ g'4 \finalis
g'2*3/2 f'2*3/2 ~ f'4 \divisioMinima
ees'2 ~ ees'2 f'2*3/2 ~ f'4 bes2*3/2 ~ bes2*3/2 \finalis
g'2*3/2 f'2 g'2*3/4 bes'2 ~ bes'2*3/2 g'2*3/2 ~ g'2*3/2 \divisioMinima
f'2*4/2 g'2 ~ g'2 ~ g'2*3/2 ~ g'2*3/2 ~ g'2*3/2 ~ \divisioMinima
g'2*3/2 f'2*5/2 ~ f'2*3/2 ~ f'2 ~ f'4 d'2*3/2 c'2 ~ c'4 \finalis
}

tenorMusic = {
bes2*3/2 c'2 d'2*3/4 \shiftRight c'2 bes2*3/2 \divisioMinima
g2*3/2 a2 bes2*3/2 ~ bes2 a4 \finalis
g2*4/2 ~ g2 ~ g2*3/2 ~ \divisioMinima
g4 f2*3/2 a2*3/2 g2 a4 \finalis
r2*5/2 bes2*3/4 ~ bes2 ~ bes2*3/2 ~ \divisioMinima
bes2*3/2 c'2 bes2*3/2 a2*3/2 \finalis
a2*3/2 g2*4/2 ~ \divisioMinima
g2 a2 bes2*4/2 ~ bes2*3/2 ~ bes2 a4 \finalis
c'2 bes2 ~ bes2 ~ bes2*3/2 ~ \divisioMinima
bes4 c'2*3/2 ~ c'2*3/2 ~ c'2 d'4 \finalis
c'2*3/2 d'2*4/2 \divisioMinima
ees'2 d'2 c'2*4/2 \shiftRight bes2*3/2 ~ bes2 a4 \finalis
ees'2*3/2 d'2 ees'2*3/4 f'2 g'2*3/2 f'2*3/2 ~ f'2*3/2 ees'4 \finalis
c'2*3/2 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'2 g2 f2*4/2 \shiftRight ees2*3/2 d2*3/2 \finalis
ees'2*3/2 d'2 ees'2*3/4 f'2 \shiftRight g'2*3/2 f'2*3/2 ~ f'2*3/2 \divisioMinima
d'2*4/2 ees'2 d'2 c'2*3/2 bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2*3/2 ~ bes2*5/2 a2*3/2 c'2*3/2 bes2*3/2 ~ bes2 a4 \finalis
}

bassMusic = {
bes2*3/2 ~ bes2 ~ bes2*3/4 c'2 g2*3/2 \divisioMinima
f2*3/2 ~ f2 \shiftRight bes2*3/2 f2 ~ f4 \finalis
ees2*4/2 d2 c2*3/2 ~ \divisioMinima
c4 d2*3/2 ~ d2*3/2 f2 ~ f4 \finalis
bes2*3/2 ~ bes2 ~ bes2*3/4 g2 ~ g2*3/2 \divisioMinima
d2*3/2 ~ d2 g2*3/2 \shiftRight a2*3/2 \finalis
d2*3/2 \shiftRight g2*4/2 \divisioMinima
ees2 d2 ~ d2*4/2 ees2*3/2 f2 ~ f4 \finalis
r2*6/2 g2*3/2 ~ \divisioMinima
g4 f2*3/2 a2*3/2 bes2 ~ bes4 \finalis
ees2*3/2 g2*4/2 \divisioMinima
c'2 bes2 ~ bes2*4/2 ~ bes2*3/2 f2 ~ f4 \finalis
c'2*3/2 ~ c'2 ~ c'2*3/4 d'2 \shiftRight g'2*3/2 r2*3/2 c'2*3/2 ~ c'4 \finalis
ees2*3/2 f2*3/2 c4 ~ \divisioMinima
c2 ~ c2 d2*4/2 ees2*3/2 bes,2*3/2 \finalis
c'2*3/2 ~ c'2 ~ c'2*3/4 d'2 g'2*3/2 r2*3/2 c'2*3/2 ~ \divisioMinima
c'2*4/2 ~ c'2 g2 ~ g2*3/2 ~ g2*3/2 f2*3/2 \divisioMinima
ees2*3/2 d2*5/2 f2*3/2 ~ f2*3/2 ~ f2*3/2 ~ f2 ~ f4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*17/4
\allowVoiceLineBreak
\voiceLine "down" "down" g2*3/2 g2*1/2


s2*145/4
\allowVoiceLineBreak
\voiceLine "down" "up" c'2*2/2 c'2*1/2


s2*91/4
\allowVoiceLineBreak
\voiceLine "down" "up" g'2*3/2 g'2*1/2


s2*71/4
\allowVoiceLineBreak
\voiceLine "down" "up" g'2*3/2 g'2*1/2


s2*2/2
\allowVoiceLineBreak
\voiceLine "down" "up" f'2*3/2 f'2*1/2


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "VII."
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
