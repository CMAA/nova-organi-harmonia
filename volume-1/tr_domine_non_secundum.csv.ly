\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.160
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine non secundum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine non secundum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine non secundum" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne, _ _ _ _ _ 
\set stanza = " * " 
non se -- cún -- dum pec -- cá -- ta no -- stra, _ _ _ 
quæ fé -- ci -- mus _ nos: _ _ 
ne -- que se -- cún -- dum in -- i -- qui -- tá -- tes no -- _ stras _ _ 
re -- trí -- _ bu -- as no -- bis. _ _ ℣. 
Dó -- mi -- ne, _ _ _ _ _ _ 
ne me -- mí -- ne -- _ ris 
in -- i -- qui -- tá -- tum no -- strá -- rum an -- ti -- quá -- _ _ rum: _ _ _ 
ci -- to an -- tí -- ci -- pent nos mi -- se -- ri -- cór -- di -- æ tu -- _ æ, _ _ 
qui -- a páu -- _ pe -- res fa -- cti su -- mus _ ni -- mis. _ ℣. 
<alt>Hic genuflectitur.</alt> Ad -- ju -- va nos, De -- us sa -- lu -- tá -- ris no -- _ ster: 
et pro -- pter gló -- ri -- am nó -- mi -- nis tu -- i, Dó -- mi -- ne, lí -- be -- _ _ ra nos: _ _ _ 
et pro -- pí -- ti -- us e -- sto pec -- cá -- tis no -- _ stris, _ _ 
pro -- _ pter no -- men 
\set stanza = " * " tu -- _ _ um. _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 f'4 ( g'4 f'4 d'4) f'4 ( g'4 f'4 g'4) ~ g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 bes'4) ~ bes'4 ( a'4) bes'4 ( g'4.) a'4 ( bes'4 a'4 bes'4 g'4) \divisioMaior
 g'4 g'4 \forceBreak
 g'4 f'4 ( g'4 f'4 d'4) f'4 ( g'4 a'\prall bes'4) bes'4 a'4 ( g'4) a'4 g'4 a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 a'4 ( bes'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4 \forceBreak
) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaxima
 f'4 a'4 ( bes'4) g'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 g'4 g'4 g'4 ( a'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4 \forceBreak
) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior
 f'4 ( bes'4 a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( f'4) g'4 ( a'4 g'4) bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 ( a'4 g'4) g'4 ( f'4 g'4 f'4 d'4.) g'4 ( f'4 g'4) a'4 ( a'4 g'4) \finalis \forceBreak

 g'4 ( bes'4 a'4) bes'4 ( c''4) c''4 ( d''4 c''4 bes'4) c''4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( a'4 f'4) g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 ( f'4) bes'4 bes'4 ( c''4 d''4 \forceBreak
) d''4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 g'4 bes'4 ( a'4) bes'4 g'4 g'4 g'4 ( a'4) g'4 \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 \forceBreak
 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4 c''4 g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 f'4 a'4 ( bes'4) g'4 g'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 \divisioMinima \forceBreak

 g'4 g'4 g'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 bes'4 bes'4 ( c''4 bes'4) ~ bes'4 ( a'4 \forceBreak
) g'4 ( f'4) g'4 ( bes'4 a'4) bes'4 bes'4 bes'4 a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 g'4 a'4 ( a'4 g'4) \finalis
   bes'4 ( c''\prall d''4 e''4) d''4 d''4 d''4 \forceBreak
 d''4 ( c''4) c''4 ( d''4) \divisioMinima
 bes'4 bes'4 ( g'4) bes'4 bes'4 ( c''4 d''4) d''4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 g'4 bes'4 ( a'4 \forceBreak
) bes'4 g'4 g'4 g'4 ( a'4) g'4 g'4 g'4 g'4 ( f'4) g'4 ( a'4) g'4 g'4 \divisioMinima
 g'4 g'4 bes'4 ( bes'4 \forceBreak
) ~ bes'4 ( bes'4 bes'4) g'4 ( a'4) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4 c''4 g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 f'4 a'4 ( bes'4) g'4 g'4 g'4 ( a'4) g'4 \divisioMinima
 g'4 g'4 ( a'4) g'4 \forceBreak
 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4)  bes'4 ( aes'4 c''4.) d''4 ( e''4 c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 g'4) a'4  c''4 ( bes'4) c''4 ( bes'4 g'4 a'4) \divisioMinima
 bes'4 ( d''4 c''4 d''4 bes'4 a'4 g'4 \forceBreak
) g'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 c''4 a'4 bes'4) \divisioMinima
 a'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4 a'4) ~ a'4 ( g'4) \finalis

}

