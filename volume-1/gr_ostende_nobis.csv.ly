\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.22
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ostende nobis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ostende nobis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ostende nobis" }
    \line {}
  }
}

chantText = \lyricmode {
Os -- tén -- de no -- bis, 
\set stanza = " * " Dó -- mi -- ne, _ _ _ _ _ _ _ _ _ 
mi -- se -- ri -- cór -- di -- am, tu -- _ _ _ _ _ am: 
et sa -- lu -- tá -- re tu -- _ _ _ _ um _ _ _ _ _ 
da _ _ no -- _ bis. _ _ _ _ _ _ _ ℣. 
Be -- ne -- di -- xí -- sti, Dó -- _ _ _ _ _ _ _ _ _ mi -- ne, 
ter -- ram tu -- _ _ _ _ _ _ _ _ am: 
a -- ver -- tí -- _ _ _ sti _ _ _ _ _ 
cap -- ti -- vi -- tá -- _ tem 
\set stanza = " * " Ja -- _ cob. _ _ _ }

chantMusic = {
\tieDown   ees'4 f'4 ( g'4) g'4 ( ees'4) f'4 ( g'4) g'4 \divisioMinima
 g'4 ees'4 c'4 ees'4 ( ees'4 f'4) ees'4 ( ees'4) ~ ees'4 ( c'4) \divisioMinima
 ees'4 ( ees'4) f'4 ( d'4) ees'4 ( c'4 bes4. \forceBreak
) ees'4 ( c'4) d'4 ( c'4) ~ c'4 ( bes4) \divisioMaior
 c'4 ( bes4) ees'4 ( f'4) ees'4 f'4 ( g'4) g'4 f'4 ( \once \tweak #'font-size #-4 ees' ) f'4 ( g'4) bes'4 ( bes'4) c''4 ( a'4) bes'4 ( g'4 f'4) bes'4 ( bes'4 f'4) a'4 ( g'4) g'4 \divisioMaxima \forceBreak

 g'4 bes'4 ( bes'4) c''4 ( bes'4 g'4) bes'4 ( a'4) c''4 ( d''4) bes'4 ( a'4) bes'4 ( c''4 d''4 bes'4 a'4) bes'4 ( bes'4 a'4) \divisioMinima
 c''4 ( bes'4) c''4 ( bes'4 g'4) g'4 ( bes'4 g'4 f'4) g'4 ( bes'4) ~ bes'4 ( g'4 \forceBreak
) bes'4 ( bes'4 a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 ( f'4 g'4) bes'4 ( a'4 g'4) a'4 ( f'4 g'4) bes'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4) c''4 ( d''4 c''4 bes'4) \divisioMinima
 d''4 ( bes'4) d''4 ( ees''4 c''4 a'4 \forceBreak
) bes'4 ( g'4 f'4) g'4 ( a'\prall bes'4 c''4.) bes'4 ( c''4 d''4) \divisioMinima
 c''4 ( d''4 c''4 d''4 bes'4 g'4 a'\prall bes'4 g'4) \finalis
 g'4 bes'4 bes'4 ( c''4) c''4 c''4 ( d''4 \forceBreak
) d''4 ( c''4 bes'4 a'4) bes'4 ( g'4 f'4) \divisioMinima
 a'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 c''4 d''4) \divisioMinima
 bes'4 ( d''4 ees''4 c''4 a'4) bes'4 ( g'4 f'4.) g'4 ( a'4 g'4 f'4) g'4 \divisioMinima \forceBreak

 c''4 ( d''\prall ees''4 d''4) ees''4 ( d''4 c''4) d''4 ( c''4) c''4 \divisioMaxima
 c''4 ( d''\prall ees''4 d''4 c''4 d''\prall ees''4 d''4 c''4) c''4 ( \once \tweak #'font-size #-4 d'' ) d''4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 g'4) bes'4. \forceBreak
 ~ bes'4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima
 bes'4 ( c''4 d''4 c''4 bes'4) d''4 ( c''4 bes'4) c''4 ( g'4) g'4 \divisioMaxima
 bes'4 ( bes'4) bes'4 ( c''4) c''4 ( bes'4 a'4 f'4) g'4 ( bes'4 a'4 f'4) g'4 ( bes'4) \divisioMinima \forceBreak

 a'4 ( c''4 d''4 bes'4 g'4) g'4 ( bes'4 g'4 f'4) g'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 f'4 ( g'4) g'4 g'4 bes'4 ( a'4 g'4 a'4 \forceBreak
) f'4 ( g'4)  bes'4 ( g'4) bes'4 ( c''4) c''4 ( d''4 bes'4 a'4) bes'4 ( c''4) \divisioMinima
 f'4 ( g'4 bes'4) ~ bes'4 ( d''4 c''4 bes'4 a'4 g'4 a'\prall bes'4 g'4) \finalis

}

