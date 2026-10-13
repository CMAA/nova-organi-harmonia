\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.135
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e _ _ 
\set stanza = " * " _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ e -- lé -- i -- son. 
Chri -- ste _ e -- lé -- i -- son. 
Chri -- ste _ e -- lé -- i -- son. 
Chri -- ste _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ 
\set stanza = " * " e -- lé -- i -- son. }

chantMusic = {
\tieDown   e'4 e'4 e'4 ( d'4 b4.) d'4 e'4 ( fis'4 e'4) \divisioMinima
 e'4 ( a'4) ~ a'4 ( gis'4 e'4) fis'4 ( e'4) d'4 e'4 e'4 \finalis
 \forceBreak
  e'4 e'4 e'4 ( d'4 b4.) d'4 e'4 ( fis'4 e'4) \divisioMinima
 e'4 ( a'4) ~ a'4 ( gis'4 e'4) fis'4 ( e'4) d'4 e'4 e'4 \finalis
  e'4 e'4 \forceBreak
 e'4 ( d'4 b4.) d'4 e'4 ( fis'4 e'4) \divisioMinima
 e'4 ( a'4) ~ a'4 ( gis'4 e'4) fis'4 ( e'4) d'4 e'4 e'4 \finalis
 fis'4 e'4 ( a'4 gis'4 e'4) ~ e'4 ( d'4 fis'4) \divisioMinima
 \forceBreak
 fis'4 ( a'4) ~ a'4 ( gis'4 fis'4 e'4) fis'4 ( gis'4 e'4) ~ e'4 ( d'4 cis'4) d'4 e'4 e'4 \finalis
 fis'4 e'4 ( a'4 gis'4 e'4) ~ e'4 ( d'4 fis'4) \divisioMinima
 fis'4 ( a'4) ~ a'4 ( gis'4 fis'4 e'4) \forceBreak
 fis'4 ( gis'4 e'4) ~ e'4 ( d'4 cis'4) d'4 e'4 e'4 \finalis
 fis'4 e'4 ( a'4 gis'4 e'4) ~ e'4 ( d'4 fis'4) \divisioMinima
 fis'4 ( a'4) ~ a'4 ( gis'4 fis'4 e'4) fis'4 ( gis'4 e'4) ~ e'4 ( d'4 cis'4) \forceBreak
 d'4 e'4 e'4 \finalis
 e'4 ( b'4) a'4 ( b'4) b'4. d''4 ( b'4) ~ b'4 ( a'4 cis''4.) d''4 ( e''4 cis''4 b'4) d''4 ( cis''4 b'4) \divisioMinima
 b'4 ( a'4) ~ a'4 ( gis'4 fis'4 e'4) \forceBreak
 fis'4 ( gis'4 fis'4) fis'4 e'4 \finalis
 e'4 ( b'4) a'4 ( b'4) b'4. d''4 ( b'4) ~ b'4 ( a'4 cis''4.) d''4 ( e''4 cis''4 b'4) d''4 ( cis''4 b'4) \divisioMinima
 b'4 ( a'4) ~ a'4 ( gis'4 fis'4 e'4) \forceBreak
 fis'4 ( gis'4 fis'4) fis'4 e'4 \finalis
 e'4 ( b'4) a'4 ( b'4) b'4. d''4 ( b'4) ~ b'4 ( a'4 cis''4.) d''4 ( e''4 cis''4 b'4) d''4 ( cis''4 b'4) \divisioMinima
 \forceBreak
 b'4 ( a'4) ~ a'4 ( gis'4 fis'4 e'4) fis'4 ( gis'4 fis'4) fis'4 e'4 \finalis

}

altoMusic = {
cis'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 r2*7/4 cis'2*3/2 ~ \divisioMinima
cis'4 ~ cis'2*4/2 ~ cis'2 d'2 b4 a2 fis2*9/4 b2*3/2 ~ \divisioMinima
b4 a2*4/2 ~ a2 ~ a2 ~ a4 b2 a2*9/4 b2*3/2 \divisioMinima
e'4 ~ e'2*3/2 ~ e'4 b2 a2 b4 \finalis
cis'4 ~ cis'2*3/2 b2 d'2 ~ \divisioMinima
d'4 e'2*4/2 ~ e'4 cis'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 r2*3/2 a2 b4 \finalis
r4 cis'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 e'4 d'4 cis'4 \divisioMinima
d'4 e'2*4/2 ~ e'4 b2 ~ b2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 r2*4/2 \finalis
cis'4 ~ cis'2*3/2 b2 d'2 ~ \divisioMinima
d'4 e'2*4/2 ~ e'4 b2 ~ b2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 cis'4 b2 ~ b4 \finalis
e'2 fis'2 ~ fis'2*5/4 ~ fis'2*9/4 ~ fis'2 ~ fis'2 ~ fis'2*3/2 ~ \divisioMinima
fis'4 e'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 s2*6/2 \finalis
e'2 ~ e'2 fis'2*5/4 ~ fis'2*9/4 ~ fis'2*4/2 ~ fis'2*3/2 ~ \divisioMinima
fis'4 e'2*3/2 ~ e'2 d'2*3/2 b2 \finalis
e'2 ~ e'2 fis'2*5/4 ~ fis'2*9/4 ~ fis'2*4/2 d'2*3/2 ~ \divisioMinima
d'4 e'2*3/2 ~ e'2 d'2*3/2 b2 \finalis
}

