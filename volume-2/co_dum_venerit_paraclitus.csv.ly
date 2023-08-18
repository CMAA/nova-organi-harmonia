\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.53
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dum venerit Paraclitus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dum venerit Paraclitus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dum venerit Paraclitus" }
    \line {}
  }
}

chantText = \lyricmode {
Dum vé -- ne -- rit 
\set stanza = " * " Pa -- rá -- cli -- tus _ _ 
Spí -- ri -- tus ve -- ri -- tá -- tis, 
il -- le ár -- _ gu -- et mun -- dum de pec -- cá -- _ to, 
et de ju -- stí -- ti -- a, et de ju -- dí -- ci -- o, 
al -- le -- _ lú -- ia, al -- le -- _ lú -- _ ia. }

chantMusic = {
\tieDown   g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( a'4 bes'4)  g'4 ( aes'4 g'4 ees'4) ees'4  g'4 bes'4 ( a'4 bes'4) g'4 ( f'4) f'4. ees'4 ( f'4 g'4) ~ g'4 ( f'4) \divisioMaior
 a'4 ( a'4 bes'4) g'4 ( a'\prall bes'4 \forceBreak
) bes'4 ( \once \tweak #'font-size #-4 f' ) a'4 ( a'4 bes'4) bes'4 ( g'4) g'4 ( c''4 bes'4 c''4) bes'4 ( a'4) \divisioMaxima
 g'4 ( c''4) c''4 ( bes'4) bes'4 ( c''4) d''4 ( c''4 d''4) bes'4 a'4 bes'4 ( c''4 bes'4) a'4 ( g'4 a'\prall bes'4) g'4 f'4 g'4 \forceBreak
 bes'4 ( g'4 a'4) g'4 ( f'4) \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 d' ) f'4 g'4 ( a'4 g'4) a'4 g'4 ( f'4) f'4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4 bes'4) a'4 f'4 ( g'4 a'4) g'4 ( f'4) f'4 \divisioMaior \forceBreak

 f'4 f'4 ( a'4 f'4.) a'4 ( c''4) c''4 ( bes'4 c''4) a'4 \divisioMinima
 bes'4 g'4. f'4 ( g'4 a'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
d'2 f'2*3/2 bes2*4/2 ~ bes2 d'2*5/2 c'2*7/4 bes2*3/2 \divisioMaior
d'2*3/2 ees'2*3/2 f'2 ~ f'2*3/2 d'2 ~ d'2*4/2 f'2 \divisioMaxima
d'2*4/2 ~ d'2 f'2*3/2 ~ f'2 ~ f'2*3/2 d'2*4/2 ~ d'2*3/2 ees'2*3/2 d'2 ~ \divisioMaior
d'2*3/2 ~ d'2*3/2 ~ d'4 c'2*3/2 \divisioMinima
bes2 d'2*4/2 ~ d'2*3/2 c'2 ~ c'4 ~ \divisioMaior
c'4 ~ c'2*7/4 ~ c'2 f'2*4/2 ~ \divisioMinima
f'4 d'2*3/4 ~ d'2*3/2 ~ d'4 ees'2*4/2 c'2 \finalis
}

tenorMusic = {
g2 f2*3/2 ees2*4/2 g2 ~ g2*5/2 ~ g2*7/4 f2*3/2 \divisioMaior
g2*3/2 ~ g2*3/2 f2 c'2*3/2 ~ c'2 bes2*4/2 c'2 \divisioMaxima
r2 a2 bes2 ~ bes2*3/2 d'2 ~ d'2*3/2 c'2*4/2 bes2*3/2 ~ bes2*3/2 a2 ~ \divisioMaior
a2*3/2 g2*3/2 d4 ~ d2*3/2 ~ \divisioMinima
d2 g2*4/2 ~ g2*3/2 ees2 f4 ~ \divisioMaior
f4 ~ f2*7/4 ~ f2 ~ f2*4/2 ~ \divisioMinima
f4 g2*3/4 a2*3/2 bes4 ~ bes2*4/2 ~ bes4 a4 \finalis
}

bassMusic = {
r2 d2*3/2 ees2*4/2 ~ ees2 bes,2*5/2 c2*7/4 d2*3/2 \divisioMaior
bes,2*3/2 c2*3/2 d2 ~ d2*3/2 g2 ~ g2*4/2 f2 \divisioMaxima
g2 ~ g2 ~ g2 d2*3/2 ~ d2 g2*3/2 ~ g2*4/2 ~ g2*3/2 c2*3/2 d2 \divisioMaior
c2*3/2 bes,2*3/2 ~ bes,4 a,2*3/2 \divisioMinima
g,2 ~ g,2*4/2 bes,2*3/2 ~ bes,2 a,4 ~ \divisioMaior
a,4 f2*7/4 d2 ~ d2*4/2 ~ \divisioMinima
d4 bes,2*3/4 ~ bes,2*3/2 ~ bes,4 c2*4/2 f2 \finalis
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
