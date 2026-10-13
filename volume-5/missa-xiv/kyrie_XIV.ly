\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.78
%(volume.page)

%Proofed 3/14

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- _ ri -- e _ 
\set stanza = " * " e -- lé -- i -- son. 
Ký -- _ ri -- e _ e -- lé -- i -- son. 
Ký -- _ ri -- e _ e -- lé -- i -- son. 
Chri -- _ ste _ _ e -- lé -- i -- son. 
Chri -- _ ste _ _ e -- lé -- i -- son. 
Chri -- _ ste _ _ e -- lé -- i -- son. 
Ký -- _ ri -- e _ _ e -- _ lé -- i -- son. 
Ký -- _ ri -- e _ _ e -- _ lé -- i -- son. 
Ký -- _ ri -- e _ _ _ _ 
\set stanza = " * " e -- _ lé -- i -- son. }

chantMusic = {
\tieDown   f'4 ( g'4 f'4) g'4 ( f'4 f'4) c'4 c'4 ( f'4.) ees'4 ( f'4 ees'4 d'4 c'4) \divisioMinima
 c'4 ( d'4 ees'4 f'4 g'4) ~ g'4 ( f'4) ees'4 f'4 f'4 \finalis
 \forceBreak
 f'4 ( g'4 f'4) g'4 ( f'4 f'4) c'4 c'4 ( f'4.) ees'4 ( f'4 ees'4 d'4 c'4) \divisioMinima
 c'4 ( d'4 ees'4 f'4 g'4) ~ g'4 ( f'4) ees'4 f'4 f'4 \finalis
 \forceBreak
 f'4 ( g'4 f'4) g'4 ( f'4 f'4) c'4 c'4 ( f'4.) ees'4 ( f'4 ees'4 d'4 c'4) \divisioMinima
 c'4 ( d'4 ees'4 f'4 g'4) ~ g'4 ( f'4) ees'4 f'4 f'4 \finalis
 \forceBreak
 g'4 ( bes'4) ~ bes'4 ( a'4) g'4 bes'4 ( bes'4) g'4 ( bes'4 a'4.) f'4 ( g'4 f'4 ees'4 d'4 c'4) \divisioMinima
 c'4 ( d'4 ees'4 f'4 g'4) ~ g'4 ( f'4) ees'4 f'4 f'4 \finalis
 \forceBreak
 g'4 ( bes'4) ~ bes'4 ( a'4) g'4 bes'4 ( bes'4) g'4 ( bes'4 a'4.) f'4 ( g'4 f'4 ees'4 d'4 c'4) \divisioMinima
 c'4 ( d'4 ees'4 f'4 g'4) ~ g'4 ( f'4) ees'4 f'4 f'4 \finalis
 \forceBreak
 g'4 ( bes'4) ~ bes'4 ( a'4) g'4 bes'4 ( bes'4) g'4 ( bes'4 a'4.) f'4 ( g'4 f'4 ees'4 d'4 c'4) \divisioMinima
 c'4 ( d'4 ees'4 f'4 g'4) ~ g'4 ( f'4) ees'4 f'4 f'4 \finalis
 \forceBreak
 f'4 ( c''4 bes'4) c''4 ( d''4 c''4 bes'4 bes'4) a'4 g'4 bes'4 ( c''4 c''4) bes'4 ( c''4 bes'4 g'4) ~ g'4 ( ees'4) \divisioMinima
 g'4 ( bes'4 a'4 g'4 f'4) g'4 ( ees'4) g'4 g'4 f'4 \finalis
 f'4 ( c''4 bes'4) \forceBreak
 c''4 ( d''4 c''4 bes'4 bes'4) a'4 g'4 bes'4 ( c''4 c''4) bes'4 ( c''4 bes'4 g'4) ~ g'4 ( ees'4) \divisioMinima
 g'4 ( bes'4 a'4 g'4 f'4) g'4 ( ees'4) g'4 g'4 f'4 \finalis
 f'4 ( c''4 bes'4) c''4 ( d''4 c''4 bes'4 bes'4) a'4 g'4 \forceBreak
 bes'4 ( c''4 c''4) \divisioMinima
 bes'4 ( c''4 bes'4 g'4 g'4) bes'4 ( c''4 c''4) bes'4 ( c''4 bes'4 g'4) ~ g'4 ( ees'4) \divisioMinima
 g'4 ( bes'4 a'4 g'4 f'4) g'4 ( ees'4) g'4 g'4 f'4 \finalis

}

