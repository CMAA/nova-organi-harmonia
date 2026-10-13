\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.131
%(volume.page)

%Proofed 3/14

global = {
 \key cis \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e _ _ _ 
\set stanza = " * " e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ e -- _ lé -- i -- son. 
Ký -- ri -- e _ _ _ e -- lé -- i -- son. 
Chri -- ste _ _ e -- lé -- i -- son. 
Chri -- ste _ _ e -- lé -- i -- son. 
Chri -- ste _ _ e -- lé -- i -- son. 
Ký -- ri -- e e -- _ lé -- i -- son. 
Ký -- ri -- e _ e -- lé -- i -- son. 
Ký -- ri -- e _ _ _ 
\set stanza = " * " _ _ _ _ _ 
\set stanza = " ** "  _ _ _ e -- lé -- i -- son. }

chantMusic = {
\tieDown   e'4 ( \quil fis' gis'4 a'4) gis'4 ( fis'4) fis'4 ( gis'4) a'4 ( gis'4) ~ gis'4 ( e'4.) fis'4 ( e'4 cis'4) d'4 ( cis'4 b4 cis'4) \divisioMinima
 e'4 ( fis'4 a'4 fis'4 e'4 d'4) \forceBreak
 e'4 e'4 cis'4 \finalis
 a4 ( \quil b cis'4 d'4) cis'4 ( b4) b4 ( cis'4) d'4 ( cis'4) ~ cis'4 ( b4.) cis'4 ( b4 a4) b4 ( cis'4 cis'4) \divisioMinima
 a4 ( \quil b cis'4 d'4 cis'4) ~ cis'4 ( b4.) \forceBreak
 cis'4 ( b4 a4) b4 cis'4 cis'4 \finalis
 e'4 ( \quil fis' gis'4 a'4) gis'4 ( fis'4) fis'4 ( gis'4) a'4 ( gis'4) ~ gis'4 ( e'4.) fis'4 ( e'4 cis'4) d'4 ( cis'4 b4 cis'4) \divisioMinima
 \forceBreak
 e'4 ( fis'4 a'4 fis'4 e'4 d'4) e'4 e'4 cis'4 \finalis
 a'4 ( b'4 a'4) gis'4 ( fis'4 a'4.) fis'4 ( a'4 gis'4) e'4 ( d'4 fis'4) \divisioMinima
 fis'4 ( a'4 gis'4 fis'4 e'4 fis'4) cis'4 d'4 e'4 \finalis
 \forceBreak
 e'4 ( fis'4 cis'4) d'4 ( e'4 e'4) e'4 ( fis'4 cis'4) d'4 ( e'4 e'4) \divisioMinima
 b4 ( e'4) ~ e'4 ( d'4 cis'4 b4) cis'4 d'4 e'4 \finalis
 a'4 ( b'4 a'4) gis'4 ( fis'4 a'4.) \forceBreak
 fis'4 ( a'4 gis'4) e'4 ( d'4 fis'4) \divisioMinima
 fis'4 ( a'4 gis'4 fis'4 e'4 fis'4) cis'4 d'4 e'4 \finalis
  b'4 ( cis''4 \quil d'' e''4 e''4) cis''4 e''4 ( d''4 cis''4) b'4 ( d''4 cis''4 b'4) cis''4 ( a'4) \forceBreak
 cis''4 b'4 b'4 \finalis
 b'4 ( b'4 cis''4) b'4 ( a'4) a'4. fis'4 ( a'4 gis'4 e'4) fis'4 ( d'4 fis'4) fis'4 ( gis'4) e'4 e'4 \finalis
 b'4 ( cis''4 \quil d'' e''4 e''4) cis''4 \forceBreak
 e''4 ( d''4 cis''4) b'4 ( d''4 cis''4 b'4) cis''4 ( a'4) cis''4 ( cis''4 b'4) \divisioMinima
 b'4 ( cis''4 \quil d'' e''4) ~ e''4 ( d''4 cis''4.) e''4 ( d''4 cis''4 b'4) d''4 ( cis''4 b'4) cis''4 ( a'4) cis''4 ( cis''4 b'4) \divisioMinima
 \forceBreak
 b'4 ( a'4) b'4 ( cis''4 b'4 a'4.) fis'4 ( a'4 gis'4 e'4) fis'4 ( d'4 fis'4) fis'4 ( gis'4) e'4 e'4 \finalis

}