altoMusic = {
d'4 ~ d'2*7/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*11/4 ~ d'2*3/2 ~ d'2 ~ \divisioMaior
d'2 ~ d'2*5/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 r2*3/2 \divisioMaior
f'4 ~ f'2*3/2 d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMaxima
d'2*4/2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 f'2*3/2 ~ f'2*3/2 ~ \divisioMaior
f'2*3/2 ~ f'2 d'2*3/2 ~ d'2*5/2 ~ d'2*3/2 ~ d'2*11/4 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \finalis
d'2*5/2 ~ d'2*6/2 ~ d'2 ~ d'2*5/2 ~ d'2*5/2 ~ d'2 ~ \divisioMaior
d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 f'2*4/2 d'2 ~ \divisioMaior
d'2 ees'2 d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2*4/2 ees'2 f'2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMaxima
d'2 f'2 d'2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*4/2 ~ d'2 ees'2*4/2 f'2*3/2 ~ f'2*3/2 ~ \divisioMaior
f'2 ees'2 f'2*3/2 d'2 ~ d'2*3/2 ~ d'2 ees'4 f'2*5/2 d'2 ~ d'2*3/2 ees'2*7/2 f'2 ~ f'2 ~ \divisioMinima
f'4 ~ f'2 ~ f'4 d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 ~ \divisioMaior
d'2 ~ d'2 ~ d'2*3/2 c'2*4/2 ~ c'4 d'2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'2 g'2 f'2*3/2 r2 g'4 f'4 ~ f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ \divisioMaxima
d'2 f'2*4/2 d'2*3/2 ~ \divisioMinima
d'4 ~ d'2*3/2 c'2 d'2*4/2 f'2*7/4 ees'2 f'2*3/2 ~ \divisioMaior
f'2 ~ f'2*3/2 d'2 ~ d'2*4/2 f'2*5/2 ~ f'4 ~ \divisioMinima
f'2*4/2 ~ f'2*3/2 d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'4 \divisioMinima
ees'2*4/2 ~ ees'2*4/2 d'2 ~ d'4 \finalis
}

