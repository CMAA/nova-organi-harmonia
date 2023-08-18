\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.327
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exsurge... et intende" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exsurge... et intende"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exsurge... et intende" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- súr -- ge 
\set stanza = " * " Dó -- mi -- ne, _ _ _ _ _ _ 
et in -- tén -- de ju -- dí -- ci -- um me -- _ um, _ _ _ _ _ 
De -- us me -- us, 
et Dó -- mi -- nus me -- _ us, _ _ _ _ _ 
in cau -- sam me -- _ _ _ am. _ _ _ _ ℣. 
Ef -- fún -- de frá -- me -- am, _ _ _ _ _ _ 
et con -- clú -- _ _ _ _ _ _ _ de _ _ _ _ _ _ _ 
ad -- vér -- sus e -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ os _ _ _ _ _ _ 
qui me _ _ _ _ _ _ _ 
\set stanza = " * " per -- se -- quún -- tur. _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   bes4 c'4 ( ees'4 d'4) d'4 \divisioMinima
 d'4 ( ees'4 f''\prall g'4) f'4 f'4 ( g'4 f'4) ees'4 ( f'4 ees'4 c'4) \divisioMinima
  ees'4 ( g'4 f'4. \forceBreak
) g'4 ( aes'4 g'4 f'4) g'4 ( ees'4) f'4 ( ees'4) ~ ees'4 ( d'4) \divisioMaxima
 ees'4 ees'4 d'4 ( ees'4 f''\prall g'4) f'4 ( g'4) ees'4 d'4 ( ees'4 g'4) g'4 ( bes'4 f'4) f'4 ( ees'4 f'4 \forceBreak
) f'4 ( ees'4) ~ ees'4 ( d'4) ees'4 ( c'4) \divisioMinima
 ees'4 ( ees'4) f'4 ( d'4) ees'4 ( f'4 c'4) d'4 ( c'4) ~ c'4 ( bes4) \divisioMaxima
 bes4 ( c'4) c'4 ( f'4 g'4) f'4 ( c'4 d''\prall ees'4 f'4 ees'4 d'4) ees'4 \divisioMaior \forceBreak

 ees'4 d'4 ( ees'4 g'4) g'4 ( bes'4 f'4) f'4 ( ees'4 f'4) f'4 ( ees'4) ~ ees'4 ( d'4) ees'4 ( c'4) \divisioMinima
 ees'4 ( ees'4) f'4 ( d'4) ees'4 ( f'4 c'4) d'4 ( c'4) ~ c'4 ( bes4) \divisioMaxima
 bes4 ( c'4 \forceBreak
) c'4 ( f'4 g'4) f'4 f'4 ( c'4 d''\prall ees'4 f'4.) ees'4 ( f'4 g'4 ees'4 d'4)  ees'4 ( g'4) aes'4 ( f'4) f'4 ( g'4 f'4.) g'4 ( aes'4 g'4 f'4) g'4 ( ees'4) f'4 ( ees'4) ~ ees'4 ( d'4) \finalis \forceBreak

 d'4 ( d'4 ees'4) c'4 ( f'4) f'4 g'4 ( bes'4) bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima
 g'4 bes'4 ( bes'4) c''4 ( a'4) bes'4 ( c''4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 g'4 ( \once \tweak #'font-size #-4 a''  \forceBreak
) a'4 ( c''4 a'4) bes'4 ( c''4 bes'4.) c''4 ( a'4) bes'4 ( c''4 bes'4 c''4.) a'4 ( bes'4) c''4 ( bes'4 c''4) ~ c''4 ( a'4) bes'4 ( g'4 f'4 g'4) g'4. \divisioMinima
 f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) g'4 ( g'4 \forceBreak
) f'4 ( bes'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 a'4 ( bes'4 \once \tweak #'font-size #-4 f'' ) g'4 ( bes'4) bes'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4) a'4 ( bes'4 g'4 f'4) \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4) a'4 ( bes'4 g'4 f'4) \divisioMinima \forceBreak

 bes'4 ( bes'4) c''4 ( g'4) bes'4 ( bes'4 c''4) bes'4 ( c''4) d''4 ( bes'4) ~ bes'4 ( bes'4 g'4) a'4 ( bes'4 g'4 f'4) \divisioMinima
 bes'4 ( f'4) bes'4. bes'4 ( g'4) bes'4 ( a'4 g'4.) bes'4 ( g'4) bes'4 ( a'4 g'4 \forceBreak
) bes'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 f'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) c''4 ( d''4 bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMinima
 ees'4 ees'4 ees'4 ( g'4 bes'4 \forceBreak
) a'4 ( f'4) a'4 ( g'4 f'4) g'4 ( g'4 ees'4) g'4 ( g'4) \divisioMinima
 f'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4 d'4)  ees'4 ( g'4.) aes'4 ( f'4 ees'4) f'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4) \finalis

}

