\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.5
%(volume.page)

% Proofed 2/18

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Ký -- ri -- e, 
\set stanza = " * " e -- lé -- i -- son. 
Ký -- ri -- e, e -- lé -- i -- son. 
Ký -- ri -- e, e -- lé -- i -- son. 
Chri -- ste, _ _ e -- lé -- i -- son. 
Chri -- ste, _ _ e -- lé -- i -- son. 
Chri -- ste, _ _ e -- lé -- i -- son. 
Ký -- ri -- e, e -- lé -- i -- son. 
Ký -- ri -- e, e -- lé -- i -- son. 
Ký -- ri -- e _ _ 
\set stanza = " * " e -- lé -- i -- son. }

chantMusic = {
\tieDown   f'4 ( g'4 bes'4) g'4 g'4 ( bes'4) ~ bes'4 ( a'4 f'4)  g'4 ( f'4 ees'4) f'4 f'4 d'4 \finalis
 f'4 ( g'4 bes'4) g'4 g'4 ( bes'4) ~ bes'4 ( a'4 f'4)
 g'4 ( f'4 ees'4) f'4 f'4 d'4 \finalis
 \forceBreak
 f'4 ( g'4 bes'4) g'4 g'4 ( bes'4) ~ bes'4 ( a'4 f'4)  g'4 ( f'4 ees'4) f'4 f'4 d'4 \finalis
 bes'4 ( c''4 bes'4) a'4 ( g'4 bes'4.)
 g'4 ( bes'4 a'4) f'4 ( ees'4 g'4) \divisioMinima
 \forceBreak
 g'4 ( a'4 bes'4 a'4 g'4 f'4) d'4 ees'4 f'4 \finalis
 bes'4 ( c''4 bes'4) a'4 ( g'4 bes'4.) g'4 ( bes'4 a'4) f'4 ( ees'4 g'4) \divisioMinima
 g'4 ( a'4 bes'4 a'4 g'4 f'4)
 \forceBreak
 d'4 ees'4 f'4 \finalis
 bes'4 ( c''4 bes'4) a'4 ( g'4 bes'4.) g'4 ( bes'4 a'4) f'4 ( ees'4 g'4) \divisioMinima
 g'4 ( a'4 bes'4 a'4 g'4 f'4) d'4 ees'4 f'4 \finalis
 \forceBreak
 f'4. ( a'4 \quil bes' c''4) bes'4 c''4 ( d''4 c''4) ~ c''4 ( a'4) \divisioMinima
 c''4 ( bes'4 a'4 g'4 f'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
 f'4. ( a'4 \quil bes' c''4) bes'4 c''4 ( d''4 c''4) ~ c''4 ( a'4) \divisioMinima
 \forceBreak
 c''4 ( bes'4 a'4 g'4 f'4) g'4 ( a'4 g'4) g'4 f'4 \finalis
 a'4 g'4 ( f'4) f'4 ( a'4 \quil bes' c''4.) bes'4 ( c''4) d''4 ( c''4) ~ c''4 ( a'4) \divisioMinima
 c''4 ( bes'4 a'4 g'4 f'4) g'4 ( a'4 g'4) g'4 f'4 \finalis

}

altoMusic = {
f'2*5/2 ~ f'2*4/2 d'2*3/2 c'2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 \finalis
d'2*5/2 bes2*4/2 ~ bes2*3/2 a2 ~ a4 \finalis
f'2*5/2 ~ f'2*3/2 ~ f'4 d'2*3/2 c'2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 \finalis
d'2*3/2 ~ d'2 c'2*3/4 bes2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 ees'2 \divisioMinima
d'2*4/2 c'2 bes2 c'4 \finalis
g'2*3/2 ~ g'2*7/4 ~ g'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 ees'2 \divisioMinima
d'2 ~ d'2 c'2 bes2 c'4 \finalis
d'2*3/2 ~ d'2 c'2*3/4 bes2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 ees'2 \divisioMinima
d'2*4/2 c'2 bes2 c'4 \finalis
f'2*11/4 g'2 a'2 ~ a'4 \divisioMinima
f'2*4/2 ~ f'4 d'2*3/2 c'2 \finalis
c'2*11/4 d'2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 c'2 bes2*3/2 a2 \finalis
r2*3/2 f'2*9/4 ~ f'2*3/2 ~ f'2*3/2 \divisioMinima
d'2*3/2 ~ d'2 ees'2*3/2 c'2 \finalis
}

tenorMusic = {
d'2*5/2 c'2*4/2 bes2*3/2 a2 f4 \finalis
f2*5/2 ~ f2*4/2 ees2*3/2 \shiftRight d2 f4 \finalis
d'2*5/2 c'2*4/2 bes2*3/2 a2 f4 \finalis
g2*3/2 ~ g2 ~ g2*3/4 f2*3/2 g2*3/2 ~ \divisioMinima
g2*4/2 ~ g2 ~ g2 a4 \finalis
d'2*3/2 c'2 d'2*3/4 ~ d'2*3/2 c'2*3/2 ~ \divisioMinima
c'2 bes2 a2 \shiftRight g2 a4 \finalis
g2*3/2 ~ g2 ~ g2*3/4 f2*3/2 g2*3/2 ~ \divisioMinima
g2*4/2 ~ g2 ~ g2 a4 \finalis
f'2*11/4 ~ f'2 ~ f'2*3/2 \divisioMinima
d'2*5/2 bes2*3/2 ~ bes4 a4 \finalis
f2*11/4 ~ f2 ~ f2*3/2 ~ \divisioMinima
f2*3/2 ~ f2 ees2*3/2 \shiftRight f2 \finalis
r4 d'2 c'2*9/4 d'2*3/2 ~ d'2*3/2 \divisioMinima
r2*3/2 bes2 ~ bes2*3/2 ~ bes4 a4 \finalis
}

bassMusic = {
bes2*5/2 f2*4/2 ees2*3/2 d2 ~ d4 \finalis
bes,2*5/2 d2*4/2 c2*3/2 d2 ~ d4 \finalis
bes2*5/2 f2*4/2 ees2*3/2 d2 ~ d4 \finalis
r2*3/2 f2 ees2*3/4 d2*3/2 c2*3/2 \divisioMinima
bes,2*4/2 a,2 g,2 f,4 \finalis
g2*3/2 ~ g2 ~ g2*3/4 bes2*3/2 \shiftRight c'2*3/2 \divisioMinima
g2 ~ g2 ~ g2 ~ g2 f4 \finalis
r2*3/2 f2 ees2*3/4 d2*3/2 c2*3/2 \divisioMinima
bes,2*4/2 a,2 g,2 f,4 \finalis
r2*37/4 f2 \finalis
a,2*11/4 bes,2 d2*3/2 \divisioMinima
g,2*3/2 a,2 c2*3/2 f2 \finalis
r2*3/2 a2*9/4 g2*3/2 d2*3/2 \divisioMinima
g2*3/2 ~ g2 c2*3/2 f2 \finalis
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
