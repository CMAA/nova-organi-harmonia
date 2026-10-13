\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.89
%(volume.page)

%Proofed 3/14

global = {
 \key e \phrygian
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
\set stanza = " * " e -- lé -- i -- son. _ }

chantMusic = {
\tieDown   g'4 a'4 ( b'4) b'4 ( b'4)  g'4 a'4 b'4 b'4 \finalis
 g'4 a'4 ( b'4) b'4 ( b'4)  g'4 a'4 b'4 b'4 \finalis
 \forceBreak
 g'4 a'4 ( b'4) b'4 ( b'4)  g'4 a'4 b'4 b'4 \finalis
 d''4 b'4 ( c''4) a'4 a'4 b'4 b'4 \finalis
 d''4 b'4 ( c''4) a'4 \forceBreak
 a'4 b'4 b'4 \finalis
 d''4 b'4 ( c''4) a'4 a'4 b'4 b'4 \finalis
 g'4 a'4 ( b'4) b'4 ( b'4) g'4 a'4 b'4 b'4 \finalis
 \forceBreak
 g'4 a'4 ( b'4) b'4 ( b'4) g'4 a'4 b'4 b'4 \finalis
 g'4 a'4 ( b'4) b'4 ( b'4)  g'4 a'4 ( c''4) a'4 b'4 ( g'4) a'4 ( g'4 f'4 e'4) \finalis

}

altoMusic = {
e'4 f'2 g'2 ~ g'4 f'2 e'4 \finalis
e'4 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'4 \finalis
e'4 f'2 g'2 ~ g'4 f'2 e'4 \finalis
e'4 ~ e'2*3/2 ~ e'2 ~ e'4 \finalis
g'4 ~ g'2*3/2 f'2 g'4 \finalis
e'4 ~ e'2*3/2 ~ e'2 ~ e'4 \finalis
r4 f'2 g'2 ~ g'4 f'2 g'4 \finalis
e'4 f'2 g'2 ~ g'4 f'2 e'4 \finalis
e'4 ~ e'2 ~ e'2 d'4 c'2*3/2 d'2 b2 c'2 \finalis
}

tenorMusic = {
b4 c'2 d'2*3/2 c'2 b4 \finalis
b4 a2 g2*3/2 ~ g2 ~ g4 \finalis
b4 c'2 d'2*3/2 c'2 b4 \finalis
g4 a2*3/2 ~ a2 g4 \finalis
b4 c'2*3/2 ~ c'2 b4 \finalis
g4 a2*3/2 ~ a2 g4 \finalis
e'4 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'4 \finalis
b4 c'2 d'2*3/2 c'2 b4 \finalis
b4 a2 g2 e4 ~ e2*3/2 f2 d2 a2 \finalis
}

bassMusic = {
e4 ~ e2 ~ e2*3/2 ~ e2 ~ e4 \finalis
e4 ~ e2 ~ e2*3/2 c2 e4 \finalis
e4 ~ e2 ~ e2*3/2 ~ e2 ~ e4 \finalis
c4 ~ c2*3/2 e2 ~ e4 \finalis
e4 ~ e2*3/2 ~ e2 ~ e4 \finalis
c4 ~ c2*3/2 e2 ~ e4 \finalis
r2*9/2 \finalis
e4 ~ e2 ~ e2*3/2 ~ e2 ~ e4 \finalis
c4 ~ c2 ~ c2 b,4 a,2*3/2 ~ a,2 ~ a,2 ~ a,2 \finalis
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
        "III."
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
