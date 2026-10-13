\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.85
%(volume.page)

%Proofed 3/14

global = {
 \key fis \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Gló -- ri -- a in ex -- cél -- sis De -- o. 
Et in ter -- ra pax ho -- mí -- ni -- bus bo -- næ vo -- lun -- tá -- tis. 
Lau -- dá -- mus te. 
Be -- ne -- dí -- ci -- mus te. 
Ad -- o -- rá -- mus te. 
Glo -- ri -- fi -- cá -- mus te. 
Grá -- ti -- as á -- gi -- mus ti -- bi pro -- pter ma -- gnam gló -- ri -- am tu -- am. 
Dó -- mi -- ne De -- us, Rex cœ -- lé -- stis, De -- us Pa -- ter o -- mní -- po -- tens. 
Dó -- mi -- ne Fi -- li u -- ni -- gé -- ni -- te Je -- su Chri -- ste. 
Dó -- mi -- ne De -- us, A -- gnus De -- i, Fí -- li -- us Pa -- tris. 
Qui tol -- lis pec -- cá -- ta mun -- di, mi -- se -- ré -- re no -- bis. 
Qui tol -- lis pec -- cá -- ta mun -- di, sús -- ci -- pe de -- pre -- ca -- ti -- ó -- nem no -- stram. 
Qui se -- des ad déx -- te -- ram Pa -- tris, mi -- se -- ré -- re no -- bis. 
Quó -- ni -- am tu so -- lus san -- ctus. 
Tu so -- lus Dó -- mi -- nus. 
Tu so -- lus Al -- tís -- si -- mus, Je -- su Chri -- ste. 
Cum San -- cto Spí -- ri -- tu, in gló -- ri -- a De -- i Pa -- tris. 
A -- men. }

