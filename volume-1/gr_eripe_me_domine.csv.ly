\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.274
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Eripe me Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Eripe me Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Eripe me Domine" }
    \line {}
  }
}

chantText = \lyricmode {
E -- _ _ ri -- pe _ _ me, 
\set stanza = " * " Dó -- mi -- ne, _ _ _ 
de in -- i -- mí -- cis me -- _ _ _ _ is: _ _ _ _ _ _ _ _ _ _ 
do -- ce me fá -- ce -- re _ _ _ 
vo -- lun -- tá -- _ _ tem _ _ _ _ _ tu -- am. _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
Li -- be -- rá -- tor me -- us, _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
Dó -- _ _ _ _ _ _ _ mi -- ne, 
de gén -- ti -- _ bus i -- ra -- cún -- _ _ _ dis: _ _ _ _ _ _ _ 
ab in -- sur -- gén -- ti -- _ bus in me _ _ _ 
ex -- al -- tá -- bis _ me: 
a vi -- ro _ _ in -- í -- quo _ _ _ _ 
\set stanza = " * " 
e -- rí -- pi -- es me. _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4. ~ f'4 ( f'4 f'4) ~ f'4 ( c'4) d'4 ( e'\prall f'4 e'4) e'4 ( g'4 e'4) g'4 ( a'4 g'4 f'4) ~ f'4 ( d'4) f'4 ( f'4 f'4) \divisioMinima \forceBreak

 e'4 ( f'4 g'\prall a'4 g'4) a'4 ( g'4)  g'4 ( a'4.) e'4 ( f'4 g'\prall a'4 bes'4 g'4) f'4 ( f'4) d'4 ( e'4 d'4) \divisioMaior
 d'4 ( c'4) g'4 a'4 ( b'4) b'4 ( b'4 c''4) a'4 a'4 \forceBreak
 c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( a'4 g'4) b'4 ( g'4 a'4) a'4 \divisioMinima
 b'4 ( c''4 b'4) c''4 ( d''4 b'4.) d''4 ( c''4 b'4 a'4) c''4 ( b'4 a'4) \divisioMinima
 c''4 ( c''4) d''4 ( b'4 \forceBreak
) c''4 ( a'4 g'4) c''4 ( a'4) b'4 ( a'4) ~ a'4 ( g'4) \divisioMaxima
 a'4 ( c''4) c''4 ( b'4) c''4 ( b'4 c''4 a'4) \divisioMinima
 c''4 ( a'4 b'4 g'4) f'4 ( g'4) g'4 ( a'4 g'4) a'4 ( b'4 a'4 g'4) a'4 ( \forceBreak
 f'4) ~ f'4 ( e'4) \divisioMaior
 e'4 ( e'4 f'4) d'4 ( g'4) a'4. g'4 ( a'4) c''4 ( b'4 c''4) a'4. g'4 c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( g'4) ~ g'4 ( f'4) \divisioMinima \forceBreak

 f'4 ( a'4 b'\prall c''4) b'4 ( g'4.) b'4 ( a'4 g'4) a'4 ( a'4 f'4) a'4 ( a'4) \divisioMinima
 g'4 c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( a'4 g'4 f'4 e'4)  f'4 ( a'4) bes'4 ( g'4 f'4 \forceBreak
) g'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( e'4) \finalis
 g'4 g'4 g'4 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 b'4. c''4 ( d''4 a'4) c''4 ( b'4 c''4 a'4 g'4) \divisioMinima
 c''4 ( b'4) c''4 ( d''4) e''4 ( b'4 \forceBreak
) c''4 ( d''4 c''4 b'4 a'4) \divisioMinima
 d''4 e''4 ( b'4) c''4 ( d''4 c''4 b'4 a'4.) c''4 ( b'4 c''4 a'4 g'4) c''4 ( g'4) b'4 ( c''4.) g'4 ( a'4) c''4 ( c''4) ~ c''4 ( a'4 g'4 f'4) ~ f'4 ( d'4) \divisioMaior \forceBreak

 f'4 ( d'4) f'4 ( f'4 d'4) e'4 ( f'4) g'4 ( a'4) c''4 ( d''4 c''4) ~ c''4 ( c''4) ~ c''4 ( a'4 g'4) c''4 ( c''4 c''4) c''4 ( b'4) b'4 \divisioMaior
 b'4 c''4 ( d''4 \forceBreak
) d''4 ( e''4 c''4) ~ c''4 ( b'4 c''4) c''4 ( b'4) \divisioMinima
 b'4 ( c''4) c''4 c''4 ( c''4 c''4) ~ c''4 ( b'4) c''4. b'4 ( d''4 c''4 b'4) c''4 ( a'4) a'4. g'4 ( a'4) c''4 ( c''4) ~ c''4 ( a'4 g'4 \forceBreak
) a'4 ( a'4) g'4 ( b'4 a'4 g'4) a'4 ( f'4) ~ f'4 ( e'4) \divisioMaxima
 e'4 ( f'4 g'4) g'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( g'4) a'4 ( c''4 a'4) b'4 ( c''4) b'4 c''4 ( d''4) c''4. \forceBreak
 b'4 ( c''4 b'4) a'4 ( b'4 a'4) g'4 ( a'4 f'4 e'4) \divisioMaior
 e'4 ( f'4 g'4) g'4 a'4 ( g'4) g'4 ( c''4 a'4) b'4 ( c''4) b'4 \divisioMaxima
 c''4 ( c''4 b'4 g'4 \forceBreak
) a'4 ( b'4) b'4 ( d''4.) c''4 ( e''4 d''4) ~ d''4 ( b'4) b'4 b'4 b'4 ( d''4 c''4) ~ c''4 ( c''4 a'4) b'4 ( a'4 g'4) a'4 ( f'4) ~ f'4 ( e'4) \divisioMaior
 e'4 ( f'4 g'4) a'4 ( g'4 \forceBreak
) g'4 ( c''4 a'4 c''4) c''4 c''4 ( b'4 a'4) c''4 ( b'4 g'4.) a'4 ( a'4) f'4 ( g'4) a'4 ( a'4) g'4 ( b'4 a'4 g'4) a'4 ( f'4) ~ f'4 ( e'4) \finalis

}

