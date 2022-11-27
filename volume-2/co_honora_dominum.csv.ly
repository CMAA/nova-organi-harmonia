\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.186
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Honora Dominum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Honora Dominum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Honora Dominum" }
    \line {}
  }
}

chantText = \lyricmode {
Ho -- nó -- ra 
\set stanza = " * " Dó -- mi -- num de tu -- _ a sub -- _ _ stán -- ti -- a, 
et de pri -- mí -- ti -- _ is fru -- gum tu -- á -- rum: 
ut im -- ple -- án -- tur hór -- re -- a tu -- _ a sa -- tu -- ri -- tá -- te, 
et vi -- no _ _ tor -- cu -- lá -- ri -- a red un -- _ dá -- bunt. }

chantMusic = {
\tieDown   d'4 f'4 ( f'4 g'4) f'4  g'4 ( a'4 g'4 a'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 f'4. e'4 ( g'4 f'4 d'4) d'4 ( c'4)  f'4. e'4 ( g'4 a'4 \forceBreak
) bes'4 ( g'4 a'\prall bes'4 a'4 g'4) f'4 f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 f'4 a'4 ( c''4) c''4  d''4 ( c''4) ~ c''4 ( a'4 bes'4) bes'4 ( a'4) \divisioMinima \forceBreak

  a'4 ( g'4 a'\prall bes'4) a'4 g'4 ( a'4 g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 f'4 a'4 ( b'\prall c''4) c''4 ( b'4 c''4) a'4 ( g'4 a'4) d''4 c''4 b'4 ( c''4 \forceBreak
) a'4 ( c''4 g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) \divisioMinima
 f'4 ( g'4 e'4) e'4 ( g'4 a'4) g'4 ( a'4) f'4 ( g'4 f'4) f'4 \divisioMaxima
 f'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( g'4 a'4) a'4 ( g'4) a'4 ( f'4) ~ f'4 ( g'4) \divisioMinima \forceBreak

 c'4 d'4 ( e'\prall f'4) f'4 e'4 ( f'4) d'4 ( c'4 d'4) \divisioMinima
 f'4 ( g'4 e'4)  e'4 ( g'4 a'4) bes'4 ( g'4 a'\prall bes'4 a'4 g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
r4 c'2*3/2 ~ c'4 ~ c'2*4/2 d'2*3/2 ~ \divisioMinima
d'4 c'2*3/4 ~ c'2 ~ c'2 ~ c'2 d'2*3/4 e'2*3/2 d'2*6/2 ~ d'4 ~ d'2 e'2*4/2 c'2 \divisioMaxima
r4 f'4 ~ f'2 ~ f'2 ~ f'2 ~ f'2 ~ f'2 d'2*5/2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ \divisioMaxima
d'2 e'2*3/2 f'2*3/2 e'2*3/2 d'2*4/2 e'2 ~ e'2*4/2 c'2 ~ \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2 a2*3/2 ~ a4 \divisioMaxima
c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'4 ~ \divisioMinima
c'4 d'2*3/2 ~ d'4 c'2 a2 ~ a4 \divisioMinima
c'2*3/2 ~ c'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2 e'2*4/2 c'2 \finalis
}

tenorMusic = {
bes4 ~ bes2*3/2 a4 ~ a2*4/2 ~ a2*3/2 ~ \divisioMinima
a4 ~ a2*3/4 g2 ~ g2 ~ g2 a2*3/4 c'2*3/2 bes2*6/2 b4 a2 c'2*4/2 a2 \divisioMaxima
c'2 ~ c'2 a2 ~ a2 d'2 c'2 ~ c'2*5/2 bes2*3/2 a2 bes2*4/2 a2 \divisioMaxima
d'2 c'2*3/2 d'2*3/2 c'2*3/2 a2*4/2 ~ a2 e2*4/2 f2 \divisioMinima
a2*3/2 g4 f2 e2 ~ e2*3/2 d4 \divisioMaxima
f2 e2*3/2 f2*3/2 a2 g4 ~ \divisioMinima
g4 a2*3/2 ~ a4 g2 ~ g2 f4 ~ \divisioMinima
f2*3/2 g2*3/2 ~ g2*3/2 ~ g2*3/2 a2 c'2*4/2 bes4 a4 \finalis
}

bassMusic = {
r4 f2*3/2 ~ f4 e2*4/2 d2*3/2 ~ \divisioMinima
d4 a,2*3/4 c2 d2 e2 d2*3/4 c2*3/2 g2*6/2 d4 ~ d2 c2*4/2 f2 \divisioMaxima
a2 f2 c2 d2 ~ d2 f2 g2*5/2 ~ g2*3/2 d2 bes,2*4/2 d2 \divisioMaxima
r2*5/2 a2*3/2 ~ a2*3/2 f2*4/2 c2 ~ c2*4/2 a,2 ~ \divisioMinima
a,2*3/2 ~ a,2*3/2 ~ a,2 d2*3/2 ~ d4 \divisioMaxima
a,2 c2*3/2 d2*3/2 ~ d2 e4 ~ \divisioMinima
e4 f2*3/2 d4 ~ d2 ~ d2 ~ d4 \divisioMinima
a,2*3/2 c2*3/2 bes,2*3/2 g,2*3/2 d2 c2*4/2 f2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
        "VI"
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
