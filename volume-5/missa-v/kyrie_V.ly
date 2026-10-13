\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.29
%(volume.page)

%Proofed 3/14

global = {
 \key g \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e, _ _ _ 
\set stanza = " * " e -- _ _ lé -- i -- son. 
Ký -- ri -- e, _ _ _ e -- _ _ lé -- i -- son. 
Ký -- ri -- e, _ _ _ e -- _ _ lé -- i -- son. 
Chri -- _ _ ste e -- _ lé -- i -- son. 
Chri -- _ _ ste e -- _ lé -- i -- son. 
Chri -- _ _ ste e -- _ lé -- i -- son. 
Ký -- ri -- e _ _ _ e -- _ _ lé -- i -- son. 
Ký -- ri -- e _ _ _ e -- _ _ lé -- i -- son. 
Ký -- ri -- e _ _ _ 
\set stanza = " * " e -- _ _ lé -- i -- son. }

chantMusic = {
\tieDown   g'4 g'4 a'4 ( b'4) c''4 ( b'4 a'4 g'4) a'4 ( b'4 e'4.) f'4 ( e'4 d'4 c'4) \divisioMinima
 g'4 ( a'4 b'4) c''4 ( b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4) f'4 g'4 g'4 \finalis
 \forceBreak
 g'4 g'4 a'4 ( b'4) c''4 ( b'4 a'4 g'4) a'4 ( b'4 e'4.) f'4 ( e'4 d'4 c'4) \divisioMinima
 g'4 ( a'4 b'4) c''4 ( b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4) f'4 g'4 g'4 \finalis
 \forceBreak
 g'4 g'4 a'4 ( b'4) c''4 ( b'4 a'4 g'4) a'4 ( b'4 e'4.) f'4 ( e'4 d'4 c'4) \divisioMinima
 g'4 ( a'4 b'4) c''4 ( b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4) f'4 g'4 g'4 \finalis
 \forceBreak
 g'4 ( b'4 c''4) d''4 ( c''4 d''4) g'4. c''4 ( b'4 a'4 g'4) ~ g'4 ( f'4 e'4 d'4) \divisioMinima
 d'4 ( e'4) f'4 ( g'4 a'4) ~ a'4 ( g'4 f'4 e'4) f'4 g'4 g'4 \finalis
 \forceBreak
 g'4 ( b'4 c''4) d''4 ( c''4 d''4) g'4. c''4 ( b'4 a'4 g'4) ~ g'4 ( f'4 e'4 d'4) \divisioMinima
 d'4 ( e'4) f'4 ( g'4 a'4) ~ a'4 ( g'4 f'4 e'4) f'4 g'4 g'4 \finalis
 \forceBreak
 g'4 ( b'4 c''4) d''4 ( c''4 d''4) g'4. c''4 ( b'4 a'4 g'4) ~ g'4 ( f'4 e'4 d'4) \divisioMinima
 d'4 ( e'4) f'4 ( g'4 a'4) ~ a'4 ( g'4 f'4 e'4) f'4 g'4 g'4 \finalis
 \forceBreak
 g'4 g'4 a'4 ( b'4) c''4 ( b'4 a'4 g'4.) a'4 ( b'4 e'4.) f'4 ( e'4 d'4 c'4) \divisioMinima
 g'4 ( a'4 b'4) c''4 ( b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4) f'4 g'4 g'4 \finalis
 \forceBreak
 g'4 g'4 a'4 ( b'4) c''4 ( b'4 a'4 g'4.) a'4 ( b'4 e'4.) f'4 ( e'4 d'4 c'4) \divisioMinima
 g'4 ( a'4 b'4) c''4 ( b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4) f'4 g'4 g'4 \finalis
 \forceBreak
 g'4 g'4 a'4 ( b'4) c''4 ( b'4 a'4 g'4) a'4 ( b'4 e'4.) f'4 ( e'4 d'4 c'4) \divisioMinima
 g'4 ( a'4 b'4) c''4 ( b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4) f'4 g'4 g'4 \finalis

}

altoMusic = {
e'2 ~ e'2 ~ e'2*4/2 ~ e'2 ~ e'4. c'2*3/2 ~ c'4 \divisioMinima
d'2*3/2 c'2*9/4 ~ c'2*3/2 ~ c'2 ~ c'2 b4 \finalis
c'2 ~ c'2 ~ c'2*4/2 b2 ~ b2*3/4 a2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 c'4 \divisioMinima
d'2*3/2 c'2*9/4 ~ c'2*5/2 ~ c'2 b4 \finalis
e'2 ~ e'2 ~ e'2*4/2 ~ e'2 d'2*3/4 c'2*4/2 \divisioMinima
d'2*3/2 e'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4. e'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 e'4 d'2 ~ d'4 \finalis
g'4 ~ g'2 ~ g'2*3/2 ~ g'4. e'2*3/2 d'2*5/2 ~ \divisioMinima
d'2 ~ d'2 c'2*5/2 ~ c'2 b4 \finalis
g'4 ~ g'2 ~ g'2*3/2 ~ g'4. e'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 ~ g'4 f'4 e'4 d'4 \divisioMinima
b2 c'2 d'2*3/2 c'2 ~ c'2 d'4 \finalis
g'4 ~ g'2 d'2*3/2 c'2*3/4 ~ c'2*3/2 d'2*4/2 ~ d'4 \divisioMinima
a2*4/2 ~ a2*5/2 c'2 b4 \finalis
r2 f'2*5/2 e'2*3/4 ~ e'2 d'2*3/4 c'2*3/2 ~ c'4\divisioMinima
d'2*3/2 c'2*9/4 ~ c'2*3/2 ~ c'2 ~ c'2 b4 \finalis
e'2 d'2 c'2*3/2 d'2*3/4 ~ d'2 c'2*3/4 a2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando c'4 ~ \divisioMinima
c'2*3/2 ~ c'2*9/4 ~ c'2*5/2 ~ c'2 b4 \finalis
e'2 ~ e'2 ~ e'2*4/2 ~ e'2 ~ e'4. c'2*3/2 ~ c'4 \divisioMinima
c'2*3/2 ~ c'2*9/4 ~ c'2*5/2 ~ c'2 b4 \finalis
}

