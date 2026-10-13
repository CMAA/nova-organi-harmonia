\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.35
%(volume.page)

%Proofed 3/14

global = {
 \key e \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e _ _ 
\set stanza = " * " e -- _ lé -- i -- son. 
Ký -- ri -- e _ e -- _ lé -- i -- son. 
Ký -- ri -- e _ _ e -- _ lé -- i -- son. 
Chri -- ste _ e -- _ lé -- i -- son. 
Chri -- ste _ e -- _ lé -- i -- son. 
Chri -- ste _ e -- _ lé -- i -- son. 
Ký -- ri -- e _ _ e -- lé -- i -- son. 
Ký -- _ ri -- e _ e -- _ lé -- i -- son. 
Ký -- ri -- e _ _ _ _ 
\set stanza = " * " 
_ _ _ _ _ 
\set stanza = " ** "  
_ _ _ e -- _ lé -- i -- son. }

chantMusic = {
\tieDown   e'4 fis'4 ( gis'4) gis'4. fis'4 ( a'4 gis'4 e'4) fis'4 ( e'4 fis'4 d'4) \divisioMinima
 d'4 ( fis'4) a'4 ( a'4 gis'4 fis'4 e'4) fis'4 ( gis'4) e'4 e'4 \finalis
 \forceBreak
 e'4 e'4 ( fis'4) fis'4 ( e'4 d'4) e'4 ( d'4) \divisioMinima
 d'4 ( fis'4) a'4 ( a'4 gis'4 fis'4 e'4) fis'4 ( gis'4) e'4 e'4 \finalis
 e'4 fis'4 ( gis'4) gis'4. fis'4 ( a'4 gis'4 e'4) fis'4 ( e'4 fis'4 d'4) \divisioMinima
 \forceBreak
 d'4 ( fis'4) a'4 ( a'4 gis'4 fis'4 e'4) fis'4 ( gis'4) e'4 e'4 \finalis
 gis'4 ( fis'4 \quil gis' a'4) gis'4. e'4 ( fis'4 e'4 d'4) \divisioMinima
 d'4 ( fis'4) a'4 ( a'4 gis'4 fis'4 e'4) fis'4 ( gis'4) e'4 e'4 \finalis
 \forceBreak
 e'4 ( cis'4 d'4) cis'4 ( b4.) e'4 ( fis'4 e'4 d'4) \divisioMinima
 d'4 ( fis'4) a'4 ( a'4 gis'4 fis'4 e'4) fis'4 ( gis'4) e'4 e'4 \finalis
 gis'4 ( fis'4 \quil gis' a'4) gis'4. e'4 ( fis'4 e'4 d'4) \divisioMinima
 \forceBreak
 d'4 ( fis'4) a'4 ( a'4 gis'4 fis'4 e'4) fis'4 ( gis'4) e'4 e'4 \finalis
 b'4 b'4 ( a'4) b'4. d''4 ( cis''4) d''4 ( e''4 d''4 cis''4 b'4) \divisioMinima
 d''4 ( cis''4 b'4 a'4) cis''4 ( d''4) b'4 b'4 \finalis
 \forceBreak
 b'4 ( a'4) b'4 ( cis''4 b'4 a'4 a'4) fis'4 gis'4. b'4 ( a'4 fis'4 e'4) \divisioMinima
 d'4 ( fis'4) a'4 ( a'4 gis'4 fis'4 e'4) fis'4 ( gis'4) e'4 e'4 \finalis
 b'4 b'4 ( a'4) \forceBreak
 b'4. d''4 ( cis''4) d''4 ( e''4 d''4 cis''4 b'4) \divisioMinima
 d''4 ( cis''4 b'4 a'4) cis''4 ( d''4 b'4) \divisioMaior
 b'4 ( a'4 b'4.) d''4 ( cis''4) d''4 ( e''4 d''4 cis''4 b'4) \divisioMinima
 d''4 ( cis''4 b'4 a'4) cis''4 ( d''4 b'4) \divisioMaior
 \forceBreak
 b'4 ( a'4) b'4 ( cis''4 b'4 a'4) ~ a'4 ( fis'4 gis'4.) b'4 ( a'4 fis'4 e'4) \divisioMinima
 d'4 ( fis'4) a'4 ( a'4 gis'4 fis'4 e'4) fis'4 ( gis'4) e'4 e'4 \finalis

}

