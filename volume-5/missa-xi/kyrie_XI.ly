\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.62
%(volume.page)

%Proofed 3/14

global = {
 \key d \minor
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e 
\set stanza = " * " e -- _ lé -- i -- son. 
Ký -- ri -- e e -- _ lé -- i -- son. 
Ký -- ri -- e e -- _ lé -- i -- son. 
Chri -- ste _ e -- _ lé -- i -- son. 
Chri -- ste _ e -- _ lé -- i -- son. 
Chri -- ste _ e -- _ lé -- i -- son. 
Ký -- ri -- e e -- _ lé -- i -- son. 
Ký -- ri -- e e -- _ lé -- i -- son. 
Ký -- ri -- e _ 
\set stanza = " * " e -- _ lé -- i -- son. }

chantMusic = {
\tieDown    a'4 ( bes'4) a'4 ( g'4) a'4 ( d'4) \divisioMinima
  f'4 ( g'4 a'4 bes'4 a'4 g'4) f'4 ( e'4 d'4) c'4 d'4 d'4 \finalis
  a'4 ( bes'4) a'4 ( g'4) a'4 ( d'4) \divisioMinima
 \forceBreak
  f'4 ( g'4 a'4 bes'4 a'4 g'4) f'4 ( e'4 d'4) c'4 d'4 d'4 \finalis
  a'4 ( bes'4) a'4 ( g'4) a'4 ( d'4) \divisioMinima
  f'4 ( g'4 a'4 bes'4 a'4 g'4) f'4 ( e'4 d'4) \forceBreak
 c'4 d'4 d'4 \finalis
 a'4 ( g'4) d''4. c''4 ( d''4 c''4 a'4 g'4 a'4) \divisioMinima
  f'4 ( g'4 a'4 bes'4 a'4 g'4) f'4 ( e'4 d'4) c'4 d'4 d'4 \finalis
 \forceBreak
 a'4 ( g'4) d''4. c''4 ( d''4 c''4 a'4 g'4 a'4) \divisioMinima
  f'4 ( g'4 a'4 bes'4 a'4 g'4) f'4 ( e'4 d'4) c'4 d'4 d'4 \finalis
 a'4 ( g'4) d''4. c''4 ( d''4 c''4 a'4 g'4 a'4) \divisioMinima
 \forceBreak
  f'4 ( g'4 a'4 bes'4 a'4 g'4) f'4 ( e'4 d'4) c'4 d'4 d'4 \finalis
  a'4 ( bes'4) a'4 ( g'4) a'4 ( d'4) \divisioMinima
  f'4 ( g'4 a'4 bes'4 a'4 g'4) f'4 ( e'4 d'4) \forceBreak
 c'4 d'4 d'4 \finalis
  a'4 ( bes'4) a'4 ( g'4) a'4 ( d'4) \divisioMinima
  f'4 ( g'4 a'4 bes'4 a'4 g'4) f'4 ( e'4 d'4) c'4 d'4 d'4 \finalis
 d'4 ( f'4 d'4) c'4 ( d'4) \forceBreak
 d'4. g'4. f'4 ( g'4 f'4 d'4 c'4 d'4) \divisioMinima
  f'4 ( g'4 a'4 bes'4 a'4 g'4) f'4 ( e'4 d'4) c'4 d'4 d'4 \finalis

}

altoMusic = {
f'2 ~ f'2 ~ f'4 d'4 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 a2 ~ a4 d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 bes2*3/2 a2 ~ a4 f'2*4/2 ~ f'4 d'4 ~ \divisioMinima d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 a2 ~ a4 \finalis
d'2 ~ d'2*3/4 e'2*3/2 f'2*3/2 c'2*3/2 bes2*3/2 ~ bes2*3/2 a2 ~ a4 \finalis
r4 g'4 ~ g'2*3/4 ~ g'2*3/2 f'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 r2 a4 \finalis
d'2 ~ d'2*3/4 e'2*3/2 f'2*3/2 c'2*3/2 bes2*3/2 ~ bes2*3/2 a2 ~ a4 f'2*4/2 ~ f'4 d'4 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 a2 ~ a4 d'2*4/2 ~ d'2 c'2*3/2 bes2*3/2 ~ bes2*3/2 a2 ~ a4 \finalis
a2*3/2 ~ a2 ~ a2*3/4 ~ a2*3/4 ~ a2*3/2 ~ a2 ~ a4 d'2*3/2 ~ d'2*3/2 g2*3/2 a2 ~ a4 \finalis
}

