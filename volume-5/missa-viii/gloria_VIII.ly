\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.48
%(volume.page)

%Proofed 3/14

global = {
 \key d \major
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Gló -- ri -- a in ex -- cél -- sis De -- o. 
Et in ter -- ra pax ho -- mí -- ni -- bus 
bo -- næ vo -- lun -- tá -- tis. 
Lau -- dá -- mus te. 
Be -- ne -- dí -- ci -- mus te. 
Ad -- o -- rá -- mus te. 
Glo -- ri -- fi -- cá -- mus te. 
Grá -- ti -- as á -- gi -- mus ti -- bi 
pro -- pter ma -- gnam gló -- ri -- am tu -- am. 
Dó -- mi -- ne De -- us, Rex cœ -- lé -- stis, 
De -- us Pa -- ter o -- mní -- po -- tens. 
Dó -- mi -- ne Fi -- li u -- ni -- gé -- ni -- te Je -- su Chri -- ste. 
Dó -- mi -- ne De -- us, A -- gnus De -- i, 
Fí -- li -- us Pa -- tris. 
Qui tol -- lis pec -- cá -- ta mun -- _ di, 
mi -- se -- ré -- re no -- bis. 
Qui tol -- lis pec -- cá -- ta mun -- di, 
sús -- ci -- pe de -- pre -- ca -- ti -- ó -- nem no -- _ stram. 
Qui se -- des ad déx -- te -- ram Pa -- tris, 
mi -- se -- ré -- re no -- bis. 
Quó -- ni -- am tu so -- lus san -- ctus. 
Tu so -- lus Dó -- mi -- nus. 
Tu so -- lus Al -- tís -- si -- mus, Je -- su Chri -- ste. 
Cum San -- cto Spí -- ri -- tu, 
in gló -- ri -- a De -- i Pa -- _ tris. 
A -- _ men. }

