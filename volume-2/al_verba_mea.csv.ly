\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.114
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Verba mea" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Verba mea"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Verba mea" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ 
\set stanza = " * " 
al -- le -- lú -- ia. _ 
_ _ _ _ _ ℣. 
Ver -- ba me -- a áu -- _ ri -- bus pér -- _ _ ci -- pe, Dó -- _ _ mi -- ne: 
in -- tél -- _ li -- _ _ ge 
\set stanza = " * " 
cla -- mó -- rem me -- um. _ 
_ _ _ _ _ }

chantMusic = {
\tieDown   f'4 ( \once \tweak #'font-size #-4 g' ) g'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 a'4 ( a'4 g'4) \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 a'4 ( a'4 g'4) \divisioMaior
 g'4 ( a'4 bes'4 c''4) d''4 ( g'4 a'\prall bes'4 a'4 g'4.) f'4 ( g'\prall a'4) bes'4 ( a'4) ~ a'4 ( g'4) \finalis \forceBreak

 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( bes'4 a'4 bes'\prall c''4 bes'4 g'4) g'4 \divisioMinima
 g'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 c''4 ( c''4 d''4) c''4 ( g'4) a'4 ( bes'4 a'4 g'4.) f'4 ( g'\prall a'4 bes'4) a'4 ( g'4) g'4 \divisioMinima \forceBreak

 g'4 ( d'4) e'4 ( f'4) g'4 ( a'4 g'4) f'4 ( g'4) g'4 \divisioMaxima
 g'4 a'4 ( bes'\prall c''4) d''4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( g'4) a'4 ( bes'4 a'4 g'4.) f'4 ( g'\prall a'4 bes'4) a'4 ( g'4) \divisioMaior \forceBreak

 g'4 f'4 ( e'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4) g'4 a'4 ( a'4 g'4) \divisioMaior
 g'4 ( a'4 bes'4 c''4) d''4 ( g'4 a'\prall bes'4 a'4 g'4.) f'4 ( g'\prall a'4) bes'4 ( a'4) ~ a'4 ( g'4) \finalis

}

altoMusic = {
d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMaior
d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMaior
ees'2*4/2 d'2*13/4 ~ d'2 ~ d'2 c'2 bes4 \finalis
d'2*3/2 ees'2 f'2*5/2 d'4 \divisioMinima
ees'4 d'2*3/2 g'2*3/2 ees'2 e'2*9/4 d'2 ~ d'2 ~ d'2*3/2 \divisioMinima
c'2*4/2 ~ c'2*3/2 a2 bes4 \divisioMaxima
r4 f'2*3/2 ~ f'2 ees'2 f'2*9/4 d'2*4/2 ~ d'2 ~ \divisioMaior
d'4 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 \divisioMaior
ees'2*4/2 d'2*13/4 c'2 ~ c'2 ~ c'2 bes4 \finalis
}

tenorMusic = {
bes2*3/2 c'2*3/2 ~ c'2 bes4 ~ \divisioMaior
bes2*3/2 a2*3/2 c'2 bes4 \divisioMaior
g2*4/2 ~ g2*13/4 a2 f2 d2 ~ d4 \finalis
bes2*3/2 ~ bes2 c'2*5/2 bes4 ~ \divisioMinima
bes4 g2*3/2 ~ g2*3/2 ~ g2 c'2*9/4 a2 f2 g2*3/2 \divisioMinima
d2*4/2 ~ d2*5/2 ~ d4 \divisioMaxima
g4 f2*3/2 g2 ~ g2 c'2*9/4 ~ c'2*4/2 bes2 ~ \divisioMaior
bes4 a2 ~ a2 g2*3/2 d2*3/2 \divisioMaior
g2*4/2 ~ g2*13/4 a2 f2 d2 ~ d4 \finalis
}

bassMusic = {
r2*3/2 a2*3/2 g2 ~ g4 \divisioMaior
bes,2*3/2 d2*3/2 g2 ~ g4 \divisioMaior
c2*4/2 bes,2*13/4 d2 ~ d2 g,2 ~ g,4 \finalis
r2*3/2 g2 ~ g2*5/2 ~ g4 ~ \divisioMinima
g4 f2*3/2 ees2*3/2 c2 ~ c2*9/4 ~ c2 ~ c2 bes,2*3/2 \divisioMinima
a,2*4/2 g,2*5/2 ~ g,4 \divisioMaxima
r4 d2*3/2 c2 ~ c2 d2*9/4 g2*4/2 ~ g2 ~ \divisioMaior
g4 d2 c2 bes,2*3/2 ~ bes,2*3/2 \divisioMaior
c2*4/2 bes,2*13/4 d2 ~ d2 g,2 ~ g,4 \finalis
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