altoMusic = {
a2*9/4 ~ a2 ~ a2*4/2 ~ a2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2*3/2 ~ c'2 d'2 c'2*5/4 bes2*3/2 ~ bes2*3/2 c'2 ~ c'2*3/2 \divisioMaior
r2 g'2*3/2 ~ g'2*3/2 ~ g'2 f'2 g'2*5/2 ~ g'2*3/2 e'4 ~ \divisioMinima
e'2*13/4 ~ e'2*4/2 ~ e'2*3/2 \divisioMinima
f'2*4/2 g'2*4/2 e'2 d'2 ~ d'4 \divisioMaxima
e'2 f'2 g'2*4/2 \divisioMinima
e'2 ~ e'2 d'2 ~ d'2*3/2 e'2*3/2 ~ e'2 f'4 r2 \divisioMaior
c'2*3/2 b2 c'2*3/4 d'2 e'2*3/2 ~ e'2*5/4 f'2 ~ f'2 g'2*3/2 ~ g'4 r2 \divisioMinima
f'2*4/2 g'2*5/4 ~ g'2 ~ g'4 e'2*3/2 d'2 ~ \divisioMinima
d'4 g'2*4/2 ~ g'2 f'2 d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 c'2*3/2 \finalis
e'2*3/2 ~ e'2 ~ e'2*5/4 ~ e'2*3/2 ~ e'2*3/2 d'2 \divisioMinima
g'2*4/2 ~ g'2 e'2*4/2 ~ e'4 ~ \divisioMinima
e'2*3/2 ~ e'2*4/2 ~ e'2*3/4 d'2 c'2*3/2 g'2 ~ g'2*5/4 ~ g'2 f'2 e'2*3/2 ~ e'2 d'4 \divisioMaior
c'2 ~ c'2*3/2 e'2 ~ e'2 ~ e'2*3/2 f'2 ~ f'2*3/2 g'2*3/2 ~ g'2 ~ g'4 ~ \divisioMaior
g'4 e'2 ~ e'2 ~ e'2*4/2 g'2 ~ \divisioMinima
g'2 ~ g'4 f'2*3/2 e'2 ~ e'2*3/4 g'2*4/2 ~ g'2 e'2*7/4 ~ e'2*5/2 ~ e'2 d'2*5/2 c'2*3/2 \divisioMaxima
a2*3/2 e'4 d'2 e'2 ~ e'2*3/2 f'2*3/2 g'2 ~ g'2*3/4 ~ g'2*3/2 ~ g'2*3/2 ~ g'4 r2*3/2 \divisioMaior
e'2*3/2 ~ e'4 d'2 ~ d'2*3/2 c'2 d'4 ~ \divisioMaxima
d'2*4/2 ~ d'2 g'2*9/4 ~ g'2*5/2 ~ g'2*3/2 e'2*3/2 ~ e'2 d'2 c'2*3/2 \divisioMaior
e'2*3/2 d'2 e'2*4/2 ~ e'4 f'2*3/2 c'2*7/4 ~ c'2 ~ c'2 e'2 d'2*3/2 ~ d'2 c'2 ~ c'4 \finalis
}

