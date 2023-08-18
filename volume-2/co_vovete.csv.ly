\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.221
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Vovete" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Vovete"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Vovete" }
    \line {}
  }
}

chantText = \lyricmode {
Vo -- vé -- te, 
\set stanza = " * " et réd -- di -- te Dó -- mi -- no De -- o ve -- stro, 
o -- mnes qui in cir -- cú -- i -- tu e -- jus af -- fér -- tis mú -- ne -- ra: 
ter -- rí -- bi -- li, et e -- i qui au -- fert spí -- ri -- tum prín -- _ ci -- pum: 
ter -- rí -- bi -- li a -- pud o -- mnes re -- ges _ ter -- ræ. }

chantMusic = {
\tieDown   f'4 ( g'4 a'4) g'4 g'4 \divisioMinima
 f'4 ( g'4 \once \tweak #'font-size #-4 bes' ) bes'4 ( bes'4 c''4) bes'4 bes'4 \divisioMinima
 bes'4 bes'4 ( bes'4 bes'4) g'4 bes'4 g'4 bes'4 ( c''4 bes'4) bes'4 ( bes'4 bes'4) \divisioMaior \forceBreak

 g'4 ( a'4 \tiny g' f' 4) g'4 ( f'4) f'4 f'4 f'4 ( bes'4 \once \tweak #'font-size #-4 a' ) bes'4 ( c''4) c''4 bes'4 ( c''4) c''4 f'4 \divisioMinima
 g'4 bes'4 ( c''4 bes'4) a'4 ( bes'4 \forceBreak
) g'4 g'4 ( a'4 g'4) g'4 \divisioMaxima
 bes'4 bes'4 ( d''4) c''4 ( d''4 c''4) c''4 \divisioMinima
 bes'4 ( a'4) bes'4 ( c''4 g'4) g'4 bes'4 ( a'4) bes'4 ( c''4) bes'4 ( a'4 g'4) \divisioMinima \forceBreak

 bes'4 bes'4 a'4 ( c''4 d''4) d''4 ( c''4) d''4 ( bes'4 c''4) bes'4 ( a'4 bes'\prall c''4 bes'4 c''4) c''4 ( bes'4) \divisioMaxima
 bes'4 bes'4 ( a'4 bes'4) g'4 f'4 \divisioMinima \forceBreak

 g'4 ( a'4 f'4 g'4) f'4 ( g'4 f'4 d'4) f'4 ( g'4) g'4 ( f'4) bes'4 ( bes'4) c''4 ( a'4) bes'4 ( a'4) g'4 ( a'4 bes'4 a'4 g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*3/2 f'2*4/2 g'4 \divisioMinima
f'4 ees2*4/2 d'2 g'2*3/2 f'2*3/2 ~ \divisioMaior
f'2*4/2 ees2 d'2 ~ d'2*3/2 ~ d'2*3/2 ees'2 f'2 \divisioMinima
r4 d'2*3/2 ~ d'2 c'4 ~ c'2*3/2 bes4 \divisioMaxima
r4 f'2 ~ f'2*3/2 ~ f'4 \divisioMinima
d'2 g'2*3/2 ~ g'4 f'2 ees'2 d'2*3/2 \divisioMinima
f'2*3/2 ~ f'2 ~ f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2 \divisioMaxima
r4 ees'2*4/2 f'4 ~ \divisioMinima
f'2*4/2 d'2*4/2 ~ d'2 ~ d'2 ~ d'2 ~ d'2*4/2 ~ d'2 c'2*4/2 bes2 \finalis
}

tenorMusic = {
a2*3/2 bes2 ~ \divisioMinima
bes2*3/2 d'2*4/2 ~ d'4 ~ \divisioMinima
d'4 c'2*4/2 bes2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMaior
bes2*4/2 ~ bes2 a2 ~ a2*3/2 g2*3/2 c'2 ~ c'2 ~ \divisioMinima
c'4 g2*3/2 f2 ees4 d2*3/2 ~ d4 \divisioMaxima
r4 bes2 ~ bes2*3/2 a4 \divisioMinima
g2 ~ g2*4/2 ~ g2 ~ g2 ~ g2*3/2 \divisioMinima
f2*3/2 a2 bes2 ~ bes2*3/2 c'2*3/2 a2*3/2 bes2 \divisioMaxima
r4 bes2*4/2 ~ bes4 ~ \divisioMinima
bes2*4/2 a2*4/2 ~ a2 d2 g2 f2*4/2 ees2 e2*4/2 d2 \finalis
}

bassMusic = {
d2*3/2 g2 \divisioMinima
r2*3/2 bes2*4/2 g4 ~ \divisioMinima
g4 ~ g2*4/2 ~ g2 ees2*3/2 d2*3/2 ~ \divisioMaior
d2*4/2 c2 ~ c2 bes,2*3/2 ~ bes,2*3/2 ~ bes,2 a,2 ~ \divisioMinima
a,4 g,2*5/2 ~ g,4 ~ g,2*3/2 ~ g,4 \divisioMaxima
r4 d2 f2*3/2 ~ f4 ~ \divisioMinima
f2 ees2*4/2 d2 c2 g2*3/2 \divisioMinima
d2*3/2 ~ d2 ~ d2 g2*3/2 f2*3/2 ~ f2*3/2 d2 \divisioMaxima
r4 c2*4/2 d4 ~ \divisioMinima
d2*4/2 ~ d2*4/2 bes,2 ~ bes,2 ~ bes,2 d2*4/2 g,2 ~ g,2*4/2 ~ g,2 \finalis
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
        "II."
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