altoMusic = {
bes4 ~ bes2*3/2 ~ bes4 ~ \divisioMinima
bes2*5/2 d'2*3/2 c'2*3/2 ~ c'4 ~ c'2 ~ c'2*3/4 ~ c'2*4/2 ~ c'2*3/2 r2*3/2 \divisioMaxima
r2 c'2*7/2 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 c'4 ~ c'2*3/2 g2 \divisioMinima
c'2 bes2 aes2*4/2 g2 ~ g4 \divisioMaxima
bes2 c'2*3/2 ~ c'2*4/2 bes2*3/2 ~ bes4 ~ \divisioMaior
bes4 c'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'4 c'2*3/2 ~ c'2 ~ \divisioMinima
c'2 ~ c'2 bes2*4/2 f2 ~ f4 \divisioMaxima
bes2 c'2*4/2 ~ c'2*4/2 bes2*3/4 ~ bes2*5/2 c'2 d'2 ~ d'2*7/4 ees'2*7/2 bes2*3/2 \finalis
r2*3/2 c'2*3/2 d'2*3/2 ees'2 d'2 ~ \divisioMinima
d'4 ~ d'2 g'2 f'2*4/2 d'2*3/2 \divisioMaior
f'4 ~ f'2 ~ f'2*3/2 ~ f'2*7/4 g'2 ~ g'2*3/2 ~ g'2*3/4 ~ g'2*4/2 f'2*3/2 d'2*4/2 ~ d'2*3/4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 c'2 f'2*4/2 c'2 ~ c'4 \divisioMaxima
f'2*3/2 ~ f'2*3/2 ~ f'2 ees'2 d'2 ~ d'2*4/2 ~ \divisioMinima
d'2 ~ d'2 c'2 bes2*4/2 \divisioMinima
f'2 g'2 f'2*3/2 ~ f'2*4/2 ees'2*3/2 d'2*4/2 ~ \divisioMinima
d'2 ees'2*3/4 f'2*4/2 ~ f'2*3/4 ~ f'2 d'2*3/2 ~ d'2*6/2 ~ \divisioMaxima
d'4 c'2 d'2 ~ d'2 ~ d'2 ~ d'2 ~ d'2*8/2 \divisioMinima
ees'2*3/2 ~ ees'2 f'2 ~ f'2 ~ f'4 ees'2*3/2 ~ ees'2 \divisioMinima
f'4 ~ f'2 d'2 ~ d'2 bes2*6/2 c'2*7/4 bes2*5/2 ~ bes2 ~ bes4 \finalis
}