altoMusic = {
e'2*3/2 ~ e'2*3/4 ~ e'2*4/2 d'2*4/2 ~ \divisioMinima
d'2 cis'2*3/2 b2 ~ b2 ~ b2 \finalis
cis'4 ~ cis'2 d'2~ d'4 b2 \divisioMinima
d'2 e'2*4/2 ~ e'4 b2 ~ b2 \finalis
cis'2*3/2 ~ cis'2*3/4 ~ cis'2*4/2 b2*4/2 \divisioMinima
d'2 cis '2*5/2 b2 ~ b2 \finalis
e'2*4/2 ~ e'2*3/4 d'2*4/2 ~ \divisioMinima
d'2 e'2*4/2 ~ e'4 b2 ~ b2 \finalis
a2*3/2 ~ a2*5/4 ~ a2*4/2 \divisioMinima
d'2 ~ d'2*5/2 b2 ~ b2 \finalis
cis'2*4/2 ~ cis'2*3/4 b2*4/2 \divisioMinima
d'2 ~ d'2*5/2 b2 ~ b2 \finalis
fis'4 e'2 fis'2*3/4 ~ fis'2 ~ fis'2*5/2 ~ \divisioMinima
fis'2 ~ fis'2 ~ fis'2 ~ fis'2 \finalis
fis'2 e'2*5/2 d'4 ~ d'2*3/4 e'2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 e'4 \divisioMinima
d'2 ~ d'2*5/2 b2 ~ b2 \finalis
gis'4 fis'2 gis'2*3/4 fis'2 ~ fis'2*5/2 ~ \divisioMinima
fis'2 ~ fis'2 ~ fis'2*3/2 ~ \divisioMaior
fis'2*7/4 ~ fis'2 ~ fis'2*5/2 ~ \divisioMinima
fis'2*4/2 ~ fis'2*3/2 \divisioMaior
e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/4 ~ e'2*3/2 ~ e'4 \divisioMinima
d'2 e'2*4/2 ~ e'4 b2 ~ b2 \finalis
}

tenorMusic = {
cis'2*3/2 ~ cis'2*3/4 ~ cis'2*4/2 b2*4/2 ~ \divisioMinima
b2 a2*3/2 gis2 ~ gis2 a4 gis4 \finalis
a4 ~ a2 ~ a2*3/2 ~ a2 \divisioMinima
b2 a2*5/2 ~ a2 ~ a4 gis4 \finalis
cis'2*3/2 b2*3/4 a2*4/2 ~ a2*4/2 ~ \divisioMinima
a2 ~ a2*5/2 ~ a2 ~ a4 gis4 \finalis
cis'2*4/2 b2*3/4 a2*4/2 ~ \divisioMinima
a2 ~ a2*5/2 ~ a2 ~ a4 gis4 \finalis
r2*3/2 fis2*5/4 ~ fis2*4/2 ~ \divisioMinima
fis2 ~ fis2*5/2 a2 ~ a4 gis4 \finalis
e2*4/2 ~ e2*3/4 fis2*4/2 \divisioMinima
a2 b2*5/2 a2 ~ a4 gis4 \finalis
d'4 ~ d'2 ~ d'2*3/4 ~ d'2 ~ d'2*5/2 \divisioMinima
r2 cis'2 d'2 e'4 d'4 \finalis
a2 ~ a2*5/2 ~ a4 b2*3/4 ~ b2 gis2 \divisioMinima
fis2 ~ fis2*5/2 a2 ~ a4 gis4 \finalis
e'4 ~ e'2 ~ e'2*3/4 d'2 ~ d'2*5/2 \divisioMinima
r2 cis'2 d'2*3/2 ~ \divisioMaior
d'2*7/4 cis'2 b2*5/2 \divisioMinima
a2*4/2 ~ a2*3/2 ~ \divisioMaior
a2 gis2*3/2 fis2*3/2 e2*3/4 a2*4/2 ~ \divisioMinima
a2 ~ a2*5/2 ~ a2 ~ a4 gis4 \finalis
}

bassMusic = {
r2*3/2 b2*3/4 a2*4/2 ~ a2*4/2 \divisioMinima
r2 fis2*3/2 r2 e2 ~ e2 \finalis
r4 gis2 fis2*3/2 b,2 ~ \divisioMinima
b,2 cis2*5/2 d2 e2 \finalis
s2*25/4 \divisioMinima
fis2 ~ fis2*5/2 b,2 e2 \finalis
cis2*4/2 ~ cis2*3/4 fis2*4/2 \divisioMinima
b,2 cis2*5/2 d2 e2 \finalis
r2*3/2 r2*5/4 d2*4/2 \divisioMinima
cis2 b,2*5/2 ~ b,2 e2 \finalis
cis2*4/2 b,2*3/4 ~ b,2*4/2 ~ \divisioMinima
b,2 ~ b,2*5/2 ~ b,2 e2 \finalis
r2*9/4 cis'2 b2*5/2 ~ \divisioMinima
b2 ~ b2 ~ b2 ~ b2 \finalis
d2 cis2*5/2 b,4 ~ b,2*3/4 cis2 ~ cis2 \divisioMinima
d2 b,2*5/2 ~ b,2 e2 \finalis
s2*13/4 b2*5/2 ~ \divisioMinima
b2 ~ b2 ~ b2*3/2 \divisioMaior
d2*7/4 ~ d2 ~ d2*5/2 ~ \divisioMinima
d2*4/2 b,2*3/2 \divisioMaior
cis2 ~ cis2*3/2 ~ cis2*3/2 ~ cis2*3/4 ~ cis2*4/2 \divisioMinima
b,2 cis2*5/2 e2 ~ e2 \finalis
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
        "VII."
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
