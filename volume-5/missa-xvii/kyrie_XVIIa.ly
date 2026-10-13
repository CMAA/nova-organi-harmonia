\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.92
%(volume.page)

%Proofed 3/14

global = {
 \key f \major
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e, 
\set stanza = " * " e -- _ lé -- i -- son. 
Ký -- ri -- e, e -- _ lé -- i -- son. 
Ký -- ri -- e, e -- _ lé -- i -- son. 
Chri -- ste, _ e -- _ lé -- i -- son. 
Chri -- ste, _ e -- _ lé -- i -- son. 
Chri -- ste, _ e -- _ lé -- i -- son. 
Ký -- ri -- e, e -- _ lé -- i -- son. 
Ký -- ri -- e, e -- _ lé -- i -- son. 
Ký -- ri -- e, 
\set stanza = " * " _ e -- _ lé -- i -- son. }

chantMusic = {
\tieDown   f'4 g'4 ( f'4 g'4) a'4   c''4 ( bes'4 a'4 g'4) a'4 ( f'4 e'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
 f'4 g'4 ( f'4 g'4) a'4 \forceBreak
  c''4 ( bes'4 a'4 g'4) a'4 ( f'4 e'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
 f'4 g'4 ( f'4 g'4) a'4  c''4 ( bes'4 a'4 g'4) a'4 ( f'4 e'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
 \forceBreak
  c''4 c''4. a'4 ( bes'4 c''4)  c''4 ( bes'4 a'4 g'4) a'4 ( f'4 e'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
  c''4 c''4. a'4 ( bes'4 c''4)  c''4 ( bes'4 a'4 g'4) \forceBreak
 a'4 ( f'4 e'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
  c''4 c''4. a'4 ( bes'4 c''4)  c''4 ( bes'4 a'4 g'4) a'4 ( f'4 e'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
 \forceBreak
 f'4 a'4 ( c''4)  c''4 ( c''4 d''4 bes'4 c''4)  c''4 ( bes'4 a'4 g'4) a'4 ( f'4 e'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
 f'4 a'4 ( c''4)  c''4 ( c''4 d''4 bes'4 c''4) \forceBreak
  c''4 ( bes'4 a'4 g'4) a'4 ( f'4 e'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
 f'4 a'4 ( c''4)  c''4 ( c''4 d''4 bes'4 c''4) \divisioMinima
  f'4 ( a'4 c''4) ~ c''4 ( d''4 bes'4 c''4) \forceBreak
  c''4 ( bes'4 a'4 g'4) a'4 ( f'4 e'4) g'4 ( a'4 g'4) g'4 f'4 \finalis

}

altoMusic = {
r4 e'2*3/2 f'4 ~ f'2*4/2 e'2 ~ e'4 c'2*3/2 ~ c'2 \finalis
r4 e'2*3/2 f'4 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 c'2 \finalis
r4 e'2*3/2 f'4 ~ f'2*4/2 e'2 ~ e'4 c'2*3/2 ~ c'2 \finalis
f'4 g'2*3/4 f'2*3/2 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 c'2
f'4 ~ f'2*3/4 ~ f'2*3/2 ~ \set tieWaitForNote = ##t f'2*2 ~ s4 f'4 \set tieWaitForNote = ##f e'4 c'2*3/2 ~ c'2
f'4 g'2*3/4 f'2*3/2 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 c'2 \finalis
r4 g'2 f'2*5/2 ~ f'2*4/2 d'2*3/2 c'2*3/2 ~ c'2 \finalis
r4 g'2 f'2 ~ f'2*3/2 c'2*4/2 d'2*3/2 ~ d'2*3/2 c'2 \finalis
r4 e'2 f'2*5/2 f'4 ~ f'4 ~ f'2 ~ f'2*3/2 c'2*4/2 d'2*3/2 ~ d'2*3/2 c'2 \finalis
}

tenorMusic = {
r4 bes2*3/2 c'4 ~ c'2*4/2 ~ c'2*3/2 bes2*3/2 a2 \finalis
a4 ~ a2*3/2 ~ a4 ~ a2*4/2 g2*3/2 bes2*3/2 ~ bes4 a4 \finalis
r4 bes2*3/2 c'4 ~ c'2*4/2 ~ c'2*3/2 bes2*3/2 a2 \finalis
a4 ~ a2*3/4 ~ a2*3/2 ~ a2*4/2 g2*3/2 bes2*3/2 ~ bes4 a4 \finalis
c'4 d'2*3/4 ~ d'2*3/2 c'2*4/2 d'2*3/2 bes2*3/2 a2 \finalis
a4 ~ a2*3/4 ~ a2*3/2 ~ a2*4/2 g2*3/2 bes2*3/2 ~ bes4 a4 \finalis
f'4 e'2 d'2*5/2 a2*4/2 bes2*3/2 ~ bes2*3/2 a2 \finalis
a4 ~ a2 ~ a2 f2*3/2 ~ f2*4/2 ~ f2*3/2 bes2*3/2 ~ bes4 a4 \finalis
d'4 c'2 a2*5/2 ~ \divisioMinima a2 ~ a2 f2*3/2 ~ f2*4/2 ~ f2*3/2 bes2*3/2 ~ bes4 a4 \finalis
}

bassMusic = {
f4 ~ f2*3/2 ~ f4 d2*4/2 c2*3/2 f2*3/2 ~ f2 \finalis
d4 ~ d2*3/2 ~ d4 bes,2*4/2 ~ bes,2*3/2 ~ bes,2*3/2 f2 \finalis
f4 ~ f2*3/2 ~ f4 d2*4/2 c2*3/2 f2*3/2 ~ f2 \finalis
f4 e2*3/4 d2*3/2 bes,2*4/2 ~ bes,2*3/2 ~ bes,2*3/2 f2 a4 \shiftRight d'2*3/4 c'2*3/2 a2*4/2 bes2*3/2 f2*3/2 ~ f2 f4 e2*3/4 d2*3/2 bes,2*4/2 ~ bes,2*3/2 ~ bes,2*3/2 f2 \finalis
r2*15/2 f2*3/2 ~ f2 \finalis
f4 e2 d2 ~ d2*3/2 a,2*4/2 bes,2*3/2 ~ bes,2*3/2 f2 \finalis
r2*8/2 f2 e2 d2*3/2 a,2*4/2 bes,2*3/2 ~ bes,2*3/2 f2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*71/2
\allowVoiceLineBreak
\voiceLine "down" "down" c'2*3/2 c'2*1/2


s2*3/2
\allowVoiceLineBreak
\voiceLine "down" "down" bes2*3/2 bes2*1/2


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
