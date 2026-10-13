\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.73
%(volume.page)

%Proofed 3/14

global = {
 \key d \dorian
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
Ký -- ri -- e _ _ _ 
\set stanza = " * " _ _ _ _ 
\set stanza = " ** "  e -- lé -- i -- son. }

chantMusic = {
\tieDown   d'4 d'4 ( c'4) d'4 ( f'4 e'4 c'4)  e'4 ( d'4) f'4 ( f'4 d'4) c'4 d'4 d'4 \finalis
 d'4 d'4 ( c'4) d'4 ( f'4 e'4 c'4)  \forceBreak
 e'4 ( d'4) f'4 ( f'4 d'4) c'4 d'4 d'4 \finalis
 d'4 d'4 ( c'4) d'4 ( f'4 e'4 c'4)  e'4 ( d'4) f'4 ( f'4 d'4) c'4 d'4 d'4 \finalis
 \forceBreak
 g'4 g'4 ( f'4 e'4 d'4.) g'4 ( f'4 e'4 c'4) e'4 ( d'4) f'4 ( f'4 d'4) c'4 d'4 d'4 \finalis
 g'4 g'4 ( f'4 e'4 d'4.) g'4 ( f'4 e'4 c'4) \forceBreak
 e'4 ( d'4) f'4 ( f'4 d'4) c'4 d'4 d'4 \finalis
 g'4 g'4 ( f'4 e'4 d'4.) g'4 ( f'4 e'4 c'4) e'4 ( d'4) f'4 ( f'4 d'4) c'4 d'4 d'4 \finalis
 \forceBreak
 d'4 ( a'4) a'4 ( g'4) a'4 ( d''4 c''4 b'4 g'4) b'4 ( a'4) c''4 ( c''4 a'4) g'4 a'4 a'4 \finalis
 d'4 ( a'4) a'4 ( g'4) a'4 ( d''4 c''4 b'4 g'4) \forceBreak
 b'4 ( a'4) c''4 ( c''4 a'4) g'4 a'4 a'4 \finalis
 d'4 ( a'4) a'4 ( g'4) a'4 ( d''4 c''4 b'4 g'4.) b'4 ( a'4) c''4 ( c''4 a'4 g'4) a'4 ( a'4) \divisioMinima
 \forceBreak
 d'4 ( a'4 g'4) a'4 ( d''4 c''4 b'4 g'4.) b'4 ( a'4) c''4 ( c''4 a'4 g'4) a'4 ( a'4) \divisioMinima
 a'4 ( g'4 f'4 e'4 d'4) e'4 ( c'4 d'4) f'4 ( f'4) d'4 d'4 \finalis

}

altoMusic = {
a4 g2 a2*4/2 ~ a2 ~ a2*3/2 ~ a2 ~ a4 \finalis
r4 a2 ~ a2*4/2 ~ a2 ~ a2*3/2 g2 f4 \finalis
a4 ~ a2 ~ a2*4/2 ~ a2 ~ a2*3/2 ~ a2 ~ a4 \finalis
c'4 a2*9/4 c'2*4/2 a2 ~ a2*3/2 ~ a2 ~ a4 \finalis
s2*29/4 a2 ~ a4 \finalis
c'4 ~ c'2*9/4 ~ c'2*4/2 ~ c'2 ~ c'2*3/2 a2 ~ a4 \finalis
r2*9/2 e'2 ~ e'2*3/2 ~ e'2 ~ e'4 \finalis
d'2 ~ d'2 ~ d'2*3/2 ~ d'2 e'2 ~ e'2*3/2 ~ e'2 ~ e'4 \finalis
r2*19/4 e'2 ~ e'2*4/2 ~ e'2 \divisioMinima
d'2*3/2 e'2*3/2 ~ e'2*5/4 d'2 c'2 b2 c'2 \divisioMinima
d'2*4/2 ~ d'4 r2*3/2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
r2*7/2 g2 f2*3/2 e2 f4 \finalis
r4 e2 f2*4/2 e2 d2*3/2 ~ d2 ~ d4 \finalis
r4 e2 f2*4/2 g2 a2*3/2 g2 f4 \finalis
e4 f2*9/4 e2*4/2 c2 d2*3/2 e2 f4 \finalis
g4 a2*9/4 ~ a2*4/2 ~ a2 ~ a2*3/2 g2 f4 \finalis
e4 d2*9/4 e2*4/2 g2 f2*3/2 e2 f4 \finalis
d'2 e'2 d'2*5/2 ~ d'2 ~ d'2*3/2 b2 c'4 \finalis
a2 ~ a2 ~ a2*3/2 \shiftRight g2 r2*5/2 b2 c'4 \finalis
d'2 e'2 d'2*11/4 ~ d'2 ~ d'2*4/2 c'2 \divisioMinima
a2*3/2 ~ a2*3/2 g2*5/4 ~ g2 e2 ~ e2 ~ e2 \divisioMinima
f2*5/2 g2*3/2 ~ g2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando \change Staff = "up" \voiceTwo f4 \finalis
}

bassMusic = {
d4 ~ d2 ~ d2*4/2 ~ d2 ~ d2*3/2 ~ d2 ~ d4 \finalis
d4 a,2 f,2*4/2 ~ f,2 ~ f,2*3/2 e,2 d,4 \finalis
d4 ~ d2 ~ d2*4/2 ~ d2 ~ d2*3/2 ~ d2 ~ d4 \finalis
c4 d2*9/4 a,2*4/2 ~ a,2 ~ a,2*3/2 ~ a,2 d4 \finalis
e4 d2*9/4 e2*4/2 g2 f2*3/2 e2 d4 \finalis
a,4 ~ a,2*9/4 ~ a,2*4/2 ~ a,2 ~ a,2*3/2 ~ a,2 d4 \finalis
r2 c'2 b2*5/2 g2 a2*3/2 ~ a2 ~ a4 \finalis
d2 e2 f2*3/2 g2 ~ g2 a2*3/2 ~ a2 ~ a4 \finalis
r2 c'2 b2*11/4 g2 a2*4/2 ~ a2 \divisioMinima
d2*3/2 c2*3/2 ~ c2*5/4 g,2 a,2 ~ a,2 ~ a,2 \divisioMinima
d2*5/2 ~ d2*3/2 ~ d2*3/2 ~ <d d,>4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*74/2
\allowVoiceLineBreak
\voiceLine "down" "up" a2*3/2 a2*1/2


s2*69/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" a2*2/2 a2*1/2


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
