\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.126
%(volume.page)

%Proofed 3/14

global = {
 \key g \minor
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e _ _ 
\set stanza = " * " e -- lé -- i -- son. 
Ký -- ri -- e _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ e -- lé -- i -- son. 
Chri -- ste _ e -- lé -- i -- son. 
Chri -- ste _ e -- lé -- i -- son. 
Chri -- ste _ e -- lé -- i -- son. 
Ký -- ri -- e _ e -- _ _ lé -- i -- son. 
Ký -- ri -- e _ e -- lé -- i -- son. 
Ký -- ri -- e _ 
\set stanza = " * " _ _ _ 
\set stanza = " ** "  e -- _ _ lé -- i -- son. }

chantMusic = {
\tieDown   c'4 ( g'4) g'4 bes'4 ( g'4 f'4) g'4. ees'4 ( f'4 ees'4 c'4 bes4) \divisioMinima
 ees'4 ( f'4 ees'4) f'4 g'4 g'4 \finalis
 g'4 ( bes'4) bes'4 ( c''4) \forceBreak
 c''4 ( bes'4 c''4.)  g'4 ( aes'4) f'4 ( g'4 ees'4) \divisioMinima
 g'4 ( bes'4 a'4 f'4 ees'4) f'4 g'4 g'4 \finalis
 c'4 ( g'4) g'4 bes'4 ( g'4 f'4) g'4. ees'4 ( f'4 ees'4 c'4 bes4) \divisioMinima
 \forceBreak
 ees'4 ( f'4 ees'4) f'4 g'4 g'4 \finalis
 g'4 ( bes'4) bes'4 ( c''4) ~ c''4 ( bes'4 c''4.)  g'4 ( aes'4 f'4 ees'4) \divisioMinima
 g'4 ( bes'4 a'4 f'4 ees'4) f'4 g'4 g'4 \finalis
 \forceBreak
 g'4 bes'4 ( c''4) ees''4 ( ees''4 bes'4) ~ bes'4 ( a'4 f'4) c''4 ( bes'4 a'4 f'4 ees'4) f'4 g'4 g'4 \finalis
 g'4 ( bes'4) bes'4 ( c''4) ~ c''4 ( bes'4 c''4.)  g'4 ( aes'4 f'4 ees'4) \divisioMinima
 \forceBreak
 g'4 ( bes'4 a'4 f'4 ees'4) f'4 g'4 g'4 \finalis
 g'4 ( f'4) ees'4 f'4 ( ees'4) ~ ees'4 ( d'4 c'4) ees'4 ( f'4 g'4) ~ g'4 ( c'4) \divisioMinima
 ees'4 ( f'4 ees'4) f'4 ( g'4) \forceBreak
 bes'4 ( a'4 g'4 f'4) f'4 g'4 g'4 \finalis
 g'4 bes'4 c''4 ( bes'4 a'4) c''4 ( bes'4 a'4 f'4 g'4) \divisioMinima
 c''4 ( bes'4 a'4 f'4 ees'4) f'4 g'4 g'4 \finalis
 \forceBreak
 g'4 ( f'4) ees'4 f'4 ( ees'4) ~ ees'4 ( d'4 c'4) ees'4 ( f'4 g'4) ~ g'4 ( c'4) \divisioMinima
 g'4 ( f'4 ees'4) f'4 ( ees'4) ~ ees'4 ( d'4 c'4) ees'4 ( f'4 g'4) ~ g'4 ( c'4) \divisioMinima
 \forceBreak
 ees'4 ( f'4 ees'4) f'4 ( g'4) bes'4 ( a'4 f'4 ees'4) f'4 g'4 g'4 \finalis

}

altoMusic = {
r2*25/4 \divisioMinima
r2*3/2 c'2 d'4 \finalis
g'2 ~ g'2 ~ g'2*7/4 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 aes'4 f'4 g'4 ees'4 \divisioMinima
d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 ees'4 d'2 ees'4 \finalis
c'2*3/2 ~ c'2*3/2 ~ c'2*3/4 bes2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando c'4 bes4 ~ \divisioMinima
bes2*3/2 c'2 d'4 \finalis
ees'2*3/2 ~ ees'2*9/4 ~ ees'2*3/2 ~ ees'4 \divisioMinima
f'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 ees'4 c'2 bes4 \finalis
g'4 ~ g'2 ~ g'2 f'2*3/2 ~ f'4 ees'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 ees'4 d'2 ~ d'4 \finalis
ees'2*3/2 ~ ees'2*9/4 ~ ees'2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 ees'4 \divisioMinima
d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 ees'4 c'2 d'4 \finalis
bes2 ~ bes2 aes2*4/2 ~ aes2 g2 ~ g4 -\tweak Glissando.Y-offset #-0.8 \glissando \divisioMinima
ees'4 f'4 ees'4 f'4 g'4 d'2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 f'4 c'2 d'4 \finalis
d'2 f'2*3/2 ~ f'2 d'2 ~ d'4 \divisioMinima
ees'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 ees'4 d'2 c'4 \finalis
bes2*4/2 ~ bes2*4/2 ~ bes2 ~ bes2 -\tweak Glissando.Y-offset #-0.8 \glissando c'4 ~ \divisioMinima
c'2 ~ c'2 aes2*4/2 ~ aes2 g2*3/2 \divisioMinima
bes2*5/2 ~ bes2*4/2 a2 bes4 \finalis
}

tenorMusic = {
r2*3/2 d'2*3/2 ees'2*3/4 bes2*5/2 \divisioMinima
a2*3/2 ~ a2 bes4 \finalis
ees'2 d'2 c'2*7/4 ~ c'2 bes2*3/2 ~ \divisioMinima
bes2*5/2 d'2 c'4 \finalis
r2*3/2 d2*3/2 ees2*3/4 g2*3/2 f2 \divisioMinima
r2*3/2 a2 bes4 \finalis
g2*3/2 ~ g2*9/4 aes2*4/2 \divisioMinima
f2*3/2 g2 d2 ~ d4 \finalis
ees'4 ~ ees'2 ~ ees'2 d'2*4/2 \shiftRight c'2*5/2 ~ c'2 bes4 \finalis
g2*3/2 ~ g2*9/4 aes2 bes2 ~ \divisioMinima
bes2*5/2 a!2 bes4 \finalis
r2 g2 f2*4/2 ~ f2 ~ f2 ees4 \divisioMinima
bes2*3/2 a2 \shiftRight g2*4/2 a2 bes4 \finalis
bes2 ~ bes2*3/2 a2 c'2 bes4 \divisioMinima
g2*5/2 ~ g2 ~ g4 \finalis
g2*4/2 ~ g2*4/2 ~ g2 ees2 ~ ees4 \divisioMinima
f2 g2 f2*4/2 ees2 ~ ees2*3/2 ~ \divisioMinima
ees2*5/2 d2*4/2 c2 d4 \finalis
}

bassMusic = {
c'2*3/2 ~ c'2*3/2 ~ c'2*3/4 g2*5/2 ~ \divisioMinima
g2*3/2 ~ g2 ~ g4 \finalis
ees2 ~ ees2 ~ ees2*7/4 f2 g2*3/2 ~ \divisioMinima
g2*5/2 c2 ~ c4 \finalis
c2*3/2 ~ c2*3/2 ~ c2*3/4 ~ c2*3/2 d2 \divisioMinima
g2*3/2 ~ g2 ~ g4 \finalis
ees2*3/2 c2*9/4 ~ c2*4/2 \divisioMinima
d2*3/2 c2 a,!2 g,4 \finalis
r4 d'2 c'2 ~ c'2*4/2 ~ c'2*5/2 a2 g4 \finalis
ees2*3/2 c2*9/4 ~ c2 ~ c2 \divisioMinima
g2*5/2 ~ g2 ~ g4 \finalis
ees2 ~ ees2 \shiftRight f2*4/2 c2 ~ c2 ~ c4 ~ \divisioMinima
c2*3/2 g2 ~ g2*4/2 ~ g2 ~ g4 \finalis
g2 f2*3/2 ~ f2 g2 ~ g4 \divisioMinima
c2*5/2 ~ c2 ~ c4 \finalis
r2*4/2 f2*4/2 ees2 d2 c4 ~ \divisioMinima
c2 ~ c2 ~ c2*4/2 ~ c2 ~ c2*3/2 \divisioMinima
g,2*5/2 ~ g,2*4/2 ~ g,2 ~ g,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*6/2
\allowVoiceLineBreak
\voiceLine "down" "up" ees'2*3/4 ees'2*1/2


s2*139/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*1/2 g2*1/2


s2*15/2
\allowVoiceLineBreak
\voiceLine "down" "down" ees2*2/2 ees2*1/2


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
