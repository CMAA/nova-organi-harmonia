\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.84
%(volume.page)

%Proofed 3/14

global = {
 \key fis \locrian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e 
\set stanza = " * " e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Chri -- ste _ _ e -- lé -- i -- son. 
Chri -- ste e -- lé -- i -- son. 
Chri -- ste _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ e -- lé -- i -- son. 
Ký -- ri -- e e -- _ lé -- i -- son. 
Ký -- ri -- e 
\set stanza = " * " e -- lé -- i -- son. }

chantMusic = {
\tieDown   fis'4 ( g'4) fis'4 fis'4 ( e'4)  fis'4 ( e'4 d'4) e'4 fis'4 fis'4 \finalis
 b4 ( d'4) d'4 ( e'4) e'4 ( fis'4) ~ fis'4 ( e'4) \forceBreak
 fis'4 ( e'4 d'4) e'4 fis'4 fis'4 \finalis
 fis'4 ( g'4) fis'4 fis'4 ( e'4) fis'4 ( e'4 d'4) e'4 fis'4 fis'4 \finalis
 a'4 g'4 a'4 ( a'4 fis'4) g'4 ( e'4) \forceBreak
 fis'4 ( e'4 d'4) e'4 fis'4 fis'4 \finalis
 e'4 ( \quil fis' g'4 fis'4) fis'4 e'4 ( fis'4 d'4) e'4 fis'4 fis'4 \finalis
 a'4 g'4 a'4 ( a'4 fis'4) g'4 ( e'4) \forceBreak
 fis'4 ( e'4 d'4) e'4 fis'4 fis'4 \finalis
 a'4 a'4 ( b'4) b'4 ( a'4 g'4) a'4 ( a'4 fis'4) g'4 ( e'4) fis'4 ( e'4 d'4) e'4 fis'4 fis'4 \finalis
 d'4 e'4 ( fis'4) fis'4 ( e'4) \forceBreak
 g'4 ( fis'4 e'4 d'4) e'4 ( g'4) e'4 fis'4 fis'4 \finalis
 a'4 g'4 ( fis'4) e'4 ( d'4)  a'4 ( g'4)( \quil a' b'4 a'4 g'4) a'4 a'4 fis'4 \finalis

}

altoMusic = {
d'2*3/2 c'2 b2*3/2 c'2 d'4 \finalis
b2 ~ b2 c'4 ~ c'2*3/2 b2*3/2 ~ b4 a4 b4 \finalis
d'2*3/2 b2 a2*3/2 b2 d'2*1/2 \finalis
e'2 ~ e'2*3/2 ~ e'2 d'2 ~ d'4 c'2 d'4 \finalis
e'2*4/2 ~ e'4 d'2 ~ d'4 c'2 d'4 \finalis
e'2 ~ e'2*3/2 ~ e'2 d'2 ~ d'4 c'2 d'4 \finalis
fis'4 e'2 d'2*3/2 e'2*3/2 ~ e'2 d'2 ~ d'4 c'2 d'4 \finalis
d'4 ~ d'2 ~ d'2 c'2*4/2 d'2 c'2 b4 \finalis
a4 b2 ~ b2 d'2*6/2 c'2 d'4 \finalis
}

tenorMusic = {
b2*3/2 a2 g2*3/2 ~ g2 fis4 \finalis
b2 a2 g4 ~ g2*3/2 fis2*3/2 g4 e4 d4 \finalis
b2*3/2 g2 fis2*3/2 g2 b2*1/2 \finalis
c'2 a2*3/2 b2 ~ b2*3/2 g2 fis4 \finalis
c'2*4/2 b4 ~ b2*3/2 ~ b2 ~ b4 \finalis
c'2 a2*3/2 b2 ~ b2*3/2 g2 fis4 \finalis
d'4 c'2 b2*3/2 c'2*3/2 b2 ~ b2*3/2 g2 b4 \finalis
b4 a2 g2 ~ g2*4/2 ~ g2 ~ g2 fis4 \finalis
e4 ~ e2 fis2 g2*6/2 e2 b4 \finalis
}

bassMusic = {
r2*8/2 e2 b,4 \finalis
b,2 ~ b,2 ~ b,4 a,2*3/2 d2*3/2 c2 b,4 \finalis
r2*11/2 \finalis
c2 ~ c2*3/2 e2 b,2*3/2 ~ b,2 ~ b,4 \finalis
r2*11/2 \finalis
c2 ~ c2*3/2 e2 b,2*3/2 ~ b,2 ~ b,4 \finalis
r2*9/2 g2 ~ g2*3/2 e2 \shiftRight b4 \finalis
b,2*3/2 ~ b,2 a,2*4/2 b,2 ~ b,2 ~ b,4 \finalis
c4 ~ c2 b,2 ~ b,2*6/2 ~ b,2 ~ b,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*84/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*3/2 g2*1/2


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "IV."
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
