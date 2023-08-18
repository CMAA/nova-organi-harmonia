\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.139
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Venite ad me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Venite ad me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Venite ad me" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ _ ia. 
\set stanza = " * " 
_ _ 
_ _ _ _ _ _ _ _ _ _ _ _ ℣. 
Ve -- ní -- _ _ _ te ad _ _ me, 
o -- _ mnes qui la -- bo -- rá -- _ _ _ _ _ _ _ _ _ _ _ _ tis, 
et _ o -- ne -- rá -- ti _ e -- _ stis: 
et e -- go 
\set stanza = " * " re -- fí -- ci -- am _ _ _ vos. 
_ _ _ 
_ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 ( f'4 \once \tweak #'font-size #-4 ees' ) g'4 ( g'4) f'4 ( g'4 f'4) bes'4 ( c''4 bes'4 g'4) a'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaior
 ees'4 ( f'4 g'4 a'\prall bes'4 f'4. \forceBreak
) ees'4 ( f'4 g'4 a'\prall bes'4 f'4) g'4 ( f'4 ees'4) \divisioMaior
 ees'4 ( g'4) bes'4 ( c''4.) bes'4 ( d''4 c''4) d''4 ( bes'4 g'4) \divisioMinima
 f'4 ( bes'4 g'4 a'\prall bes'4 c''4 bes'4 g'4 f'4 ees'4) f'4 ( f'4) \divisioMinima \forceBreak

 g'4 ( bes'4.) a'4 ( bes'4 c''4 bes'4) g'4 ( f'4 ees'4) f'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 f'4) \finalis
 f'4 f'4 ( g'4 f'4) bes'4 ( c''4 bes'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) f'4 ees'4 \forceBreak
 f'4 ( g'4 ees'4) f'4 ( f'4) ees'4 \divisioMaior
 ees'4 ( g'4) bes'4. d''4 ( bes'4 c''4) c''4 \divisioMinima
 bes'4 d''4 c''4 d''4 ( ees''4 d''4 c''4 c''4) bes'4 ( d''4 c''4) d''4 ( ees''4 c''4 c''4) \divisioMinima \forceBreak

 bes'4 ( c''4 bes'4 g'4 f'4) bes'4. a'4 ( bes'4 c''4 bes'4 g'4 f'4 ees'4) f'4 ( f'4) \divisioMinima
 g'4 ( bes'4.) a'4 ( bes'4 c''4 bes'4 g'4 f'4 ees'4) f'4 ( f'4) \divisioMinima
 bes'4 ( d''4 c''4 \forceBreak
) d''4 ( ees''4 d''4 c''4 c''4) bes'4 ( d''4 c''4) d''4 ( ees''4 c''4) c''4 \divisioMaior
 bes'4 ( d''4 bes'4) c''4 ( c''4) f'4 g'4 ( a'\prall bes'4) bes'4 bes'4 ( bes'4) ~ bes'4 ( a'4 g'4 \forceBreak
) g'4 ( bes'4 f'4) g'4 ( f'4) f'4 \divisioMaxima
 f'4 f'4 ( g'4) f'4  f'4 f'4 ( g'4) f'4 ( ees'4) ees'4 ( g'4) bes'4 ( c''4 bes'4 g'4) a'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaior \forceBreak

 ees'4 ( f'4 g'4 a'\prall bes'4 f'4.) ees'4 ( f'4 g'4 a'\prall bes'4 f'4) g'4 ( f'4 ees'4) \divisioMaior
 ees'4 ( g'4) bes'4 ( c''4.) bes'4 ( d''4 c''4) d''4 ( bes'4 g'4) \divisioMinima \forceBreak

 f'4 ( bes'4 g'4 a'\prall bes'4 c''4 bes'4 g'4 f'4 ees'4) f'4 ( f'4) \divisioMinima
 g'4 ( bes'4.) a'4 ( bes'4 c''4 bes'4 g'4 f'4 ees'4) f'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 f'4) \finalis

}

