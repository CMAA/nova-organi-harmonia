\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.137
%(volume.page)

%Proofed 3/14

global = {
 \key e \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e 
\set stanza = " * " e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Chri -- ste _ e -- _ lé -- i -- son. 
Chri -- ste _ e -- _ lé -- i -- son. 
Chri -- ste _ e -- _ lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Ký -- ri -- e _ 
\set stanza = " * " e -- _ lé -- i -- son. }

chantMusic = {
\tieDown    b'4 ( c''4) b'4 ( a'4) b'4 ( e'4) \divisioMinima
 g'4 ( b'4 a'4 fis'4 e'4) d'4 e'4 e'4 \finalis
   b'4 ( c''4) b'4 ( a'4) b'4 ( e'4) \divisioMinima
 \forceBreak
 g'4 ( b'4 a'4 fis'4 e'4) d'4 e'4 e'4 \finalis
   b'4 ( c''4) b'4 ( a'4) b'4 ( e'4) \divisioMinima
 g'4 ( b'4 a'4 fis'4 e'4) d'4 e'4 e'4 \finalis
 \forceBreak
 b'4 ( a'4) e''4. d''4 ( e''4 d''4 b'4 a'4 b'4) \divisioMinima
 b'4 ( a'4) g'4 ( fis'4 e'4) d'4 e'4 e'4 \finalis
 b'4 ( a'4) e''4. d''4 ( e''4 d''4 b'4 a'4 b'4) \divisioMinima
 \forceBreak
 b'4 ( a'4) g'4 ( fis'4 e'4) d'4 e'4 e'4 \finalis
 b'4 ( a'4) e''4. d''4 ( e''4 d''4 b'4 a'4 b'4) \divisioMinima
 b'4 ( a'4) g'4 ( fis'4 e'4) d'4 e'4 e'4 \finalis
 \forceBreak
 b'4 a'4 b'4 ( a'4 b'4 e'4) \divisioMinima
 g'4 ( b'4 a'4 fis'4 e'4) d'4 e'4 e'4 \finalis
 b'4 a'4 b'4 ( a'4 b'4 e'4) \divisioMinima
 g'4 ( b'4 a'4 fis'4 e'4) \forceBreak
 d'4 e'4 e'4 \finalis
 e'4 ( g'4 e'4) d'4 ( e'4) e'4. a'4 ( a'4 g'4 fis'4 e'4) \divisioMinima
 d'4 ( fis'4) g'4 ( fis'4 e'4) d'4 e'4 e'4 \finalis

}

altoMusic = {
e'2*4/2 ~ e'2 ~ \divisioMinima
e'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 e'4 d'2 c'4 e'2 ~ e'2 ~ e'2 ~ \divisioMinima
e'2*3/2 ~ e'2 d'2 b4 e'2 ~ e'2 ~ e'2 \divisioMinima
c'2*3/2 b2 a2 b4 \finalis
e'2 fis'2*3/4 g'2*3/2 fis'2*3/2 \divisioMinima
e'2 b2*3/2 a2 b4 \finalis
e'2 ~ e'2*3/4 fis'2*3/2 e'2*3/2 \divisioMinima
c'2 b2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 r2 \finalis
g'2 ~ g'2*3/4 a'2*3/2 fis'2*3/2 \divisioMinima
g'2 c'2*3/2 b2 ~ b4 \finalis
g'2 fis'2 e'2 \divisioMinima
d'2*3/2 c'2 ~ c'2 b4 \finalis
d'2 ~ d'2 b2 ~ \divisioMinima
b2*5/2 a2 g4 \finalis
c'2*3/2 b2 ~ b2*3/4 ~ b2*3/2 ~ b2 \divisioMinima
d'2 c'2*3/2 ~ c'2 b4 \finalis
}

tenorMusic = {
r2*4/2 d'2 \divisioMinima
c'2*5/2 b2 a4 \finalis
g2 fis2 g2 ~ \divisioMinima
g2*3/2 a2 fis2 g4 \finalis
b2 c'2 b2 \divisioMinima
a2*3/2 ~ a2 fis2 g4 \finalis
g2 a2*3/4 b2*3/2 a2*3/2 \divisioMinima
g2 ~ g2*3/2 fis2 g4 \finalis
g2 a2*3/4 ~ a2*3/2 g2*3/2 \divisioMinima
fis2 g2*3/2 a2 b4 \finalis
e'2 ~ e'2*3/4 fis'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 a2*3/2 g2 ~ g4 \finalis
e'2 d'2 c'2 \divisioMinima
b2*3/2 a2 fis2 g4 \finalis
fis2 g2 ~ g2 \divisioMinima
e2*5/2 b,2 ~ b,4 \finalis
a2*3/2 g2 ~ g2*3/4 fis2*3/2 g2 \divisioMinima
a2 ~ a2*3/2 fis2 g4 \finalis
}

bassMusic = {
r2*6/2 \divisioMinima
r2*5/2 r2*3/2 e2 ~ e2 ~ e2 \divisioMinima
c2*3/2 ~ c2 e2 ~ e4 g2 ~ g2 ~ g2 \divisioMinima
e2*3/2 ~ e2 ~ e2 ~ e4 \finalis
e2 ~ e2*3/4 ~ e2*3/2 ~ e2*3/2 ~ \divisioMinima
e2 ~ e2*3/2 ~ e2 ~ e4 \finalis
c2 ~ c2*3/4 b,2*3/2 c2*3/2 \divisioMinima
e2 ~ e2*3/2 fis2 g4 \finalis
d'2 c'2*3/4 b2*3/2 ~ b2*3/2 \divisioMinima
g2 ~ g2*3/2 fis2 e4 \finalis
e2 ~ e2 ~ e2 ~ \divisioMinima
e2*3/2 ~ e2 ~ e2 ~ e4 \finalis
b,2 ~ b,2 e2 \divisioMinima
e,2*5/2 ~ e,2 ~ e,4 \finalis
g2*3/2 fis2 e2*3/4 ~ e2*3/2 ~ e2 \divisioMinima
b,2 a,2*3/2 e2 ~ e4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*37/2
\allowVoiceLineBreak
\voiceLine "down" "up" a2*2/2 a2*1/2


s2*81/4
\allowVoiceLineBreak
\voiceLine "down" "up" fis'2*3/2 fis'2*1/2


s2*4/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*3/2 g2*1/2


s2*20/2
\allowVoiceLineBreak
\voiceLine "down" "down" e2*2/2 e2*1/2


s2*7/2
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
  \layout{
  }
  
}