tenorMusic = {
a2 ~ a2*9/4 ~ a2*3/2 ~ \divisioMinima
a4 ~ a2*4/2 ~ a2 ~ a2 gis4 \finalis
cis2 b,2*9/4 ~ b,2*3/2 \divisioMinima
cis4 ~ cis2*4/2 d2 ~ d2 cis4 \finalis
gis2 fis2*9/4 gis2*3/2 ~ \divisioMinima
gis4 a2*4/2 ~ a2 fis2 gis4 \finalis
a4 ~ a2*3/2 fis2 b2 \divisioMinima
a4 ~ a2*5/2 gis2 a2*4/2 fis2 gis4 \finalis
r4 a2*3/2 ~ a2*3/2 ~ a4 ~ \divisioMinima
a4 b2*5/2 a2 gis2 a2 b2 cis'4 \finalis
a4 ~ a2*3/2 fis2 b2 \divisioMinima
a4 ~ a2*5/2 ~ a2 gis2 a2 ~ a2 gis4 \finalis
e'2 ~ e'2 d'2*5/4 ~ d'2*9/4 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 cis'2*5/2 ~ cis'2*3/2 b2 \finalis
gis2 b2 ~ b2*5/4 cis'2*9/4 a2*4/2 b2*3/2 \divisioMinima
r4 cis'2*3/2 ~ cis'2 b2*3/2 a4 gis4 \finalis
gis2 b2 ~ b2*5/4 cis'2*9/4 b2*4/2 fis2*3/2 ~ \divisioMinima
fis4 e2*3/2 a2 ~ a2*3/2 ~ a4 gis4 \finalis
}

bassMusic = {
r2 fis2*9/4 \shiftRight a2*3/2 \divisioMinima
r4 gis2*4/2 fis2 ~ fis2 e4 a,2 \shiftRight b,2*9/4 gis,2*3/2 ~ \divisioMinima
gis,4 fis,2*4/2 ~ fis,2 a,2 ~ a,4 e2 ~ e2*9/4 ~ e2*3/2 \divisioMinima
cis4 ~ cis2*4/2 e2 ~ e2 ~ e4 \finalis
r4 a,2*3/2 b,2 ~ b,2 ~ \divisioMinima
b,4 cis2*5/2 ~ cis2 fis2*4/2 e2 ~ e4 \finalis
r2*4/2 fis2*3/2 ~ fis4 ~ \divisioMinima
fis4 e2*5/2 ~ e2 ~ e2 fis2 a2 ~ a4 \finalis
r4 a,2*3/2 b,2 ~ b,2 ~ \divisioMinima
b,4 cis2*5/2 e2 ~ e2 fis2 ~ fis2 e4 \finalis
r2*13/4 cis'2*9/4 b2 a2 b2*3/2 ~ \divisioMinima
b4 \shiftRight cis'2*5/2 a2*3/2 gis2 \finalis
e2 ~ e2 d2*5/4 fis2*9/4 ~ fis2*4/2 \shiftRight b2*3/2 ~ \divisioMinima
b4 ~ b2*3/2 a2 ~ a2*3/2 e2 \finalis
e2 ~ e2 d2*5/4 fis2*9/4 b,2*4/2 ~ b,2*3/2 ~ \divisioMinima
b,4 cis2*3/2 ~ cis2 b,2*3/2 e2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*107/4
\allowVoiceLineBreak
\voiceLine "down" "up" a2*2/2 a2*1/2


s2*6/2
\allowVoiceLineBreak
\voiceLine "up" "down" b2*2/2 b2*1/2


s2*9/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" fis2*4/2 fis2*1/2


s2*11/2
\allowVoiceLineBreak
\voiceLine "down" "up" b2*5/2 b2*1/2


s2*3/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" a2*2/2 a2*1/2


s2*6/2
\allowVoiceLineBreak
\voiceLine "up" "down" b2*2/2 b2*1/2


s2*69/2
\allowVoiceLineBreak
\voiceLine "down" "up" b2*3/2 b2*1/2


}

voiceLinesTwo = {
\voiceLineStyle


s2*107/4


s2*6/2


s2*9/2

s2*11/2


s2*3/2


s2*29/2
s2*69/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" a2*3/2 a2*1/2


}


\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "VIII"
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
	\new Voice {
        \voiceThree \global \voiceLinesTwo
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
