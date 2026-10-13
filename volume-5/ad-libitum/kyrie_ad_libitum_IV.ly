\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.128
%(volume.page)

%Proofed 3/14

global = {
 \key d \major
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e _ 
\set stanza = " * " _ _ e -- _ lé -- i -- son. 
Ký -- ri -- e _ e -- _ _ lé -- i -- son. 
Ký -- ri -- e _ _ _ e -- _ lé -- i -- son. 
Chri -- ste _ _ _ e -- lé -- i -- son. 
Chri -- ste _ _ e -- _ _ lé -- i -- son. 
Chri -- ste _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ _ _ e -- _ lé -- i -- son. 
Ký -- ri -- e e -- _ lé -- i -- son. 
Ký -- ri -- e _ _ _ _ _ 
\set stanza = " * " 
_ _ _ _ _ 
\set stanza = " ** "  e -- _ lé -- i -- son. }

chantMusic = {
\tieDown   d'4 fis'4 ( a'4) a'4 ( fis'4) a'4 ( b'4) ~ b'4 ( a'4.) cis''4 ( b'4 a'4) b'4 ( fis'4)  a'4 ( g'!4 fis'4 e'4) fis'4 ( d'4) e'4 ( fis'4 e'4) e'4 d'4 \finalis
 \forceBreak
 d'4 e'4 ( fis'4)  fis'4 ( e'4) g'!4 ( fis'4 d'4)  d'4 ( fis'4 a'4 b'4) ~ b'4 ( a'4 fis'4 e'4) g'!4 ( fis'4 e'4) fis'4 ( d'4) e'4 ( fis'4 e'4) e'4 d'4 \finalis
 \forceBreak
 d'4 fis'4 ( a'4) a'4 ( fis'4) a'4 ( b'4) ~ b'4 ( a'4.) cis''4 ( b'4 a'4) b'4 ( fis'4)  a'4 ( g'!4 fis'4 e'4) fis'4 ( d'4) e'4 ( fis'4 e'4) e'4 d'4 \finalis
 a'4  a'4 ( b'4 a'4 g'4) \forceBreak
 a'4 ( g'4 fis'4 e'4) fis'4 ( g'4 a'4.) b'4 ( a'4 g'4 a'4) \divisioMinima
 b'4 ( cis''4 b'4 a'4 a'4)  g'4 a'4 a'4 \finalis
 a'4  fis'4 a'4 ( g'4 fis'4 e'4) fis'4 ( d'4) \divisioMinima
 \forceBreak
  d'4 ( fis'4 a'4 b'4) ~ b'4 ( a'4 fis'4 e'4) g'4 ( fis'4 e'4) fis'4 ( d'4) e'4 ( fis'4 e'4) e'4 d'4 \finalis
 a'4  a'4 ( b'4 a'4 g'4) a'4 ( g'4 fis'4 e'4) \forceBreak
 fis'4 ( g'4 a'4.) b'4 ( a'4 g'4 a'4) \divisioMinima
 b'4 ( cis''4 b'4 a'4 a'4)  g'4 a'4 a'4 \finalis
 a'4 ( b'4 a'4)  g'4 ( a'4) a'4. d''4 ( cis''4) d''4 ( e''4 d''4 cis''4 b'4 a'4.) \forceBreak
 b'4 ( cis''4 a'4.) fis'4 ( g'4 a'4) b'4 ( a'4) \divisioMinima
  fis'4 ( a'4 g'4 fis'4 e'4) fis'4 ( d'4) e'4 ( fis'4 e'4) e'4 d'4 \finalis
 d''4 ( cis''4) d''4 ( e''4) e''4 ( d''4 cis''4 b'4 a'4) \divisioMinima
 \forceBreak
  b'4 ( cis''4 a'4) ~ a'4 ( g'4.) b'4 ( d''4 cis''4 b'4 a'4 a'4) g'4 a'4 a'4 \finalis
 a'4 ( b'4 a'4)  g'4 ( a'4) a'4. d''4 ( cis''4) d''4 ( e''4 d''4 cis''4 b'4 a'4.) b'4 ( cis''4 a'4.) \forceBreak
 fis'4 ( g'4 a'4) b'4 ( a'4) \divisioMaior
 d''4 ( cis''4) d''4 ( e''4 d''4 cis''4 b'4 a'4.)  b'4 ( cis''4 a'4.) fis'4 ( g'4 a'4) b'4 ( a'4) \divisioMinima
  fis'4 ( a'4 g'4 fis'4 e'4) fis'4 ( d'4) e'4 ( fis'4 e'4) e'4 d'4 \finalis

}

altoMusic = {
d'4 ~ d'2 ~ d'2*3/2 e'2*7/4 ~ e'2*3/2 d'2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 a2 \finalis
d'4 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'4 cis'2 d'2*3/2 ~ d'2 b2*3/2 d'2 a2*3/2 ~ a2 \finalis
r4 fis'2 ~ fis'2*3/2 e'2*7/4 fis'2*3/2 ~ fis'2 d'2*4/2 ~ d'4 ~ d'4 r2*5/2 \finalis
d'4 ~ d'2*4/2 b2*4/2 d'2*7/4 ~ d'2*4/2 ~ \divisioMinima
d'2*5/2 ~ d'2 cis'4 \finalis
d'2 ~ d'2*4/2 ~ d'2 ~ d'4 e'2 d'2*5/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 a2 \finalis
d'4 ~ d'2*4/2 ~ d'2*4/2 ~ d'2*7/4 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*5/2 ~ d'2 cis'4 \finalis
fis'2*3/2 e'2 fis'2*3/4 g'2 a'2*10/4 ~ a'4. e'2 ~ e'2*3/4 d'2*3/2 cis'2 d'2*5/2 ~ d'4 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 r2*5/2 \finalis
fis'2 ~ fis'2 e'2*5/2 ~ e'2 d'2*7/4 ~ d'2*4/2 ~ d'2 ~ d'2 cis'4 \finalis
fis'2*3/2 e'2 fis'2*3/4 g'2 a'2*10/4 ~ a'4. e'2 ~ e'2*3/4 d'2*3/2 cis'2 \divisioMaior
a'2 g'2 e'2 ~ e'2*5/4 fis'2*7/4 ~ fis'2*3/2 ~ fis'2 d'2*3/2 ~ d'2 ~ d'2 ~ d'2*3/2 a2 \finalis
}

tenorMusic = {
r4 a2 fis2*3/2 ~ fis2*7/4 ~ fis2*3/2 ~ fis2 b2*4/2 a2 g2*3/2 ~ g4 fis4 \finalis
fis4 g2 a2 g2*3/2 fis4 e2 fis2*3/2 a2 g!2*3/2 a2 g2*3/2 fis2 \finalis
r4 r2 d'2*3/2 cis'2*7/4 d'2*3/2 cis'2 b2*4/2 ~ b2 ~ b2*3/2 a2 \finalis
a4 g2*4/2 ~ g2*4/2 a2*7/4 fis2*4/2 ~ \divisioMinima
fis2*5/2 e2 ~ e4 \finalis
fis2 g2*4/2 a2 ~ \divisioMinima
a4 ~ a2 fis2*5/2 b2*3/2 a2 g2*3/2 ~ g4 fis4 \finalis
fis4 e2*4/2 fis2*4/2 ~ fis2*7/4 g2*3/2 ~ g4 \divisioMinima
fis2*5/2 e2 ~ e4 \finalis
d'2*3/2 ~ d'2 ~ d'2*3/4 ~ d'2 ~ d'2*13/4 ~ d'2 cis'2*3/4 b2*3/2 \shiftRight a2 \divisioMinima
b2*5/2 ~ b2 ~ b2*3/2 a2 \finalis
b2 a2 ~ a2*5/2 \divisioMinima
fis2 b2*7/4 g2*4/2 fis2 e2 ~ e4 \finalis
d'2*3/2 ~ d'2 ~ d'2*3/4 ~ d'2 ~ d'2*13/4 ~ d'2 cis'2*3/4 b2*3/2 \shiftRight a2 ~ \divisioMaior
a2 b2 a2 ~ a2*5/4 ~ a2*7/4 d'2*3/2 cis'2 \divisioMinima
d'2*3/2 b2 a2 g2*3/2 ~ g4 fis4 \finalis
}

bassMusic = {
r4 d2 ~ d2*3/2 cis2*7/4 b,2*3/2 ~ b,2 ~ b,2*4/2 ~ b,2 d2*3/2 ~ d2 \finalis
d4 ~ d2 ~ d2 b,2*3/2 ~ b,4 ~ b,2 ~ b,2*3/2 ~ b,2 e2*3/2 d2 ~ d2*3/2 ~ d2 \finalis
r4 r2*35/4 a2 g2*3/2 fis2 \finalis
fis4 \shiftRight g2*4/2 r2*4/2 d2*7/4 ~ d2*4/2 \divisioMinima
b,2*5/2 ~ b,2 a,4 \finalis
d2 ~ d2*4/2 ~ d2 ~ d4 cis2 b,2*5/2 ~ b,2*3/2 d2 ~ d2*3/2 ~ d2 \finalis
d4 ~ d2*4/2 ~ d2*4/2 b,2*7/4 ~ b,2*3/2 d4 ~ \divisioMinima
d2*5/2 a,2 ~ a,4 \finalis
d2*3/2 ~ d2 ~ d2*3/4 e2 fis2*13/4 a2 ~ a2*3/4 ~ a2*3/2 ~ a2 r2*5/2 a2 g2*3/2 fis2 \finalis
b,2 ~ b,2 cis2*5/2 b,2 ~ b,2*7/4 ~ b,2*4/2 d2 a,2 ~ a,4 \finalis
d2*3/2 ~ d2 ~ d2*3/4 e2 fis2*13/4 a2 ~ a2*3/4 ~ a2*3/2 ~ a2 \divisioMaior
fis2 e2 \shiftRight a2 g2*5/4 fis2*7/4 ~ fis2*3/2 ~ fis2 b,2*3/2 ~ b,2 ~ b,2 d2*3/2 ~ d2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*89/4
\allowVoiceLineBreak
\voiceLine "down" "up" a2*2/2 a2*1/2


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "V."
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
