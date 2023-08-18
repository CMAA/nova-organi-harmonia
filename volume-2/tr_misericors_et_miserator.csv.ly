\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.137
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Misericors et miserator" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Misericors et miserator"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Misericors et miserator" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- sé -- ri -- cors _ _ _ _ 
\set stanza = " * " 
et mi -- se -- rá -- tor Dó -- mi -- nus, _ _ _ _ _ 
lon -- gá -- ni -- mis et mul -- _ tum _ _ mi -- sé -- _ _ ri -- cors. ℣. 
Non in per -- pé -- tu -- _ um 
i -- ra -- scé -- _ _ _ _ _ _ tur, _ 
ne -- _ que in æ -- tér -- _ _ num com -- mi -- ná -- _ _ bi -- tur. _ ℣. 
Non se -- cún -- dum _ _ _ pec -- cá -- ta no -- stra _ _ 
fe -- cit no -- _ bis, _ _ 
ne -- que se -- cún -- dum i -- ni -- qui -- tá -- tes no -- _ stras _ _ 
re -- trí -- _ bu -- it 
\set stanza = " * " no -- _ _ bis. _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 g'4 f'4 ( g'4 f'4 d'4) f'4 ( g'4.) f'4 ( g'4) bes'4 ( a'4) bes'4 ( a'4 g'4) a'4 ( a'4 g'4) \divisioMaior
 a'4 f'4 g'4 ( bes'4 \forceBreak
) bes'4 ( bes'4 a'4) c''4 bes'4 ( bes'4 a'4) g'4 ( f'4) f'4 ( g'4) a'4 ( g'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 a'4 ( bes'4) g'4 g'4 g'4 \forceBreak
 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4 f'4) g'4 ( f'4) \divisioMinima
 bes'4 bes'4. a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 g'4 ( a'4 a'4) g'4 \finalis \forceBreak

 f'4 g'4 bes'4 ( c''4) c''4 ( bes'4) c''4 ( d''4 c''4 bes'4 a'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 c''4 bes'4 ( c''4 bes'4 g'4) ~ g'4 ( f'4.) bes'4 ( c''4 bes'4 \forceBreak
 g'4) ~ g'4 ( f'4.) bes'4 ( a'4 g'4) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4 bes'4) c''4 f'4 g'4 bes'4 ( bes'4 \forceBreak
) ~ bes'4 ( bes'4 bes'4) a'4 ( g'4) \divisioMinima
 bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 c''4 ( g'4) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) f'4 ( g'4) g'4 a'4 ( a'4 g'4) \finalis
 g'4 g'4 ( d'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \forceBreak
 bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) g'4 ( f'4 g'4) \divisioMinima
 f'4 ( g'4 a'\prall bes'4) bes'4 a'4 ( g'4) a'4 g'4 ( a'4 bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 a'4 ( bes'4) g'4 g'4 ( f'4 \forceBreak
) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaxima
 f'4 a'4 ( bes'4) g'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 g'4 g'4 g'4 ( a'4) g'4 g'4 ( f'4 \forceBreak
) g'4 ( a'\prall bes'4 c''4)  bes'4 ( a'4 c''4.) d''4 ( ees''4 c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 ( a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( f'4) g'4 ( a'4 g'4) a'4 \divisioMinima
 c''4 ( bes'4) c''4 ( bes'4 g'4 a'4) \divisioMinima \forceBreak

 bes'4 ( d''4 c''4 d''4 bes'4 a'4 g'4) g'4 ( f'4 g'4) bes'4 ( bes'4) c''4 ( d''4 c''4 a'4 bes'4) \divisioMinima
 a'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) a'4 ( a'4 g'4) \finalis

}

altoMusic = {
r2*5/2 d'4 ~ d'2*5/4 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMaior
c'2 bes2 c'2*4/2 f'2*3/2 d'2 ~ d'2 ~ d'2 ~ d'2*3/2 c'2*3/2 ~ c'2 ~ c'4 \divisioMaxima
f'4 ~ f'2 ~ f'2*3/2 ees'2 ~ ees'2*4/2 f'2*4/2 d'2*4/2 ~ d'2 ~ \divisioMinima
d'4 f'2*7/4 ~ f'2*3/2 ees'2 d'2 ~ d'4 \finalis
r4 g'4 ~ g'2 ~ g'2 ~ g'2*5/2 f'2*4/2 d'2 \divisioMaior
ees'2 d'2*3/2 r2*7/4 d'2*3/2 ~ d'2*7/4 ~ d'2*4/2 ees'2*4/2 ~ ees'2 c'2 ~ c'4 \divisioMaxima
d'2*4/2 ~ d'2 ~ d'2*3/2 c'2*3/2 d'2 ~ d'2*3/2 ~ d'2 \divisioMinima
f'2*3/2 ees'2*3/2 d'2 ~ d'2 c'2*3/2 ~ c'2 bes4 \finalis
r2 d'4 ~ d'2*3/2 ~ d'2 ees'2*3/2 d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'4 ~ d'2 f'4 g'2*4/2 c'2 ~ c'4 \divisioMaior
f'2*3/2 ~ f'2 ees'2 ~ ees'2 f'2*3/2 ~ f'2*3/2 \divisioMaxima
d'4 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 c'2*3/2 ~ c'2 bes2 d'2 f'2*7/4 ees'2 d'2*3/2 ~ \divisioMaior
d'2 g'2 f'2*3/2 ~ f'2*4/2 \divisioMinima
d'2 ees'2*3/2 f'4 ~ \divisioMinima
f'2*7/2 ees'2*3/2 f'2 ees'2*4/2 d'4 ~ \divisioMinima
d'2 g'2 f'2 ~ f'2 d'2 ~ d'4 \finalis
}

tenorMusic = {
r2*6/2 bes2*5/4 ~ bes2 ~ bes2 d'2*3/2 c'2 bes4 \divisioMaior
d2 ~ d2 f2*4/2 ~ f2*3/2 bes2 a2 f2 ~ f2*3/2 ~ f2*3/2 bes2 a4 \divisioMaxima
r4 c'2 bes2*3/2 ~ bes2 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*4/2 a2 ~ \divisioMinima
a4 g2*7/4 ~ g2*3/2 c'2 ~ c'2 bes4 \finalis
r2*4/2 f'2 ees'2*5/2 d'2*4/2 bes2 \divisioMaior
c'2 g2*3/2 c'2*7/4 bes2*3/2 a2*7/4 g2*4/2 ~ g2*4/2 bes2 ~ bes2 a4 \divisioMaxima
bes2*4/2 ~ bes2 ~ bes2*3/2 a2*3/2 g2 ~ g2*3/2 ~ g2 ~ \divisioMinima
g2*3/2 ~ g2*3/2 ~ g2 f2 ees2*3/2 d2 ~ d4 \finalis
r2*3/2 bes2*3/2 ~ bes2 c'2*3/2 bes2*3/2 ~ \divisioMinima
bes2*4/2 ~ bes4 ~ bes2 c'4 bes2*4/2 a2 ~ a4 \divisioMaior
c'2*3/2 bes2 ~ bes2 ~ bes2 ~ bes2*3/2 f2*3/2 \divisioMaxima
r4 f2*3/2 g2*3/2 d2*3/2 ~ d2*3/2 ~ d2 ~ d2 g2 f2*7/4 g2 ~ g2*3/2 ~ \divisioMaior
g2 ~ g2 bes2*3/2 c'2*4/2 \divisioMinima
bes2 ~ bes2*3/2 c'4 \divisioMinima
bes2*7/2 ~ bes2*3/2 ~ bes2 g2*4/2 ~ g4 ~ \divisioMinima
g2 ~ g2 d'2 c'2 ~ c'2 bes4 \finalis
}

bassMusic = {
r4 ees4 bes2*4/2 ~ bes2*5/4 a2 g2 ~ g2*3/2 ~ g2 ~ g4 \divisioMaior
g,2 ~ g,2 f,2*4/2 d2*3/2 ~ d2 ~ d2 c2 bes,2*3/2 f2*3/2 ~ f2 ~ f4 \divisioMaxima
r4 d2 ~ d2*3/2 ~ d2 c2*4/2 d2*4/2 g2*4/2 d2*3/2 ~ d2*7/4 c2*3/2 ~ c2 g2 ~ g4 \finalis
r2*17/2 \divisioMaior
r2*5/2 a2*7/4 g2*3/2 d2*7/4 bes,2*4/2 c2*4/2 ~ c2 f2 ~ f4 \divisioMaxima
r2*4/2 a2 g2*3/2 ~ g2*3/2 ~ g2 g,2*3/2 bes,2 \divisioMinima
d2*3/2 c2*3/2 g,2*4/2 ~ g,2*3/2 ~ g,2 ~ g,4 \finalis
r2*6/2 g2 c'2*3/2 r2*3/2 \divisioMinima
a2*4/2 g4 bes2 f2*5/2 ~ f2 ~ f4 \divisioMaior
d2*3/2 ees2 e2 c2 d2*3/2 ~ d2*3/2 \divisioMaxima
r4 c2*3/2 bes,2*3/2 ~ bes,2*3/2 a,2*3/2 g,2 ~ g,2 ~ g,2 d2*7/4 c2 g2*3/2 \divisioMaior
f2 ees2 d2*3/2 f2*4/2 \divisioMinima
g2 ~ g2*3/2 f4 \divisioMinima
d2*7/2 c2*3/2 d2 ees2*4/2 g4 \divisioMinima
f2 ees2 d2 ~ d2 g2 ~ g4 \finalis
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
