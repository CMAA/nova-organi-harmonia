\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.138
%(volume.page)

%Proofed 3/14

global = {
 \key e \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e _ 
\set stanza = " * " e -- lé -- i -- son. 
Ký -- ri -- e _ e -- lé -- i -- son. 
Ký -- ri -- e _ e -- lé -- i -- son. 
Chri -- ste e -- _ lé -- i -- son. 
Chri -- ste e -- _ lé -- i -- son. 
Chri -- ste e -- _ lé -- i -- son. 
Ký -- ri -- e _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ 
\set stanza = " * " _ _ _ 
\set stanza = " ** "  e -- lé -- i -- son. }

chantMusic = {
\tieDown   d'4 e'4 ( g'4) fis'4 ( e'4 d'4) e'4 ( g'4 fis'4) \divisioMinima
 g'4 ( a'4 g'4 fis'4 e'4) fis'4 ( g'4) e'4 e'4 \finalis
  d'4 e'4 ( g'4) fis'4 ( e'4 d'4) \forceBreak
 e'4 ( g'4 fis'4) \divisioMinima
 g'4 ( a'4 g'4 fis'4 e'4) fis'4 ( g'4) e'4 e'4 \finalis
  d'4 e'4 ( g'4) fis'4 ( e'4 d'4) e'4 ( g'4 fis'4) \divisioMinima
 g'4 ( a'4 g'4 fis'4 e'4) \forceBreak
 fis'4 ( g'4) e'4 e'4 \finalis
 e'4 ( b'4 a'4 g'4 fis'4 fis'4) e'4 \divisioMinima
 g'4 ( a'4 g'4 fis'4 e'4) fis'4 ( e'4 d'4) fis'4 ( g'4) e'4 e'4 \finalis
 \forceBreak
 e'4 ( b'4 a'4 g'4 fis'4 fis'4) e'4 \divisioMinima
 g'4 ( a'4 g'4 fis'4 e'4) fis'4 ( e'4 d'4) fis'4 ( g'4) e'4 e'4 \finalis
 e'4 ( b'4 a'4 g'4 fis'4 fis'4) e'4 \divisioMinima
 \forceBreak
 g'4 ( a'4 g'4 fis'4 e'4) fis'4 ( e'4 d'4) fis'4 ( g'4) e'4 e'4 \finalis
 b'4 a'4 ( b'4) b'4. d''4 ( e''4 d''4 cis''4 b'4) d''4 ( d''4 b'4) \divisioMinima
 \forceBreak
 b'4 ( a'4 g'4 fis'4 e'4) fis'4 ( g'4) e'4 e'4 \finalis
 b'4 a'4 ( b'4) b'4. d''4 ( e''4 d''4 cis''4 b'4) d''4 ( d''4 b'4) \divisioMinima
 b'4 ( a'4 g'4 fis'4 e'4) \forceBreak
 fis'4 ( g'4) e'4 e'4 \finalis
 b'4 a'4 ( b'4) b'4. d''4 ( e''4 d''4 cis''4 b'4) d''4 ( d''4 b'4) \divisioMinima
 b'4 ( a'4 b'4 b'4) d''4 ( e''4 d''4 cis''4 b'4) d''4 ( d''4 b'4) \divisioMinima
 \forceBreak
 b'4 ( a'4 g'4 fis'4 e'4) fis'4 ( g'4) e'4 e'4 \finalis

}

altoMusic = {
d'4 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2*5/2 c'2 b2 d'4 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2*5/2 c'2*3/2 b4 d'4 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2*5/2 b2*3/2 ~ b4 \finalis
b2*3/2 ~ b2*3/2 ~ b4 \divisioMinima
d'2*5/2 ~ d'2 ~ d'4 b2*3/2 ~ b4 \finalis
r2*7/2 \divisioMinima
d'2*5/2 ~ d'2*3/2 c'2*3/2 b4 \finalis
b2*3/2 ~ b2*3/2 ~ b4 ~ \divisioMinima
b2*5/2 a2*3/2 g2*3/2 ~ g4 \finalis
r4 e'2 fis'2*3/4 a'2*5/2 g'2*3/2 \divisioMinima
fis'2*3/2 d'2 b2*3/2 ~ b4 \finalis
r4 cis'2 d'2*3/4 fis'2*5/2 ~ fis'2*3/2 \divisioMinima
d'2*3/2 ~ d'2 b2*3/2 ~ b4 \finalis
e'4 fis'2 g'2*3/4 a'2*4/2 -\tweak Glissando.Y-offset #-0.8 \glissando b'4 r2*3/2 \divisioMinima
fis'2*4/2 ~ fis'2*5/2 ~ fis'2*3/2 \divisioMinima
g'2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 r2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
fis4 g2 a2*3/2 b2*3/2 ~ \divisioMinima
b2*5/2 a2 ~ a4 g4 \finalis
fis4 g2 a2*3/2 b2*3/2 \divisioMinima
g2*5/2 a2*3/2 g4 \finalis
fis4 g2 a2*3/2 b2*3/2 ~ \divisioMinima
b2*5/2 a2*3/2 g4 \finalis
g2*3/2 a2*3/2 g4 ~ \divisioMinima
g2*5/2 a2*3/2 ~ a2*3/2 g4 \finalis
b2*3/2 c'2*4/2 \divisioMinima
b2*5/2 ~ b2*3/2 a2*3/2 g4 \finalis
g2*3/2 a2*3/2 g4 \divisioMinima
e2*5/2 b,2*3/2 c2*3/2 b,4 \finalis
r4 cis'2 d'2*3/4 ~ d'2*5/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 a2 ~ a2*3/2 g4 \finalis
r4 e2 fis2*3/4 b2*5/2 a2*3/2 \divisioMinima
g2*3/2 a2 ~ a2*3/2 g4 \finalis
e'2*3/2 ~ e'2*3/4 fis'2*5/2 g'2*3/2 \divisioMinima
d'2*4/2 ~ d'2*5/2 ~ d'2*3/2 ~ \divisioMinima
d'2 cis'2*3/2 a2*3/2 g4 \finalis
}

bassMusic = {
b,4 ~ b,2 ~ b,2*3/2 ~ b,2*3/2 \divisioMinima
e2*5/2 ~ e2 ~ e2 d4 ~ d2 ~ d2*3/2 b,2*3/2 ~ \divisioMinima
b,2*5/2 e2*3/2 ~ e4 b,4 ~ b,2 ~ b,2*3/2 ~ b,2*3/2 \divisioMinima
e2*5/2 ~ e2*3/2 ~ e4 \finalis
e2*3/2 ~ e2*3/2 ~ e4 \divisioMinima
b,2*5/2 d2*3/2 e2*3/2 ~ e4 \finalis
g2*3/2 a2*4/2 \divisioMinima
r2*5/2 a2*3/2 e2*3/2 ~ e4 \finalis
e2*3/2 ~ e2*3/2 ~ e4 \divisioMinima
e,2*5/2 ~ e,2*3/2 ~ e,2*3/2 ~ e,4 \finalis
b4 ~ b2 ~ b2*3/4 fis2*5/2 e2*3/2 \divisioMinima
d2*3/2 ~ d2 e2*3/2 ~ e4 \finalis
b,4 ~ b,2 ~ b,2*3/4 ~ b,2*5/2 ~ b,2*3/2 ~ \divisioMinima
b,2*3/2 d2 e2*3/2 ~ e4 \finalis
r2*3/2 e'2*3/4 ~ e'2*5/2 ~ e'2*3/2 \divisioMinima
r2*4/2 cis'2*5/2 b2*3/2 \divisioMinima
g2 a2*3/2 e2*3/2 ~ e4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*98/2
\allowVoiceLineBreak
\voiceLine "down" "down" e2*1/2 e2*1/2


s2*47/4
\allowVoiceLineBreak
\voiceLine "down" "up" d'2*3/2 d'2*1/2


s2*53/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" a2*3/2 a2*1/2


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
