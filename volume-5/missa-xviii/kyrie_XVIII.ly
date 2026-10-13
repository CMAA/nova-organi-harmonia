\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.96
%(volume.page)

%Proofed 3/14

global = {
 \key a \locrian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e 
\set stanza = " * " e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Chri -- ste e -- lé -- i -- son. 
Chri -- ste e -- lé -- i -- son. 
Chri -- ste e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Ký -- ri -- e 
\set stanza = " * " e -- _ lé -- i -- son. }

chantMusic = {
\tieDown   bes'4 ( bes'4 a'4) g'4 ( a'4) g'4  f'4 g'4 a'4 a'4 \finalis
 bes'4 ( bes'4 a'4) g'4 ( a'4) g'4 f'4 g'4 a'4 a'4 \finalis
 \forceBreak
 bes'4 ( bes'4 a'4) g'4 ( a'4) g'4 f'4 g'4 a'4 a'4 \finalis
 c''4 c''4 ( d''4) c''4 ( bes'4) c''4 c''4 a'4 \finalis
 \forceBreak
 c''4 c''4 ( d''4) c''4 ( bes'4) c''4 c''4 a'4 \finalis
 c''4 c''4 ( d''4) c''4 ( bes'4) c''4 c''4 a'4 \finalis
 bes'4 ( bes'4 a'4) g'4 ( a'4) g'4 f'4 \forceBreak
 g'4 a'4 a'4 \finalis
 bes'4 ( bes'4 a'4) g'4 ( a'4) g'4 f'4 g'4 a'4 a'4 \finalis
 a'4 ( \quil bes' c''4) g'4 ( a'4) g'4 ( f'4) \forceBreak
  c''4 ( bes'4) c''4 ( d''4 c''4 bes'4) c''4 c''4 a'4 \finalis

}

altoMusic = {
d'2*3/2 ~ d'2*4/2 ees'2 d'4 \finalis
d'2*3/2 ees'2*4/2 c'2 d'4 \finalis
d'2*3/2 c'2*4/2 ees'2 d'4 \finalis
g'4 ~ g'2*4/2 f'2 ~ f'4 \finalis
g'4 a'2 f'2 g'2 f'4 \finalis
g'4 f'2 ~ f'2 ~ f'2 ~ f'4 \finalis
d'2*3/2 ~ d'2*4/2 ees'2 d'4 \finalis
d'2*3/2 ees'2*4/2 c'2 d'4 \finalis
f'2*3/2 ees'2 c'2 g'2 f'2*4/2 ~ f'2 ~ f'4 \finalis
}

tenorMusic = {
r2*3/2 c'2*4/2 bes2 a4 \finalis
bes2*3/2 ~ bes2*4/2 g2 f4 \finalis
r2*3/2 a2*4/2 bes2 a4 \finalis
g4 a2*4/2 ~ a2 d'4 \finalis
ees'4 ~ ees'2 d'2 ees'2 \shiftRight d'4 \finalis
g4 ~ g2 a2 bes2 d'4 \finalis
r2*3/2 a2*4/2 bes2 a4 \finalis
g2*3/2 bes2*4/2 g2 f4 \finalis
c'2*3/2 bes2 a2 g2 a2*4/2 bes4 c'4 d'4 \finalis
}

bassMusic = {
g2*3/2 ~ g2*4/2 ~ g2 d4 \finalis
g2*3/2 c2*4/2 ees2 d4 \finalis
g2*3/2 ~ g2*4/2 ~ g2 f4 \finalis
ees4 ~ ees2*4/2 d2 ~ d4 \finalis
c'4 ~ c'2 ~ c'2 ~ c'2 d'4 \finalis
ees4 d2 ~ d2 ~ d2 ~ d4 \finalis
g2*3/2 ~ g2*4/2 ~ g2 f4 \finalis
r2*3/2 c2*4/2 ees2 d4 \finalis
f2*3/2 ~ f2 ~ f2 ees2 d2*4/2 ~ d2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


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