altoMusic = {
r2*3/2 ees'2 ~ ees'2*3/2 d'2*5/2 ees'2*3/2 d'4 \divisioMaior
ees'2*4/2 f'2*5/4 ees'2 ~ ees'2 f'2 ees'2*3/2 ~ \divisioMaior
ees'2 ~ ees'2*5/4 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 ees'2*4/2 ~ ees'2*3/2 \divisioMinima
f'2*5/4 ~ f'2*4/2 ees'2 ~ ees'4 c'2 d'2 ees'2 f4 \finalis
r4 d'2*3/2 ~ d'2*5/2 ees'2 r2*8/2 ees'4 ~ \divisioMaior
ees'2 d'2*3/4 ~ d'2*3/2 g'4 ~ \divisioMinima
g'4 f'2 ees'2*5/2 d'2*3/2 g'2*4/2 \divisioMinima
f'2*5/2 ~ f'2*3/4 ~ f'2*4/2 ees'2 ~ ees'4 ~ ees'4 ~ ees'4 \divisioMinima
f'2*5/4 ~ f'2*4/2 ees'2 ~ ees'4 ~ ees'4 ~ ees'4 \divisioMinima
f'2*3/2 ~ f'2*3/2 ees'2 f'2*3/2 ees'2*3/2 f'4 ~ \divisioMaior
f'2*3/2 ~ f'2 ~ f'4 g'2*3/2 f'4 ~ f'2 d'2*3/2 ees'2*3/2 c'2 ~ c'4 \divisioMaxima
r4 d'2*3/2 ~ d'4 c'2*4/2 ees'2 d'2*5/2 ~ d'2*3/2 c'4 \divisioMaior
ees'2 ~ ees'2 f'2*5/4 ees'2 ~ ees'2 bes2 ~ bes2 ~ bes4 \divisioMaior
ees'2 ~ ees'2*5/4 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 ees'2*4/2 ~ ees'4 ~ ees'4 ~ ees'4 \divisioMinima
f'2*5/4 ~ f'2*4/2 ees'2 ~ ees'4 c'2 d'2 ees'2 c'4 \finalis
}

tenorMusic = {
r2*5/2 bes2*3/2 ~ bes2*5/2 ~ bes2*3/2 ~ bes4 ~ \divisioMaior
bes2*4/2 ~ bes2*5/4 ~ bes2 ~ bes2 ~ bes2 ~ bes2 g4 ~ \divisioMaior
g2 ~ g2*5/4 ~ g2*3/2 ~ g2*3/2 \divisioMinima
bes2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2 ~ \divisioMinima
bes2*5/4 c'2*4/2 ~ c'2*3/2 ~ c'2 bes2 ~ bes2 a4 \finalis
r4 bes2*3/2 ~ bes2*5/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 g4 \divisioMaior
bes2 g2*3/4 ~ g2*3/2 ~ g4 ~ \divisioMinima
g4 ~ g2 ~ g2*5/2 ~ g2*3/2 ~ g2*4/2 \divisioMinima
bes2*5/2 ~ bes2*3/4 c'2*4/2 ~ c'2*3/2 ~ c'2 \divisioMinima
bes2*5/4 c'2*4/2 bes2*3/2 a2 \divisioMinima
f2*3/2 g2*3/2 ~ g2 bes2*3/2 ~ bes2*3/2 a4 \divisioMaior
g2*3/2 a2*3/2 bes2*3/2 ~ bes4 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 a4 \divisioMaxima
r4 bes2*3/2 a4 g2*4/2 bes2 ~ bes2*5/2 ~ bes2*3/2 a4 \divisioMaior
bes2 ~ bes2 ~ bes2*5/4 ~ bes2 ees2 f2 ees2 g4 ~ \divisioMaior
g2 ~ g2*5/4 ~ g2*3/2 ~ g2*3/2 \divisioMinima
bes2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2 ~ \divisioMinima
bes2*5/4 c'2*4/2 bes2*3/2 a2 bes2 g2 a4 \finalis
}

bassMusic = {
r2*8/2 g2*5/2 ees2*3/2 bes4 \divisioMaior
c2*4/2 d2*5/4 g2 ees2 d2 ees2 ~ ees4 \divisioMaior
d2 c2*5/4 g,2*3/2 bes,2*3/2 ~ \divisioMinima
bes,2 ees2*3/2 c2*5/2 d2 ~ \divisioMinima
d2*5/4 f2*4/2 bes2*3/2 a2 ~ a2 g2 f4 \finalis
r2*4/2 g2*5/2 ees2*3/2 d2 c2*3/2 d2 ees4 \divisioMaior
g2 ~ g2*3/4 f2*3/2 ees4 ~ \divisioMinima
ees4 bes,2 c2*5/2 f2*3/2 ees2*4/2 \divisioMinima
d2*5/2 g2*3/4 f2*4/2 bes2*3/2 a2 \divisioMinima
g2*5/4 f2*4/2 ~ f2*3/2 ~ f2 \divisioMinima
d2*3/2 c2*3/2 ~ c2 d2*3/2 g2*3/2 f4 ~ \divisioMaior
f2*3/2 ~ f2*3/2 ees2*3/2 ~ ees4 d2 bes,2*3/2 c2*3/2 f2 ~ f4 \divisioMaxima
r4 bes,2*3/2 ~ bes,4 c2*4/2 ~ c2 g2*5/2 ees2*3/2 f4 \divisioMaior
g2 ees2 d2*5/4 c2 ~ c2 d2 ees2 ~ ees4 \divisioMaior
d2 c2*5/4 g,2*3/2 bes,2*3/2 ~ \divisioMinima
bes,2 ees2*3/2 c2*5/2 d2 ~ \divisioMinima
d2*5/4 f2*4/2 ~ f2*3/2 ~ f2 ~ f2 ~ f2 ~ f4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
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
