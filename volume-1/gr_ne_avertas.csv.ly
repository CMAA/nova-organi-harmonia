\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.336
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ne avertas" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ne avertas"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ne avertas" }
    \line {}
  }
}

chantText = \lyricmode {
Ne a -- vér -- tas 
\set stanza = " * " fá -- ci -- em _ tu -- _ _ _ am 
a pú -- _ e -- ro tu -- _ o, _ _ _ _ _ 
quó -- ni -- am trí -- _ _ _ _ bu -- lor: _ _ _ _ _ 
ve -- ló -- ci -- ter _ ex -- áu -- di me. _ _ _ _ _ _ _ ℣. 
Sal -- vum me fac De -- _ _ _ _ _ _ _ _ _ us, 
quó -- ni -- am in -- tra -- vé -- runt a -- quæ us -- que ad á -- _ ni -- _ _ mam me -- _ _ _ _ _ am: 
in -- fí -- _ xus sum in li -- _ mo _ pro -- fún -- _ di, _ _ 
et non est _ 
\set stanza = " * " sub -- stán -- ti -- a. _ _ _ }

chantMusic = {
\tieDown   d'4 d'4 f'4 ( g'4 a'4) g'4 \divisioMinima
 g'4 g'4 bes'4 ( g'4 a'\prall bes'4 c''4.) d''4 ( c''4 bes'4) c''4 ( a'4) bes'4 ( g'4 f'4) g'4 \forceBreak
 bes'4 ( bes'4) c''4 ( g'4) g'4 \divisioMaior
 g'4 bes'4. a'4 ( c''4 bes'4 a'4 g'4) g'4 ( f'4)  f'4 ( aes'4 g'4 f'4) \divisioMinima
 f'4 ( ees'4) g'4 ( f'4 g'4) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4 g'4 f'4 \forceBreak
) g'4 ( a'\prall bes'4) c''4 ( bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima
 bes'4 ( bes'4) bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4 d''4 bes'4 a'4) bes'4 ( bes'4 a'4) \divisioMinima
 c''4 ( bes'4) c''4 ( bes'4 g'4 \forceBreak
) g'4 g'4 ( bes'4 g'4 f'4) g'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 ees'4 ( f'4 g'4) g'4 g'4 bes'4 ( a'4 g'4 a'4) f'4 ( g'4 \forceBreak
) bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4) c''4 ( bes'4) c''4 ( d''4 c''4 bes'4) \divisioMinima
 d''4 ( bes'4) d''4 ( ees''4 c''4 a'4) bes'4 ( g'4 f'4) g'4 ( a'\prall bes'4 c''4.) bes'4 ( c''4 d''4) \divisioMinima
 c''4 ( d''4 c''4 d''4 bes'4 g'4 a'\prall bes'4 g'4) \finalis \forceBreak

 g'4 bes'4 bes'4 ( c''4) c''4 ( d''4) d''4 ( c''4 bes'4 a'4) bes'4 ( g'4 f'4) \divisioMinima
 a'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 c''4 d''4) \divisioMinima
 bes'4 ( d''4 ees''4 c''4 a'4) bes'4 ( g'4 f'4. \forceBreak
) g'4 ( a'4 g'4 f'4 g'4) \divisioMinima
 c''4 ( d''\prall ees''4 d''4) ees''4 ( d''4 c''4 d''4) d''4 ( c''4) \divisioMaxima
 c''4 ( d''\prall ees''4 d''4 c''4 d''\prall ees''4 d''4 c''4) c''4 c''4 c''4 c''4 \forceBreak
 c''4 c''4 ( \once \tweak #'font-size #-4 d'' ) d''4 c''4 \divisioMinima
 bes'4 ( bes'4 a'4) g'4 bes'4 bes'4 ( c''4 d''4) ~ d''4 ( c''4) c''4 ( a'4) bes'4 ( d''4 c''4 bes'4) ~ bes'4 ( a'4 g'4 \forceBreak
) a'4 ( g'4) bes'4 ( g'4 bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima
 bes'4 ( c''4 d''4 c''4 bes'4) d''4 ( c''4 bes'4) c''4 ( g'4) g'4 \divisioMaxima
 bes'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 g'4 \divisioMinima \forceBreak

 g'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( g'4) c''4 ( d''4) bes'4 ( g'4) bes'4. a'4 ( bes'4 g'4 f'4) \divisioMinima
 g'4 ( f'4 g'4) bes'4 ( g'4) bes'4 ( bes'4 bes'4) bes'4 ( g'4 a'\prall bes'4 c''4.) bes'4 ( c''4 d''4 bes'4 bes'4) c''4 ( c''4 bes'4) \divisioMaxima \forceBreak

 ees'4 ees'4 ( f'4 g'4) g'4 bes'4 ( a'4 g'4 a'4)  f'4 ( g'4) bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4) c''4 ( d''4 bes'4 a'4) bes'4 ( c''4) \divisioMinima
 f'4 ( g'4 bes'4) ~ bes'4 ( d''4 c''4 bes'4 a'4 g'4 a'\prall bes'4 g'4) \finalis

}

altoMusic = {
r2 c'2*3/2 d'4 ~ \divisioMinima
d'2 ~ d'2*11/4 f'2*3/2 ~ f'2 ~ f'2*4/2 ~ f'2 d'2 ~ d'4 ~ \divisioMaior
d'4 f'2*3/4 ~ f'2*5/2 d'2 c'2*4/2 \divisioMinima
f'4 ees'4 ~ ees'2*3/2 ~ ees'2*4/2 f'2*3/2 ~ f'4 ees'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \divisioMaxima
g'2*4/2 f'2 ~ f'2*5/2 ~ f'2*3/2 \divisioMinima
g'2 ~ g'2*3/2 ~ g'4 d'2*5/2 ees'2*3/2 d'2*5/2 r2*3/2 \divisioMaxima
r4 c'2*4/2 d'2*5/2 ~ d'2 ~ d'2*4/2 g'2 f'2*4/2 ~ \divisioMinima
f'2 ees'2*4/2 f'2 ~ f'4 d'2*3/2 ~ d'2*7/4 ~ d'4 \divisioMinima
g'2*4/2 d'2*3/2 ~ d'2 \finalis
g'2 f'2 ~ f'2 g'2*5/2 ~ g'4 f'4 ~ \divisioMinima
f'2*3/2 g'2*6/2 ~ \divisioMinima
g'2*5/2 ~ g'2 c'2*3/4 d'2*5/2 \divisioMinima
g'2*4/2 ~ g'2*4/2 f'2 \divisioMaxima
g'2*4/2 f'2*5/2 ees'2 g'2 ~ g'4 f'2 ~ f'2 \divisioMinima
d'2*5/2 g'2 f'2*3/2 ~ f'2 ~ f'2*3/2 ~ f'2*4/2 d'2 ~ d'2*3/2 ees'2 d'2 \divisioMinima
f'2*5/2 ~ f'2*3/2 g'2 ~ g'4 \divisioMaxima
f'2 ~ f'4 ~ f'2*4/2 d'2 \divisioMinima
r4 g'4 ~ g'2 d'2 ~ d'2 ~ d'2*3/4 f'2*3/2 ~ f'4 \divisioMinima
d'2*3/2 ~ d'2 ees'2*3/2 f'2*4/2 g'2*7/4 f'2*3/2 d'2*3/2 \divisioMaxima
ees'4 ~ ees'2*3/2 f'2*5/2 ~ f'2 d'2 ~ d'2 f'2*4/2 ~ f'2 ~ \divisioMinima
f'2 d'2*4/2 ~ d'2 ~ d'2 ~ d'2 \finalis
}

tenorMusic = {
bes2 ~ bes2*3/2 ~ bes4 ~ \divisioMinima
bes2 ~ bes2*11/4 ~ bes2*3/2 d'2 c'2*4/2 bes2 a2 bes4 ~ \divisioMaior
bes4 ~ bes2*3/4 c'2*5/2 bes2 a2*4/2 \divisioMinima
bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 c'2 bes4 ~ \divisioMaxima
bes2*4/2 ~ bes2 c'2*5/2 d'2*3/2 ~ \divisioMinima
d'2 c'2*4/2 ~ c'2*5/2 bes2*3/2 ~ bes2*5/2 ~ bes2*3/2 ~ \divisioMaxima
bes4 ~ bes2*4/2 ~ bes2*5/2 c'2 bes2*4/2 ~ bes2 ~ bes2*4/2 ~ \divisioMinima
bes2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 a2*7/4 bes4 \divisioMinima
c'2*4/2 ~ c'2*3/2 bes2 \finalis
ees'2 ~ ees'2 d'2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*6/2 \divisioMinima
ees'2*5/2 d'2 a2*3/4 bes2*5/2 ~ \divisioMinima
bes2*4/2 ~ bes2*4/2 a2 \divisioMaxima
g2*4/2 ~ g2*5/2 ~ g2 ~ g2 a4 ~ a2 ~ a2 \divisioMinima
bes2*5/2 ~ bes2 ~ bes2*3/2 c'2 d'2*3/2 c'2*4/2 ~ c'2 bes2*3/2 ~ bes2 ~ bes2 ~ \divisioMinima
bes2*5/2 ~ bes2*3/2 ~ bes2 c'4 ~ \divisioMaxima
c'2 bes4 c'2*4/2 ~ c'4 bes4 \divisioMinima
a2 g2 ~ g2 c'2 bes2*3/4 c'2*3/2 a4 \divisioMinima
bes2*3/2 ~ bes2 ~ bes2*3/2 c'2*4/2 g2*7/4 bes2*3/2 ~ bes2*3/2 \divisioMaxima
c'4 bes2*3/2 ~ bes2*5/2 a2 g2 a2 bes2*4/2 g4 a4 ~ \divisioMinima
a2 g2*4/2 a2 c'2 bes2 \finalis
}

bassMusic = {
r2*6/2 \divisioMinima
a2 g2*11/4 d2*3/2 ~ d2 ~ d2*4/2 ~ d2 g2 ~ g4 ~ \divisioMaior
g4 d2*3/4 ~ d2*5/2 g2 a2*4/2 \divisioMinima
g2 ~ g2*3/2 ees2*4/2 d2*4/2 c2*3/2 g2*3/2 ~ g2 ~ g4 \divisioMaxima
ees2*4/2 d2 ~ d2*5/2 ~ d2*3/2 \divisioMinima
ees2 ~ ees2*4/2 g2*5/2 ~ g2*3/2 ~ g2*5/2 ~ g2*3/2 ~ \divisioMaxima
g4 ~ g2*4/2 ~ g2*5/2 ~ g2 ~ g2*4/2 ees2 d2*4/2 ~ \divisioMinima
d2 c2*4/2 d2*3/2 g2*3/2 ~ g2*7/4 ~ g4 \divisioMinima
ees2*4/2 g2*3/2 ~ g2 \finalis
r2*6/2 bes2*4/2 ~ bes2*3/2 \divisioMinima
c'2*3/2 bes2*6/2 \divisioMinima
c'2*5/2 g2 ~ g2*3/4 ~ g2*5/2 \divisioMinima
ees2*4/2 c2*4/2 f2 \divisioMaxima
ees2*4/2 d2*5/2 c2 ees2 ~ ees4 d2 f2 \divisioMinima
g2*5/2 ees2 d2*3/2 ~ d2 ~ d2*3/2 ~ d2*4/2 g2 ~ g2*3/2 ~ g2 ~ g2 ~ \divisioMinima
g2*5/2 d2*3/2 ees2 ~ ees4 \divisioMaxima
d2 ~ d4 ~ d2*4/2 g2 \divisioMinima
ees2 ~ ees2 g2 ~ g2 ~ g2*3/4 f2*3/2 ~ f4 \divisioMinima
r2*3/2 a2 g2*3/2 f2*4/2 ees2*7/4 d2*3/2 g2*3/2 \divisioMaxima
c4 ~ c2*3/2 d2*5/2 ~ d2 g2 ~ g2 d2*4/2 f2 ~ \divisioMinima
f2 g2*4/2 ~ g2 ~ g2 ~ g2 \finalis
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