altoMusic = {
e'2*4/2 ~ e'2 cis'2*3/2 e'2 ~ e'4. cis'2 ~ cis'4 a2*4/2 \divisioMinima
cis'2*3/2 d'2 ~ d'4 b2 a4 \finalis
fis2*4/2 ~ fis2 ~ fis2*3/2 ~ fis2 ~ fis2*3/4 ~ fis2*3/2 gis2*3/2 \divisioMinima
a2 ~ a2 fis2 ~ fis2*3/4 ~ fis2 a4 ~ a2 ~ a4 \finalis
e'2*4/2 cis'2 ~ cis'2*3/2 ~ cis'2*7/4 ~ cis'2 ~ cis'4 a2 gis2 \divisioMinima
a2*3/2 ~ a2*3/2 ~ a2 ~ a4 \finalis
cis'2*3/2 ~ cis'2*7/4 ~ cis'2*3/2 b2*3/2 \divisioMinima
cis'2*6/2 a2 b4 \finalis
a2*3/2 b2*3/2 cis'2 -\tweak Glissando.Y-offset #-0.8 \glissando cis'4 r2*4/2 a2*3/2 gis2 a2 cis'4 \finalis
e'2*3/2 d'2*7/4 cis'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 r4 cis'4 ~ \divisioMinima
cis'2*4/2 b2 a2 b4 r4 a'2 b'2*3/2 a'2*3/2 fis'2*4/2 a'2 fis'2 ~ fis'4 \finalis
e'2*3/2 ~ e'2 ~ e'2*3/4 cis'2*4/2 d'2*3/2 b2*3/2 b4 \finalis
fis'2*3/2 e'2*3/2 fis'2*3/2 ~ fis'2*4/2 ~ fis'2 e'2*3/2 \divisioMinima
fis'2*3/2 e'2 fis'2*5/4 ~ fis'2*4/2 ~ fis'2*3/2 ~ fis'2 e'2*3/2 \divisioMinima
cis'2 d'2*9/4 e'2*3/2 ~ e'4 d'2*3/2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
a2*4/2 b2 a2*3/2 b2*7/4 a2*3/2 r2*4/2 \divisioMinima
a2*3/2 ~ a2*3/2 gis2 \shiftRight fis4 \finalis
fis2*4/2 e2 d2*3/2 e2 d2*3/4 cis2*3/2 ~ cis2*3/2 ~ \divisioMinima
cis2 e2 ~ e2 d2*3/4 cis2*3/2 d2 e4 \finalis
b2*4/2 ~ b2 a2*3/2 e2*7/4 gis2*3/2 fis2 \shiftRight e2 ~ \divisioMinima
e2*3/2 d2*3/2 cis2 e4 \finalis
fis2*3/2 ~ fis2*7/4 ~ fis2*3/2 ~ fis2*3/2 ~ \divisioMinima
fis2*6/2 ~ fis2 gis4 \finalis
a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ a4 gis2 ~ \divisioMinima
gis4 fis2*3/2 \shiftRight e2 a2 ~ a4 \finalis
a2*3/2 ~ a2*7/4 ~ a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2*4/2 gis2 fis2 gis4 d'4 e'2 ~ e'2*3/2 ~ e'2*3/2 d'2*4/2 e'2 ~ e'2 d'4 \finalis
gis2*3/2 ~ gis2 a2*3/4 ~ a2*4/2 ~ a2*3/2 ~ a2*3/2 gis4 \finalis
a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ a2*4/2 ~ a2 gis2*3/2 \divisioMinima
fis2*3/2 a2 ~ a2*5/4 ~ a2*4/2 ~ a2*3/2 ~ a2 gis2*3/2 \divisioMinima
fis2 ~ fis2*9/4 a2*4/2 ~ a2*3/2 ~ a2*3/2 gis4 \finalis
}

bassMusic = {
cis2*4/2 ~ cis2 fis2*3/2 e2*7/4 \shiftRight a2*3/2 fis2*4/2 ~ \divisioMinima
fis2*3/2 ~ fis2*3/2 ~ fis2 ~ fis4 \finalis
r2*9/2 b,2 ~ b,2*3/4 fis,2*3/2 e,2*3/2 \divisioMinima
fis,2 ~ fis,2 b,2 ~ b,2*3/4 a,2*3/2 ~ a,2 ~ a,4 \finalis
e2*4/2 fis2 ~ fis2*3/2 cis2*7/4 ~ cis2*3/2 e2 ~ e2 \divisioMinima
cis2*3/2 \shiftRight d2*3/2 a,2 ~ a,4 \finalis
fis,2*3/2 gis,2*7/4 a,2*3/2 b,2*3/2 \divisioMinima
a,2*6/2 e2 ~ e4 \finalis
r2*9/2 e4 ~ e2 ~ \divisioMinima
e4 ~ e2*3/2 ~ e2 r2*3/2 \finalis
cis2*3/2 b,2*7/4 fis2*3/2 ~ fis2*3/2 \divisioMinima
e2*4/2 ~ e2 ~ e2 ~ e4 a4 ~ a2 gis2*3/2 fis2*3/2 b2*4/2 a2 b2 ~ b4 \finalis
e2*3/2 cis2 ~ cis2*3/4 fis2*4/2 b,2*3/2 e2*3/2 ~ e4 \finalis
d2*3/2 cis2*3/2 b,2*3/2 d2*4/2 e2 ~ e2*3/2 \divisioMinima
d2*3/2 cis2 e2*5/4 d2*4/2 b,2*3/2 e2 ~ e2*3/2 \divisioMinima
r2 d2*9/4 cis2*4/2 d2*3/2 e2*3/2 ~ e4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*25/4
\allowVoiceLineBreak
\voiceLine "down" "up" a2*3/2 a2*0
\voiceLine "up" "down" cis'2*4/2 a2*1/2

s2*3/2

}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "VIII."
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
