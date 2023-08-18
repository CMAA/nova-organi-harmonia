\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.280
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Hoc corpus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Hoc corpus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Hoc corpus" }
    \line {}
  }
}

chantText = \lyricmode {
Hoc cor -- pus, 
\set stanza = " * " quod pro vo -- bis tra -- dé -- tur: 
hic ca -- lix no -- vi te -- sta -- mén -- ti est in me -- _ o sán -- gui -- ne, 
di -- cit Dó -- mi -- nus: 
hoc fá -- ci -- te, quo -- ti -- es -- cúm -- que _ sú -- mi -- tis, 
in me -- _ _ am com -- me -- mo -- ra -- ti -- ó -- nem. }

chantMusic = {
\tieDown   f'4 ( g'4) g'4 ( ees'4 g'4 f'4) f'4 \divisioMinima
 f'4 f'4 ( g'4 d'4) ees'4 ( f'4) f'4 ( g'4) g'4 ( a'4 g'4 f'4) f'4 ( g'4 f'4) f'4 \divisioMaior \forceBreak

 f'4 ees'4 ( g'4 f'4) f'4 f'4 ( g'4 a'4) a'4 a'4 g'4 a'4 f'4 f'4 ( a'4 g'4 f'4 g'4) \divisioMinima
 f'4 ( g'4) f'4 ( g'4) a'4 ( g'4 \forceBreak
) g'4 f'4 ( g'4) f'4 ( ees'4) ees'4 \divisioMaior
 g'4 ( bes'4 a'4) g'4 ( a'4) f'4 f'4 ( g'4 f'4) f'4 \divisioMaxima
 bes'4 ( g'4) bes'4 ( a'4 bes'4) a'4 f'4 \divisioMinima \forceBreak

 g'4 bes'4 ( a'4) g'4 bes'4 bes'4 ( c''4 d''4) ~ d''4 ( c''4) a'4 a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaior
 a'4 g'4. f'4 ( g'4 a'4) ~ a'4 ( g'4) g'4 \forceBreak
 g'4 g'4 g'4 ( ees'4) f'4 ( g'4) g'4 ( f'4) f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
d'2 c'2*4/2 d'4 ~ \divisioMinima
d'4 ~ d'2 ~ d'4 c'2 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 ~ c'4 ~ \divisioMaior
c'4 ~ c'2*3/2 ~ c'4 d'2*3/2 ~ d'4 c'2 f'2 d'2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2 ~ d'4 ~ d'2 ~ d'2 c'4 \divisioMaior
ees'2*3/2 ~ ees'2 c'4 ~ c'2*3/2 ~ c'4 \divisioMaxima
bes2 d'2*3/2 ~ d'2 \divisioMinima
f'4 ees'2*3/2 f'4 ~ f'2 ~ f'2*4/2 ~ f'2*4/2 ~ f'2 \divisioMaior
d'4 ~ d'2*7/4 ~ d'2*4/2 ~ d'2 ees'2 ~ ees'2 ~ ees'2 c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
r2*6/2 bes4 ~ \divisioMinima
bes4 ~ bes2*3/2 ~ bes2 ~ bes2 ~ bes2*4/2 ~ bes2*3/2 a4 ~ \divisioMaior
a4 bes2*3/2 a4 ~ a2*3/2 c'4 ~ c'2 ~ c'2 ~ c'2 bes2*3/2 \divisioMinima
a2 ~ a2 g2 bes4 a2 g2 ~ g4 \divisioMaior
c'2*3/2 bes2 r4 bes2*3/2 a4 \divisioMaxima
d2 g2*3/2 f2 ~ \divisioMinima
f4 g2*3/2 f4 g2 a2*3/2 c'4 d'2*4/2 c'2 ~ \divisioMaior
c'4 ~ c'2*7/4 bes2*4/2 ~ bes2 ~ bes2 ~ bes2 ~ bes2 ~ bes2*3/2 a4 \finalis
}

bassMusic = {
bes2 ~ bes2*4/2 ~ bes4 \divisioMinima
a4 g2*3/2 ~ g2 f2 ees2*4/2 f2*3/2 ~ f4 ~ \divisioMaior
f4 g2*3/2 ~ g4 f2*3/2 ~ f4 ees2 d2 g2 ~ g2*3/2 \divisioMinima
d2 c2 bes,2 ~ bes,4 ~ bes,2 c2 c,4 \divisioMaior
c2*3/2 ~ c2 ~ c4 f2*3/2 ~ f4 \divisioMaxima
g,2 ~ g,2*3/2 d2 ~ \divisioMinima
d4 c2*3/2 d4 ~ d2 ~ d2*3/2 ~ d4 ~ d2*4/2 f2 ~ \divisioMaior
f4 g2*7/4 ~ g2*4/2 f2 ees2 d2 c2 f2*3/2 ~ f4 \finalis
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
