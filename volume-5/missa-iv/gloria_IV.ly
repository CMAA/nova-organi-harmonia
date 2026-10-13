\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.24
%(volume.page)

%Proofed 3/14

global = {
 \key fis \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Gló -- _ ri -- a in ex -- cél -- sis De -- o. 
Et in ter -- ra pax ho -- mí -- ni -- bus bo -- næ vo -- lun -- tá -- tis. 
Lau -- dá -- mus te. 
Be -- ne -- dí -- ci -- mus te. 
Ad -- o -- rá -- _ mus te. 
Glo -- ri -- fi -- cá -- mus te. _ 
Grá -- ti -- as á -- gi -- mus ti -- bi pro -- pter ma -- gnam gló -- ri -- am tu -- am. 
Dó -- mi -- ne De -- us, Rex cœ -- lé -- stis, De -- us Pa -- ter o -- mní -- po -- tens. 
Dó -- mi -- ne Fi -- li u -- ni -- gé -- ni -- te Je -- su Chri -- _ ste. 
Dó -- mi -- ne De -- us, A -- gnus De -- i, Fí -- li -- us Pa -- _ tris. 
Qui tol -- lis pec -- cá -- ta mun -- di, mi -- se -- ré -- re no -- bis. 
Qui tol -- lis pec -- cá -- ta mun -- di, sús -- ci -- pe de -- pre -- ca -- ti -- ó -- nem no -- stram. 
Qui se -- des ad déx -- te -- ram Pa -- tris, mi -- se -- ré -- re no -- bis. 
Quó -- ni -- am tu so -- lus san -- ctus. 
Tu so -- lus Dó -- mi -- nus. 
Tu so -- lus Al -- tís -- si -- mus, Je -- su Chri -- _ ste. 
Cum San -- cto Spí -- ri -- tu, in gló -- ri -- a De -- i Pa -- _ tris. 
A -- _ men. }

