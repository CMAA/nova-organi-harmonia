\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.79
%(volume.page)

%Proofed 3/14

global = {
 \key d \phrygian
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
Qui tol -- lis pec -- cá -- ta mun -- di, mi -- se -- ré -- re _ no -- bis. 
Qui tol -- lis pec -- cá -- ta mun -- di, sús -- ci -- pe de -- pre -- ca -- ti -- ó -- nem no -- stram. 
Qui se -- des ad déx -- te -- ram Pa -- tris, mi -- se -- ré -- re _ no -- bis. 
Quó -- ni -- am tu so -- lus san -- ctus. 
Tu so -- lus Dó -- mi -- nus. 
Tu so -- lus Al -- tís -- si -- mus, Je -- su Chri -- ste. 
Cum San -- cto Spí -- ri -- tu, in gló -- ri -- a De -- i Pa -- tris. 
A -- _ men. _ }

chantMusic = {
\tieDown   bes'4 ( bes'4) g'4 g'4 f'4 g'4 a'4 ( bes'4) g'4 g'4 ( f'4) f'4 ( g'4) \finalis
 f'4 g'4 a'4 ( \quil bes' c''4) bes'4 ( a'4) a'4 \forceBreak
 a'4 ( g'4) bes'4 g'4 f'4 \divisioMinima
 bes'4 g'4 ( f'4) g'4 g'4 f'4 ( f'4) d'4 \finalis
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( bes'4) g'4 ( f'4) f'4 ( g'4) \finalis
 \forceBreak
 f'4 g'4 bes'4 ( a'4) bes'4 ( c''4) bes'4 ( a'4) a'4 \finalis
 f'4 g'4 g'4 ( bes'4) g'4 ( f'4) f'4 ( g'4) \finalis
 f'4 g'4 bes'4 ( a'4) bes'4 ( c''4) bes'4 ( a'4) a'4 \finalis
 \forceBreak
 a'4 a'4 a'4 ( g'4) bes'4 g'4 f'4 g'4 ( bes'4 g'4) a'4 \divisioMinima
 d'4 d'4 ( \once \tweak #'font-size #-4 c' ) f'4 g'4 bes'4 g'4 f'4 g'4 f'4 \finalis
 \forceBreak
 bes'4 g'4 f'4 g'4 ( bes'4 g'4) a'4 \divisioMinima
 d'4 ( a'4) a'4 ( g'4 f'4) g'4 ( bes'4 g'4) a'4 \divisioMinima
 a'4 ( c''4) a'4 a'4 g'4 ( a'4) bes'4 ( a'4) \forceBreak
 g'4 ( f'4) g'4 f'4 \finalis
 d'4 d'4 ( c'4) f'4 g'4 ( a'4) a'4 a'4 ( c''4) a'4 a'4 a'4 ( g'4) g'4 ( a'4) \divisioMinima
 f'4 ( g'4) g'4 ( bes'4) g'4 ( g'4) f'4 \finalis
 \forceBreak
 bes'4 g'4 f'4 g'4 ( bes'4 g'4) a'4 \divisioMinima
 d'4 ( a'4) a'4 ( g'4 f'4) g'4 ( bes'4 g'4) a'4 \divisioMinima
 d'4 ( a'4) a'4 a'4 ( g'4 f'4) g'4 ( bes'4 g'4) a'4 \finalis
 \forceBreak
 g'4 ( a'4 g'4) g'4 g'4 f'4 g'4 ( a'4) a'4 g'4 ( g'4) f'4 \divisioMinima
 a'4 a'4 ( g'4 f'4) a'4 ( g'4) bes'4 ( f'4) g'4 ( f'4 ees'4) c'4 ( d'4) d'4 \finalis
 \forceBreak
 g'4 ( a'4 g'4) g'4 g'4 f'4 g'4 ( a'4) a'4 g'4 ( g'4) f'4 \divisioMinima
 bes'4 ( bes'4) g'4 g'4 f'4 g'4 bes'4 g'4 g'4 f'4 \forceBreak
 g'4 ( bes'4 g'4) a'4 \finalis
 a'4 a'4 ( c''4) a'4 g'4 bes'4 g'4 ( f'4) g'4 ( a'4) g'4 ( g'4) f'4 \divisioMinima
 a'4 a'4 ( g'4 f'4) a'4 ( g'4) \forceBreak
 bes'4 ( f'4) g'4 ( f'4 ees'4) c'4 ( d'4) d'4 \finalis
 bes'4 g'4 g'4 a'4 g'4 f'4 g'4 ( bes'4 g'4) a'4 \finalis
 a'4 ( c''4) a'4 g'4 \forceBreak
 bes'4 g'4 ( f'4) a'4 \finalis
 a'4 a'4 ( c''4) a'4 g'4 bes'4 g'4 ( f'4) a'4 \divisioMinima
 f'4 g'4 f'4 ( f'4) d'4 \finalis
 g'4 g'4 ( a'4) g'4 ( f'4) \forceBreak
 g'4 ( a'4) g'4 g'4 \divisioMinima
 d'4 d'4 ( g'4) g'4 g'4 f'4 g'4 ( a'4) f'4 ( f'4) d'4 \finalis
 d'4 ( g'4 f'4) g'4 ( bes'4 g'4 f'4) ~ f'4 ( ees'4 d'4) c'4 d'4 \finalis

}

altoMusic = {
r2*13/2 \finalis
d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2*4/2 a2 ~ a4 \finalis
d'2 ~ d'2 c'2 bes2 \finalis
d'2 ~ d'2 ~ d'2 ees'2 f'4 \finalis
d'2 ~ d'2 c'2 bes2 \finalis
d'2 ~ d'2 ~ d'2 ees'2 f'4 \finalis
d'2 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 ~ \divisioMinima
d'4 ~ d'4 r4 d'2 ees'2*3/2 c'2 \finalis
d'2*3/2 ~ d'2*3/2 f'4 \divisioMinima
d'2 f'2 ~ f'4 ~ f'2*3/2 ~ f'4 ~ \divisioMinima
f'2*3/2 d'4 ~ d'2 ees'2 c'2 ~ c'2 \finalis
r2 c'4 ~ c'4 d'2*3/2 ~ d'2*3/2 ~ d'4 ~ d'2 ~ d'2 ~ \divisioMinima
d'2 ees'2 c'2 ~ c'4 \finalis
d'2*3/2 ~ d'2*4/2 ~ \divisioMinima
d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*3/2 f'2*3/2 ~ f'2*3/2 ~ f'4 \finalis
d'2*3/2 ~ d'2*3/2 ees'2*3/2 c'2 ~ c'4 \divisioMinima
d'4 ~ d'2*3/2 ~ d'2 bes2 ~ bes2*3/2 a2 bes4 \finalis
d'2*3/2 c'2*3/2 d'2*3/2 ~ d'2*3/2 \divisioMinima
c'2*4/2 f'2 ~ f'2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 f'4 ~ f'2*3/2 ~ f'4 \finalis
d'4 ~ d'2*4/2 ~ d'4 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2 bes2 ~ bes2*3/2 a2 bes4 \finalis
d'2*4/2 ~ d'2 f'2*3/2 ~ f'4 \finalis
d'2 ~ d'2 ~ d'4 c'2 ~ c'4 f'4 ~ f'2*4/2 ~ f'4 d'2*3/2 \divisioMinima
c'2 a2 ~ a4 \finalis
d'4 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2*4/2 c'4 ~ c'2 ~ <c'a >2 bes4 \finalis
d'2*3/2 bes2*3/2 ~ bes2*4/2 a4 bes4 \finalis
}

tenorMusic = {
r2*13/2 \finalis
bes2 ~ bes2*3/2 ~ bes2*3/2 c'2 bes2 a4 \divisioMinima
r4 a2*4/2 g2 f4 \finalis
f2 d2 ~ d2 ~ d2 \finalis
bes2 ~ bes2 ~ bes2 ~ bes2 c'4 \finalis
f2 d2 ~ d2 ~ d2 \finalis
bes2 ~ bes2 ~ bes2 ~ bes2 c'4 \finalis
f2 ~ f2 g2*3/2 f2*4/2 ~ \divisioMinima
f4 ~ f2 bes2 ~ bes2*3/2 ~ bes4 a4 \finalis
r2*3/2 bes2*3/2 c'4 ~ \divisioMinima
c'2 ~ c'2*3/2 bes2*3/2 d'4 \divisioMinima
c'2*3/2 ~ c'4 bes2 ~ bes2 ~ bes2 a2 \finalis
f4 ~ f2*3/2 ~ f2*3/2 ~ f2*3/2 ~ f4 g2 f2 \divisioMinima
a2 bes2 ~ bes2 a4 \finalis
r2*7/2 \divisioMinima
r2*5/2 g2*4/2 \divisioMinima
a2*3/2 ~ a2*3/2 bes2*3/2 d'4 \finalis
bes2*3/2 a2*3/2 bes2*3/2 ~ bes2 a4 \divisioMinima
f4 ~ f2*3/2 ~ f2 ~ f2 ees2*3/2 ~ ees2 g4 \finalis
bes2*3/2 a2*3/2 bes2 a4 ~ a2*3/2 \divisioMinima
g2*4/2 a2 g2 a2 bes2*3/2 d'4 \finalis
f4 ~ f2*4/2 g4 a2 bes2 a2*3/2 \divisioMinima
f4 ~ f2*3/2 ~ f2 ~ f2 ees2*3/2 ~ ees2 g4 \finalis
bes2*4/2 a2 bes2*3/2 d'4 \finalis
f2 ~ f2 g4 ~ g2 f4 \finalis d'4 c'2*4/2 bes4 a2*3/2 ~ \divisioMinima
a2 g2 f4 \finalis
f4 g2 a2 g2*3/2 d4 \divisioMinima
f4 g2*4/2 a4 d2 ~ d2 ~ d4 \finalis
d2*3/2 ~ d2*3/2 ees2*4/2 g2 \finalis
}

bassMusic = {
r2*15/2 a2*3/2 g2*3/2 ~ g2 ~ g2 ~ g4 ~ \divisioMinima
g4 d2*4/2 ~ d2 ~ d4 \finalis
bes,2 ~ bes,2 a,2 g,2 \finalis
r2 a2 g2 ~ g2 f4 \finalis
bes,2 ~ bes,2 a,2 g,2 \finalis
r2 a2 g2 ~ g2 f4 \finalis
d2 bes,2 ~ bes,2*3/2 d2*4/2 \divisioMinima
c4 bes,2 ~ bes,2 c2*3/2 f2 \finalis
g2*3/2 ~ g2*3/2 f4 ~ \divisioMinima
f2 d2*3/2 ~ d2*3/2 ~ d4 ~ \divisioMinima
d2*3/2 g4 ~ g2 c2 ees2 f2 \finalis
bes,4 a,2*3/2 d2*3/2 c2*3/2 bes,4 ~ bes,2 d2 ~ \divisioMinima
d2 c2 f2 ~ f4 \finalis
g2*3/2 bes2*3/2 d'4 \divisioMinima
c'2 bes2*6/2 f4 ~ \divisioMinima
f2*3/2 d2*3/2 ~ d2*3/2 ~ d4 \finalis
g2*3/2 d2*3/2 c2*3/2 f2 ~ f4 \divisioMinima
d4 c2*3/2 bes,2 g,2 ~ g,2*3/2 ~ g,2 ~ g,4 \finalis
r2*6/2 g2 ~ g4 d2*3/2 \divisioMinima
ees2*4/2 d2 ~ d2 ~ d2 ~ d2*3/2 ~ d4 \finalis
d4 c2*4/2 bes,4 ~ bes,2 ~ bes,2 d2*3/2 ~ \divisioMinima
d4 c2*3/2 bes,2 g,2 ~ g,2*3/2 ~ g,2 ~ g,4 \finalis
g2*4/2 d2 ~ d2*3/2 ~ d4 \finalis
c2 bes,2 ~ bes,4 a,2 ~ a,4 \finalis d4 ~ d2*4/2 ~ d4 ~ d2*3/2 ~ \divisioMinima
d2 ~ d2 ~ d4 \finalis
bes,4 ~ bes,2 ~ bes,2 ~ bes,2*3/2 ~ bes,4 ~ \divisioMinima
bes,4 ~ bes,2*4/2 a,4 ~ a,2 g,2 ~ g,4 \finalis
bes,2*3/2 g,2*3/2 ~ g,2*4/2 ~ g,2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*176/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f2*1/2 f2*1/2


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "III."
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