chantMusic = {
\tieDown   fis'4 a'4 a'4 ( b'4) b'4 b'4 a'4 b'4 a'4 fis'4 \finalis
 fis'4 a'4 b'4 b'4 \forceBreak
 a'4 b'4 cis''4 b'4 b'4 \divisioMinima
 b'4 b'4 a'4 b'4 a'4 fis'4 \finalis
 a'4 b'4 a'4 fis'4 \finalis
 \forceBreak
 a'4 a'4 ( b'4) b'4 a'4 a'4 fis'4 \finalis
 a'4 a'4 ( b'4) b'4 a'4 fis'4 \finalis
 a'4 b'4 a'4 b'4 a'4 fis'4 \finalis
 \forceBreak
 fis'4 a'4 b'4 b'4 a'4 b'4 cis''4 b'4 \divisioMinima
 b'4 b'4 b'4 b'4 b'4 a'4 b'4 \forceBreak
 a'4 fis'4 \finalis
 fis'4 a'4 b'4 b'4 b'4 a'4 b'4 a'4 fis'4 \divisioMinima
 fis'4 a'4 b'4 a'4 b'4 \forceBreak
 a'4 fis'4 fis'4 \finalis
 fis'4 a'4 b'4 b'4 b'4 a'4 b'4 cis''4 b'4 b'4 \divisioMinima
 a'4 b'4 a'4 fis'4 \finalis
 \forceBreak
 fis'4 a'4 b'4 a'4 fis'4 \divisioMinima
 a'4 b'4 cis''4 b'4 \divisioMinima
 b'4 a'4 b'4 a'4 fis'4 \finalis
 \forceBreak
 fis'4 a'4 b'4 b'4 a'4 b'4 cis''4 b'4 \divisioMinima
 b'4 b'4 a'4 b'4 a'4 fis'4 \finalis
 \forceBreak
 fis'4 a'4 b'4 b'4 a'4 b'4 cis''4 b'4 \divisioMinima
 cis''4 b'4 b'4 b'4 b'4 b'4 b'4 a'4 b'4 \forceBreak
 a'4 fis'4 \finalis
 fis'4 a'4 b'4 b'4 b'4 a'4 b'4 cis''4 b'4 \divisioMinima
 b'4 b'4 a'4 b'4 a'4 fis'4 \finalis
 \forceBreak
 fis'4 a'4 b'4 b'4 a'4 b'4 a'4 fis'4 \finalis
 b'4 a'4 b'4 a'4 fis'4 fis'4 \finalis
 \forceBreak
 fis'4 a'4 b'4 b'4 a'4 fis'4 fis'4 \divisioMinima
 fis'4 a'4 b'4 ( cis''4 b'4) b'4 \finalis
 fis'4 a'4 b'4 \forceBreak
 cis''4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 b'4 b'4 a'4 b'4 ( cis''4 a'4) ~ a'4 ( fis'4) fis'4 \finalis
 fis'4 ( \quil g' a'4 g'4 fis'4) e'4 ( fis'4) \finalis

}

altoMusic = {
r2*10/2 \finalis
fis'2 e'2 fis'2 ~ fis'2 ~ fis'4 \divisioMinima
g'2*4/2 e'4 d'4 \finalis
e'4 d'2 ~ d'4 \finalis
e'4 d'2 e'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 \finalis
e'4 d'2 cis'2 ~ cis'4 \finalis
e'2*3/2 d'2 ~ d'4 \finalis
d'2*3/2 cis'2*3/2 d'2 \divisioMinima
fis'2*4/2 e'2*3/2 cis'4 d'4 \finalis
fis'2*3/2 e'2*4/2 d'2 \divisioMinima
cis'2 ~ cis'2*3/2 ~ cis'2 ~ cis'4 \finalis
d'2*3/2 ~ d'2 e'2 fis'2*3/2 \divisioMinima
e'2 d'2 \finalis
fis'2*3/2 e'4 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 ~ \divisioMinima
fis'2 ~ fis'2 \divisioMinima
e'2*3/2 cis'2 \finalis
d'4 ~ d'2*3/2 e'2 ~ e'4 d'4 \divisioMinima
b2 cis'2 d'2 \finalis
fis'4 ~ fis'2*3/2 e'2 ~ e'4 fis'4 ~ \divisioMinima
fis'2*3/2 ~ fis'2*4/2 ~ fis'4 e'4 cis'2 \finalis
d'4 ~ d'2*3/2 cis'2*3/2 d'2 \divisioMinima
fis'2 e'2 cis'4 d'4 \finalis
fis'2 ~ fis'4 e'4 ~ e'2 d'2 \finalis
e'2 d'4 cis'2 ~ cis'4 \finalis
fis'4 ~ fis'2*3/2 e'2 d'4 \divisioMinima
e'2 fis'2*3/2 ~ fis'4 \finalis
r4 e'2 ~ e'2 d'4 ~ \divisioMinima
d'4 e'2*3/2 fis'2 ~ fis'2 cis'2*3/2 ~ cis'4 \finalis
d'2*5/2 cis'4 d'4 \finalis
}

tenorMusic = {
r2*10/2 \finalis
d'2 e'2 ~ e'2 ~ e'2 d'4 ~ \divisioMinima
d'2*4/2 cis'4 d'4 \finalis
fis4 ~ fis2 b4 \finalis
r2*3/2 cis'2*3/2 d'4 \finalis
fis4 ~ fis2 ~ fis2 a4 \finalis
cis'2*3/2 b2 ~ b4 \finalis
fis2*3/2 e2*3/2 fis2 ~ \divisioMinima
fis2*4/2 ~ fis2*3/2 e4 fis4 \finalis
d'2*3/2 cis'2*4/2 b2 \divisioMinima
r2*5/2 b2 a4 \finalis
b2*3/2 fis2 ~ fis2 ~ fis2*3/2 ~ \divisioMinima
fis2 ~ fis2 \finalis
d'2*3/2 cis'4 d'4 ~ \divisioMinima
d'2 ~ d'2 \divisioMinima
cis'2*3/2 b4 a4 \finalis
a4 fis2*3/2 ~ fis2 ~ fis2 ~ \divisioMinima
fis2 e2 fis2 \finalis
d'4 ~ d'2*3/2 cis'2*3/2 d'4 ~ \divisioMinima
d'2*3/2 ~ d'2*4/2 cis'2 b4 a4 \finalis
b4 fis2*3/2 e2*3/2 fis2 ~ \divisioMinima
fis2 ~ fis2 ~ fis2 \finalis
r2*8/2 \finalis
g4 a2 b2 a4 \finalis
d'4 ~ d'2*3/2 cis'2 d'4 \divisioMinima
cis'2 e'2*3/2 d'4 \finalis
a4 fis2 ~ fis2 ~ fis4 ~ \divisioMinima
fis4 g2*3/2 b2 ~ b2 ~ b2*3/2 a4 \finalis
a2*5/2 g4 b4 \finalis
}

bassMusic = {
r2*10/2 \finalis
r2 cis'2 ~ cis'2 b2 ~ b4 ~ \divisioMinima
b2*4/2 ~ b4 ~ b4 \finalis
cis4 b,2 ~ b,4 \finalis
cis'4 b2 ~ b2*3/2 ~ b4 \finalis
cis4 b,2 \shiftRight fis2 ~ fis4 \finalis
r2*6/2 \finalis
b,2*3/2 ~ b,2*3/2 ~ b,2 \divisioMinima
d2*4/2 cis2*3/2 b,4 ~ b,4 \finalis
r2*9/2 \divisioMinima
a2 fis2*3/2 ~ fis2 ~ fis4 \finalis
b,2*3/2 ~ b,2 cis2 d2*3/2 \divisioMinima
cis2 b,2 \finalis
b2*3/2 ~ b2 \divisioMinima
cis'2 b2 \divisioMinima
fis2*3/2 ~ fis2 \finalis
d4 ~ d2*3/2 cis2 b,2 \divisioMinima
d2 cis2 b,2 \finalis
r2*6/2 b4 ~ b4 \divisioMinima
a2*3/2 g2*4/2 ~ g2 fis2 \finalis
b,4 ~ b,2*3/2 ~ b,2*3/2 ~ b,2 \divisioMinima
d2 cis2 b,2 \finalis
fis2 g2 a2 b2 \finalis
r4 fis2 ~ fis2 ~ fis4 \finalis
b4 ~ b2*3/2 ~ b2 ~ b4 ~ \divisioMinima
b2 ~ b2*3/2 ~ b4 \finalis
d4 cis2 b,2 ~ b,4 ~ \divisioMinima
b,4 e2*3/2 ~ e2 d2 fis2*3/2 ~ fis4 \finalis
b,2*5/2 ~ b,2 \finalis
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
