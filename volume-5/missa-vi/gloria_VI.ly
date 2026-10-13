\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.36
%(volume.page)

%Proofed 3/14

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Gló -- ri -- a in ex -- cél -- sis De -- o. 
Et in ter -- ra pax ho -- mí -- ni -- bus bo -- næ vo -- lun -- tá -- tis. 
Lau -- dá -- mus te. 
Be -- ne -- dí -- ci -- mus te. 
Ad -- o -- rá -- mus te. 
Glo -- ri -- fi -- cá -- mus te. _ _ 
Grá -- ti -- as á -- gi -- mus ti -- bi pro -- pter ma -- gnam gló -- ri -- am tu -- am. 
Dó -- mi -- ne De -- us, Rex cœ -- lé -- stis, De -- us Pa -- ter o -- mní -- po -- tens. 
Dó -- mi -- ne Fi -- li u -- ni -- gé -- ni -- te Je -- su Chri -- ste. 
Dó -- mi -- ne De -- us, A -- gnus De -- i, Fí -- li -- us Pa -- tris. 
Qui tol -- lis pec -- cá -- ta mun -- di, mi -- se -- ré -- re no -- bis. 
Qui tol -- _ lis pec -- cá -- ta mun -- di, sús -- ci -- pe de -- pre -- ca -- ti -- ó -- nem no -- stram. 
Qui se -- _ des ad déx -- te -- ram Pa -- tris, mi -- se -- ré -- re no -- bis. 
Quó -- ni -- am tu so -- lus san -- ctus. 
Tu so -- lus Dó -- mi -- nus. 
Tu so -- lus Al -- tís -- si -- mus, Je -- su Chri -- ste. 
Cum San -- _ cto Spí -- ri -- tu, in gló -- ri -- a De -- i Pa -- tris. 
A -- men. }

