\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.112
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In excelso throno" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In excelso throno"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In excelso throno" }
    \line {}
  }
}

chantText = \lyricmode {
In ex -- cél -- so thro -- no 
\set stanza = " * " vi -- di se -- _ dé -- re vi -- rum, 
quem ad -- ó -- _ _ rat mul -- ti -- tú -- do An -- ge -- ló -- _ rum, 
psal -- lén -- _ _ tes in u -- _ num: 
ec -- ce cu -- jus im -- pé -- ri -- i no -- men est _ in æ -- tér -- num. Ps. 
Ju -- bi -- lá -- te De -- o o -- mnis ter -- ra: 
\set stanza = " * " 
ser -- ví -- te Dó -- mi -- no in læ -- tí -- ti -- a. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 g'4 ( a'4) a'4 f'4 a'4 ( f'4 a'4) a'4 \divisioMinima
 c''4 ( c''4) g'4 g'4 ( a'4) b'4 ( a'4 b'\prall c''4) a'4 ( c''4 g'4) g'4 ( f'4 g'\prall a'4 g'4 \forceBreak
) g'4 ( a'4 g'4) g'4 \divisioMaxima
 f'4 ( g'4) g'4 ( a'4) a'4 c''4 ( c''4 g'4.) a'4 c''4 ( c''4 a'4) g'4 ( a'4 g'4) \divisioMinima
 f'4 g'4 ( a'4) c''4 ( c''4 d''4) c''4 c''4 c''4 ( b'4 \forceBreak
) c''4 ( d''4 c''4) b'4 ( c''4 a'4) a'4 \divisioMaior
 g'4 g'4 ( a'4) c''4 ( c''4) ~ c''4 ( \tiny a' g' 4) a'4 ( g'4) a'4 ( f'4 g'4)  a'4 ( g'4) a'4 ( bes'4 g'4) f'4 ( g'4 f'4 d'4) \divisioMaxima \forceBreak

 d'4 ( f'4 g'4 a'4) g'4 \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( g'4 a'4) f'4 ( g'4) g'4 ( c''4 c''4) a'4 ( g'4 a'\prall b'4 a'4) a'4 ( f'4) g'4 a'4 ( c''4) b'4 ( b'4) c''4 ( g'4) \divisioMinima \forceBreak

 c''4 ( c''4) a'4 ( f'4 a'4 g'4) g'4 ( a'4 g'4) g'4 \finalis
 g'4 a'4 ( g'4) g'4 ( c''4) c''4 c''4 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima \forceBreak

 c''4 ( \once \tweak #'font-size #-4 a' ) a'4 ( c''4) c''4 c''4 c''4 c''4 ( c''4 b'4) g'4 ( a'4) c''4 ( b'4) a'4 a'4 g'4 \finalis
  g'4 a'4 ( g'4) g'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima \forceBreak

 c''4 c''4 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima
 c''4 ( a'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 ( b'4) c''4 ( d''4) d''4 \forceBreak
 c''4 ( d''4) c''4 \divisioMaxima
 c''4 ( a'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 ( c''4 b'4) g'4 ( a'4) c''4 ( b'4) a'4 g'4 \finalis

}

altoMusic = {
r4 c'2 ~ c'2 ~ c'2*4/2 ~ \divisioMinima
c'2*3/2 d'2 e'2*4/2 ~ e'2*3/2 ~ e'4 f'2 ~ f'2 d'2*3/2 ~ d'4 \divisioMaxima
c'2 ~ c'2*3/2 ~ c'2*9/4 ~ c'2*3/2 ~ c'2 ~ c'4 ~ \divisioMinima
c'4 e'2 f'2*5/2 g'2 e'2*3/2 ~ e'2*3/2 ~ e'4 ~ \divisioMaior
e'4 ~ e'2 ~ e'2 g'2*3/2 c'2 ~ c'2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaxima
d'2 c'2 ~ c'4 \divisioMinima
d'2 c'2*3/2 ~ c'2 d'2*3/2 e'2*3/2 ~ e'2 f'2*3/2 ~ f'2 g'2*4/2 \divisioMinima
e'2 f'2*4/2 d'2*3/2 ~ d'4 \finalis
e'2*3/2 ~ e'2*3/2 f'4 g'2 ~ g'2*3/2 e'2*3/2 \divisioMaxima
g'2 a'2*3/2 ~ a'2 g'2*3/2 ~ g'2 f'2 ~ f'2 d'4 r4 e'2 ~ e'2*5/2 ~ e'2*3/2 \divisioMinima
f'2 g'2 ~ g'2*3/2 e'2*3/2 \divisioMaxima
f'2 ~ f'2*6/2 g'2*3/2 ~ \divisioMinima
g'2 ~ g'2*3/2 e'2*3/2 ~ \divisioMaxima
e'2 f'2 g'2*4/2 d'2*3/2 g'2 f'2 d'2 \finalis
}

tenorMusic = {
r4 g2 f2 ~ f2*3/2 ~ f4 \divisioMinima
e2*3/2 ~ e2 ~ e2*4/2 a2*3/2 ~ a2*3/2 c'2 ~ c'2*3/2 b4 \divisioMaxima
r2 e2*3/2 ~ e2*9/4 f2*3/2 ~ f2 e4 ~ \divisioMinima
e4 c'2 ~ c'2*5/2 ~ c'2 ~ c'2*3/2 d'2*3/2 c'4 ~ \divisioMaior
c'4 ~ c'2 ~ c'2 ~ c'2*3/2 g2 f2*3/2 bes2 g2*3/2 a2*3/2 f4 ~ \divisioMaxima
f2 ~ f2 e4 ~ \divisioMinima
e2 ~ e2*3/2 f2 e2*3/2 ~ e2*3/2 ~ e2 d2 d'4 c'2 ~ c'2*4/2 \divisioMinima
a2 c'2*4/2 ~ c'2*3/2 b4 \finalis
c'4 ~ c'2 ~ c'2*3/2 ~ c'4 d'2 ~ d'2*3/2 c'2*3/2 ~ \divisioMaxima
c'2 ~ c'2*3/2 d'2 ~ d'2*3/2 ~ d'2 ~ d'2 c'2 b4 r4 c'2 ~ c'2*5/2 ~ c'2*3/2 ~ \divisioMinima
c'2 d'2 b2*3/2 c'2*3/2 \divisioMaxima
d'2 c'2*6/2 ~ c'2*3/2 \divisioMinima
d'2 b2*3/2 c'2*3/2 \divisioMaxima
a2 ~ a2 g2*4/2 ~ g2*3/2 c'2 ~ c'2 ~ c'4 b4 \finalis
}

bassMusic = {
r4 e2 f2 e2*3/2 d4 \divisioMinima
a,2*3/2 b,2 c2*4/2 ~ c2*3/2 d2*3/2 ~ d2 g2*3/2 ~ g4 \divisioMaxima
d2 c2 b,4 a,2*9/4 ~ a,2*3/2 c2 ~ c4 ~ \divisioMinima
c4 ~ c2 d2*5/2 e2 a2*3/2 ~ a2*3/2 ~ a4 ~ \divisioMaior
a4 b2 a2 e2*3/2 ~ e2 f2*3/2 ~ f2 ~ f2*3/2 d2*3/2 ~ d4 \divisioMaxima
a,2 c2 ~ c4 \divisioMinima
b,2 a,2*3/2 ~ a,2 ~ a,2*3/2 b,2*3/2 c2 d2 ~ d4 ~ d2 e2*4/2 \divisioMinima
r2 d2*4/2 g2*3/2 ~ g4 \finalis
r4 b2 a2*3/2 ~ a4 g2 ~ g2*3/2 a2*3/2 \divisioMaxima
e2 f2*3/2 ~ f2 g2*3/2 e2 d2 ~ d2 g4 r2*3/2 b2*5/2 a2*3/2 ~ \divisioMinima
a2 g2 ~ g2*3/2 a2*3/2 \divisioMaxima
d2 ~ d2*6/2 e2*3/2 \divisioMinima
g2 ~ g2*3/2 a2*3/2 \divisioMaxima
c2 d2 e2*4/2 g2*3/2 e2 d2 g2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
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
