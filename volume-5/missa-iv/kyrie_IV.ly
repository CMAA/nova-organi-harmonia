\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.23
%(volume.page)

%Proofed 3/14

global = {
 \key b \minor
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e _ 
\set stanza = " * " _ e -- _ _ lé -- i -- son. 
Ký -- ri -- e _ _ e -- _ _ lé -- i -- son. 
Ký -- ri -- e _ _ e -- _ _ lé -- i -- son. 
Chri -- ste _ _ _ e -- lé -- i -- son. 
Chri -- ste _ _ _ e -- lé -- i -- son. 
Chri -- ste _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ e -- _ lé -- i -- son. 
Ký -- ri -- e _ _ e -- _ lé -- i -- son. 
Ký -- ri -- e _ _ 
\set stanza = " * " _ _ _ _ 
\set stanza = " ** "  e -- _ lé -- i -- son. }

chantMusic = {
\tieDown   b'4 b'4 ( a'4) b'4 d''4 ( cis''4 b'4 a'4 b'4) \divisioMinima
 b'4 ( a'4 g'4 e'4 fis'4) \divisioMinima
 fis'4 ( a'4) b'4 ( e'4.) fis'4 ( a'4 g'4 fis'4) g'4 e'4 e'4 \finalis
 \forceBreak
 b'4 b'4 ( a'4) b'4 d''4 ( cis''4 b'4 a'4 b'4) \divisioMinima
 b'4 ( a'4 g'4 e'4 fis'4) \divisioMinima
 fis'4 ( a'4) b'4 ( e'4.) fis'4 ( a'4 g'4 fis'4) g'4 e'4 e'4 \finalis
 \forceBreak
 b'4 b'4 ( a'4) b'4 d''4 ( cis''4 b'4 a'4 b'4) \divisioMinima
 b'4 ( a'4 g'4 e'4 fis'4) \divisioMinima
 fis'4 ( a'4) b'4 ( e'4.) fis'4 ( a'4 g'4 fis'4) g'4 e'4 e'4 \finalis
 \forceBreak
 b'4 b'4. a'4 ( b'4 a'4 g'4.) a'4 ( a'4 b'4 g'4) a'4 ( b'4 fis'4 e'4) \divisioMinima
 fis'4 ( a'4 g'4 fis'4) g'4 e'4 e'4 \finalis
 b'4 b'4. a'4 ( b'4 a'4 g'4.) \forceBreak
 a'4 ( a'4 b'4 g'4) a'4 ( b'4 fis'4 e'4) \divisioMinima
 fis'4 ( a'4 g'4 fis'4) g'4 e'4 e'4 \finalis
 b'4 b'4. a'4 ( b'4 a'4 g'4.) a'4 ( a'4 b'4 g'4) a'4 ( b'4 fis'4 e'4) \divisioMinima
 \forceBreak
 fis'4 ( a'4 g'4 fis'4) g'4 e'4 e'4 \finalis
 e'4 ( b'4) b'4 ( a'4) b'4 ( d''4 cis''4 a'4.) cis''4 ( b'4) d''4 ( d''4 b'4) \divisioMinima
 b'4 ( cis''4 b'4) a'4 ( g'4 fis'4) a'4 b'4 b'4 \finalis
 \forceBreak
 e'4 ( b'4) b'4 ( a'4) b'4 ( d''4 cis''4 a'4.) cis''4 ( b'4) d''4 ( d''4 b'4) \divisioMinima
 b'4 ( cis''4 b'4) a'4 ( g'4 fis'4) a'4 b'4 b'4 \finalis
 e'4 ( b'4) b'4 ( a'4) \forceBreak
 b'4 ( d''4 cis''4 a'4.) cis''4 ( b'4) d''4 ( d''4 b'4) \divisioMinima
 e'4 ( b'4) ~ b'4 ( a'4) b'4 ( d''4 cis''4 a'4.) cis''4 ( b'4) d''4 ( d''4 b'4) \divisioMinima
 b'4 ( cis''4 b'4) a'4 ( g'4 fis'4) a'4 b'4 b'4 \finalis

}

altoMusic = {
r4 fis'2*3/2 ~ fis'2*4/2 ~ fis'4 \divisioMinima
g'2 ~ g'4 r2 \divisioMinima
d'2 ~ d'2*5/4 ~ d'2*4/2 b2 ~ b4 \finalis
r4 d'2*3/2 e'2*4/2 d'4 ~ \divisioMinima
d'2 ~ d'2*3/2 \divisioMinima
b2 ~ b2*5/4 ~ b2 a2 ~ a2 g4 \finalis
r4 fis'2*3/2 ~ fis'2*4/2 ~ fis'4 \divisioMinima
g'2 ~ g'4 r2 \divisioMinima
d'2 ~ d'2*5/4 ~ d'2*4/2 b2 ~ b4 \finalis
d'4 ~ d'2*3/4 ~ d'2*9/4 ~ d'2 ~ d'2 b2*3/2 ~ b4 \divisioMinima
d'2*4/2 b2 ~ b4 \finalis
r4 g'2*3/4 d'2*9/4 ~ d'2 ~ d'2 b2*4/2 \divisioMinima
d'2 ~ d'2 b2 ~ b4 \finalis
d'4 ~ d'2*3/4 ~ d'2*9/4 ~ d'2 ~ d'2 b2*3/2 ~ b4 \divisioMinima
d'2*4/2 b2 ~ b4 \finalis
r2 g'2 fis'2*9/4 ~ fis'2 ~ fis'2*3/2 ~ \divisioMinima
fis'2*3/2 e'2*3/2 ~ e'2 d'4 \finalis
e'2 ~ e'2 ~ e'2*9/4 d'2 fis'2*3/2 ~ \divisioMinima
fis'2*3/2 e'2*3/2 ~ e'2 d'4 \finalis
e'2 g'2 fis'2*9/4 ~ fis'2 ~ fis'2*3/2 \divisioMinima
e'4 ~ e'2*3/2 ~ e'2*9/4 d'2 fis'2*3/2 ~ \divisioMinima
fis'2*3/2 e'2*3/2 ~ e'2 d'4 \finalis
}

