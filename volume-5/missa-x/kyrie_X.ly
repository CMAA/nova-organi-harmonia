\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Proofed 3/14

%Page reference: page v.58
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- _ ri -- e, 
\set stanza = " * " e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Ký -- _ ri -- e e -- lé -- i -- son. 
Chri -- ste e -- lé -- i -- son. 
Chri -- ste e -- lé -- i -- son. 
Chri -- ste e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Ký -- ri -- e e -- lé -- i -- son. 
Ký -- ri -- e _ _ 
\set stanza = " * " _ _ _ _ 
\set stanza = " ** "  _ e -- lé -- i -- son. }

chantMusic = {
\tieDown   e'4 ( g'4) b'4 ( a'4) g'4 ( fis'4) e'4  fis'4 ( e'4 d'4 e'4) g'4 e'4 e'4 \finalis
 b4 d'4 ( cis'4) d'4 ( e'4) fis'4 ( e'4 d'4 e'4) \forceBreak
 g'4 e'4 e'4 \finalis
 e'4 ( g'4) b'4 ( a'4) g'4 ( fis'4) e'4 fis'4 ( e'4 d'4 e'4) g'4 e'4 e'4 \finalis
 b'4 b'4 ( a'4) b'4 ( a'4 g'4) a'4 b'4 b'4 \finalis
 \forceBreak
 b'4 ( b'4 a'4) g'4 ( fis'4 e'4) fis'4 ( e'4 d'4 e'4) g'4 e'4 e'4 \finalis
 b'4 b'4 ( a'4) b'4 ( a'4 g'4) a'4 b'4 b'4 \finalis
 \forceBreak
 d''4 e''4 d''4 ( e''4 b'4) ~ b'4 ( a'4.) b'4 ( a'4 g'4) a'4 b'4 b'4 \finalis
 b'4 ( b'4 a'4) g'4 ( fis'4) e'4 fis'4 ( e'4 d'4 e'4) g'4 e'4 e'4 \finalis
 \forceBreak
 d''4 e''4 d''4 ( e''4 b'4) ~ b'4 ( a'4.) b'4 ( a'4 g'4) a'4 ( b'4 b'4) \divisioMinima
 d''4 ( e''4) d''4 ( e''4 b'4) ~ b'4 ( a'4.) b'4 ( a'4 g'4) a'4 ( b'4 b'4) \divisioMinima
 \forceBreak
 b'4 ( a'4 g'4 fis'4 e'4) fis'4 ( e'4 d'4 e'4) g'4 e'4 e'4 \finalis

}

altoMusic = {
e'2*4/2 ~ e'2*3/2 -\tweak Glissando.Y-offset #-1.2 \glissando fis'4 e'4 d'4 e'4 b2 ~ b4 \finalis
b4 ~ b2*4/2 ~ b2*4/2 ~ b2 ~ b4 \finalis
e'2*4/2 ~ e'2*3/2 -\tweak Glissando.Y-offset #-1.2 \glissando fis'4 e'4 d'4 e'4 b2 ~ b4 \finalis
fis'4 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 \finalis
d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 b2 ~ b4 \finalis
fis'4 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 \finalis
b'2 a'2 g'2*7/4 ~ g'2 ~ g'4 e'2 fis'4 \finalis
d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 b2 b4 \finalis
b'2 a'2 g'2*7/4 ~ g'2 ~ g'4 fis'2*3/2 ~ \divisioMinima
fis'2 e'2 ~ e'2 ~ e'2*3/4 d'2*3/2 ~ d'2*3/2 \divisioMinima
b2*5/2 c'2*4/2 b2 ~ b4 \finalis
}

tenorMusic = {
g2*4/2 b2*3/2 a2*4/2 ~ a2 g4 \finalis
r4 fis2*4/2 a2*4/2 ~ a2 g4 \finalis
g2*4/2 b2*3/2 a2*4/2 ~ a2 g4 \finalis
r4 cis'2 d'2*3/2 e'2 fis'4 \finalis
fis2*3/2 g2*3/2 a2*4/2 ~ a2 g4 \finalis
r4 cis'2 d'2*3/2 e'2 fis'4 \finalis
d'2 ~ d'2 ~ d'2*7/4 b2*3/2 cis'2 d'4 \finalis
fis2*3/2 g2*3/2 a2*4/2 ~ a2 g4 \finalis
d'2 ~ d'2 ~ d'2*7/4 b2*3/2 ~ b2*3/2 \divisioMinima
a2 g2 ~ g2 fis2*3/4 g2*3/2 fis2*3/2 \divisioMinima
e2*5/2 g2*4/2 a2 g4 \finalis
}

bassMusic = {
e2*4/2 ~ e2*3/2 ~ e2*4/2 ~ e2 ~ e4 \finalis
b,4 ~ b,2*4/2 d2*4/2 e2 ~ e4 \finalis
e2*4/2 ~ e2*3/2 ~ e2*4/2 ~ e2 ~ e4 \finalis
b4 ~ b2 ~ b2*3/2 ~ b2 ~ b4 \finalis
b,2*3/2 ~ b,2*3/2 d2*4/2 e2 ~ e4 \finalis
b4 ~ b2 ~ b2*3/2 ~ b2 ~ b4 \finalis
g2 fis2 e2*7/4 ~ e2*3/2 b2 ~ b4 \finalis
b,2*3/2 ~ b,2*3/2 d2*4/2 e2 ~ e4 \finalis
g2 fis2 e2*7/4 ~ e2*3/2 d2*3/2 ~ \divisioMinima
d2 ~ d2 c2 ~ c2*3/4 b,2*3/2 ~ b,2*3/2 \divisioMinima
g,2*5/2 a,2*4/2 e2 ~ e4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*157/4
\allowVoiceLineBreak
\voiceLine "down" "down" b2*3/2 b2*1/2


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
}
