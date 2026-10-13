\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.132
%(volume.page)

%Proofed 3/14

global = {
 \key e \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e _ 
\set stanza = " * " e -- _ lé -- i -- son. 
Ký -- ri -- e _ e -- _ lé -- i -- son. 
Ký -- ri -- e _ e -- _ lé -- i -- son. 
Chri -- ste _ e -- _ _ _ lé -- i -- son. 
Chri -- ste _ e -- _ _ _ lé -- i -- son. 
Chri -- ste _ e -- _ _ _ lé -- i -- son. 
Ký -- ri -- e _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ _ 
\set stanza = " * " _ _ _ _ _ _ 
\set stanza = " ** "  e -- _ _ _ lé -- i -- son. }

chantMusic = {
\tieDown   e'4 e'4 e'4 ( d'4) ~ d'4 ( b4) d'4 ( e'4)  e'4 ( a'4) b'4 ( g'4) ~ g'4 ( fis'4 e'4 d'4) fis'4 ( g'4) e'4 e'4 \finalis
 \forceBreak
  e'4 e'4 e'4 ( d'4) ~ d'4 ( b4) d'4 ( e'4)  e'4 ( a'4) b'4 ( g'4) ~ g'4 ( fis'4 e'4 d'4) fis'4 ( g'4) e'4 e'4 \finalis
  e'4 e'4 e'4 ( d'4) ~ d'4 ( b4) \forceBreak
 d'4 ( e'4)  e'4 ( a'4) b'4 ( g'4) ~ g'4 ( fis'4 e'4 d'4) fis'4 ( g'4) e'4 e'4 \finalis
 b'4 a'4 ( b'4 a'4 g'4.) a'4 ( fis'4 g'4 fis'4 e'4) \divisioMinima
 d'4 ( fis'4) a'4 ( a'4 fis'4) \forceBreak
 g'4 ( fis'4 e'4) fis'4 ( e'4 e'4) d'4 ( e'4 fis'4) fis'4 e'4 \finalis
 b'4 a'4 ( b'4 a'4 g'4.) a'4 ( fis'4 g'4 fis'4 e'4) \divisioMinima
 d'4 ( fis'4) a'4 ( a'4 fis'4) g'4 ( fis'4 e'4) \forceBreak
 fis'4 ( e'4 e'4) d'4 ( e'4 fis'4) fis'4 e'4 \finalis
 b'4 a'4 ( b'4 a'4 g'4.) a'4 ( fis'4 g'4 fis'4 e'4) \divisioMinima
 d'4 ( fis'4) a'4 ( a'4 fis'4) g'4 ( fis'4 e'4) fis'4 ( e'4 e'4) \forceBreak
 d'4 ( e'4 fis'4) fis'4 e'4 \finalis
 b'4 b'4 b'4 ( a'4) d''4 ( e''4 d''4 cis''4 b'4) d''4 ( d''4 b'4) \divisioMinima
 cis''4 ( b'4 a'4 fis'4) a'4 ( b'4 cis''4) cis''4 b'4 \finalis
 \forceBreak
 b'4 b'4 b'4 ( a'4) d''4 ( e''4 d''4 cis''4 b'4) d''4 ( d''4 b'4) \divisioMinima
 cis''4 ( b'4 a'4 fis'4) a'4 ( b'4 cis''4) cis''4 b'4 \finalis
 \forceBreak
 b'4 b'4 b'4 ( a'4) d''4 ( e''4 d''4 cis''4 b'4) d''4 ( d''4 b'4.) cis''4 ( b'4 a'4 fis'4) a'4 ( b'4 cis''4) ~ cis''4 ( b'4) \divisioMinima
 d''4 ( e''4 d''4 cis''4 b'4) d''4 ( d''4 b'4.) cis''4 ( b'4 a'4 fis'4) \forceBreak
 a'4 ( b'4 b'4) \divisioMinima
 b'4 ( cis''4 b'4 a'4) b'4 ( a'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 d'4 ( fis'4) a'4 ( a'4 fis'4) g'4 ( fis'4 e'4) fis'4 ( e'4 e'4) d'4 ( e'4 fis'4) fis'4 e'4 \finalis

}

altoMusic = {
b2*3/2 a2*3/2 g2 e'2*3/2 d'2*4/2 ~ d'4 b2*3/2 ~ b4 \finalis
b2*3/2 a2*3/2 g2 b2*3/2 ~ b2*3/2 ~ b2 a2*3/2 g4 b2*3/2 ~ b2*3/2 ~ b2 e'2*3/2 d'2*4/2 ~ d'4 b2*3/2 ~ b4 \finalis
d'4 ~ d'2*9/4 b2*5/2 \divisioMinima
d'2 cis'2*3/2 d'2*3/2 cis'2*3/2 d'2*3/2 b2 \finalis
fis'4 d'2*9/4 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 b2*3/2 ~ b2*3/2 a2*3/2 b2 \finalis
d'4 ~ d'2*9/4 b2*5/2 \divisioMinima
d'2 cis'2*3/2 d'2*3/2 b2*3/2 a2*3/2 b2 \finalis
fis'2 ~ fis'2 a'2*5/2 g'2*3/2 \divisioMinima
fis'2 cis'2 e'2*3/2 d'2 \finalis
fis'2 e'2 d'2*5/2 fis'2*3/2 ~ \divisioMinima
fis'2*3/2 ~ fis'4 a'2*3/2 fis'2 \finalis
r2 fis'2 ~ fis'2*5/2 ~ fis'2*7/4 ~ fis'2*4/2 ~ fis'2 ~ fis'2*3/2 ~ \divisioMinima
fis'2*5/2 ~ fis'2*7/4 ~ fis'2*3/2 ~ fis'4 d'2*3/2 \divisioMinima
e'2*4/2 cis'2 b2*3/2 \divisioMinima
d'2 ~ d'2*3/2 ~ d'2*3/2 b2*3/2 a2*3/2 b2 \finalis
}

tenorMusic = {
g2*3/2 fis2*3/2 \shiftRight e2 ~ e2*3/2 a2*5/2 ~ a2*3/2 g4 \finalis
e2*3/2 b,2*3/2 ~ b,2 cis2*3/2 d2*3/2 e2 b,2*3/2 ~ b,4 \finalis
g2*3/2 ~ g2*3/2 ~ g2 ~ g2*3/2 a2*5/2 ~ a2*3/2 g4 \finalis
fis4 g2*9/4 ~ g2*5/2 \divisioMinima
a2 ~ a2*3/2 b2*3/2 \shiftRight a2*3/2 ~ a2*3/2 \shiftRight g2 \finalis
b4 ~ b2*9/4 ~ b2 ~ b2*3/2 \divisioMinima
a2 ~ a2*3/2 ~ a2*3/2 g2*3/2 fis2*3/2 g2 \finalis
fis4 g2*9/4 ~ g2*5/2 \divisioMinima
a2 ~ a2*3/2 b2*3/2 a2*3/2 fis2*3/2 g2 \finalis
d'2 cis'2 d'2*5/2 ~ d'2*3/2 \divisioMinima
a2 fis2 ~ fis2*3/2 ~ fis2 \finalis
b2 fis2 ~ fis2*5/2 b2*3/2 \divisioMinima
a2*4/2 e'2*3/2 ~ e'4 d'4 \finalis
d'2 ~ d'2 ~ d'2*5/2 ~ d'2*7/4 fis'2*4/2 e'2 d'2*3/2 ~ \divisioMinima
d'2*5/2 ~ d'2*7/4 a2*4/2 g2*3/2 ~ \divisioMinima
g2*4/2 fis2 r2*3/2 \divisioMinima
a2 ~ a2*3/2 b2*3/2 a2*3/2 fis2*3/2 g2 \finalis
}

bassMusic = {
e2*3/2 ~ e2*3/2 ~ e2 cis2*3/2 d2*5/2 e2*3/2 ~ e4 \finalis
g,2*3/2 fis,2*3/2 e,2 ~ e,2*3/2 ~ e,2*3/2 ~ e,2 ~ e,2*3/2 ~ e,4 r2*3/2 fis2*3/2 e2 d2*3/2 ~ d2*5/2 e2*3/2 ~ e4 \finalis
b,4 ~ b,2*9/4 e2*5/2 \divisioMinima
fis2 ~ fis2*3/2 e2*3/2 a2*3/2 fis2*3/2 g2 \finalis
r2*11/4 fis2 e2*3/2 \divisioMinima
fis2 d2*3/2 e2*3/2 ~ e2*3/2 ~ e2*3/2 ~ e2 \finalis
b,4 ~ b,2*9/4 e2*5/2 \divisioMinima
fis2 ~ fis2*3/2 e2*3/2 ~ e2*3/2 ~ e2*3/2 ~ e2 \finalis
b2 fis2 ~ fis2*5/2 e2*3/2 ~ \divisioMinima
e2 ~ e2 b,2*3/2 ~ b,2 \finalis
d2 cis2 b,2*5/2 ~ b,2*3/2 \divisioMinima
fis2*4/2 ~ fis2*3/2 b2 \finalis
r2*4/2 cis'2*5/2 b2*7/4 r2*4/2 r2*5/2 \divisioMinima
cis'2*5/2 b2*7/4 fis2*4/2 \shiftRight g2*3/2 \divisioMinima
e2*4/2 \shiftRight fis2 g2*3/2 ~ \divisioMinima
g2 fis2*3/2 e2*3/2 ~ e2*3/2 ~ e2*3/2 ~ e2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*257/4
\allowVoiceLineBreak
\voiceLine "down" "up" b2*3/2 b2*0
%s2*0
%\allowVoiceLineBreak
%\voiceLine "down" "up" b2*3/2 b2*1/2


s2*101/2
\allowVoiceLineBreak
\voiceLine "down" "up" b2*3/2 b2*1/2

}

voiceLinesTwo = {
\voiceLineStyle


s2*263/4


s2*104/2
\allowVoiceLineBreak
\voiceLine "down" "up" a2*3/2 a2*1/2

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
	\new Voice {
        \voiceThree \global \voiceLinesTwo
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
