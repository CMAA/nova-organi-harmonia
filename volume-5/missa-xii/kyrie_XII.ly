\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.68
%(volume.page)

%Proofed 3/14

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e _ 
\set stanza = " * " e -- lé -- i -- son. 
Ký -- ri -- e _ e -- lé -- i -- son. 
Ký -- ri -- e _ e -- lé -- i -- son. 
Chri -- ste _ e -- lé -- i -- son. 
Chri -- ste _ e -- lé -- i -- son. 
Chri -- ste _ e -- lé -- i -- son. 
Ký -- ri -- e _ e -- lé -- i -- son. 
Ký -- ri -- e _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ 
\set stanza = " * " e -- lé -- i -- son. }

chantMusic = {
\tieDown   f'4 g'4 a'4 ( f'4) c''4 ( bes'4 a'4 g'4 f'4) \divisioMinima
 g'4 ( f'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
 f'4 g'4 a'4 ( f'4) c''4 ( bes'4 a'4 g'4 f'4) \divisioMinima
 \forceBreak
 g'4 ( f'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
 f'4 g'4 a'4 ( f'4) c''4 ( bes'4 a'4 g'4 f'4) \divisioMinima
 g'4 ( f'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
 \forceBreak
 f'4 f'4 ( d'4) f'4 ( ees'4 d'4 c'4) ees'4 d'4 ees'4 f'4 \finalis
 f'4 f'4 ( d'4) f'4 ( ees'4 d'4 c'4) ees'4 d'4 ees'4 f'4 \finalis
 \forceBreak
 f'4 f'4 ( d'4) f'4 ( ees'4 d'4 c'4) ees'4 d'4 ees'4 f'4 \finalis
 f'4 g'4 a'4 ( f'4) c''4 ( bes'4 a'4 g'4 f'4) \divisioMinima
 g'4 ( f'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
 \forceBreak
 f'4 g'4 a'4 ( f'4) c''4 ( bes'4 a'4 g'4 f'4) \divisioMinima
 g'4 ( f'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
 f'4 g'4 a'4 ( f'4) c''4 ( bes'4 a'4 g'4 \forceBreak
 f'4) ~ f'4 ( d'4) f'4 ( ees'4 d'4 c'4)  ees'4 d'4 ees'4 f'4 \finalis

}

altoMusic = {
f'2 ~ f'2 ~ f'2*4/2 c'4 ~ \divisioMinima
c'2 ~ c'2*4/2 ~ c'4 \finalis
f'2 ~ f'2 c'2*5/2 ~ \divisioMinima
c'2 d'2*3/2 ~ d'4 c'4 \finalis
d'2 c'2 ~ c'2*5/2 ~ \divisioMinima
c'2 ~ c'2*4/2 c'4 \finalis
bes4 ~ bes2 g2*3/2 ~ g2 bes2 a4 \finalis
r2*10/2 c'4 \finalis
bes4 a2 g2*5/2 bes2 a4 \finalis
f'2 ~ f'2 ~ f'2*4/2 ~ f'4 \divisioMinima
r2 d'2*4/2 c'4 \finalis
d'2 c'2 ~ c'2*4/2 ~ c'4 ~ \divisioMinima
c'2 d'2*3/2 ~ d'4 c'4 \finalis
f'2 ~ f'2 ~ f'2*4/2 ~ f'4 f'4 d'4 c'2*3/2 g2 bes2 a4 \finalis
}

tenorMusic = {
r2 g2 a2*5/2 ~ \divisioMinima
a2 bes2*4/2 a4 \finalis
a2 f2 ~ f2*5/2 ~ \divisioMinima
f2 ~ f2*3/2 g4 a4 \finalis
bes2 c'2 bes2*4/2 a4 ~ \divisioMinima
a2 g2*4/2 a4 \finalis
d4 f2 ~ f2*3/2 ees2 bes,2 c4 \finalis
bes4 a2 g2*5/2 bes2 a4 \finalis
d4 ~ d2 ees2*5/2 bes,2 c4 \finalis
d'2 ~ d'2 c'2*5/2 ~ \divisioMinima
c'2 bes2*4/2 a4 \finalis
bes2 c'2 bes2*4/2 a4 ~ \divisioMinima
a2 f2*3/2 g4-\tweak Glissando.Y-offset #-0.8 \glissando \once\voiceTwo \change Staff = "up" a4 \change Staff = "down" \finalis
r2 g2 a2*4/2 bes2*3/2 g2*3/2 ees2 bes,2 c4 \finalis
}

bassMusic = {
f2 ~ f2 ~ f2*5/2 ~ \divisioMinima
f2 ~ f2*4/2 ~ f4 \finalis
d2 ~ d2 a,2*5/2 ~ \divisioMinima
a,2 bes,2*3/2 ~ bes,4 f4 \finalis
r2 f2 ~ f2*4/2 ~ f4 ~ \divisioMinima
f2 ~ f2*4/2 ~ f4 \finalis
bes,4 ~ bes,2 c2*3/2 ~ c2 g,2 f,4 \finalis
d4 ~ d2 ees2*5/2 g2 f4 \finalis
bes,4 ~ bes,2 c2*5/2 g,2 f,4 \finalis
r2 bes2 a2*5/2 ~ \divisioMinima
a2 \shiftRight bes2*4/2 f4 \finalis
r2 f2 ~ f2*4/2 ~ f4 ~ \divisioMinima
f2 bes,2*3/2 ~ bes,4 f,4 \finalis
f2 ~ f2 ~ f2*4/2 g2*3/2 c2*3/2 ~ c2 g,2 f,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*62/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*5/2 g2*1/2


s2*38/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f2*2/2 f2*1/2


s2*12/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*3/2 g2*1/2


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
