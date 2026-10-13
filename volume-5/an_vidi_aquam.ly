\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.2
%(volume.page)

%Proofed 3/14

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Vi -- di _ a -- quam 
\set stanza = " * " e -- gre -- _ di -- én -- tem de tem -- _ _ plo, _ 
a lá -- _ te -- re dex -- _ tro, 
al -- le -- lú -- _ ia: 
et o -- mnes, ad quos per -- vé -- nit a -- _ qua i -- sta, _ _ 
sal -- _ _ vi fa -- cti sunt, et di -- _ cent, 
al -- le -- lú -- ia, al -- le -- _ lú -- ia. 
\set stanza = " Ps. 117 " 
Con -- fi -- té -- mi -- ni Dó -- mi -- no quó -- ni -- am bo -- nus: 
\set stanza = " * " 
quó -- ni -- am in sǽ -- cu -- lum mi -- se -- ri -- cór -- di -- a e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 ( g'4) g'4 ( ees'4) g'4 ( f'4) f'4 ( g'4 f'4) f'4 \divisioMinima
 f'4 f'4 ( g'4) bes'4 ( a'4) a'4 ( g'4) bes'4 ( bes'4) g'4 ( a'4) f'4 ( g'4) f'4 \forceBreak
 bes'4 ( bes'4) c''4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4) g'4 ( a'4 g'4) \divisioMaior
 f'4 ( g'4) f'4 bes'4 ( bes'4 c''4) g'4 g'4 ( f'4) g'4 bes'4 ( f'4 g'4) f'4 ( ees'4) \divisioMaior
 f'4 f'4 ( g'4 ees'4 f'4) \forceBreak
 f'4 ( g'4) bes'4 ( g'4 a'4) g'4 ( f'4) \divisioMaxima
 f'4 ( g'4) f'4 ( \quil g' a'4 bes'4) bes'4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( bes'4) a'4 \divisioMinima
 bes'4 ( bes'4) bes'4 ( a'4) \forceBreak
 g'4 ( c''4) bes'4 ( a'4) bes'4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4 f'4) g'4 ( f'4) \divisioMaior
 f'4 bes'4 ( bes'4) bes'4 ( c''4) bes'4 bes'4 ( \quil c'' d''4 c''4) bes'4 ( a'4 g'4) g'4 \divisioMinima
 \forceBreak
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 bes'4 ( f'4 g'4) f'4 ( ees'4) \divisioMaior
 f'4 ( g'4) g'4 g'4 ( a'4 \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 g'4 ( f'4 ees'4) f'4 ( g'4) bes'4 ( g'4 \quil a' bes'4) f'4 ( g'4 f'4) f'4 \finalis
 \forceBreak
 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4
 bes'4 \forceBreak bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) f'4 ( g'4) bes'4 ( a'4) g'4 f'4 \finalis
 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 \forceBreak
 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) f'4 ( g'4) bes'4 ( a'4) g'4 f'4 \finalis

}

altoMusic = {
d'2 c'2*4/2 ees'2*3/2 d'4 ~ \divisioMinima
d'4 ~ d'2 ~ d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2 f'2 ~ f'2 d'2 ~ d'4 -\tweak Glissando.Y-offset #-0.8 \glissando \divisioMaior
f'4 g'4 f'4 ~ f'2*4/2 d'2*3/2 ~ d'2*3/2 c'2 ~ \divisioMaior
c'4 bes2*4/2 c'2 d'2*3/2 c'2 \divisioMaxima
d'2 ees'2*4/2 f'2*3/2 ~ f'2 ~ f'2*3/2 \divisioMinima
d'2*4/2 ~ d'2 ~ d'2 f'2*4/2 ~ f'2*3/2 ~ f'4 d'2 ~ \divisioMaior
d'4 ~ d'2 ees'2*3/2 f'2*4/2 ~ f'2*3/2 ~ f'4 \divisioMinima
d'2*3/2 ~ d'2*3/2 c'2 ~ \divisioMaior
c'2*3/2 ~ c'2*3/2 bes4 \divisioMinima
d'2*3/2 ~ d'2*3/2 ees'2*3/2 c'2*3/2 ~ c'4 \finalis
r4 d'2 ~ d'2*4/2 ~ d'2*3/2 f'2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
f'2 g'2*4/2 ~ g'2*6/2 f'2*3/2 ~ f'2 ees'2 c'2 \finalis
r4 d'2 ~ d'2*5/2 ~ d'2*3/2 ~ \divisioMinima
d'2 f'2 ~ f'2*3/2 ~ f'2*3/2 \divisioMaxima
ees'2 ~ ees'2*6/2 f'2*3/2 ~ \divisioMinima
f'2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
d'2 ees'2 f'2*4/2 ~ f'2*3/2 ~ f'2 ees'2 c'2 \finalis
}

tenorMusic = {
bes2*6/2 ~ bes2*3/2 ~ bes4 ~ \divisioMinima
bes4 ~ bes2 ~ bes2 c'2 bes2*4/2 a2*3/2 \shiftRight g2 f2 c'2 ~ c'2 bes4 \divisioMaior
c'2*3/2 bes2*4/2 a2*3/2 g2*3/2 ~ g2 ~ \divisioMaior
g4 ~ g2*4/2 ~ g2 ~ g2*3/2 a2 \divisioMaxima
bes2 ~ bes2*4/2 ~ bes2*3/2 d'2 c'2*3/2 ~ \divisioMinima
c'2 bes2 a2 \shiftRight g2 f2*4/2 g2*4/2 a2 ~ \divisioMaior
a4 g2 ~ g2*3/2 f2*4/2 c'2*3/2 bes4 \divisioMinima
a2*3/2 g2*3/2 ~ g2 \divisioMaior
d2*3/2 ~ d2*3/2 ~ d4 \divisioMinima
r2*3/2 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 a4 \finalis
bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 c'2 a2*3/2 bes2*3/2 \divisioMaxima
d'2 ~ d'2*4/2 c'2*6/2 ~ c'2*3/2 bes2 ~ bes2 ~ bes4 a4 \finalis
bes2*3/2 ~ bes2*5/2 ~ bes2*3/2 ~ \divisioMinima
bes2 c'2 a2*3/2 bes2*3/2 \divisioMaxima
c'2 bes2*6/2 ~ bes2*3/2 \divisioMinima
c'2 a2*3/2 g2*3/2 \divisioMaxima
g2 ~ g2 f2*4/2 ~ f2*3/2 bes2 c'2 bes4 a4 \finalis
}

bassMusic = {
r2*10/2 \divisioMinima
r4 a2 g2 ~ g2 ~ g2*4/2 ~ g2*3/2 ~ g2 d2 ~ d2 g2 ~ g4 \divisioMaior
a2*3/2 d2*4/2 ~ d2*3/2 bes,2*3/2 c2 ~ \divisioMaior
c4 g,2*4/2 a,2 bes,2*3/2 a,2 \divisioMaxima
bes,2 c2*4/2 d2*3/2 ~ d2 f2*3/2 \divisioMinima
g2 ~ g2 ~ g2 ~ g2 d2*4/2 ~ d2*4/2 ~ d2 \divisioMaior
bes,4 ~ bes,2 c2*3/2 d2*4/2 ~ d2*3/2 ~ d4 ~ \divisioMinima
d2*3/2 bes,2*3/2 c2 \divisioMaior
a,2*3/2 g,2*3/2 ~ g,4 \divisioMinima
bes,2*3/2 ~ bes,2*3/2 c2*3/2 f2*3/2 ~ f4 \finalis
r2*3/2 a2*4/2 g2*3/2 f2 ~ f2*3/2 g2*3/2 \divisioMaxima
d2 ees2*4/2 ~ ees2*6/2 f2*3/2 d2 c2 f2 \finalis
r2*3/2 a2*5/2 g2*3/2 ~ \divisioMinima
g2 f2 ~ f2*3/2 d2*3/2 \divisioMaxima
c2 ~ c2*6/2 d2*3/2 \divisioMinima
f2 ~ f2*3/2 \shiftRight g2*3/2 \divisioMaxima
bes,2 c2 d2*4/2 \shiftRight f2*3/2 d2 c2 f2 \finalis
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
        "Ant."
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