tenorMusic = {
bes4 a2*7/2 bes2*3/2 c'2*4/2 bes2*11/4 c'2*3/2 bes2 ~ \divisioMaior
bes2 a2*5/2 c'2*4/2 ~ c'2*3/2 a2 bes2*3/2 c'2*3/2 ~ \divisioMaior
c'4 ~ c'2*3/2 a2 bes2*4/2 c'2*3/2 d'2*3/2 \divisioMaxima
bes2*4/2 ~ bes2*4/2 ~ bes2 c'2*3/2 bes2 a2*4/2 d'2*3/2 bes2*3/2 ~ \divisioMaior
bes2*3/2 ~ bes2 ~ bes2*3/2 c'2*5/2 bes2*3/2 a2*11/4 c'2*3/2 ~ c'2 bes4 ~ \finalis
bes2*5/2 a2*6/2 g2 a2*5/2 bes2*5/2 c'4 bes4 ~ \divisioMaior
bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 c'2*4/2 ~ c'4 bes4 ~ \divisioMaior
bes2 ~ bes2 ~ bes2*3/2 a2 ~ a4 \divisioMinima
bes2*4/2 ~ bes2 ~ bes2*3/2 a2 c'2*3/2 bes2*3/2 a2*3/2 \divisioMaxima
c'2 ~ c'2 ~ c'2 bes2*3/2 ~ \divisioMinima
bes2*3/2 c'2*4/2 bes2 ~ bes2*4/2 ~ bes2*3/2 d'2*3/2 \divisioMaior
bes2 ~ bes2 ~ bes2*3/2 a2 c'2*3/2 bes2 ~ bes4 c'2*5/2 ~ c'2 bes2*3/2 ~ bes2*7/2 ~ bes2 a2 ~ \divisioMinima
a4 bes2 c'4 ~ c'2*3/2 bes2*4/2 c'2*4/2 bes2 \divisioMaior
a2 g2 ~ g2*3/2 ~ g2*4/2 a4 ~ a2 c'2*3/2 bes4 ~ \divisioMinima
bes2 ~ bes2 ~ bes2*5/2 d'2 c'2*3/2 bes2*3/2 a2*3/2 ~ \divisioMaxima
a2 c'2*4/2 ~ c'2*3/2 \divisioMinima
bes4 a2*3/2 ~ a2 bes2*4/2 ~ bes2*7/4 ~ bes2 ~ bes2*3/2 ~ \divisioMaior
bes2 c'2*3/2 ~ c'2 bes2*4/2 ~ bes2*5/2 c'4 \divisioMinima
d'2*4/2 c'2*3/2 a2*3/2 bes2 a2*4/2 g4 ~ \divisioMinima
g2*4/2 c'2*4/2 ~ c'2 bes4 \finalis
}

bassMusic = {
g4 ~ g2*7/2 ~ g2*3/2 ~ g2*4/2 ~ g2*11/4 ~ g2*3/2 ~ g2 ~ \divisioMaior
g2 d2*5/2 ~ d2*4/2 g2*3/2 ~ g2 ~ g2*3/2 a2*3/2 ~ \divisioMaior
a4 d2*3/2 ~ d2 g2*4/2 ~ g2*3/2 ~ g2*3/2 \divisioMaxima
r2*4/2 a2*4/2 g2 ~ g2*3/2 ~ g2 d2*4/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMaior
d2*3/2 g2 ~ g2*3/2 ~ g2*5/2 ~ g2*3/2 d2*11/4 ~ d2*3/2 g2 ~ g4 ~ \finalis
g2*5/2 ~ g2*6/2 ~ g2 ~ g2*5/2 ~ g2*5/2 ~ g2 \divisioMaior
r2*3/2 a2*3/2 g2*4/2 f2*4/2 g2 ~ \divisioMaior
g2 ~ g2 ~ g2*3/2 ~ g2 ~ g4 ~ \divisioMinima
g2*4/2 ~ g2 d2*3/2 ~ d2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMaxima
d2 ~ d2 g2 ~ g2*3/2 ~ \divisioMinima
g2*3/2 ~ g2*4/2 ~ g2 c2*4/2 d2*3/2 ~ d2*3/2 ~ \divisioMaior
d2 c2 d2*3/2 ~ d2 ~ d2*3/2 g2 ~ g4 f2*5/2 g2 ~ g2*3/2 c2*7/2 d2 ~ d2 ~ \divisioMinima
d4 ~ d2 ~ d4 g2*3/2 ~ g2*4/2 ~ g2*4/2 ~ g2 ~ \divisioMaior
g2 ~ g2 f2*3/2 ees2*4/2 ~ ees4 d2 g2*3/2 ~ g4 \divisioMinima
f2 ees2 d2*5/2 ~ d2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMaxima
d2 ~ d2*4/2 g2*3/2 ~ \divisioMinima
g4 ~ g2*3/2 ~ g2 ~ g2*4/2 d2*7/4 c2 d2*3/2 ~ \divisioMaior
d2 ~ d2*3/2 g2 ~ g2*4/2 d2*5/2 ~ d4 ~ \divisioMinima
d2*4/2 ~ d2*3/2 ~ d2*3/2 g2 ~ g2*4/2 ~ g4 \divisioMinima
c2*4/2 ~ c2*4/2 g2 ~ g4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Tract"
        "2"
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