tenorMusic = {
d'2 ~ d'2 ~ d'2 \divisioMinima
bes2*3/2 ~ bes2*3/2 a2*3/2 e2 f4 \finalis
f2 e2 f2 ~ \divisioMinima
f2*3/2 g2*3/2 ~ g2*3/2 ~ g2 f4 \finalis
d'2*4/2 ~ d'2 ~ \divisioMinima
d'2*3/2 bes2*3/2 ~ bes2*3/2 g2 f4 \finalis
f2 g2*3/4 ~ g2*3/2 f2*3/2 \divisioMinima
d2*3/2 ~ d2*3/2 f2*3/2 e2 f4 \finalis
d'2 ~ d'2*3/4 e'2*3/2 f'2*3/2 \divisioMinima
d'2*3/2 ~ d'2*3/2 bes2*3/2 \shiftRight a2 f4 \finalis
f2 g2*3/4 ~ g2*3/2 f2*3/2 \divisioMinima
d2*3/2 ~ d2*3/2 f2*3/2 e2 f4 \finalis
d'2*4/2 ~ d'2 ~ \divisioMinima
d'2*3/2 bes2*3/2 ~ bes2*3/2 g2 f4 \finalis
f2*4/2 ~ f2 \divisioMinima
d2*3/2 ~ d2*3/2 f2*3/2 e2 f4 \finalis
f2*3/2 ~ f2 ~ f2*3/4 e2*3/4 d2*3/2 e2 f4 ~ \divisioMinima
f2*3/2 ~ f2*3/2 d2*3/2 e2 f4 \finalis
}

bassMusic = {
r2 c'2 bes2 a2*3/2 g2*3/2 d2*3/2 ~ d2 ~ d4 d2 ~ d2 c2 bes,2*3/2 ~ bes,2*3/2 g,2*3/2 a,2 d4 r2*4/2 c'2 bes2*3/2 a2*3/2 g2*3/2 e2 d4 \finalis
bes,2 ~ bes,2*3/4 c2*3/2 d2*3/2 ~ \shiftRight d2*3/2 g,2*3/2 ~ g,2*3/2 a,2 d4 \finalis
bes2 ~ bes2*3/4 c'2*3/2 d'2*3/2 c'2*3/2 bes2*3/2 g2*3/2 a2 d4 \finalis
bes,2 ~ bes,2*3/4 c2*3/2 d2*3/2 ~ \shiftRight d2*3/2 g,2*3/2 ~ g,2*3/2 a,2 d4 r2*4/2 c'2 bes2*3/2 a2*3/2 g2*3/2 e2 d4 c2*4/2 bes,2 a,2*3/2 g,2*3/2 ~ g,2*3/2 a,2 d4 \finalis
r2*3/2 e2 d2*3/4 ~ d2*3/4 ~ \shiftRight d2*3/2 ~ d2 ~ d4 c2*3/2 bes,2*3/2 ~ bes,2*3/2 a,2 d4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*4/2
\allowVoiceLineBreak
\voiceLine "down" "down" bes2*2/2 bes2*1/2


s2*5/2
\allowVoiceLineBreak
\voiceLine "down" "up" a2*3/2 a2*1/2


s2*26/2
\allowVoiceLineBreak
\voiceLine "down" "down" bes2*3/2 bes2*1/2


s2*2/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*3/2 g2*1/2


s2*30/2
\allowVoiceLineBreak
\voiceLine "down" "down" d'2*3/2 d'2*1/2


s2*2/2
\allowVoiceLineBreak
\voiceLine "down" "down" bes2*3/2 bes2*1/2


s2*2/2
\allowVoiceLineBreak
\voiceLine "down" "up" a2*2/2 a2*1/2


s2*55/4
\allowVoiceLineBreak
\voiceLine "down" "down" bes2*3/2 bes2*1/2


s2*2/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*3/2 g2*1/2


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
}
