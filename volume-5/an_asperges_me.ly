\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.1
%(volume.page)

%Proofed 3/14

global = {
 \key d \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
A -- spér -- ges me, 
\set stanza = " * " Dó -- mi -- ne, hys -- só -- po, et mun -- dá -- bor: 
la -- vá -- bis me, 
et su -- per ni -- vem de -- al -- bá -- bor. 
\set stanza = " Ps. 50. " 
Mi -- se -- ré -- re me -- i, De -- us, 
\set stanza = " * " 
se -- cún -- dum ma -- gnam mi -- se -- ri -- cór -- di -- am tu -- am. 
Gló -- ri -- a Pa -- tri et Fí -- li -- o, et Spi -- rí -- tu -- i Sán -- cto: 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( e'4) g'4 ( fis'4 e'4) fis'4 ( g'4) a'4 \divisioMinima
 b'4 ( \quil c'' d''4) d''4 ( c''4) b'4 ( a'4) \divisioMinima
 b'4 a'4 ( g'4) fis'4 ( g'4)
 a'4 ( g'4 e'4) fis'4 d'4 ( e'4 d'4) d'4 \divisioMaxima \forceBreak
 d'4 ( e'4) g'4 ( fis'4 e'4) fis'4 ( g'4) a'4 \divisioMaior
 a'4 ( \quil b' c''4 b'4 a'4) g'4 ( fis'4) e'4 g'4 fis'4 ( g'4)
 a'4 ( g'4 e'4) fis'4 d'4 ( e'4 d'4) d'4 \finalis \forceBreak
 d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 ( c''4) b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 a'4 a'4 a'4 a'4 \forceBreak
 a'4 ( \quil b' c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis
 d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 
 a'4 a'4 a'4 \divisioMinima \forceBreak
 a'4 a'4 a'4 ( c''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 \forceBreak
 a'4 a'4 ( c''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( \quil b' c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis

}

altoMusic = {
b2 ~ b2*3/2 e'2 d'4 ~ \divisioMinima
d'2*3/2 e'2 d'2 ~ \divisioMinima
d'4 b2 ~ b2 a2*4/2 ~ a2*3/2 ~ a4 \divisioMaxima
b2 ~ b2*3/2 d'2 ~ d'4 \divisioMaior
e'2 ~ e'2*3/2 d'2*3/2 ~ d'2*3/2 c'2*4/2 a2*3/2 ~ a4 \finalis
r2*3/2 g'2 fis'2 e'2*3/2 fis'2 ~ fis'2 \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2*5/2 e'2*3/2 d'2 c'2*3/2 a2 \finalis
r2*3/2 g'2*6/2 fis'2*3/2 ~ \divisioMinima
fis'2 e'2*4/2 fis'2 ~ fis'2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 e'2*3/2 ~ \divisioMinima
e'4 ~ e'2*3/2 d'2 ~ d'2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 e'2*3/2 d'2 c'2*3/2 a2 \finalis
}

tenorMusic = {
g2 ~ g2*3/2 a2 fis4 \divisioMinima
g2*3/2 ~ g2 fis2 ~ \divisioMinima
fis4 e2 ~ e2 ~ e2*3/2 g4 ~ g2*3/2 fis4 \divisioMaxima
g2 ~ g2*3/2 a2 fis4 \divisioMaior
e2 a2*3/2 ~ a2*3/2 g2*3/2 ~ g2*4/2 ~ g2*3/2 fis4 \finalis
d'2*3/2 ~ d'2 ~ d'2 c'2*3/2 d'2 ~ d'2 \divisioMaxima
fis2 e2*3/2 fis2*5/2 g2*3/2 ~ g2 ~ g2*3/2 ~ g4 fis4 \finalis
d'2*3/2 ~ d'2*6/2 ~ d'2*3/2 ~ \divisioMinima
d'2 c'2*4/2 d'2 ~ d'2 \divisioMaxima
fis2 e2 fis2*4/2 g2*3/2 ~ \divisioMinima
g4 ~ g2*3/2 fis2 ~ fis2 \divisioMaxima
fis2 e2 fis2*4/2 g2*3/2 ~ g2 ~ g2*3/2 ~ g4 fis4 \finalis
}

bassMusic = {
r2 e2*3/2 d2 ~ d4 \divisioMinima
b,2*3/2 c2 d2 ~ \divisioMinima
d4 \shiftRight e2 d2 c2*3/2 ~ c4 d2*3/2 ~ d4 \divisioMaxima
r2 e2*3/2 d2 ~ d4 \divisioMaior
c2 ~ c2*3/2 b,2*3/2 ~ b,2*3/2 a,2*4/2 d2*3/2 ~ d4 \finalis
r2*12/2 b2 \divisioMaxima
d2 ~ d2*3/2 ~ d2*5/2 c2*3/2 b,2 a,2*3/2 d2 \finalis
r2*12/2 \divisioMinima
r2*8/2 b2 \divisioMaxima
d2 ~ d2 ~ d2*4/2 c2*3/2 ~ \divisioMinima
c4 a,2*3/2 d2 b,2 \divisioMaxima
d2 ~ d2 ~ d2*4/2 c2*3/2 b,2 a,2*3/2 d2 \finalis
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