chantMusic = {
\tieDown   a'4 a'4 fis'4 e'4 d'4 e'4 fis'4 e'4 d'4 \finalis
 a'4 a'4 fis'4 e'4 \forceBreak
 d'4 e'4 fis'4 e'4 d'4 \divisioMaior
 d'4 e'4 fis'4 a'4 b'4 a'4 \finalis
 d''4 cis''4 ( b'4 a'4) b'4 a'4 \finalis
 \forceBreak
 d''4 cis''4 b'4 a'4 b'4 ( cis''4) b'4 ( a'4) \finalis
 a'4 a'4 fis'4 ( e'4 d'4) e'4 ( fis'4) d'4 \finalis
 d'4 e'4 fis'4 a'4 b'4 a'4 \finalis
 \forceBreak
 a'4 b'4 cis''4 d''4 cis''4 b'4 ( cis''4) b'4 a'4 \divisioMaior
 a'4 a'4 fis'4 e'4 d'4 e'4 fis'4 e'4 d'4 \finalis
 \forceBreak
 a'4 a'4 fis'4 e'4 d'4 e'4 fis'4 e'4 d'4 \divisioMaior
 d'4 e'4 ( fis'4) a'4 b'4 ( a'4) b'4 ( cis''4) d''4 ( cis''4) b'4 ( a'4) a'4 \finalis
 \forceBreak
 a'4 a'4 fis'4 e'4 d'4 e'4 fis'4 a'4 b'4 a'4 \divisioMinima
 b'4 ( cis''4) d''4 ( cis''4) b'4 a'4 \finalis
 \forceBreak
 d''4 cis''4 b'4 cis''4 b'4 ( a'4) b'4 cis''4 b'4 a'4 \divisioMaior
 a'4 a'4 fis'4 ( e'4 d'4) e'4 ( fis'4 e'4) d'4 \finalis
 d'4 e'4 \forceBreak
 fis'4 a'4 b'4 a'4 b'4 ( cis''4) d''4 ( cis''4) b'4 ( a'4) \divisioMaior
 a'4 a'4 fis'4 ( e'4 d'4) e'4 ( fis'4) e'4 d'4 \finalis
 d''4 cis''4 b'4 a'4 \forceBreak
 b'4 cis''4 b'4 a'4 \divisioMaior
 a'4 a'4 fis'4 e'4 d'4 e'4 fis'4 a'4 b'4 ( a'4) b'4 ( cis''4) d''4 ( cis''4) b'4 ( a'4) \finalis
 \forceBreak
 a'4 a'4 fis'4 e'4 d'4 e'4 fis'4 e'4 d'4 \divisioMaior
 d'4 e'4 fis'4 a'4 b'4 a'4 \finalis
 \forceBreak
 d''4 cis''4 b'4 a'4 b'4 cis''4 b'4 a'4 \finalis
 d''4 cis''4 b'4 ( a'4) b'4 ( cis''4) b'4 ( a'4) a'4 \finalis
 a'4 a'4 fis'4 e'4 ( d'4) \forceBreak
 e'4 ( fis'4) a'4 b'4 ( a'4) \divisioMinima
 b'4 ( cis''4) d''4 ( cis''4) b'4 a'4 \finalis
 a'4 a'4 fis'4 ( e'4 d'4) e'4 ( fis'4) e'4 d'4 \divisioMaior
 \forceBreak
 d'4 e'4 fis'4 a'4 b'4 a'4 b'4 ( cis''4) d''4 ( cis''4) b'4 ( a'4) \finalis
 a'4 ( fis'4 e'4 d'4.)  g'4 ( fis'4 e'4) e'4 ( d'4) \finalis

}

altoMusic = {
r2*9/2 \finalis
e'2 d'2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMaior
d'2*4/2 cis'2 \finalis
r4 e'2*3/2 ~ e'2 \finalis
fis'2 ~ fis'2 ~ fis'2 ~ fis'2 \finalis
e'2 d'2*3/2 ~ d'2 ~ d'4 \finalis
d'2*3/2 cis'2*3/2 \finalis
e'2*3/2 d'2*4/2 e'2 ~ \divisioMaior
e'2 d'2 ~ d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 \finalis
e'2*3/2 ~ e'4 r2*5/2 \divisioMaior
r2*3/2 e'4 ~ e'2 d'2*4/2 cis'2*3/2 \finalis
d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 r2 fis'4 ~ fis'2*3/2 \divisioMinima
g'2*4/2 e'2 \finalis
a'2*3/2 fis'2*3/2 ~ fis'2 ~ fis'2 \divisioMaior
e'2 d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 r2*3/2 \finalis
r2 fis'2 e'2 fis'2*4/2 e'2 ~ \divisioMaior
e'2 d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 r2*3/2 \finalis
r4 fis'2*3/2 e'2 ~ e'2 ~ \divisioMaior
e'2 d'2*5/2 e'2*3/2 g'2*4/2 e'2 \finalis
r4 d'2*3/2 ~ d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 ~ \divisioMaior
d'2*4/2 cis'2 \finalis
a'2*4/2 fis'2 e'2 \finalis
r4 fis'2*3/2 g'2 fis'2*3/2 \finalis
r4 d'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 ~ d'2*3/2 e'2 \divisioMinima
d'2*4/2 cis'2 \finalis
r4 d'2*4/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 r2*3/2 \divisioMaior
d'4 ~ d'2*3/2 fis'2 g'2*4/2 e'2 \finalis
cis'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4. ~ d'2*3/2 a2 \finalis
}

tenorMusic = {
r2*9/2 \finalis
a2 ~ a2 ~ a2 g2 fis4 \divisioMaior
b2*4/2 fis2 \finalis
r2*4/2 d'4 cis'4 \finalis
a2 b2 d'2 cis'2 \finalis
a2 ~ a2*3/2 g2 fis4 \finalis
b2*3/2 fis2*3/2 \finalis
a2*3/2 fis2*4/2 e2 \divisioMaior
a2 ~ a2 ~ a2*3/2 g4 fis4 \finalis
a2*3/2 ~ a2*4/2 g2 \divisioMaior
fis2*3/2 ~ fis4 e2 fis2*4/2 ~ fis2*3/2 \finalis
a2*3/2 b2*4/2 cis'2*3/2 \divisioMinima
d'2*4/2 ~ d'4 cis'4 \finalis
d'2*3/2 ~ d'2*3/2 ~ d'2 cis'2 \divisioMaior
a2 ~ a2*3/2 g2*3/2 fis4 \finalis
d'2 ~ d'2 cis'2 d'2*4/2 cis'2 ~ \divisioMaior
cis'2 a2*3/2 b2 g4 fis4 \finalis
d'4 ~ d'2*3/2 ~ d'2 cis'2 \divisioMaior
a2 ~ a2*5/2 ~ a2*3/2 d'2*4/2 ~ d'4 cis'4 \finalis
a4 ~ a2*3/2 b2*3/2 fis2 ~ \divisioMaior
fis2*4/2 ~ fis2 \finalis
d'2*4/2 ~ d'2 ~ d'4 cis'4 \finalis
r4 d'2*3/2 ~ d'2 cis'2*3/2 \finalis
a4 ~ a2 b2 a2*3/2 ~ a2 \divisioMinima
fis2*4/2 ~ fis2 \finalis
a4 ~ a2*4/2 b2*3/2 a4 ~ \divisioMaior
a4 ~ a2*3/2 d'2 ~ d'2*4/2 ~ d'4 cis'4 \finalis
fis2*3/2 ~ fis2*3/4 g2*3/2 ~ g4 fis4 \finalis
}

bassMusic = {
r2*9/2 \finalis
cis2 d2 ~ d2 ~ d2 ~ d4 \divisioMaior
r2*6/2 \finalis
d4 a2*3/2 ~ a2 \finalis
d2 ~ d2 ~ d2 fis2 \finalis
cis2 d2*3/2 ~ d2 ~ d4 \finalis
r2*6/2 \finalis
cis2*3/2 b,2*4/2 cis2 ~ \divisioMaior
cis2 b,2 d2*3/2 ~ d2 \finalis
cis2*3/2 b,2*4/2 d2 ~ \divisioMaior
d2*3/2 cis4 ~ cis2 b,2*4/2 \shiftRight fis2*3/2 \finalis
fis2*3/2 g2*4/2 fis2*3/2 \divisioMinima
e2*4/2 a2 \finalis
fis2*3/2 d2*3/2 e2 fis2 \divisioMaior
cis2 d2*3/2 ~ d2*3/2 ~ d4 \finalis
r2 r2*4/2 b2*4/2 \shiftRight cis'2 \divisioMaior
fis2 ~ fis2*3/2 g2 d2 \finalis
r2*4/2 a2 ~ a2 \divisioMaior
fis2 ~ fis2*5/2 cis2*3/2 e2*4/2 a2 \finalis
r4 d2*3/2 ~ d2*3/2 ~ d2 \divisioMaior
b,2*4/2 \shiftRight fis2 \finalis
fis2*4/2 g2 a2 \finalis
d4 ~ d2*3/2 e2 fis2*3/2 \finalis
r4 d2 ~ d2 ~ d2*3/2 cis2 \divisioMinima
b,2*4/2 fis,2 \finalis
r4 fis2*4/2 g2*3/2 fis4 ~ \divisioMaior
fis4 d2*3/2 ~ d2 e2*4/2 a2 \finalis
a,2*3/2 b,2*3/4 ~ b,2*3/2 d2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*144/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*2/2 g2*1/2


s2*7/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" a2*2/2 a2*1/2


s2*73/2
\allowVoiceLineBreak
\voiceLine "up" "down" d'2*3/2 d'2*1/2


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
