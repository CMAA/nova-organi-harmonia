\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.226
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ad te levavi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ad te levavi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ad te levavi" }
    \line {}
  }
}

chantText = \lyricmode {
Ad te le -- _ vá -- vi _ _ _ 
\set stanza = " * " 
ó -- _ cu -- los _ _ me -- os, 
qui há -- _ bi -- tas in cœ -- _ _ _ _ _ _ _ _ _ _ _ _ _ lis. _ ℣. 
Ec -- ce sic -- _ ut ó -- cu -- li ser -- vó -- rum 
in má -- ni -- bus _ do -- mi -- nó -- _ _ rum su -- ó -- rum: _ _ _ _ _ ℣. 
Et sic -- _ ut ó -- cu -- li an -- cíl -- læ 
in má -- ni -- bus _ dó -- _ _ mi -- næ su -- æ: _ _ _ _ _ ℣. 
I -- _ _ _ _ ta _ ó -- _ cu -- li _ _ no -- stri 
ad Dó -- mi -- num De -- _ _ um no -- strum, _ _ _ _ _ _ _ _ 
do -- nec mi -- _ se -- re -- á -- tur _ no -- stri. _ _ _ ℣. 
Mi -- se -- ré -- re no -- _ bis Dó -- mi -- ne, _ _ _ _ _ _ _ _ 
mi -- _ se -- ré -- re 
\set stanza = " * " no -- bis. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( f'4) f'4 ( d'4) ees'4 ( f'4 c'4 bes4 c'4) ees'4 ( f'4)  ees'4 aes'4 ( aes'4) ~ aes'4 ( g'4 f'4) g'4 ( g'4 f'4) \divisioMaior
 f'4 ( bes'4) ~ bes'4 ( c''4) g'4 \forceBreak
 g'4 ( f'4) g'4 ( ees'4.) g'4 ( bes'4 g'4 bes'4) bes'4 ( a'4 g'4 a'\prall bes'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 g'4 ( f'4) g'4 ( a'\prall bes'4) f'4 ( ees'4) f'4 g'4 bes'4 c''4 ( bes'4) ~ bes'4 ( f'4. \forceBreak
) bes'4 c''4 ( bes'4) ~ bes'4 ( bes'4 bes'4) c''4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima
 bes'4 ( a'4) bes'4 ( bes'4 a'4 f'4.) g'4 ( bes'4 g'4) bes'4 ( g'4 ees'4) \divisioMinima
 f'4 ( g'4) bes'4 ( bes'4 a'4 f'4.) g'4 ( bes'4 g'4 ees'4 f'4) f'4 g'4 ( g'4 f'4) \finalis \forceBreak

 f'4 ( g'\prall a'4 bes'4) bes'4 bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 g'4 ( bes'4 a'4 g'4) f'4 ( ees'4) f'4 ( g'4 f'4) g'4 ( a'4) f'4 ( g'4 a'\prall bes'4 g'4 a'4) g'4 ( f'4) \divisioMaior
 g'4 \forceBreak
 g'4 ( g'4 f'4 g'4) ees'4 ees'4 ( f'4 g'4) ~ g'4 ( f'4) \divisioMinima
 f'4 ( g'4) f'4 g'4 ( f'4) bes'4 ( bes'4 f'4) g'4 ( f'4 ees'4) ees'4 ( g'4 bes'4) bes'4 bes'4 bes'4 ( a'4 bes'4 g'4 f'4. \forceBreak
)  bes'4 ( bes'4 g'4 f'4) g'4 ( aes'4 f'4 ees'4) \divisioMinima
  g'4 bes'4 ( g'4) a'4 ( f'4) g'4 ( g'4 f'4) \finalis
 f'4 ( g'4 bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 \forceBreak
 g'4 ( bes'4 a'4 g'4) f'4 ( ees'4) f'4 ( g'4 f'4) g'4 ( a'4) f'4 ( g'4 a'\prall bes'4 g'4 a'4) g'4 ( f'4) \divisioMaior
 g'4 g'4 ( g'4 f'4 g'4) ees'4 ees'4 ( f'4 g'4) ~ g'4 ( f'4) \divisioMinima \forceBreak

 g'4 ( f'4) bes'4 ( bes'4 f'4) g'4 ( f'4 ees'4) ees'4 ( g'4 bes'4) bes'4 bes'4 bes'4 ( a'4 bes'4 g'4 f'4.)  bes'4 ( bes'4 g'4 f'4) g'4 ( aes'4 f'4 ees'4) \divisioMinima
  g'4 bes'4 ( g'4) a'4 ( f'4) g'4 ( g'4 f'4) \finalis \forceBreak

 c'4 ees'4 ( ees'4) ~ ees'4 ( ees'4) ~ ees'4 ( c'4.) ees'4 ( g'4 ees'4 f'4) ees'4 ( f'4 g'4) ~ g'4 ( f'4) \divisioMinima
 f'4 ( bes'4) ~ bes'4 ( c''4) g'4 g'4 ( f'4) g'4 ( ees'4.) g'4 ( bes'4 g'4 bes'4 \forceBreak
) bes'4 ( a'4 g'4 a'\prall bes'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 f'4 ( bes'4) bes'4 bes'4 a'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( a'4) a'4 g'4 ( bes'4 a'4 f'4 g'4) f'4. \divisioMinima
 ees'4 ( g'4 \forceBreak
) bes'4 ( a'4) bes'4 ( c''4 g'4) ~ g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior
 ees'4 ( g'4 bes'4) a'4 ( f'4 g'4) f'4 ( ees'4) f'4 ( g'4) f'4 ( g'4) f'4 f'4 \forceBreak
 f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \finalis
 f'4 f'4 f'4 ( g'\prall a'4 bes'4) bes'4 bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 \forceBreak
 g'4 ( bes'4 a'4 g'4) f'4 ( ees'4) f'4 g'4 ( ees'4 f'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4.) f'4 g'4 ( f'4) g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima \forceBreak

 g'4 ( f'4) g'4 ( a'\prall bes'4) f'4 ( g'4 f'4 ees'4) ees'4 ( g'4 bes'4) bes'4  bes'4 bes'4 ( a'4 bes'4 g'4 f'4) ~ f'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4 f'4) \divisioMinima
 bes'4 ( bes'4 bes'4 \forceBreak
) c''4 ( bes'4 a'4 g'4) ~ g'4 ( f'4) g'4 ( bes'4 a'4 g'4 f'4) ~ f'4 ( g'4 ees'4) \divisioMinima
 g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
c'4 ~ c'2 ~ c'2 ~ c'2 ~ c'4 r2 bes2*3/2 c'2 ~ c'2*3/2 d'2*3/2 ~ \divisioMaior
d'4 ~ d'2*4/2 ees'2*3/2 ~ ees'2*3/4 c'2*4/2 f'2 ~ f'2*4/2 d'2*3/2 c'2 \divisioMaxima
d'2*3/2 ~ d'2*3/2 c'2*3/2 ees'2*3/2 f'2*9/4 ~ f'2 g'2*4/2 d'2*3/2 \divisioMinima
f'2 ~ f'2*3/2 ~ f'2*3/4 d'2*3/2 ees'2*3/2 ~ \divisioMinima
ees'2 f'2*9/4 ~ f'2 ees'2*3/2 d'4 c'2 ~ c'4 \finalis
d'2*5/2 ~ d'2 ~ d'2*4/2 ~ d'2*6/2 ~ d'2*5/2 ~ d'2*6/2 ~ d'2 ~ \divisioMaior
d'2 ~ d'2*4/2 c'2 d'2*3/2 \divisioMinima
f'2*3/2 ~ f'2 ~ f'2 ~ f'4 ees'2*3/2 ~ ees'2*4/2 f'4 ~ f'2*4/2 ~ f'2*3/4 d'2 ees'2 ~ ees'2*4/2 ~ ees'4 ~ ees'2 ~ ees'2 c'2 ~ c'4 \finalis
bes2*3/2 d'2 ~ d'2*4/2 ~ d'2*6/2 ~ d'2*3/2 ~ d'2 f'2*3/2 ~ f'2*3/2 d'2 ~ \divisioMaior
d'4 ~ d'2*5/2 c'2 ~ c'2*3/2 ~ \divisioMinima
c'2 bes2*3/2 ~ bes2*3/2 ees'4 ~ ees'2*3/2 ~ ees'4 f'2*11/4 ~ f'2*3/2 ~ f'4 ees'2*4/2 ~ ees'2*3/2 ~ ees'2 c'2 ~ c'4 \finalis
r4 g2*4/2 ~ g2*5/4 bes2*6/2 ~ bes2*3/2 \divisioMinima
r4 d'2*4/2 ees'2*3/2 ~ ees'2*3/4 c'2*4/2 bes2 d'2 ~ d'2*5/2 c'2 ~ \divisioMaior
c'4 bes2*4/2 f'2*3/2 ~ f'2*4/2 d'2 ~ d'2*3/2 ~ d'2*3/4 \divisioMinima
ees'2 f'2 ~ f'2 d'2*5/2 bes2 d'2 c'2*3/2 ~ \divisioMaior
c'4 d'2*5/2 ~ d'2*4/2 ~ d'2*3/2 c'4 d'2 ees'2*3/2 f'2*4/2 ~ f'2 ~ f'2*3/2 d'2*3/2 c'2 \finalis
d'2 ~ d'2*5/2 ~ d'2 ~ d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 c'2 d'4 ees'2*4/2 ~ ees'2*9/4 d'2*4/2 ~ d'2 ~ d'2 c'2*3/2 ~ \divisioMaxima
c'2 d'2*3/2 ~ d'2*4/2 ~ d'4 c'2*3/2 ees'4 f'2 ~ f'2 ~ f'4 d'2*3/2 c'2*3/2 ~ c'4 \divisioMinima
d'2*3/2 f'2*3/2 d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 c'4 \divisioMinima
ees'2 f'2 d'2 c'2 ~ c'4 \finalis
}

tenorMusic = {
g2*3/2 ~ g2 ~ g2 ees2*3/2 ~ ees2*3/2 ~ ees2 f2*3/2 ~ f2*3/2 ~ \divisioMaior
f4 g2*4/2 ~ g2*9/4 ~ g2*4/2 f2 bes2*4/2 ~ bes2*3/2 ~ bes4 a4 \divisioMaxima
bes4 a2 g2*3/2 ~ g2*3/2 bes2*3/2 ~ bes2*9/4 g2 ~ g2*4/2 bes2*3/2 \divisioMinima
d'2 c'2*9/4 ~ c'2*3/2 bes2*3/2 ~ \divisioMinima
bes2 ~ bes2*9/4 ~ bes2*6/2 ~ bes2 a4 \finalis
bes2*5/2 ~ bes2 c'2*4/2 bes2*4/2 ~ bes2 ~ bes2*5/2 ~ bes2*6/2 a2 ~ \divisioMaior
a2 bes2*4/2 ~ bes2 ~ bes2*3/2 ~ \divisioMinima
bes2*3/2 a2 g2*3/2 ~ g2*3/2 ~ g4 c'2*3/2 ~ c'4 bes2*11/4 ~ bes2*4/2 c'2*5/2 ~ c'2 bes2 ~ bes2 a4 \finalis
d2*3/2 g2 ~ g2*4/2 bes2*6/2 a2*3/2 bes2 ~ bes2*3/2 g2*3/2 a2 ~ \divisioMaior
a4 g2*5/2 ~ g2 f2*3/2 \divisioMinima
d2 ~ d2*3/2 ees2*3/2 ~ ees2*4/2 g4 f2 g2 a2*3/4 g2 bes2 ~ bes2 g2 ~ g4 ~ g2 bes2 ~ bes2 a4 \finalis
r2*3/2 d2 ees2*5/4 ~ ees2*6/2 d2*3/2 ~ \divisioMinima
d4 g2*4/2 ~ g2*9/4 ~ g2*4/2 f2 ~ f2 g2*5/2 a2 \divisioMaior
f4 ~ f2*4/2 c'2*3/2 ~ c'2*4/2 bes2 ~ bes2*3/2 ~ bes2*3/4 ~ \divisioMinima
bes2 ~ bes2 g2 a2*5/2 f2 g2 ~ g2*3/2 ~ \divisioMaior
g4 ~ g2 ~ g2*3/2 bes2*4/2 a2*3/2 ~ a4 g2 ~ g2*3/2 f2*4/2 bes2 c'2*3/2 bes2*3/2 a2 \finalis
bes2 ~ bes2*5/2 ~ bes2 c'2*4/2 bes2*4/2 ~ bes2*3/2 ~ bes2 ~ bes4 c'2 ~ c'2 bes2*9/4 ~ bes2 ~ bes2 ~ bes2 ~ bes2 c'2*3/2 \divisioMaxima
d2 ~ d2*3/2 g2*4/2 ~ g4 ees2*3/2 c'4 ~ c'2 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 a4 \divisioMinima
r2*3/2 f2*3/2 a2*3/2 g2*4/2 ~ g2*3/2 ~ g4 \divisioMinima
bes2 ~ bes2 ~ bes2 ~ bes2 a4 \finalis
}

bassMusic = {
ees2*3/2 d2 c2 ~ c2*3/2 g,2*3/2 f,2 ~ f,2*3/2 bes,2*3/2 ~ \divisioMaior
bes,4 ~ bes,2*4/2 c2*9/4 ees2*4/2 d2 ~ d2*4/2 ees2*3/2 f2 \divisioMaxima
bes,2*3/2 ~ bes,2*3/2 c2*3/2 ~ c2*3/2 d2*9/4 ~ d2 ees2*4/2 g2*3/2 \divisioMinima
d2 ~ d2*9/4 g2*3/2 ~ g2*3/2 \divisioMinima
ees2 d2*9/4 c2*6/2 f2 ~ f4 \finalis
r2*5/2 g2 ~ g2*4/2 ~ g2*4/2 bes2 a2*5/2 g2*6/2 d2 ~ \divisioMaior
d2 bes,2*4/2 ~ bes,2 ~ bes,2*3/2 \divisioMinima
d2*3/2 ~ d2 ~ d2*3/2 ees2*3/2 c4 ~ c2*3/2 d4 ~ d2*11/4 g2*4/2 c'2*5/2 c2 ~ c2 f2 ~ f4 \finalis
g,2*3/2 ~ g,2 bes,2*4/2 ~ bes,2*6/2 ~ bes,2*3/2 ~ bes,2 d2*3/2 ~ d2*3/2 ~ d2 ~ \divisioMaior
d4 bes,2*5/2 ~ bes,2 a,2*3/2 ~ \divisioMinima
a,2 g,2*3/2 ~ g,2*3/2 c2*4/2 ~ c4 d2*4/2 ~ d2*7/4 ~ d2 ees2 ~ ees2 ~ ees4 c2 ~ c2 f2 ~ f4 \finalis
c2*3/2 ~ c2 ~ c2*5/4 g,2*6/2 bes,2*3/2 ~ \divisioMinima
bes,4 ~ bes,2*4/2 c2*9/4 ees2*4/2 d2 bes,2 ~ bes,2*5/2 a,2 ~ \divisioMaior
a,4 d2*4/2 ~ d2*3/2 f2*4/2 g2 bes2*3/2 a2*3/4 \divisioMinima
g2 d2 ~ d2 ~ d2*5/2 ~ d2 bes,2 c2*3/2 ~ \divisioMaior
c4 g,2 bes,2*3/2 ~ bes,2*4/2 ~ bes,2*3/2 ~ bes,4 ~ bes,2 c2*3/2 d2*4/2 ~ d2 f2*3/2 ~ f2*3/2 ~ f2 \finalis
r2 a2*5/2 g2 ~ g2*4/2 ~ g2*4/2 bes2*3/2 r2*3/2 r2 f2 g2*9/4 bes2 a2 g2 bes2 r2*3/2 \divisioMaxima
a,2 bes,2*3/2 ~ bes,2*4/2 c2*4/2 ~ c4 d2 ~ d2*3/2 g2*3/2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g2*3/2 d2*3/2 ~ d2*3/2 bes,2*4/2 c2*3/2 ~ c4 ~ \divisioMinima
c2 d2 ees2 f2 ~ f4 \finalis
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
        "VIII"
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
