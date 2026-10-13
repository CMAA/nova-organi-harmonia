\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.4
%(volume.page)

%Proofed 3/14

global = {
 \key fis \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
A -- spér -- ges me, 
\set stanza = " * " Dó -- mi -- ne, hys -- só -- po, et mun -- dá -- bor: 
la -- vá -- bis me, et su -- per ni -- vem de -- al -- bá -- bor. 
\set stanza = " Ps. 50 " 
Mi -- se -- ré -- re me -- i De -- us, 
\set stanza = " * " 
se -- cún -- dum ma -- gnam mi -- se -- ri -- cór -- di -- am tu -- am. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 g'4 ( fis'4) e'4 ( fis'4) fis'4 \divisioMinima
 fis'4 a'4 a'4 ( b'4)  b'4 ( c''4) b'4 a'4 ( g'4) a'4 ( b'4) a'4 ( g'4) fis'4 ( g'4) fis'4 ( e'4) \divisioMaxima
 \forceBreak
 d'4 ( e'4) g'4 ( fis'4) g'4 ( a'4) a'4 \divisioMinima
 a'4  b'4 ( c''4) b'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( b'4) a'4 ( \once \tweak #'font-size #-4 g'4 ) fis'4 fis'4 \finalis
 \forceBreak
 b'4 a'4 ( b'4) b'4 b'4 a'4 b'4 cis''4 b'4 \divisioMaxima
 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4
 a'4 b'4 cis''4 ( b'4) \forceBreak a'4 ( g'4) fis'4 \finalis
 b'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4
 a'4 b'4 cis''4 b'4 \divisioMaxima \forceBreak
 b'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 a'4 b'4 cis''4 b'4 \divisioMaxima
 b'4 b'4 b'4 b'4 b'4 \forceBreak b'4 a'4 b'4 cis''4 ( b'4) a'4 ( g'4) fis'4 \finalis

}

altoMusic = {
r4 e'2 ~ e'2 d'4 \divisioMinima
fis'2 d'2 ~ d'2*3/2 ~ d'2 e'2 ~ e'2 fis'2 b2 \divisioMaxima
a2 b2 d'2 ~ d'4 \divisioMinima
e'4 ~ e'2*3/2 ~ e'4 d'2 ~ d'2 cis'!2 d'2 \finalis
fis'4 ~ fis'2 ~ fis'2 ~ fis'2 ~ fis'2 \divisioMaxima
fis'2*8/2 ~ fis'2 ~ fis'2 cis'2 ~ cis'4 \finalis
fis'4 ~ fis'2*6/2 ~ fis'2*3/2 ~ \divisioMinima
fis'2*3/2 e'2 fis'2 \divisioMaxima
fis'2*7/2 ~ fis'2*4/2 e'2 d'2 \divisioMaxima
fis'2*5/2 ~ fis'2*3/2 ~ fis'2 cis'2 ~ cis'4 \finalis
}

tenorMusic = {
r4 b2 ~ b2 ~ b4 \divisioMinima
a2 fis2 g2*3/2 e2 ~ e2 a2 ~ a2 g2 \divisioMaxima
fis2 e2 ~ e2 fis4 \divisioMinima
e4 a2*3/2 fis4 g2 e2 ~ e2 b2 \finalis
d'4 ~ d'2 ~ d'2 cis'2 e'4 d'4 \divisioMaxima
b2*8/2 cis'2 a2 b2 a4 \finalis
d'4 ~ d'2*6/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 cis'2 d'2 \divisioMaxima
b2*7/2 fis2*4/2 ~ fis2 ~ fis2 \divisioMaxima
fis2*5/2 b2*3/2 a2 b2 cis'4 \finalis
}

bassMusic = {
r4 e2 g2 \shiftRight b4 \divisioMinima
d2 ~ d2 b,2*3/2 ~ b,2 c2 ~ c2 e2 ~ e2 \divisioMaxima
r2*4/2 d2 ~ d4 \divisioMinima
c4 ~ c2*3/2 ~ c4 b,2 ~ b,2 ~ b,2 ~ b,2 \finalis
r4 cis'2 b2 ~ b2 ~ b2 \divisioMaxima
d2*8/2 fis2 ~ fis2 ~ fis2 ~ fis4 \finalis
r4 cis'2*6/2 b2*3/2 ~ \divisioMinima
b2*3/2 ~ b2 ~ b2 \divisioMaxima
d2*7/2 ~ d2*4/2 cis2 b,2 \divisioMaxima
d2*5/2 ~ d2*3/2 fis2 ~ fis2 ~ fis4 \finalis
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
    ragged-last = ##t
  }
  
}
