\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.43
%(volume.page)

%Proofed 3/14

global = {
 \key e \minor
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
A -- _ men. }

chantMusic = {
\tieDown   b'4 a'4 ( b'4 a'4) g'4 g'4 a'4 ( b'4) b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) a'4 ( g'4) g'4 \finalis
 g'4 a'4 ( b'4) b'4 ( a'4) g'4 ( a'4) e'4 e'4 ( d'4) e'4 \forceBreak
 d'4 ( g'4) g'4 \divisioMinima
 g'4 a'4 ( b'4) b'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( a'4) g'4 \finalis
 b'4 ( \once \tweak #'font-size #-4 a' ) b'4 a'4 ( b'4) g'4 \finalis
 b'4 b'4 b'4 ( a'4) g'4 a'4 ( g'4) e'4 \finalis \forceBreak

 e'4 e'4 ( d'4) g'4 a'4 ( g'4) e'4 \finalis
 b'4 b'4 b'4 ( a'4) g'4 a'4 ( g'4) e'4 \finalis
 fis'4 e'4 ( d'4) d'4 e'4 ( d'4) e'4 g'4 a'4 g'4 \divisioMinima \forceBreak

 g'4 g'4 ( a'4) b'4 a'4 g'4 g'4 ( fis'4) e'4 ( fis'4) e'4 ( e'4) d'4 \finalis
 g'4 a'4 ( b'4) b'4 g'4 a'4 b'4 a'4 ( g'4) a'4 ( a'4) g'4 \divisioMinima \forceBreak

 g'4 ( fis'4) a'4 ( b'4) a'4 ( g'4) a'4 ( b'4) b'4 ( \once \tweak #'font-size #-4 a' ) b'4 ( a'4) g'4 ( fis'4) g'4 \finalis
  b'4 ( c''4) b'4 a'4 b'4 a'4 ( g'4) e'4 e'4 ( d'4) g'4 a'4 ( g'4) g'4 \divisioMinima \forceBreak

 b'4 a'4 ( g'4) a'4 ( g'4) e'4 \finalis
 g'4 a'4 ( b'4) b'4 b'4 ( a'4 g'4) g'4 \divisioMinima
 g'4 a'4 ( b'4) b'4 ( a'4 g'4) g'4 \divisioMinima
 e'4 e'4 ( d'4) g'4 a'4 ( a'4) g'4 \finalis \forceBreak

 g'4 a'4 ( b'4) b'4 g'4 a'4 g'4 fis'4 ( fis'4) e'4 \divisioMinima
 g'4 a'4 ( b'4) b'4 a'4 ( g'4) a'4 g'4 \finalis
 a'4 ( b'4 a'4 g'4) \forceBreak
 a'4 a'4 ( b'4) b'4 a'4 g'4 a'4 ( a'4 \once \tweak #'font-size #-4 b' ) b'4 \divisioMinima
 g'4 a'4 ( b'4) b'4 b'4 a'4 b'4 g'4 a'4 b'4 \forceBreak
 a'4 ( a'4) g'4 \finalis
 g'4 ( a'4 g'4) a'4 ( b'4) b'4 a'4 g'4 a'4 b'4 a'4 ( a'4) g'4 \divisioMinima
 fis'4 e'4 fis'4 g'4 fis'4 ( fis'4) e'4 \finalis \forceBreak

 g'4 a'4 ( b'4) b'4 g'4 a'4 g'4 a'4 ( a'4 \once \tweak #'font-size #-4 b' ) b'4 \finalis
 g'4 a'4 g'4 a'4 a'4 b'4 \finalis
 g'4 a'4 b'4 \forceBreak
 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 g'4 g'4 \divisioMinima
 a'4 b'4  b'4 ( c''4 b'4) b'4 \finalis
 g'4 ( a'4 b'4) b'4 ( a'4 g'4 a'4) e'4 fis'4 ( e'4 d'4) e'4 ( g'4) g'4 \divisioMinima \forceBreak

 g'4 g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 ( a'4) g'4 ( a'4) a'4 ( g'4) fis'4 ( e'4) \finalis
 e'4 ( a'4) ~ a'4 ( g'4) a'4 ( b'4) a'4 ( g'4) \finalis

}

altoMusic = {
r2*15/2 \finalis
e'2*3/2 ~ e'2 d'2 c'4 b2*3/2 c'2 d'4 ~ \divisioMinima
d'2*3/2 e'2*3/2 d'2 ~ d'4 \finalis
e'2 ~ e'2*3/2 d'4 \finalis
fis'2 e'2 d'4 b2 ~ b4 \finalis
b4 ~ b2 ~ b2*3/2 ~ b4 \finalis
d'2 e'2 d'4 c'2 b4 \finalis
b4 ~ b2 ~ b4 ~ b2*3/2 d'4 ~ d'2 ~ \divisioMinima
d'4 ~ d'2 e'2 d'4 c'2 ~ c'2 a2 ~ a4 \finalis
e'2*4/2 ~ e'2*3/2 ~ e'2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2 ~ d'2 ~ d'2 ~ d'2 ~ d'2 ~ d'4 e'2*4/2 d'2*3/2 b4 ~ b2 ~ b2*3/2 d'4 \divisioMinima
e'2*3/2 b2*3/2 \finalis
e'2*4/2 ~ e'2*3/2 d'4 \divisioMinima
e'4 ~ e'2 ~ e'2*3/2 d'4 \divisioMinima
b4 ~ b2 ~ b4 d'2*3/2 \finalis
e'2*3/2 d'2 ~ d'2 b2 ~ b4 \divisioMinima
d'2*3/2 e'2*3/2 d'2 \finalis
d'2*4/2 ~ d'4 ~ d'2 e'2*3/2 ~ e'2*3/2 d'4 ~ \divisioMinima
d'2*4/2 ~ d'2 ~ d'2 ~ d'2 ~ d'2*3/2 \finalis
d'2*3/2 ~ d'2 ~ d'2 e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 b2 ~ b4 \finalis
r4 fis'2*3/2 e'4 d'2 e'2*3/2 ~ e'4 \finalis
d'4 ~ d'2 ~ d'2 ~ d'4 \finalis
r4 fis'2 e'2 d'2 e'4 ~ \divisioMinima
e'2 ~ e'2*3/2 ~ e'4 \finalis
d'2*3/2 e'2*4/2~  e'4 c'2*3/2 ~ c'2 d'4 ~ \divisioMinima
d'4 e'2 ~ e'2 d'2 ~ d'2 ~ d'2 b2 ~ b2 \finalis
r4 d'2*3/2 ~ d'2 c'4 b4 \finalis
}