chantMusic = {
\tieDown   ees'4 ( f'4 g'4) ees'4 ( f'4) f'4 f'4 f'4 ( g'4) g'4 ( a'4) g'4 f'4 f'4 \finalis
 f'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4 f'4) ees'4 \forceBreak
 ees'4 ees'4 ( g'4) g'4 ( f'4) ees'4 ( f'4) f'4 \divisioMinima
 f'4 f'4 ( ees'4) d'4 ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 f'4 \finalis
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) g'4 ( g'4) f'4 \finalis
 \forceBreak
 f'4 f'4 ( g'4) g'4 ( a'4) g'4 g'4 ( g'4) f'4 \finalis
 f'4 f'4 ( g'4) g'4 ( a'4) g'4 ( g'4) f'4 \finalis
 f'4 f'4 f'4 ( bes'4 a'4) \forceBreak
 bes'4 ( c''4) bes'4 ( a'4) g'4 bes'4 ( bes'4 a'4 f'4) g'4 ( ees'4 f'4) \finalis
 ees'4 f'4 ( g'4) g'4 g'4 ( a'4) g'4 g'4 f'4 f'4 \divisioMinima
 \forceBreak
 f'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4 f'4) ees'4 g'4 ( f'4) ees'4 ( d'4) ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 f'4 \finalis
 f'4 ees'4 ( d'4) c'4 ( \quil d' ees'4 f'4) f'4 f'4 ( g'4)  \forceBreak
 g'4 f'4 f'4 ( f'4) ees'4 \divisioMinima
 g'4 ( f'4) f'4 f'4 ( bes'4) ~ bes'4 ( a'4) g'4 g'4 ( f'4) ees'4 ( d'4) ees'4 ( f'4) f'4 \finalis
 \forceBreak
 f'4 ees'4 ( d'4) c'4 ( \quil d' ees'4 f'4) f'4 f'4 ( g'4) g'4 f'4 f'4 ees'4 ees'4 \divisioMinima
 g'4 ( f'4) ees'4 ( d'4) ees'4 ( f'4) f'4 \finalis
 \forceBreak
 f'4 ( g'4) g'4 g'4 ( a'4) g'4 ( g'4) f'4 \divisioMinima
 f'4 ( g'4) g'4 ( a'4) g'4 ( g'4) f'4 \divisioMinima
 f'4 ( g'4) g'4 g'4 ( a'4) g'4 ( g'4) f'4 \finalis
 \forceBreak
 g'4 g'4 ( f'4 f'4) ees'4 g'4 ( bes'4) ~ bes'4 ( a'4) g'4 a'4 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMinima
 g'4 g'4 ( f'4) ees'4 ( d'4) ees'4 ( f'4) f'4 f'4 \finalis
 \forceBreak
 f'4 f'4 ( g'4) bes'4 ( g'4) g'4 g'4 ( f'4) ees'4 ( d'4) ees'4 ( f'4) f'4 ( ees'4 d'4) c'4 ( \quil d' ees'4 f'4) \divisioMinima
 g'4 ( bes'4) ~ bes'4 ( a'4) g'4 g'4 \forceBreak
 g'4 g'4 g'4 f'4 ( ees'4) f'4 ( g'4) g'4 f'4 f'4 \finalis
 f'4 f'4 ( g'4) bes'4 ( g'4) g'4 g'4 g'4 ( f'4) ees'4 ( d'4) ees'4 ( \once \tweak #'font-size #-4 f' ) \forceBreak
 f'4 ( ees'4 d'4) c'4 ( \quil d' ees'4 f'4) \divisioMinima
 g'4 g'4 ( f'4) ees'4 ( d'4) ees'4 ( f'4) f'4 f'4 \finalis
 f'4 f'4 ( g'4) g'4 g'4 ( a'4) g'4 g'4 ( a'4) \forceBreak
 g'4 ( g'4) f'4 \finalis
 f'4 ( g'4) g'4 g'4 ( a'4) g'4 ( g'4) f'4 f'4 \finalis
 f'4 f'4 ( g'4) g'4 g'4 ( a'4) g'4 f'4 f'4 ( g'4 f'4) \divisioMinima
 \forceBreak
 ees'4 ( d'4) ees'4 ( f'4) f'4 f'4 \finalis
 f'4 f'4 ( g'4) bes'4 ( g'4) g'4 g'4 ( a'4) g'4 f'4 \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4) ees'4 ( d'4) ees'4 ( f'4) \forceBreak
 f'4 f'4 ( g'4 f'4) d'4 ( ees'4 f'4) f'4 \finalis
 ees'4 ( d'4 c'4 )( \quil d' ees'4 f'4 g'4) ~ g'4 ( f'4) ees'4 ( f'4) \finalis

}

altoMusic = {
r2*14/2 \finalis
r4 d'2 c'2*4/2 ~ c'4 ~ c'2 ~ c'2 bes2 c'4 \divisioMinima
d'4 c'2 bes4 ~ bes2 c'2 \finalis
d'2 ~ d'2 c'2*3/2 \finalis
d'4 c'2 d'2*3/2 c'2*3/2 \finalis
d'4 c'2 ~ c'2 bes2 a4 \finalis
r4 f'4 ~ f'2*3/2 ees'2*4/2 d'4 c'2*4/2 ~ c'2*3/2 \finalis bes4 ~ bes2*3/2 ~ bes2*4/2 c'2 \divisioMinima
d'4 c'2 bes2*3/2 ~ bes4 ~ bes2 ~ bes2 ~ bes2 ~ bes4 a4 \finalis
bes2*3/2 c'2*4/2 d'4 c'2 ~ c'2 bes2*3/2 \divisioMinima
c'2 d'2 f'2*4/2 bes2 ~ bes2 c'2 ~ c'4 \finalis
bes2*3/2 g2*4/2 bes4 ~ bes2 ~ bes2 ~ bes2*3/2 ~ \divisioMinima
bes2 ~ bes2 ~ bes2 a4 \finalis
d'2*3/2 c'2 ~ c'2*3/2 \divisioMinima
d'2*3/2 ~ d'2 ~ d'2 \divisioMinima
f'2*3/2 ees'2 c'2 ~ c'4 \finalis
r4 bes2*3/2 ~ bes2 ~ bes2*3/2 c'2 ~ c'2 ~ c'4 \divisioMinima
ees'4 bes2 ~ bes2 c'2 ~ c'2 \finalis
r4 d'2*5/2 c'2 bes2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2 ~ \divisioMinima
bes4 ~ bes2*3/2 ~ bes2 c'2*3/2 ~ c'2 ~ c'2*3/2 ~ c'2 \finalis
r4 bes2*4/2 ~ bes2 ~ bes2*4/2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ \divisioMinima
bes4 ~ bes2 ~ bes2*4/2 ~ bes4 a4 \finalis
f'4 ~ f'2*3/2 ees'2 d'4 ~ d'2 ~ d'2*3/2 \finalis
d'2 ~ d'4 ees'2 ~ ees'2 c'2 \finalis
d'4 c'2 d'4 ~ d'2 ~ d'2 c'2*3/2 \divisioMinima
bes2 ~ bes2 c'2 \finalis
r4 d'2*5/2 c'2*4/2 ~ \divisioMinima
c'2 bes2 ~ bes2*4/2 ~ bes4 a2*3/2 bes2*3/2 a4 \finalis
g2 ~ g2*4/2 bes2*3/2 ~ bes4 a4 \finalis
}

tenorMusic = {
r2*14/2 \finalis
r4 bes2 ~ bes2*4/2 c'4 bes2 a2 g2 a4 \divisioMinima
bes4 ~ bes2 ~ bes4 ~ bes2 ~ bes4 a4 \finalis
bes2 f2 ~ f2*3/2 \finalis
bes4 ~ bes2*8/2 \finalis
f4 ~ f2 ~ f2 c2 ~ c4 \finalis
r2 d'2*3/2 c'2*4/2 bes4 c'2*4/2 bes2 a4 \finalis r4 c2*3/2 d2*4/2 c2 \divisioMinima
d4 ~ d2 ~ d2*3/2 ees4 d2 c2 bes,2 c2 \finalis
bes2*3/2 ~ bes2*4/2 ~ bes4 ~ bes2 a2 g2*3/2 \divisioMinima
a2 bes2 ~ bes2*4/2 ~ bes2 ~ bes2 ~ bes2 a4 \finalis
d2*3/2 ees2*4/2 ~ ees4 d2 ~ d2 ees2*3/2 \divisioMinima
d2 c2 ~ c2 ~ c4 \finalis
bes2*3/2 ~ bes2 a2*3/2 \divisioMinima
bes2*3/2 ~ bes2 a2 \divisioMinima
bes2*3/2 ~ bes2 ~ bes2 a4 \finalis
r4 d2*3/2 ees2 f2*3/2 g2 bes2 a4 \divisioMinima
bes4 ~ bes2 ~ bes2 ~ bes2 ~ bes4 a4 \finalis
r4 bes2*5/2 a2 g2 ~ g2 f2*3/2 ~ \shiftRight f2 g2 ~ \divisioMinima
g4 f2*3/2 ees2 g2*3/2 ~ g2 bes2*3/2 ~ bes4 a4 \finalis
r4 f2*4/2 ees2 d2*4/2 c2 d2*3/2 ees2*3/2 d4 ~ \divisioMinima
d4 ~ d2 c2*4/2 ~ c2 \finalis
d'4 c'2*3/2 ~ c'2 bes4 ~ bes2 a2*3/2 \finalis
bes2 g4 ~ g2 bes2 ~ bes4 a4 \finalis
bes4 ~ bes2 ~ bes4 c'2 bes2 a2*3/2 \divisioMinima
r2 bes2 ~ bes4 a4 \finalis
r4 f2*5/2 ~ f2*4/2 \divisioMinima
d2 ~ d2 c2*4/2 ~ c4 ~ c2*3/2 g2*3/2 f4 \finalis
r2 ees2*4/2 ~ ees2*3/2 c2 \finalis
}

bassMusic = {
s2*14/2 \finalis
s2*19/2 g2 f2 \finalis
bes,2 ~ bes,2 a,2*3/2 \finalis
r4 bes2 ~ bes2*3/2 a2*3/2 \finalis
bes,4 a,2 f,2 ~ f,2 ~ f,4 \finalis
s2*10/2 f2*4/2 ~ f2*3/2 \finalis bes,4 ~ bes,2*3/2 ~ bes,2*4/2 a,2 \divisioMinima
bes,4 a,2 g,2*3/2 ~ g,4 ~ g,2 ~ g,2 ~ g,2 f,2 \finalis
s2*15/2 \divisioMinima
r2*4/2 d2*4/2 ees2 g2 ~ g2 f4 \finalis
bes,2*3/2 ~ bes,2*4/2 ~ bes,4 ~ bes,2 g,2 ~ g,2*3/2 \divisioMinima
bes,2 ~ bes,2 g,2 f,4 \finalis
r2*8/2 \divisioMinima
r2*3/2 g2 d2 ~ \divisioMinima
d2*3/2 c2 f2 ~ f4 \finalis
r4 bes,2*3/2 c2 d2*3/2 ees2 ~ ees2 f4 \divisioMinima
ees4 ~ ees2 g2 ~ g2 f2 \finalis
r2*10/2 c2 d2*3/2 f2 ~ f2 \divisioMinima
ees4 d2*3/2 \shiftRight ees2 ~ ees2*3/2 c2 ~ c2*3/2 f2 \finalis
r4 g,2*4/2 ~ g,2 bes,2*4/2 ~ bes,2 ~ bes,2*3/2 ~ bes,2*3/2 ~ bes,4 \divisioMinima
a,4 g,2 ~ g,2*4/2 f,2 \finalis
r2*7/2 g2 d2*3/2 \finalis
bes,2 ~ bes,4 c2 ~ c2 f2 \finalis
r2*11/2 \divisioMinima
g2 ~ g2 f2 \finalis
r4 bes,2*5/2 a,2*4/2 ~ \divisioMinima
a,2 g,2 ~ g,2*4/2 f,4 ~ f,2*3/2 ~ f,2*3/2 ~ f,4 \finalis
c2 ~ c2*4/2 g,2*3/2 ~ g,4 f,4 \finalis
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