tenorMusic = {
r2*3/4 a,2*3/2 d2 ~ d2*4/2 e2*3/2 ~ e2*3/2 d2*3/2 a2*3/2 ~ \divisioMinima
a2*3/2 e2 ~ e2 ~ e2*5/4 ~ e2*3/2 d2*3/2 ~ d2 f2*3/2 \divisioMaior
g2*3/2 e'2 d'2*3/2 c'2 ~ c'2 ~ c'2 e'2*3/2 d'2*3/2 ~ d'4 \divisioMinima
c'2*3/2 b2*7/4 c'2*4/2 d'2*3/2 \divisioMinima
c'2*4/2 ~ c'2*4/2 ~ c'2 ~ c'2 b4 \divisioMaxima
c'2 ~ c'2 ~ c'2*4/2 ~ \divisioMinima
c'2 d'2 c'2 ~ c'2*3/2 b2*3/2 c'2 ~ c'2*3/2 \divisioMaior
a2*5/2 ~ a2*3/4 b2 a2*3/2 ~ a2*5/4 ~ a2 d'2 c'2*3/2 ~ c'2*3/2 \divisioMinima
d'2*4/2 ~ d'2*5/4 c'2*3/2 ~ c'2*3/2 ~ c'2 ~ \divisioMinima
c'4 ~ c'2 b2 a2 ~ a2*5/2 ~ a2 g2*3/2 e2*4/2 ~ e2*3/2 \finalis
c'2 ~ c'4 ~ c'2 d'2*5/4 b2*3/2 a2*3/2 b2 \divisioMinima
c'2*4/2 d'2 ~ d'2*4/2 c'4 \divisioMinima
b4 ~ b2 a2*4/2 ~ a2*3/4 ~ a2 g2*3/2 a2 g2*9/4 a2 ~ a2*3/2 ~ a2 f4 \divisioMaior
a2 ~ a2*3/2 ~ a2 b2 a2*3/2 ~ a2 c'2*3/2 ~ c'2*3/2 e'2 d'4 ~ \divisioMaior
d'4 ~ d'2 b2 c'2*4/2 d'2 \divisioMinima
e'2 ~ e'4 d'2*3/2 ~ d'2 c'2*3/4 ~ c'2*4/2 a2 b2*3/4 ~ b2 ~ b2 a2*3/2 e2 ~ e2*5/2 ~ e2*3/2 ~ \divisioMaxima
e2*3/2 a4 ~ a2 ~ a2 c'2*3/2 ~ c'2*3/2 a2 e'2*3/4 d'2*3/2 c'2*3/2 b2 g2 ~ \divisioMaior
g2*3/2 e4 ~ e2 ~ e2*3/2 g2 ~ g4 ~ \divisioMaxima
g2*4/2 ~ g2 ~ g2*5/4 a2 b2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 c'2 b2 a2*3/2 \divisioMaior
c'2*3/2 b2 ~ b2*4/2 a4 ~ a2*3/2 g2*7/4 f2 ~ f2 e2 ~ e2*3/2 ~ e2 d2 a4 \finalis
}