tenorMusic = {
r2*15/2 \finalis
r2*11/2 a2 b4 \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2 b4 \finalis
g2 ~ g2*3/2 ~ g4 \finalis
d'2 c'2 b4 ~ b2 g4 \finalis
g4 fis2 e2*3/2 g4 \finalis
fis2 e2 ~ e4 ~ e2 ~ e4 \finalis
d4 e2 fis4 e2*4/2 d2 \divisioMinima
e4 ~ e2 ~ e2 ~ e4 ~ e2 g2 ~ g2 fis4 \finalis
r2*4/2 c'2 d'4 c'2 b2*3/2 ~ \divisioMinima
b2 a2 g2 fis2 ~ fis2 e2 a2 b4 \finalis
g2*4/2 ~ g2*3/2 ~ g4 a2 g2*3/2 ~ g4 ~ \divisioMinima
g2*3/2 ~ g2*3/2 \finalis
r2*4/2 c'2*3/2 b4 ~ \divisioMinima
b4 ~ b2 ~ b2*3/2 ~ b4 \divisioMinima
g4 ~ g2 ~ g4 b2*3/2 \finalis
g2*3/2 ~ g2 b2 a2 g4 ~ \divisioMinima
g2*3/2 ~ g2*3/2 ~ g2 \finalis
fis2*4/2 e4 fis2 g2*3/2 e2*3/2 fis4 \divisioMinima
g2*4/2 fis2 e2 fis2 b2*3/2 \finalis
b2*3/2 a2 g2 ~ g2*3/2 ~ g2*3/2 \divisioMinima
b2 a2 ~ a2 g4 \finalis
e'4 d'2*3/2 c'4 b2 c'2*3/2 b4 \finalis
b4 a2 g2 fis4 \finalis
e'4 d'2 c'2 b2 ~ b4 \divisioMinima
a2 fis2*3/2 g4 \finalis
g2*3/2 ~ g2*5/2 a2*3/2 g2 ~ g4 ~ \divisioMinima
g4 ~ g2 e2 ~ e2 fis2 g2 ~ g2 a4 g4 \finalis
g4 ~ g2*3/2 ~ g2 ~ g2 \finalis
}

bassMusic = {
r2*15/2 \finalis
r2*3/2 c'2 b2 a4 g2*3/2 ~ g2 ~ g4 ~ \divisioMinima
g2*3/2 ~ g2*3/2 ~ g2 ~ g4 \finalis
e2 c2*3/2 b,4 \finalis
r2*5/2 e2 ~ e4 \finalis
e4 ~ e2 ~ \shiftRight e2*3/2 ~ e4 \finalis
b,2 c2 b,4 a,2 g,4 \finalis
b,4 ~ b,2 ~ b,4 ~ b,2*4/2 ~ b,2 \divisioMinima
\shiftRight e4 d2 c2 b,4 a,2 ~ a,2 d2 ~ d4 \finalis
r2*12/2 \divisioMinima
b,2 ~ b,2 ~ b,2 ~ b,2 d2 ~ d2 ~ d2 g4 c2*4/2 b,2*3/2 e4 ~ e2 ~ e2*3/2 b,4 \divisioMinima
c2*3/2 e2*3/2 \finalis
r2*8/2 \divisioMinima
e4 fis2 g2*3/2 ~ g4 ~ \divisioMinima
g4 fis2 e4 b,2*3/2 \finalis
c2*3/2 b,2 ~ b,2 ~ b,2 e4 \divisioMinima
b,2*3/2 c2*3/2 b,2 \finalis
d2*4/2 ~ d4 ~ d2 c2*3/2 ~ c2*3/2 b,4 ~ \divisioMinima
b,2*4/2 d2 ~ d2 ~ d2 g2*3/2 \finalis
g2*3/2 fis2 \shiftRight g2 c2*3/2 b,2*3/2 ~ \divisioMinima
b,2 ~ b,2 e2 ~ e4 \finalis
s2*7/2 a2*3/2 e4 \finalis
b,4 ~ b,2 ~ b,2 ~ b,4 \finalis
s2*7/2 e4 ~ \divisioMinima
e2 ~ e2*3/2 ~ e4 \finalis
b,2*3/2 c2*5/2 a,2*3/2 ~ a,2 b,4 ~ \divisioMinima
b,4 c2 ~ c2 b,2 ~ b,2 ~ b,2 e2 ~ e2 \finalis
c4 b,2*3/2 g,2 ~ g,2 \finalis
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
        "VI."
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