tenorMusic = {
c'2 ~ c'2 ~ c'2*4/2 b2*7/4 a2*4/2 \divisioMinima
b2*3/2 g2*9/4 f2*3/2 ~ f2 d2 ~ d4 \finalis
e2 ~ e2 ~ e2*4/2 ~ e2 g2*3/4 ~ g2 ~ g2 ~ \divisioMinima
g2*3/2 ~ g2*9/4 f2*5/2 d2 ~ d4 \finalis
e'2 d'2 c'2*4/2 ~ c'2 b2*3/4 r2*4/2 \divisioMinima
b2*3/2 d'2*3/2 ~ d'2*3/4 c'2*3/2 ~ c'2 ~ c'2 b4 \finalis
r4 a2 b2*9/4 a2*3/2 ~ a2*5/2 ~ \divisioMinima
a2 ~ a2 f2*5/2 d2 ~ d4 \finalis
e'4 ~ e'2 ~ e'2*3/2 ~ e'2*3/4 c'2*3/2 ~ c'2*5/2 \divisioMinima
a2 ~ a2 b2*3/2 a2 ~ a2 b4 \finalis
g4 ~ g2 ~ g2*3/2 ~ g2*3/4 ~ g2*3/2 a2*4/2 f4 ~ \divisioMinima
f2*4/2 e2*5/2 d2 ~ d4 \finalis
e'2 d'2*5/2 ~ d'2*3/4 c'2 b2*3/4 a2*4/2 \divisioMinima
b2*3/2 g2*9/4 f2*3/2 ~ f2 d2 ~ d4 \finalis
g2 f2 e2*3/2 d2*3/4 g2 ~ g2*3/4 ~ g2*3/2 ~ g4 ~ \divisioMinima
g2*3/2 ~ g2*9/4 f2*5/2 d2 ~ d4 \finalis
c'2 ~ c'2 ~ c'2*4/2 b2*7/4 \shiftRight a2*4/2 \divisioMinima
g2*3/2 ~ g2*9/4 f2*5/2 d2 ~ d4 \finalis
}

bassMusic = {
r2 b2 a2*4/2 g2*7/4 \shiftRight a2*4/2 \divisioMinima
e2*3/2 ~ e2*9/4 ~ e2*3/2 d2 a,2 g,4 \finalis
c2 b,2 a,2*4/2 g,2 ~ g,2*3/4 d2 e2 \divisioMinima
b,2*3/2 a,2*9/4 ~ a,2*5/2 ~ a,2 g,4 \finalis
r2*8/2 b2 ~ \shiftRight b2*3/4 a2*4/2 ~ \divisioMinima
a2*3/2 ~ a2*3/2 b2*3/4 \shiftRight c'2*3/2 a2 g2 ~ g4 \finalis
g4 ~ g2 ~ g2*9/4 ~ g2*3/2 f2*5/2 \divisioMinima
e2 d2 ~ d2*5/2 a,2 g,4 \finalis
r2*3/2 d'2*3/2 c'2*3/4 b2*3/2 a2*5/2 ~ \divisioMinima
a2 r2*7/2 g2 ~ g4 \finalis
r4 e2 b,2*3/2 a,2*3/4 e2*3/2 d2*4/2 ~ d4 ~ \divisioMinima
d2*4/2 c2*5/2 a,2 g,4 \finalis
r2*16/2 \divisioMinima
e2*3/2 ~ e2*9/4 ~ e2*3/2 d2 a,2 g,4 \finalis
c2 ~ c2 ~ c2*3/2 b,2*3/4 ~ b,2 a,2*3/4 d2*3/2 e4 ~ \divisioMinima
e2*3/2 a,2*9/4 ~ a,2*5/2 ~ a,2 g,4 \finalis
r2 b2 a2*4/2 g2*7/4 a2*4/2 \divisioMinima
e2*3/2 a,2*9/4 ~ a,2*5/2 ~ a,2 g,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*26/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" d2*2/2 d2*1/2


s2*167/4
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" d2*5/2 d2*1/2


s2*8/2
\allowVoiceLineBreak
\voiceLine "down" "down" c'2*3/4 c'2*1/2


s2*73/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" d2*2/2 d2*1/2


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
