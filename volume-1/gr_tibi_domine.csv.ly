\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.270
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tibi Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tibi Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tibi Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Ti -- _ bi 
\set stanza = " * " Dó -- mi -- ne _ _ _ _ _ _ 
de -- re -- lí -- _ ctus _ est _ _ 
pau -- _ _ _ _ _ _ _ _ per: 
pu -- píl -- _ _ lo _ _ _ 
tu e -- _ ris ad -- jú -- tor. _ _ _ _ _ _ _ ℣. 
Ut quid Dó -- mi -- ne _ _ _ _ _ _ _ _ _ _ _ 
re -- ces -- sí -- _ _ sti _ _ _ lon -- ge, 
dé -- spi -- cis in op -- por -- tu -- ni -- _ tá -- _ ti -- bus, 
in tri -- bu -- la -- ti -- ó -- _ _ _ ne? 
dum su -- pér -- _ bit ím -- _ pi -- us, 
in -- cén -- di -- _ tur 
\set stanza = " * " pau -- _ _ _ _ _ _ _ _ _ _ per. }

chantMusic = {
\tieDown   c'4 ( e'4) g'4 ( f'4 f'4) f'4 \divisioMinima
 e'4 ( f'4 g'\prall a'4) g'4 g'4 ( a'4 g'4) f'4 ( g'4 f'4 d'4) \divisioMinima
  f'4 ( a'4 g'4.) a'4 ( bes'4 a'4 g'4) a'4 ( f'4) g'4 ( f'4) ~ f'4 ( e'4) \divisioMaior \forceBreak

 g'4 a'4 ( b'4) b'4 ( d''4 b'4) c''4 ( d''4) d''4 ( c''4) ~ c''4 ( b'4 a'4 b'4) a'4. g'4 ( c''4 a'4) ~ a'4 ( g'4) \divisioMaior
 g'4 ( d'4.) f'4 ( e'4 f'4.) d'4 ( e'4 f'4 g'4 a'4 \forceBreak
) c''4 ( b'4 a'4.) c''4 ( g'4 f'4) ~ f'4 ( d'4) \divisioMinima
 f'4 ( g'4 e'4.) f'4 ( g'4 f'4 e'4) f'4 ( e'4 d'4 e'\prall f'4 e'4 f'4) e'4 ( d'4) \divisioMaxima
 g'4 a'4 ( d''4 c''4) d''4 ( b'4) c''4 ( d''4 \forceBreak
) d''4 ( c''4) ~ c''4 ( a'4 g'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMaior
 g'4 a'4 ( g'4) a'4 ( b'\prall c''4 b'4 c''4) g'4 ( a'4 b'\prall c''4 b'4 a'4 g'4 a'4) e'4 ( f'4) e'4 ( f'4) e'4 ( f'4) ~ f'4 ( g'4) \divisioMinima \forceBreak

 g'4 c''4 ( c''4) ~ c''4 ( a'4) g'4 ( g'4 f'4) g'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( e'4) \finalis
 g'4 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 b'4 ( c''4 d''4) b'4 ( c''4 b'4.) a'4 ( c''4 b'4 c''4) a'4 ( b'4 a'4 g'4 b'4) \divisioMinima \forceBreak

 b'4 ( e''4 f''4 d''4 b'4.) d''4 ( e''4 c''4 a'4.) c''4 ( b'4 c''4 a'4 g'4) c''4 ( g'4) b'4 ( c''4.) g'4 ( a'4) c''4 ( c''4) ~ c''4 ( a'4 g'4 f'4) ~ f'4 ( d'4) \divisioMaior
 d'4 ( f'4 g'4 \forceBreak
) g'4 a'4. f'4 ( a'4) c''4 ( b'4 c''4) a'4. g'4 ( a'4 b'4) a'4 ( b'4 a'4) b'4 ( g'4 a'4) e'4 ( g'4 f'4 g'4) e'4 \divisioMaxima
 g'4 ( c''4) c''4 c''4 c''4 \forceBreak
 c''4 c''4 c''4 c''4 ( c''4) ~ c''4 ( a'4 d''4) d''4 ( c''4) ~ c''4 ( a'4) c''4 ( a'4 b'4 g'4) g'4 \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 d' ) g'4 ( a'4 g'4) g'4 ( d'4) g'4 \forceBreak
 a'4 ( c''4) b'4 ( b'4 c''4 b'4 g'4 a'4) c''4 ( a'4) ~ a'4 ( f'4 g'4.) c''4 ( c''4 a'4 b'4 g'4) g'4 \divisioMaxima
 f'4 g'4 g'4 c''4 ( c''4) b'4 ( c''4 g'4 f'4 g'4 \forceBreak
) g'4 ( a'4 g'4 f'4) g'4 ( a'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaior
 g'4 a'4 ( b'4) g'4 ( b'4 a'4) b'4 ( c''4) b'4  c''4 ( b'4 a'4) c''4 ( b'4 g'4) a'4 ( c''4) \divisioMinima \forceBreak

 c''4 ( c''4) ~ c''4 ( a'4) c''4 ( c''4 b'4 a'4.) b'4 ( c''4 a'4 g'4) a'4 ( c''4 b'4 g'4) a'4 ( a'4) g'4 ( a'4 e'4) f'4 ( \once \tweak #'font-size #-4 g' ) f'4 ( e'4) \finalis

}

altoMusic = {
c'2 ~ c'2*3/2 d'4 \divisioMinima
c'2*5/2 ~ c'2*7/2 d'2*7/4 ~ d'2*7/2 c'2*3/2 \divisioMaior
d'2*3/2 g'2*6/2 ~ g'2*5/2 ~ g'2*3/4 f'2 e'2*3/2 \divisioMaior
d'2*5/4 c'2 ~ c'2*3/4 ~ c'2*5/2 ~ c'2*11/4 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*3/4 ~ c'2*4/2 a2 ~ a2*5/2 ~ a2 \divisioMaxima
r4 f'2*7/2 g'4 ~ g'2*3/2 ~ g'2 e'2*3/2 ~ \divisioMaior
e'4 ~ e'2 ~ e'2*5/2 d'2*3/2 c'2*7/2 ~ c'2*3/2 ~ c'2 b4 \divisioMinima
d'4 c'2 ~ c'2 ~ c'2*3/2 d'2*4/2 e'2 ~ e'4 ~ \finalis
e'4 d'2 e'4 g'2*3/2 f'2*7/4 g'2*4/2 e'2*4/2 ~ e'4 \divisioMinima
g'2 f'2*7/4 e'2*9/4 ~ e'2*5/2 g'2 ~ g'2*5/4 ~ g'2 f'2 e'2*3/2 d'2 ~ d'4 ~ \divisioMaior
d'4 c'2 ~ c'4 ~ c'2*3/4 ~ c'2 ~ c'2*3/2 ~ c'2*3/4 d'2*3/2 e'2*3/2 ~ e'2*3/2 c'2*4/2 ~ c'4 \divisioMaxima
g'2*5/2 ~ g'2*3/2 ~ g'2 f'2*3/2 g'4 ~ g'2*3/2 d'2*4/2 ~ d'4 ~ \divisioMaior
d'2 ~ d'2*3/2 ~ d'2*3/2 g'2 ~ g'2*7/2 f'2*3/2 ~ f'2*3/4 g'2*3/2 d'2 ~ d'4 \divisioMaxima
f'2 g'4 ~ g'2 e'2*5/2 c'2*4/2 d'2*3/2 ~ d'2*4/2 c'2 \divisioMaior
d'4 ~ d'2 ~ d'2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 \divisioMinima
g'2 f'2 e'2*9/4 ~ e'2*4/2 d'2*4/2 c'2 ~ c'2*3/2 ~ c'2 ~ c'2 \finalis
}

tenorMusic = {
a2 ~ a2*3/2 ~ a4 ~ \divisioMinima
a2*5/2 f2*7/2 ~ f2*7/4 g2*7/2 a2*3/2 \divisioMaior
b2*3/2 d'2*6/2 e'2*5/2 c'2*3/4 ~ c'2 ~ c'2*3/2 \divisioMaior
a2*5/4 g2 a2*3/4 f2*5/2 e2*11/4 f2*3/2 ~ \divisioMinima
f2 g2*3/4 a2*4/2 ~ a2 g2*5/2 f2 \divisioMaxima
c'4 ~ c'2*7/2 ~ c'4 d'2*3/2 c'2 b2*3/2 ~ \divisioMaior
b4 ~ b2 a2*5/2 e2*3/2 ~ e2*7/2 g2*3/2 d2 ~ d4 \divisioMinima
e4 ~ e2 f2 g2*3/2 ~ g2*4/2 ~ g2*3/2 \finalis
c'4 ~ c'2 ~ c'4 d'2*3/2 ~ d'2*7/4 c'2*4/2 b2*4/2 g4 ~ \divisioMinima
g2 a2*7/4 ~ a2*9/4 g2*5/2 ~ g2 d'2*5/4 c'2 ~ c'2 ~ c'2*3/2 a2 f4 ~ \divisioMaior
f4 ~ f2 ~ f4 e2*3/4 f2 g2*3/2 f2*3/4 e2*3/2 ~ e2*3/2 g2*3/2 a2*4/2 g4 \divisioMaxima
c'2*5/2 g2*3/2 a2 ~ a2*3/2 ~ a4 c'2*3/2 ~ c'2*4/2 b4 \divisioMaior
a2 b2*3/2 ~ b2*3/2 c'2 d'2*7/2 c'2*3/2 ~ c'2*3/4 ~ c'2*3/2 ~ c'2 b4 \divisioMaxima
c'2 ~ c'4 g2 ~ g2*5/2 ~ g2*4/2 ~ g2*3/2 ~ g2*4/2 ~ g2 ~ \divisioMaior
g4 d2 e2*3/2 ~ e2*3/2 g2*3/2 f2*3/2 e2 \divisioMinima
g2 ~ g2 ~ g2*9/4 e2*4/2 ~ e2*4/2 ~ e2 f2*3/2 g2 a2 \finalis
}

bassMusic = {
r2 d2*3/2 ~ d4 \divisioMinima
a,2*5/2 ~ a,2*7/2 bes,2*7/4 ~ bes,2*7/2 a,2*3/2 \divisioMaior
a2*3/2 e2*6/2 ~ e2*5/2 ~ e2*3/4 d2 c2*3/2 ~ \divisioMaior
c2*5/4 ~ c2 a,2*3/4 ~ a,2*5/2 ~ a,2*11/4 ~ a,2*3/2 ~ \divisioMinima
a,2 ~ a,2*3/4 ~ a,2*4/2 d2 ~ d2*5/2 ~ d2 \divisioMaxima
e4 d2*7/2 e4 ~ e2*3/2 ~ e2 ~ e2*3/2 \divisioMaior
d4 c2 ~ c2*5/2 b,2*3/2 a,2*7/2 ~ a,2*3/2 ~ a,2 g,4 \divisioMinima
b,4 a,2 ~ a,2 ~ a,2*3/2 b,2*4/2 c,2*3/2 \finalis
r2*4/2 g2*3/2 e2*7/4 ~ e2*4/2 ~ e2*4/2 ~ e4 ~ \divisioMinima
e2 d2*7/4 c2*9/4 ~ c2*5/2 e2 ~ e2*5/4 ~ e2 d2 c2*3/2 d2 ~ d4 ~ \divisioMaior
d4 ~ d2 a,4 ~ a,2*3/4 ~ a,2 ~ a,2*3/2 ~ a,2*3/4 b,2*3/2 c2*3/2 ~ c2*3/2 ~ c2*4/2 ~ c4 \divisioMaxima
e2*5/2 ~ e2*3/2 ~ e2 d2*3/2 e4 ~ e2*3/2 g2*4/2 ~ g4 ~ \divisioMaior
g2 ~ g2*3/2 e2*3/2 ~ e2 c2*7/2 e2*3/2 d2*3/4 e2*3/2 g2 ~ g4 \divisioMaxima
d2 e4 ~ e2 c2*5/2 a,2*4/2 b,2*3/2 c2*4/2 ~ c2 \divisioMaior
b,4 ~ b,2 ~ b,2*3/2 a,2*3/2 ~ a,2*3/2 ~ a,2*3/2 ~ a,2 \divisioMinima
e2 d2 c2*9/4 ~ c2*4/2 b,2*4/2 a,2 ~ a,2*3/2 ~ a,2 ~ a,2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
        "III"
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
    \new Lyrics \lyricsto chant {
      \chantText
    }
  >>
  \layout{
  }
  \midi{
    \tempo 4 = 125
  }
}
