\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.47
%(volume.page)

%Proofed 3/14

global = {
 \key d \major
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e, _ _ _ 
\set stanza = " * " e -- _ lé -- i -- son. 
Ký -- ri -- e, _ _ _ e -- _ lé -- i -- son. 
Ký -- ri -- e, _ _ _ e -- _ lé -- i -- son. 
Chri -- ste, _ _ _ e -- _ lé -- i -- son. 
Chri -- ste, _ _ _ e -- _ lé -- i -- son. 
Chri -- ste, _ _ _ e -- _ lé -- i -- son. 
Ký -- ri -- e, _ _ _ _ e -- _ lé -- i -- son. 
Ký -- ri -- e, _ _ _ _ e -- _ lé -- i -- son. 
Ký -- ri -- e _ 
\set stanza = " * " _ _ _ _ _ _ 
\set stanza = " ** "  e -- _ lé -- i -- son. }

chantMusic = {
\tieDown   d'4  fis'4 ( g'4 a'4) a'4. b'4 ( a'4 g'4 a'4.) d''4 ( b'4 a'4 g'4) a'4 ( b'4 a'4) \divisioMinima
  a'4 ( fis'4 e'4 d'4) g'4 ( fis'4) e'4 e'4 d'4 \finalis
 \forceBreak
 d'4  fis'4 ( g'4 a'4) a'4. b'4 ( a'4 g'4 a'4.) d''4 ( b'4 a'4 g'4) a'4 ( b'4 a'4) \divisioMinima
  a'4 ( fis'4 e'4 d'4) g'4 ( fis'4) e'4 e'4 d'4 \finalis
 \forceBreak
 d'4  fis'4 ( g'4 a'4) a'4. b'4 ( a'4 g'4 a'4.) d''4 ( b'4 a'4 g'4) a'4 ( b'4 a'4) \divisioMinima
  a'4 ( fis'4 e'4 d'4) g'4 ( fis'4) e'4 e'4 d'4 \finalis
 \forceBreak
 fis'4 fis'4 ( e'4 d'4 cis'4 d'4.)  d'4 fis'4 ( g'4 a'4.) b'4 ( a'4 g'4 a'4) \divisioMinima
  a'4 ( fis'4 e'4 d'4) g'4 ( fis'4) e'4 e'4 d'4 \finalis
 \forceBreak
 fis'4 fis'4 ( e'4 d'4 cis'4 d'4.)  d'4 fis'4 ( g'4 a'4.) b'4 ( a'4 g'4 a'4) \divisioMinima
  a'4 ( fis'4 e'4 d'4) g'4 ( fis'4) e'4 e'4 d'4 \finalis
  \forceBreak
 fis'4 fis'4 ( e'4 d'4 cis'4 d'4.)  d'4 fis'4 ( g'4 a'4.) b'4 ( a'4 g'4 a'4) \divisioMinima
  a'4 ( fis'4 e'4 d'4) g'4 ( fis'4) e'4 e'4 d'4 \finalis
 \forceBreak
 d''4 cis''4 d''4 ( cis''4 b'4) cis''4 ( d''4 a'4.)  d''4 ( a'4) b'4. fis'4 ( g'4 a'4) \divisioMinima
  a'4 ( fis'4 e'4 d'4) g'4 ( fis'4) e'4 e'4 d'4 \finalis
 \forceBreak
 d''4 cis''4 d''4 ( cis''4 b'4) cis''4 ( d''4 a'4.)  d''4 ( a'4) b'4. fis'4 ( g'4 a'4) \divisioMinima
  a'4 ( fis'4 e'4 d'4) g'4 ( fis'4) e'4 e'4 d'4 \finalis
 \forceBreak
 d''4 cis''4 d''4 ( cis''4 b'4) cis''4 ( d''4 a'4) \divisioMinima
 d''4 ( cis''4) d''4 ( cis''4 b'4) cis''4 ( d''4 a'4.)  d''4 ( a'4) b'4. fis'4 ( g'4 a'4) \divisioMinima
  a'4 ( fis'4 e'4 d'4) g'4 ( fis'4) e'4 e'4 d'4 \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*3/2 e'2*3/4 fis'2*4/2 e'2*3/2 d'2*4/2 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 e'4 d'4 \finalis
