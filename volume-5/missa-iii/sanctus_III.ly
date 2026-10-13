\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.21
%(volume.page)

%Proofed 3/14

global = {
 \key fis \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- _ _ ctus, 
\set stanza = " * " San -- ctus, San -- _ _ ctus Dó -- mi -- nus De -- us Sá -- ba -- oth. 
Ple -- ni sunt cœ -- li et ter -- ra gló -- _ ri -- a tu -- a. 
Ho -- _ sán -- na in ex -- cél -- sis. 
Be -- ne -- díc -- tus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- _ sán -- na in ex -- cél -- sis. }

chantMusic = {
\tieDown   a'4 ( b'4) d''4. ~ d''4 ( b'4 a'4 g'4) a'4 ( a'4) fis'4 \divisioMinima
 a'4 ( a'4 \once \tweak #'font-size #-4 g' ) e'4 ( fis'4) \divisioMinima
 a'4 ( b'4) d''4. ~ d''4 ( b'4 a'4 g'4) a'4 ( a'4) fis'4 \divisioMinima
 \forceBreak
 g'4 ( fis'4) e'4 ( fis'4) fis'4 e'4 e'4 ( g'4 a'4 b'4) a'4 ( g'4) e'4 ( fis'4) fis'4 \divisioMaxima
 d'4 e'4 ( g'4) g'4 fis'4 ( g'4) a'4 ( g'4) e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 fis'4 \divisioMinima
 \forceBreak
 a'4 ( b'4) d''4. ~ d''4 ( b'4 a'4 g'4) a'4 a'4 ( b'4 a'4) fis'4 fis'4 \divisioMaxima
 a'4 ( fis'4) g'4 ( fis'4 e'4) e'4 ( g'4 a'4 b'4) a'4 ( g'4) a'4 ( b'4) a'4 ( g'4) fis'4 fis'4 \divisioMaxima
 \forceBreak
 a'4 b'4 ( d''4) d''4 ( cis''4) b'4 b'4 ( a'4) b'4 ( cis''4) b'4 \divisioMinima
 b'4 a'4 ( g'4) a'4 a'4 ( b'4 a'4) g'4 ( fis'4) e'4 ( fis'4) fis'4 \divisioMaxima
 \forceBreak
 a'4 ( fis'4) g'4 ( fis'4 e'4) e'4 ( g'4 a'4 b'4) a'4 ( g'4) a'4 ( b'4) a'4 ( g'4) fis'4 fis'4 \finalis

}

altoMusic = {
fis'2 ~ fis'2*3/4 g'2*4/2 -\tweak Glissando.Y-offset #-1.2 \glissando a'4 a'4 fis'4 \divisioMinima
e'2*3/2 d'2 ~ \divisioMinima
d'2 fis'2*3/4 g'2*4/2 e'2 d'4 ~ \divisioMinima
d'2*4/2 ~ d'4 b4 ~ b2*4/2 d'2 ~ d'2 ~ d'4 \divisioMaxima
r4 b2 ~ b4 ~ b2 ~ b2 e'2 ~ e'4 d'4 ~ \divisioMinima
d'2 fis'2*3/4 g'2*5/2 e'2*3/2 ~ e'4 d'4 ~ \divisioMaxima
d'2 ~ d'2*3/2 b2*4/2 d'2 ~ d'2 cis'2 e'4 d'4 \divisioMaxima
fis'4 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'2 ~ fis'4 ~ \divisioMinima
fis'4 e'2*3/2 ~ e'2*3/2 d'2 ~ d'2 ~ d'4 ~ \divisioMaxima
d'2 ~ d'2*3/2 b2 ~ b2 d'2 ~ d'2 cis'2 e'4 d'4 \finalis
}

tenorMusic = {
d'2 ~ d'2*3/4 ~ d'2*4/2 ~ d'2 ~ d'4 \divisioMinima
b2*3/2 ~ b2 \divisioMinima
a2 b2*3/4 ~ b2*4/2 a2 ~ a4 \divisioMinima
b2*4/2 a4 ~ a4 g2*4/2 ~ g2 b2 a4 \divisioMaxima
g4 ~ g2 ~ g4 a2 g2 b2 ~ b2 \divisioMinima
a2 b2*3/4 ~ b2*5/2 a2*3/2 ~ a2 \divisioMaxima
fis2 a2*3/2 g2*4/2 ~ g2 e2 ~ e2 b2 \divisioMaxima
d'4 ~ d'2 b2 d'4 cis'2 e'2 d'4 ~ \divisioMinima
d'4 b2*3/2 a2*3/2 b2 g2 a4 \divisioMaxima
fis2 a2*3/2 ~ a2 g2 ~ g2 e2 ~ e2 b2 \finalis
}

bassMusic = {
r2 b2*3/4 g2*4/2 fis2 d4 \divisioMinima
e2*3/2 b,2 \divisioMinima
fis2 d2*3/4 e2*4/2 cis2 d4 \divisioMinima
b,2*4/2 ~ b,4 e4 ~ e2*4/2 b,2 ~ b,2 d4 \divisioMaxima
r2*3/2 e4 ~ e2 ~ e2 g2 \shiftRight b2 \divisioMinima
fis2 d2*3/4 e2*5/2 cis2*3/2 d2 ~ \divisioMaxima
d2 ~ d2*3/2 e2*4/2 b,2 ~ b,2 ~ b,2 ~ b,2 \divisioMaxima
r4 b2 ~ \shiftRight b2*3/2 ~ b2 ~ b2 ~ b4 ~ \divisioMinima
b4 e2*3/2 cis2*3/2 b,2 ~ b,2 d4 ~ \divisioMaxima
d2 ~ d2*3/2 e2 ~ e2 b,2 ~ b,2 ~ b,2 ~ b,2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*47/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*2/2 g2*1/2


s2*89/4
\allowVoiceLineBreak
\voiceLine "down" "down" b2*1/2 b2*1/2


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