altoMusic = {
  d'2*3/2 c'2*3/2 ~ c'4 ~ c'2*5/4 bes2*4/2 -\tweak Glissando.Y-offset #-0.8 \glissando c'4 ~ \divisioMinima
c'2*4/2 ees'2*3/2 c'2 ~ c'4 \finalis
bes2*3/2 c'2*3/2 ~ c'4 ~ c'2*5/4 bes2*4/2 ~ bes4 \divisioMinima
g2*4/2 c'2*3/2 bes2 a4 \finalis
d'2*3/2 c'2*3/2 ~ c'4 ~ c'2*5/4 bes2*4/2 -\tweak Glissando.Y-offset #-0.8 \glissando c'4 ~ \divisioMinima
c'2*4/2 ees'2*3/2 c'2 ~ c'4 \finalis
d'4 ~ d'2*4/2 ees'2 d'2 c'2*3/4 ~ c'2 ~ c'2*3/2 ~ c'4 \divisioMinima
g2*4/2 c'2*3/2 bes2 a4 \finalis r4 d'2*4/2 ~ d'2 ~ d'2 c'2*3/4 ~ c'2 bes2*3/2 ~ bes4 \divisioMinima
c'2*4/2 ees'2*3/2 c'2 ~ c'4 \finalis
d'4 ~ d'2*4/2 ees'2 d'2 c'2*3/4 ~ c'2 ~ c'2*3/2 ~ c'4 \divisioMinima
g2*4/2 c'2*3/2 bes2 a4 \finalis
f'2*3/2 ~ f'2*7/2 ees'2*3/2 f'2*3/2 ees'2 ~ ees'4 \divisioMinima
f'2*4/2 ~ f'4 ees'2 c'2 ~ c'4 \finalis
f'2*3/2 ~ f'2*7/2 ~ f'2*3/2 ees'2*3/2 ~ ees'2 ~ ees'4 \divisioMinima
f'2*4/2 ~ f'4 ees'2 c'2 ~ c'4 \finalis
f'2*3/2 ~ f'2*7/2 ~ f'2*3/2 \divisioMinima
ees'2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 bes2*3/2 \divisioMinima
c'2*5/2 bes2 ~ bes2 a4 \finalis
}

tenorMusic = {
bes2*3/2 a2*4/2 ~ a2*5/4 g2 ~ g2 ~ g4 ~ \divisioMinima
g2*4/2 bes2*3/2 ~ bes2 a4 \finalis
d2*3/2 c2*4/2 f2*5/4 g2 f2 ees4 ~ \divisioMinima
ees2*4/2 d2*3/2 c2 ~ c4 \finalis
bes2*3/2 a2*4/2 ~ a2*5/4 g2 ~ g2 ~ g4 ~ \divisioMinima
g2*4/2 bes2*3/2 ~ bes2 a4 \finalis
d4 g2*4/2 ~ g2 ~ g2*7/4 ~ g2 ~ g2*3/2 ees4 ~ \divisioMinima
ees2*4/2 d2*3/2 c2 ~ c4 \finalis
bes4 ~ bes2*4/2 g2 ~ g2*7/4 ~ g2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g2*4/2 bes2*3/2 ~ bes2 a4 \finalis
d4 g2*4/2 ~ g2 ~ g2*7/4 ~ g2 ~ g2*3/2 ees4 ~ \divisioMinima
ees2*4/2 d2*3/2 c2 ~ c4 \finalis
a2*3/2 bes2*7/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 g4 \divisioMinima
bes2*5/2 ~ bes2 ~ bes2 a4 \finalis
a2*3/2 f2*7/2 g2*3/2 ~ g2*3/2 bes2*3/2 ~ \divisioMinima
bes2*5/2 ~ bes2 ~ bes2 a4 \finalis
a2*3/2 bes2*7/2 g2*3/2 ~ \divisioMinima
g2*3/2 ~ g2 ~ g2*3/2 ~ g2*3/2 ees2*3/2 ~ \divisioMinima
ees2*5/2 c2 ~ c2 ~ c4 \finalis
}

bassMusic = {
r2*7/2 f2*5/4 \shiftRight g2 f2 ees4 \divisioMinima
d2*4/2 c2*3/2 f2 ~ f4 \finalis
bes,2*3/2 a,2*4/2 ~ a,2*5/4 g,2*4/2 ~ g,4 \divisioMinima
bes,2*4/2 a,2*3/2 g,2 f,4 \finalis
r2*7/2 f2*5/4 \shiftRight g2 f2 ees4 \divisioMinima
d2*4/2 c2*3/2 f2 ~ f4 \finalis
bes,4 ~ bes,2*4/2 c2 ees2*7/4 d2 c2*3/2 ~ c4 \divisioMinima
bes,2*4/2 a,2*3/2 g,2 f,4 \finalis
g4 ~ g2*4/2 f2 ees2*7/4 d2 ~ d2*3/2 ees4 ~ \divisioMinima
ees2*4/2 c2*3/2 f2 ~ f4 \finalis
bes,4 ~ bes,2*4/2 c2 ees2*7/4 d2 c2*3/2 ~ c4 \divisioMinima
bes,2*4/2 a,2*3/2 g,2 f,4 \finalis
f2*3/2 d2*7/2 c2*3/2 d2*3/2 ees2 ~ ees4 \divisioMinima
d2*5/2 c2 f2 ~ f4 \finalis
f2*3/2 d2*7/2 ~ d2*3/2 c2*3/2 ~ c2*3/2 \divisioMinima
d2*5/2 ees2 f2 ~ f4 \finalis
f2*3/2 d2*7/2 ~ d2*3/2 \divisioMinima
c2*3/2 bes,2 a,2*3/2 g,2*3/2 ~ g,2*3/2 \divisioMinima
ees,2*5/2 ~ ees,2 f,2 ~ f,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*101/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*4/2 g2*1/2


s2*76/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f2*3/2 f2*1/2


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
