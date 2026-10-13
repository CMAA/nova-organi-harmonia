\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.91
%(volume.page)

%Proofed 3/14

global = {
 \key e \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e _ _ 
\set stanza = " * " e -- _ lé -- i -- son. 
Ký -- ri -- e _ _ e -- _ lé -- i -- son. 
Ký -- ri -- e _ _ e -- _ lé -- i -- son. 
Chri -- ste e -- _ lé -- i -- son. 
Chri -- ste e -- _ lé -- i -- son. 
Chri -- ste e -- _ lé -- i -- son. 
Ký -- ri -- e e -- _ lé -- i -- son. 
Ký -- ri -- e e -- _ lé -- i -- son. 
Ký -- ri -- e _ _ _ 
\set stanza = " * " 
_ _ _ _ _ 
\set stanza = " ** "  
e -- _ _ _ lé -- i -- son. }

chantMusic = {
\tieDown   d'4 e'4 ( g'4) fis'4 ( e'4 d'4) e'4 ( g'4 e'4) fis'4. \divisioMinima
 fis'4 ( g'4 a'4 g'4 fis'4 e'4) d'4 ( e'4 fis'4) g'4 fis'4 e'4 \finalis
 \forceBreak
 d'4 e'4 ( g'4) fis'4 ( e'4 d'4) e'4 ( g'4 e'4) fis'4. \divisioMinima
 fis'4 ( g'4 a'4 g'4 fis'4 e'4) d'4 ( e'4 fis'4) g'4 fis'4 e'4 \finalis
 d'4 e'4 ( g'4) \forceBreak
 fis'4 ( e'4 d'4) e'4 ( g'4 e'4) fis'4. \divisioMinima
 fis'4 ( g'4 a'4 g'4 fis'4 e'4) d'4 ( e'4 fis'4) g'4 fis'4 e'4 \finalis
 g'4 ( a'4 b'4 a'4 g'4) fis'4 ( e'4) \divisioMinima
 \forceBreak
 fis'4 ( g'4 a'4 g'4 fis'4 e'4) d'4 ( e'4 fis'4) g'4 fis'4 e'4 \finalis
 g'4 ( a'4 b'4 a'4 g'4) fis'4 ( e'4) \divisioMinima
 fis'4 ( g'4 a'4 g'4 fis'4 e'4) d'4 ( e'4 fis'4) \forceBreak
 g'4 fis'4 e'4 \finalis
 g'4 ( a'4 b'4 a'4 g'4) fis'4 ( e'4) \divisioMinima
 fis'4 ( g'4 a'4 g'4 fis'4 e'4) d'4 ( e'4 fis'4) g'4 fis'4 e'4 \finalis
 \forceBreak
 b'4 a'4 ( b'4) b'4 ( d''4 e''4 d''4 cis''4 b'4) d''4 ( cis''4 b'4) a'4 ( b'4 cis''4) d''4 cis''4 b'4 \finalis
 b'4 a'4 ( b'4) b'4 ( d''4 e''4 d''4 cis''4 b'4) \forceBreak
 d''4 ( cis''4 b'4) a'4 ( b'4 cis''4) d''4 cis''4 b'4 \finalis
 b'4 a'4 ( b'4) b'4 ( d''4 e''4 d''4 cis''4 b'4.) d''4 ( cis''4 b'4) a'4 cis''4 ( d''4 b'4) \divisioMaior
 \forceBreak
 b'4 ( a'4 b'4) d''4 ( e''4 d''4 cis''4 b'4.) d''4 ( cis''4 b'4) a'4 cis''4 ( d''4 b'4) \divisioMaior
  b'4 ( a'4) b'4 ( c''4 b'4 a'4 a'4) fis'4 ( g'4 fis'4 e'4) d'4 ( e'4 fis'4) g'4 fis'4 e'4 \finalis

}

altoMusic = {
d'4 ~ d'2 b2*3/2 cis'2*3/2 ~ cis'2*3/4 \divisioMinima
d'2*6/2 ~ d'2*3/2 b2 ~ b4 \finalis
d'4 ~ d'2 ~ d'2 ~ d'4 cis'2*3/2 d'2*3/4 ~ \divisioMinima
d'2*6/2 ~ d'2*3/2 b2 ~ b4 \finalis
d'4 ~ d'2 b2*3/2 cis'2*3/2 ~ cis'2*3/4 \divisioMinima
d'2*6/2 ~ d'2*3/2 b2 ~ b4 \finalis
e'2*5/2 ~ e'2 \divisioMinima
d'2*6/2 ~ d'2*3/2 b2 ~ b4 \finalis
e'2*5/2 ~ e'2 \divisioMinima
b2*6/2 ~ b2*3/2 ~ b2 ~ b4 \finalis
e'2*5/2 ~ e'2 \divisioMinima
d'2*6/2 ~ d'2*3/2 b2 ~ b4 \finalis
fis'4 e'2 fis'4 ~ fis'2*5/2 a'2*3/2 fis'2*3/2 ~ fis'2 ~ fis'4 \finalis
cis'4 ~ cis'2 fis'4 ~ fis'2*5/2 ~ fis'2*3/2 e'2*3/2 d'2*3/2 \finalis
fis'4 ~ fis'2 ~ fis'4 ~ fis'2*4/2 ~ fis'2*3/4 a'2*3/2 ~ a'4 fis'2 ~ fis'4 \divisioMaior
fis'2*3/2 ~ fis'2*4/2 e'2*3/4 ~ e'2*4/2 d'2*3/2 e'2 c'2*5/2 ~ c'2*4/2 d'2*3/2 b2 ~ b4 \finalis
}

tenorMusic = {
b4 ~ b2 ~ b2*3/2 ~ b2*3/2 a2*3/4 \divisioMinima
b2*6/2 a2*3/2 ~ a2 g4 \finalis
fis4 g2 a2*3/2 g2*3/2 a2*3/4 \divisioMinima
b2*6/2 a2*3/2 ~ a2 g4 \finalis
b4 ~ b2 ~ b2*3/2 ~ b2*3/2 a2*3/4 \divisioMinima
fis2*6/2 g2*3/2 a2 g4 \finalis
b2*5/2 a2 ~ \divisioMinima
a2*6/2 g2*3/2 fis2 g4 \finalis
b2*5/2 c'2 \divisioMinima
g2*6/2 ~ g2*3/2 ~ g2 ~ g4 \finalis
b2*5/2 a2 ~ \divisioMinima
a2*6/2 g2*3/2 fis2 g4 \finalis
d'4 ~ d'2 ~ d'4 ~ d'2*5/2 ~ d'2*3/2 e'2*3/2 ~ e'2 d'4 \finalis
fis4 ~ fis2 ~ fis4 b2*5/2 a2*3/2 fis2*3/2 ~ fis2*3/2 \finalis
d'4 ~ d'2 ~ d'4 cis'2*4/2 d'2*3/4 e'2*4/2 ~ e'2 d'4 \divisioMaior
fis2*3/2 b2*4/2 fis2*3/4 g2*4/2 fis2*3/2 \divisioMaior
e2 ~ e2*5/2 a2*4/2 ~ a2*3/2 ~ a2 g4 \finalis
}

bassMusic = {
r2*3/2 g2*3/2 ~ g2*3/2 fis2*3/4 \divisioMinima
b,2*6/2 ~ b,2*3/2 e2 ~ e4 \finalis
b,4 ~ b,2 ~ b,2*3/2 e2*3/2 d2*3/4 \divisioMinima
b,2*6/2 ~ b,2*3/2 e2 ~ e4 \finalis
r2*3/2 g2*3/2 ~ g2*3/2 fis2*3/4 \divisioMinima
b,2*6/2 ~ b,2*3/2 e2 ~ e4 \finalis
e2*5/2 c2 \divisioMinima
b,2*6/2 ~ b,2*3/2 e2 ~ e4 \finalis
e2*5/2 a2 \divisioMinima
r2*6/2 fis2*3/2 e2 ~ e4 \finalis
c2*5/2 ~ c2 \divisioMinima
b,2*6/2 ~ b,2*3/2 e2 ~ e4 \finalis
r2*3/2 cis'4 b2*5/2 fis2*3/2 ~ fis2*3/2 b2 ~ b4 \finalis
r4 e2 d4 ~ d2*5/2 ~ d2*3/2 cis2*3/2 b,2*3/2 \finalis
r4 cis'2 b4 ~ b2*4/2 ~ b2*3/4 fis2*4/2 b2 ~ b4 \divisioMaior
d2*3/2 ~ d2*4/2 cis2*3/4 b,2*4/2 ~ b,2*3/2 c2 a,2*5/2 ~ a,2*4/2 b,2*3/2 e2 ~ e4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*54/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" fis2*3/4 fis2*1/2


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