altoMusic = {
r4 d'2 ees'2 d'2*3/2 \divisioMinima
c'2*3/2 bes2*3/2 c'2 g2 ~ \divisioMinima
g2*4/2 bes2*7/4 g2*3/2 a2 ~ a4 \divisioMaior
g2 ~ g2*3/2 ~ g2*5/2 bes2 f'2*4/2 d'2*3/2 ~ d'2*5/2 ~ d'4 \divisioMaxima
r4 d'2*5/2 f'2*6/2 ~ f'2*5/2 ~ f'2*3/2 ~ \divisioMinima
f'2*5/2 d'2*5/2 f'2*3/2 ees'2*5/2 r2*3/2 \divisioMaxima
ees'2*3/2 d'2*6/2 g'2*4/2 f'2*6/2 ~ \divisioMinima
f'2 ees'2*4/2 d'2*3/2 ~ d'2*3/2 g'2*3/4 f'2*3/2 \divisioMinima
d'2*4/2 ~ d'2*3/2 ~ d'2 \finalis
g'2 f'2 ~ f'2*3/2 ~ f'2*7/2 ~ \divisioMinima
f'2*3/2 ~ f'2 ~ f'2*4/2 ~ \divisioMinima
f'2 ees'2*3/2 d'2 c'2*3/4 d'2*5/2 \divisioMinima
g'2*4/2 ~ g'2*3/2 f'2 ~ f'4 \divisioMaxima
g'2*4/2 ~ g'2*5/2 ~ g'2 ~ g'2*4/2 ~ g'2*3/2 f'2*3/2 ~ f'2*3/4 ees'2 d'2 \divisioMinima
f'2*5/2 g'2*3/2 ~ g'2 ~ g'4 \divisioMaxima
f'2 ees'2 f'2*4/2 ~ f'2*6/2 ~ \divisioMinima
f'2*5/2 d'2*5/2 ees'2*3/2 d'2*5/2 r2*3/2 \divisioMaxima
ees'2*5/2 d'2*4/2 c'2 d'2*4/2 f'2*4/2 ~ f'2 ~ \divisioMinima
f'2 ~ f'2*4/2 d'2 ~ d'2 ~ d'2 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2 ~ bes2*3/2 ~ \divisioMinima
bes2*3/2 g2*3/2 ~ g2 f2 \divisioMinima
ees2*4/2 ~ ees2*7/4 ~ ees2*3/2 d2 ~ d4 \divisioMaior
ees2 ~ ees2*3/2 ~ ees2*5/2 d2 f2*4/2 g2*3/2 a2*5/2 bes4 \divisioMaxima
g4 bes2*5/2 ~ bes2*6/2 ~ bes2*5/2 c'2*3/2 \divisioMinima
a2*5/2 bes2*5/2 ~ bes2*3/2 ~ bes2*5/2 c'2*3/2 \divisioMaxima
bes2*3/2 ~ bes2*6/2 ~ bes2*4/2 ~ bes2*6/2 ~ \divisioMinima
bes2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/4 ~ bes2*3/2 ~ \divisioMinima
bes2*4/2 c'2*3/2 bes2 \finalis
ees'2*4/2 ~ ees'4 d'2 ~ d'2*7/2 \divisioMinima
c'2*3/2 bes2 a2*4/2 \divisioMinima
bes2*5/2 ~ bes2 a2*3/4 bes2*5/2 ~ \divisioMinima
bes2*4/2 ~ bes2*3/2 g2 a4 \divisioMaxima
ees'2*4/2 ~ ees'2*5/2 d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 bes2*3/4 ~ bes2*4/2 ~ \divisioMinima
bes2*5/2 ~ bes2*3/2 ~ bes2 c'4 \divisioMaxima
bes2 ~ bes2 ~ bes2*4/2 ~ bes2*6/2 \divisioMinima
c'2*5/2 bes2*5/2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2*3/2 ~ \divisioMaxima
bes2*5/2 ~ bes2*4/2 a2 bes2*4/2 ~ bes2*4/2 a2 \divisioMinima
bes2 ~ bes2*4/2 ~ bes2 c'2 bes2 \finalis
}

bassMusic = {
g2*3/2 ~ g2 bes2*3/2 \divisioMinima
ees2*3/2 d2*3/2 c2 ~ c2 ~ \divisioMinima
c2*4/2 g,2*7/4 c2*3/2 d2 ~ d4 \divisioMaior
r2 d2*3/2 c2*5/2 d2 ~ d2*4/2 g2*3/2 ~ g2*5/2 ~ g4 \divisioMaxima
r4 g2*5/2 d2*6/2 g2*5/2 f2*3/2 ~ \divisioMinima
f2*5/2 g2*5/2 d2*3/2 c2*5/2 ~ c2*3/2 \divisioMaxima
g2*3/2 ~ g2*6/2 ees2*4/2 d2*6/2 ~ \divisioMinima
d2 c2*4/2 g2*3/2 f2*3/2 ees2*3/4 d2*3/2 \divisioMinima
g2*4/2 ~ g2*3/2 ~ g2 \finalis
r2*7/2 bes2*7/2 \divisioMinima
f2*3/2 g2 f2*4/2 \divisioMinima
g2*5/2 ~ g2 ~ g2*3/4 ~ g2*5/2 \divisioMinima
ees2*4/2 c2*3/2 f2 ~ f4 \divisioMaxima
r2*4/2 c'2*5/2 ~ c'2 bes2*4/2 g2*3/2 ~ g2*3/2 ~ g2*3/4 ~ g2*4/2 \divisioMinima
d2*5/2 ees2*3/2 ~ ees2 ~ ees4 \divisioMaxima
d2 c2 d2*4/2 ~ d2*6/2 ~ \divisioMinima
d2*5/2 g2*5/2 ~ g2*3/2 ~ g2*5/2 ~ g2*3/2 \divisioMaxima
c2*5/2 g2*4/2 ~ g2 ~ g2*4/2 d2*4/2 ~ d2 ~ \divisioMinima
d2 g2*4/2 ~ g2 ~ g2 ~ g2 \finalis
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
        "II"
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