chantMusic = {
\tieDown   d'4 ( e'4) g'4. g'4 g'4 fis'4 g'4 a'4 fis'4 a'4 ( g'4 fis'4) fis'4 \finalis
 e'4 ( a'4) a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( d''4) b'4 b'4 \forceBreak
 a'4 ( g'4) a'4 ( b'4) a'4 ( g'4) fis'4 \divisioMinima
 g'4 e'4 d'4 e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 fis'4 \finalis
 fis'4 ( \once \tweak #'font-size #-4 e' ) g'4 e'4 ( \once \tweak #'font-size #-4 fis'4) fis'4 \finalis
 \forceBreak
 e'4 e'4 ( d'4) e'4 e'4 e'4 ( fis'4) fis'4 \finalis
 a'4 a'4 ( b'4) b'4 ( a'4) b'4 ( d''4) a'4 ( a'4) fis'4 \finalis
 g'4 fis'4 g'4 ( a'4) \forceBreak
 a'4 ( g'4 e'4) e'4 a'4 ( g'4 \quil a' b'4 a'4 g'4) a'4 ( a'4 fis'4) \finalis
 g'4 e'4 ( fis'4) fis'4 g'4 e'4 e'4 ( d'4) e'4 ( fis'4) fis'4 \divisioMinima
 \forceBreak
 d'4 e'4 ( \once \tweak #'font-size #-4 g' ) g'4 fis'4 ( g'4) a'4 ( g'4) a'4 ( b'4) a'4 ( \once \tweak #'font-size #-4 g' ) fis'4 fis'4 \finalis
 g'4 e'4 e'4 ( d'4) e'4 ( fis'4) fis'4 \divisioMinima
 \forceBreak
 a'4 a'4 ( fis'4) g'4 ( a'4) fis'4 \divisioMinima
 a'4 ( g'4 e'4) e'4 e'4 ( g'4 \quil a' b'4 a'4 g'4) a'4 a'4 g'4 ( fis'4) e'4 ( fis'4) fis'4 \finalis
 \forceBreak
 g'4 e'4 e'4 (d'4) e'4 ( fis'4) fis'4 \divisioMinima
 a'4 a'4 ( fis'4) g'4 ( a'4) g'4 ( fis'4) fis'4 \divisioMinima
 a'4 ( g'4 e'4) e'4 e'4 ( g'4 \quil a' b'4 a'4 g'4) a'4 ( a'4) fis'4 \finalis
 \forceBreak
 g'4 e'4 e'4 ( d'4) e'4 ( fis'4) fis'4 \divisioMinima
 a'4 a'4 ( b'4) b'4 ( d''4) b'4 \divisioMinima
 b'4 ( a'4 g'4) a'4 a'4 ( b'4) b'4 ( a'4 g'4) a'4 ( a'4 b'4) a'4 ( g'4 fis'4) \finalis
 \forceBreak
 g'4 e'4 ( fis'4) fis'4 fis'4 g'4 e'4 ( d'4) e'4 ( fis'4) fis'4 \divisioMinima
 a'4 a'4 ( g'4) a'4 ( b'4) a'4 ( g'4) fis'4 fis'4 \finalis
 \forceBreak
 g'4 e'4 ( fis'4) fis'4 fis'4 g'4 e'4 ( d'4) e'4 ( fis'4) fis'4 \divisioMinima
 d'4 e'4 ( g'4) g'4 fis'4 g'4 a'4 g'4 \forceBreak
 a'4 ( b'4) a'4 ( \once \tweak #'font-size #-4 g' ) fis'4 fis'4 \finalis
 a'4 a'4 ( b'4 d''4) b'4 a'4 b'4 a'4 g'4 a'4 ( b'4) b'4 \divisioMinima
 b'4 a'4 ( g'4) \forceBreak
 a'4 ( b'4) a'4 ( g'4) fis'4 fis'4 \finalis
 g'4 fis'4 ( e'4) e'4 ( fis'4) e'4 ( d'4) e'4 e'4 ( fis'4) fis'4 fis'4 \finalis \forceBreak
 a'4 ( g'4) a'4 ( b'4) a'4 g'4 ( fis'4) e'4 ( fis'4) fis'4 \finalis
 fis'4 g'4 e'4 d'4 e'4 e'4 ( fis'4) fis'4 \divisioMinima
 a'4 ( g'4 e'4) e'4 e'4 ( g'4 \quil a' b'4 a'4 g'4) \forceBreak
 a'4 ( a'4) fis'4 \finalis 
 a'4 a'4 ( g'4 e'4) e'4 e'4 ( g'4 \quil a' b'4 a'4 g'4) a'4 ( g'4 fis'4) fis'4 \divisioMinima
 d'4 e'4 ( g'4) g'4 g'4 g'4 fis'4 ( e'4) \forceBreak
 fis'4 ( e'4 d'4) e'4 ( fis'4) e'4 \finalis
 e'4 ( a'4) ~ a'4 ( g'4 \quil a' b'4 a'4 g'4) a'4 ( g'4 fis'4) e'4 ( fis'4) \finalis

}

altoMusic = {
r2*27/4 \finalis
r2 fis'2 fis'2*4/2 e'2 ~ e'2 ~ e'2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 \divisioMinima
r2*3/2 e'2 d'2 \finalis
b2 ~ b4 cis'2 d'4 \finalis
r4 b2 ~ b2 e'2 d'4 \finalis
r4 e'2 ~ e'2 d'2 cis'2 d'4 \finalis
b2 ~ b2 ~ b2*4/2 d'2*6/2 ~ d'2 ~ d'4 \finalis
b4 ~ b2*3/2 ~ b2 ~ b2 ~ b2 d'4 ~ \divisioMinima
d'4 b2 ~ b4 d'2 ~ d'2 ~ d'2 ~ d'2 ~ d'2 \finalis
b2 ~ b2 ~ b2 d'4 ~ \divisioMinima
d'4 ~ d'2 ~ d'2 ~ d'4 \divisioMinima
e'2*4/2 ~ e'2*3/2 d'2*3/2 ~ d'2 e'2 cis'2 d'4 \finalis
b2 ~ b2 ~ b2 d'4 ~ \divisioMinima
d'4 ~ d'2 ~ d'2 ~ d'2*3/2 \divisioMinima
e'2*4/2 ~ e'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \finalis
b2 ~ b2 ~ b2 d'4 ~ \divisioMinima
d'4 e'2 d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'2 ~ d'2*3/2 cis'2*3/2 d'2*3/2 \finalis
r4 b2 ~ b2 ~ b4 ~ b2 ~ b2 d'4 ~ \divisioMinima
d'4 ~ d'2 ~ d'2 cis'2 d'2 \finalis
r4 b2 ~ b2 ~ b4 ~ b2 ~ b2 d'4 ~ \divisioMinima
d'4 b2 ~ b2*3/2 d'2 ~ d'2 ~ d'2 ~ d'2 \finalis
r4 d'2*5/2 ~ d'2*3/2 cis'2 d'4 ~ \divisioMinima
d'4 b2 ~ b2 ~ b2 ~ b2 \finalis
r4 b2 ~ b2 ~ b2 ~ b4 e'2 ~ e'4 d'4 \finalis
d'2 ~ d'2*3/2 ~ d'2 cis'2 d'4 \finalis
r4 b2*3/2 ~ b4 cis'2 d'4 \divisioMinima
b2*4/2 e'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \finalis
r4 b2*4/2 ~ b2*3/2 d'2*3/2 cis'2*3/2 d'4 ~ \divisioMinima
d'4 b2*4/2 d'4 ~ d'2 ~ d'2*3/2 b2 ~ b4 \finalis
r4 d'2 ~ d'2 ~ d'2*3/2 cis'2*3/2 ~ cis'4 d'4 \finalis
}

tenorMusic = {
r2*27/4 \finalis
e'2 ~ e'2 d'2*4/2 ~ d'2 cis'2 ~ cis'2 d'4 \divisioMinima
b2*3/2 r2 a2 \finalis
a2 g4 ~ g2 fis4 \finalis
r4 fis2 g2 a2 ~ a4 \finalis
fis4 ~ fis2 ~ fis2 ~ fis2 e2 fis4 \finalis
r2 fis2 g2*4/2 ~ g4 e2 g2*3/2 fis2 a4 \finalis
r4 a2*3/2 g2 fis2 g2 b4 \divisioMinima
a4 ~ a2 g4 ~ g2 ~ g2 fis2 b2 a2 \finalis
g2 fis2 g2 a4 \divisioMinima
fis4 ~ fis2 e2 b4 ~ \divisioMinima
b2*4/2 ~ b2*3/2 ~ b2*3/2 ~ b2 ~ b2 ~ b2*3/2 \finalis
g2 fis2 g2 a4 \divisioMinima
fis4 ~ fis2 e2 b2*3/2 ~ \divisioMinima
b2*4/2 g2*3/2 ~ g2*3/2 fis2 a4 \finalis
g2 fis2 g2 a4 \divisioMinima
fis4 ~ fis2 ~ fis2*3/2 \divisioMinima
g2*4/2 fis2 g2*3/2 e2*3/2 b2*3/2 \finalis
r4 g2 a2 g4 fis2 g2 a4 \divisioMinima
fis4 ~ fis2 g2 e2 b2 \finalis
r4 g2 a2 g4 fis2 g2 b4 \divisioMinima
a4 ~ a2 g2*3/2 ~ g2 fis2 b2 a2 \finalis
fis4 ~ fis2*5/2 g2*3/2 e2 fis4 ~ \divisioMinima
fis4 ~ fis2 g2 \shiftRight e2 ~ e4 d4 \finalis
r4 a2 g2 fis2 g4 a2 ~ a2 \finalis
b2 fis2*3/2 e2 b2 ~ b4 \finalis
a4 ~ a2*3/2 g4 ~ g2 fis4 \divisioMinima
r2*4/2 g2*3/2 ~ g2*3/2 fis2 a4 \finalis
r4 a2*4/2 g2*3/2 ~ g2*3/2 e2*3/2 fis4 \divisioMinima
a4 g2*4/2 ~ g4 b2 a2*3/2 ~ a2 g4 \finalis
r4 fis2 d2 g2*3/2 e2*3/2 b2 \finalis
}

bassMusic = {
s2*27/4 \finalis
s2*12/2 b2 ~ b4 \divisioMinima
g2*3/2 r2 d2 \finalis
e2 ~ e4 b,2 ~ b,4 \finalis
e4 ~ e2 ~ e2 cis2 d4 \finalis
r4 cis2 b,2 ~ b,2 ~ b,2 ~ b,4 \finalis
e2 ~ e2 ~ e2*4/2 d2*6/2 ~ d2 ~ d4 \finalis
e4 ~ e2*3/2 ~ e2 ~ e2 ~ e2 b,4 ~ \divisioMinima
b,4 e2 ~ e4 b,2 d2 ~ d2 ~ d2 ~ d2 \finalis
e2 ~ e2 ~ e2 d4 ~ \divisioMinima
d4 b,2 ~ b,2 ~ b,4 \divisioMinima
e2*4/2 g2*3/2 ~ g2*3/2 fis2 e2 \shiftRight b2 ~ b4 \finalis
e2 ~ e2 ~ e2 d4 ~ \divisioMinima
d4 b,2 ~ b,2 ~ b,2*3/2 \divisioMinima
e2*4/2 ~ e2*3/2 b,2*3/2 d2 ~ d4 \finalis
e2 ~ e2 ~ e2 d4 ~ \divisioMinima
d4 cis2 b,2*3/2 ~ \divisioMinima
b,2*4/2 ~ b,2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 \finalis
e4 ~ e2 ~ e2 ~ e4 ~ e2 ~ e2 d4 ~ \divisioMinima
d4 b,2 ~ b,2 ~ b,2 ~ b,2 \finalis
e4 ~ e2 ~ e2 ~ e4 ~ e2 ~ e2 b,4 ~ \divisioMinima
b,4 e2 ~ e2*3/2 d2 ~ d2 ~ d2 ~ d2 \finalis
r4 b,2*5/2 ~ b,2*3/2 ~ b,2 ~ b,4 ~ \divisioMinima
b,4 e2 ~ e2 ~ e2 b,2 \finalis
e4 ~ e2 ~ e2 ~ e2 ~ e4 cis2 d2 \finalis
b,2 ~ b,2*3/2 ~ b,2 ~ b,2 ~ b,4 \finalis
r4 e2*3/2 ~ e4 b,2 ~ b,4 \divisioMinima
e2*4/2 ~ e2*3/2 b,2*3/2 d2 ~ d4 \finalis
r4 e2*4/2 ~ e2*3/2 b,2*3/2 ~ b,2*3/2 ~ b,4 ~ \divisioMinima
b,4 e2*4/2 b,4 ~ b,2 ~ b,2*3/2 e2 ~ e4 \finalis
r4 d2 b,2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*55/4
\allowVoiceLineBreak
\voiceLine "down" "down" b2*1/2 b2*1/2


s2*297/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" d2*2/2 d2*1/2


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