tenorMusic = {
b4 d'2*3/2 e'2*4/2 d'4 ~ \divisioMinima
d'2 ~ d'2*3/2 \divisioMinima
b2 ~ b2*5/4 a2*4/2 ~ a2 g4 \finalis
r4 fis2*3/2 g2*4/2 fis4 \divisioMinima
g2 a2*3/2 ~ \divisioMinima
a2 g2*5/4 d2 ~ d2 b,2 ~ b,4 \finalis
r4 d'2*3/2 e'2*4/2 d'4 ~ \divisioMinima
d'2 ~ d'2*3/2 \divisioMinima
b2 ~ b2*5/4 a2*4/2 ~ a2 g4 \finalis
g4 ~ g2*3/4 ~ g2*9/4 fis2 g2 fis2*3/2 g4 \divisioMinima
a2*4/2 ~ a2 g4 \finalis
r4 d'2*3/4 ~ d'2*9/4 b2 g2 ~ g2*4/2 \divisioMinima
a2 ~ a2 ~ a2 g4 \finalis
g4 ~ g2*3/4 ~ g2*9/4 fis2 g2 fis2*3/2 g4 \divisioMinima
a2*4/2 ~ a2 g4 \finalis
e'2 ~ e'2 ~ e'2*9/4 d'2 \shiftRight b2*3/2 ~ \divisioMinima
b2*3/2 ~ b2*3/2 fis2 ~ fis4 \finalis
r2 g2 fis2*9/4 ~ fis2 b2*3/2 ~ \divisioMinima
b2*3/2 ~ b2*3/2 fis2 ~ fis4 \finalis
r2 e'2 ~ e'2*9/4 d'2 \shiftRight b2*3/2 ~ \divisioMinima
b4 g2*3/2 ~ g2*9/4 fis2 b2*3/2 ~ \divisioMinima
b2*3/2 ~ b2*3/2 fis2 ~ fis4 \finalis
}

bassMusic = {
r4 b2*3/2 ~ b2*4/2 ~ b4 \divisioMinima
g2 b2*3/2 \divisioMinima
a2 g2*5/4 d2*4/2 e2 ~ e4 \finalis
b,4 ~ b,2*3/2 ~ b,2*4/2 ~ b,4 ~ \divisioMinima
b,2 d2*3/2 \divisioMinima
e2 ~ e2*5/4 b,2 ~ b,2 e,2 ~ e,4 \finalis
b4 ~ b2*3/2 ~ b2*4/2 ~ b4 \divisioMinima
g2 b2*3/2 \divisioMinima
a2 g2*5/4 d2*4/2 e2 ~ e4 \finalis
r4 g,2*3/4 b,2*9/4 ~ b,2 ~ b,2 e2*3/2 ~ e4 \divisioMinima
d2*4/2 e2 ~ e4 \finalis
g4 ~ g2*3/4 b2*9/4 fis2 ~ fis2 e2*4/2 \divisioMinima
d2 b,2 e2 ~ e4 \finalis
r4 g,2*3/4 b,2*9/4 ~ b,2 ~ b,2 e2*3/2 ~ e4 \divisioMinima
d2*4/2 e2 ~ e4 \finalis
r2*4/2 b2*9/4 ~ b2 ~ b2*3/2 \divisioMinima
d2*3/2 e2*3/2 cis2 b,4 \finalis
e2 ~ e2 b,2*9/4 ~ b,2 ~ b,2*3/2 \divisioMinima
d2*3/2 e2*3/2 cis2 b,4 \finalis
e2 ~ e2 b2*9/4 ~ b2 ~ b2*3/2 \divisioMinima
g4 e2*3/2 b,2*9/4 ~ b,2 ~ b,2*3/2 \divisioMinima
d2*3/2 e2*3/2 cis2 b,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*11/2
\allowVoiceLineBreak
\voiceLine "down" "down" b2*3/2 b2*1/2


s2*31/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" b,2*2/2 b,2*1/2


s2*13/2
\allowVoiceLineBreak
\voiceLine "down" "down" b2*3/2 b2*1/2


s2*35/2
\allowVoiceLineBreak
\voiceLine "down" "down" b2*9/4 b2*1/2


s2*189/4
\allowVoiceLineBreak
\voiceLine "down" "down" g2*1/2 g2*1/2


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