tenorMusic = {
g4 ~ g2*3/2 f4 \divisioMinima
bes2*5/2 g2*3/2 ~ g2*4/2 bes2 ~ bes2*3/4 aes2*4/2 ~ aes2*3/2 bes2*3/2 ~ \divisioMaxima
bes2 aes2*7/2 g2*3/2 ~ g2*3/2 ees2*3/2 g4 f2*3/2 ees2 ~ \divisioMinima
ees2 ~ ees2 ~ ees2*4/2 d2 ~ d4 \divisioMaxima
ees2 ~ ees2*3/2 f2*4/2 ~ f2*3/2 g4 ~ \divisioMaior
g4 f2*3/2 ~ f2*3/2 g2*3/2 ~ g2*4/2 ~ g2 ~ \divisioMinima
g2 f2 ~ f2*4/2 ees2 d4 \divisioMaxima
ees2 ~ ees2*4/2 f2*4/2 g2*3/4 ~ g2*5/2 ~ g2 f2 aes2*7/4 g2*7/2 ~ g2*3/2 \finalis
bes2*3/2 a2*3/2 bes2*3/2 ~ bes2 ~ bes2 \divisioMinima
g4 ~ g2 ~ g2 ~ g2*4/2 a2*3/2 ~ \divisioMaior
a4 bes2 c'2*3/2 d'2*7/4 bes2 g2*3/2 a2*3/4 c'2*4/2 ~ c'2*3/2 ~ c'2*4/2 bes2*3/4 \divisioMinima
a2 g2 ~ g2*3/2 ~ g2 bes2*4/2 ~ bes2 a4 \divisioMaxima
c'2*3/2 bes2*3/2 g2 ~ g2 ~ g2 f2*4/2 ~ \divisioMinima
f2 ~ f2 ees2 f2*4/2 \divisioMinima
g2 ~ g2 ~ g2*3/2 f2*4/2 g2*3/2 ~ g2*4/2 \divisioMinima
f2 ~ f2*3/4 ~ f2*4/2 bes2*3/4 c'2 ~ c'2*3/2 bes2*3/2 c'2*3/2 \divisioMaxima
bes4 ~ bes2 ~ bes2 ~ bes2 ~ bes2 a2 g2*5/2 bes2*3/2 ~ \divisioMinima
bes2 ~ bes4 c'2 ~ c'2 ~ c'2*3/2 bes2*3/2 ~ bes2 ~ \divisioMinima
bes4 f2 g2 ~ g2 ees2*6/2 ~ ees2*7/4 ~ ees2*5/2 d2 f4 \finalis
}

bassMusic = {
ees4 ~ ees2*3/2 bes,4 ~ \divisioMinima
bes,2*5/2 ~ bes,2*3/2 c2*4/2 ~ c2 f2*3/4 ~ f2*4/2 aes2*3/2 g2*3/2 ~ \divisioMaxima
g2 f2*7/2 ~ f2*3/2 ees2*3/2 d2*3/2 c4 ~ c2*3/2 ~ c2 \divisioMinima
aes2 g,2 ~ g,2*4/2 ~ g,2 ~ g,4 ~ \divisioMaxima
g,2 aes,2*3/2 ~ aes,2*4/2 g,2*3/2 ~ g,4 ~ \divisioMaior
g,4 aes,2*3/2 bes,2*3/2 ~ bes,2*3/2 c2*4/2 ~ c2 \divisioMinima
bes,2 aes,2 g,2*4/2 bes,2 ~ bes,4 \divisioMaxima
g,2 aes,2*4/2 ~ aes,2*4/2 g,2*3/4 c2*5/2 ~ c2 ~ c2 ~ c2*7/4 ~ c2*7/2 g,2*3/2 \finalis
g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g2 ~ \divisioMinima
g4 f2 ees2 d2*4/2 ~ d2*3/2 ~ \divisioMaior
d4 ~ d2 ~ d2*3/2 ~ d2*7/4 ees2 ~ ees2*3/2 ~ ees2*3/4 ~ ees2*4/2 d2*3/2 g2*4/2 ~ g2*3/4 ~ \divisioMinima
g2 ~ g2 f2*3/2 ees2 d2*4/2 f2 ~ f4 \divisioMaxima
d2*3/2 ~ d2*3/2 ~ d2 c2 bes,2 ~ bes,2*4/2 \divisioMinima
a,2 g,2 c2 d2*4/2 ~ \divisioMinima
d2 ees2 d2*3/2 ~ d2*4/2 c2*3/2 bes,2*4/2 ~ \divisioMinima
bes,2 c2*3/4 d2*4/2 ~ d2*3/4 ~ d2 g2*3/2 ~ g2*3/2 a2*3/2 \divisioMaxima
r2*5/2 a2 g2 ~ g2 ~ g2*5/2 ~ g2*3/2 ~ \divisioMinima
g2 c4 ~ c2 f2 d2*3/2 ees2*3/2 c2 \divisioMinima
d4 ~ d2 bes,2 g,2 ~ g,2*6/2 f,2*7/4 bes,2*5/2 ~ bes,2 ~ bes,4 \finalis
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