d'4 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*4/2 e'2*3/2 d'2*4/2 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 e'4 d'4 \finalis
d'4 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*3/2 e'2*3/4 fis'2*4/2 e'2*3/2 d'2*4/2 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 e'4 d'4 \finalis
r2*13/4 d'4 ~ d'2*7/4 ~ d'2*4/2 cis'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 e'4 d'4 \finalis
r2*13/4 d'4 ~ d'2*7/4 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 e'4 d'4 \finalis
r2*13/4 d'4 ~ d'2*7/4 ~ d'2*4/2 cis'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 d'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 e'4 d'4 \finalis
fis'2 g'2*3/2 a'2 ~ a'4. d'2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2*4/2 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 e'4 d'4 \finalis
fis'2 e'2*3/2 d'2*7/4 ~ d'2 ~ d'2*3/4 ~ d'2*3/2 cis'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 e'4 d'4 \finalis
fis'2 g'2*3/2 a'2 ~ a'4 \divisioMinima
g'2 fis'2*3/2 ~ fis'2 e'2*3/4 d'2 ~ d'2*3/4 ~ d'2*3/2 cis'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 ~ d'2 a2 ~ a4 \finalis
}

tenorMusic = {
r4 d'2*3/2 cis'2*3/4 b2*3/2 cis'2*3/4 d'2*4/2 ~ d'2*3/2 ~ \divisioMinima d'2*4/2 b2 g2 fis4 \finalis
d4 a2*3/2 fis2*3/4 e2*3/2 fis2*3/4 ~ fis2*4/2 a2*3/2 ~ \divisioMinima a2*4/2 ~ a2 g2 fis4 \finalis
r4 d'2*3/2 cis'2*3/4 r2*3/2 cis'2*3/4 d'2*4/2 ~ d'2*3/2 ~ \divisioMinima d'2*4/2 b2 g2 fis4 \finalis
a4 b2*4/2 a2*3/4 ~ a4 ~ a2*7/4 fis2*4/2 ~ \divisioMinima fis2 ~ fis2 g2 ~ g2 fis4 \finalis
b4 ~ b2*11/4 ~ b4 ~ b2*7/4 ~ b2*4/2 \divisioMinima a2*4/2 b2 g2 fis4 \finalis
a4 b2*4/2 a2*3/4 ~ a4 ~ a2*7/4 fis2*4/2 ~ \divisioMinima fis2 ~ fis2 g2 ~ g2 fis4 \finalis
d'2 ~ d'2*3/2 ~ d'2*7/4 a2 g2*3/4 a2*3/2 ~ \divisioMinima \divisioMinima a2*4/2 ~ a2 g2 fis4 \finalis
a2 g2*3/2 fis2*7/4 ~ fis2 g2*3/4 a2*3/2 \divisioMinima fis2 ~ fis2 g2 ~ g2 fis4 \finalis
d'2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 a2 ~ a2*3/4 ~ a2 g2*3/4 fis2*3/2 ~ \divisioMinima fis2 ~ fis2 g2 ~ g2 fis4 \finalis
}

bassMusic = {
r2*11/4 b2*3/2 ~ b2*3/4 a2*4/2 g2*3/2 fis2*4/2 g2 d2 ~ d4 \finalis
d4 ~ d2*3/2 ~ d2*3/4 ~ d2*3/2 ~ d2*3/4 b,2*4/2 cis2*3/2 fis2*4/2 d2 ~ d2 ~ d4 \finalis
r2*11/4 b2*3/2 ~ b2*3/4 a2*4/2 g2*3/2 fis2*4/2 g2 d2 ~ d4 \finalis
d4 ~ d2*4/2 ~ d2*3/4 cis4 b,2*7/4 ~ b,2*4/2 a,2 b,2 ~ b,2 d2 ~ d4 \finalis
r4 a2*11/4 g4 fis2*7/4 e2*4/2 fis2*4/2 g2 d2 ~ d4 \finalis
d4 ~ d2*4/2 ~ d2*3/4 cis4 b,2*7/4 ~ b,2*4/2 a,2 b,2 ~ b,2 d2 ~ d4 \finalis
b2 e2*3/2 fis2*7/4 ~ fis2 e2*3/4 b,2*3/2 fis2*4/2 d2 ~ d2 ~ d4 \finalis
d2 ~ d2*3/2 ~ d2*7/4 b,2 ~ b,2*3/4 ~ b,2*3/2 a,2 b,2 ~ b,2 d2 ~ d4 \finalis
b2 e2*3/2 fis2*3/2 \divisioMinima
e2 d2*3/2 ~ d2 cis2*3/4 b,2 ~ b,2*3/4 ~ b,2*3/2 a,2 b,2 ~ b,2 d2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*21/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*2/2 g2*1/2


s2*49/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*2/2 g2*1/2


s2*45/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*2/2 g2*1/2


s2*31/2
\allowVoiceLineBreak
\voiceLine "down" "up" d'2*7/4 d'2*1/2


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