bassMusic = {
d,2*3/4 ~ d,2*3/2 ~ d,2 f,2*4/2 a,2*3/2 ~ a,2*3/2 d2*3/2 ~ d2*3/2 \divisioMinima
c2*3/2 ~ c2 bes,2 a,2*5/4 g,2*3/2 ~ g,2*3/2 a,2 ~ a,2*3/2 \divisioMaior
e2*3/2 ~ e2 ~ e2*3/2 ~ e2 d2 e2 ~ e2*3/2 a2*3/2 ~ a4 ~ \divisioMinima
a2*3/2 ~ a2*7/4 ~ a2*4/2 ~ a2*3/2 ~ \divisioMinima
a2*4/2 e2*4/2 f2 g2 ~ g4 \divisioMaxima
c2 d2 e2*4/2 \divisioMinima
a2 ~ a2 ~ a2 g2*3/2 ~ g2*3/2 e2 a2*3/2 \divisioMaior
a,2*5/2 ~ a,2*3/4 ~ a,2 ~ a,2*3/2 c2*5/4 d2 ~ d2 e2*3/2 a2*3/2 \divisioMinima
d2*4/2 e2*5/4 ~ e2*3/2 f2*3/2 ~ f2 ~ \divisioMinima
f4 e2 ~ e2 ~ e2 d2*5/2 c2 bes,2*3/2 ~ bes,2*4/2 a,2*3/2 \finalis
r2 b4 a2*9/4 ~ a2*3/2 ~ a2*5/2 \divisioMinima
e2*4/2 ~ e2 a2*4/2 ~ a4 ~ \divisioMinima
a4 g2 ~ g2*4/2 f2*3/4 ~ f2 e2*3/2 ~ e2 ~ e2*9/4 d2 c2*3/2 d2 ~ d4 \divisioMaior
a,2 d2*3/2 c2 ~ c2 ~ c2*3/2 d2 ~ d2*3/2 e2*3/2 ~ e2 ~ e4 ~ \divisioMaior
e4 a2 ~ a2 ~ a2*4/2 g2 ~ \divisioMinima
g2 a4 ~ a2*3/2 ~ a2 ~ a2*3/4 e2*4/2 ~ e2 ~ e2*3/4 d2 c2 ~ c2*3/2 ~ c2 b,2*5/2 a,2*3/2 \divisioMaxima
c2*3/2 ~ c4 b,2 c2 ~ c2*3/2 d2*3/2 e2 ~ e2*3/4 ~ e2*3/2 ~ e2*3/2 ~ e2 ~ e2 \divisioMaior
c2*3/2 ~ c4 b,2 a,2*3/2 ~ a,2 g,4 \divisioMaxima
r2*4/2 e2 ~ e2*5/4 ~ e2 ~ e2*3/2 ~ e2 ~ e2*3/2 a2*3/2 ~ a2 ~ a2 ~ a2*3/2 \divisioMaior
c2*3/2 ~ c2 ~ c2*4/2 ~ c4 d2*3/2 e2*7/4 ~ e2 d2 c2 b,2*3/2 a,2 ~ a,2 ~ a,4 \finalis
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
