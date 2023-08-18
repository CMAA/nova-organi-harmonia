\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.156
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Unam petii" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Unam petii"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Unam petii" }
    \line {}
  }
}

chantText = \lyricmode {
U -- nam pé -- ti -- i 
\set stanza = " * " a Dó -- mi -- no, _ _ _ 
hanc _ re -- quí -- ram: 
ut in -- há -- bi -- tem in do -- mo Dó -- mi -- ni 
ó -- mni -- bus di -- é -- bus vi -- tæ me -- æ. }

chantMusic = {
\tieDown   c''4 c''4 ( \once \tweak #'font-size #-4 a' ) c''4 ( d''4 c''4 d''4) c''4 bes'4 \divisioMinima
 g'4 ( bes'4) bes'4 ( a'4 bes'4) g'4 ( f'4) f'4. g'4 ( bes'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior \forceBreak

 ees'4 ( g'4) bes'4. c''4 ees''4 ( ees''4 c''4) c''4 ( a'4 bes'\prall c''4 bes'4 a'4 g'4 a'\prall bes'4 a'4 g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 bes'4 c''4 ( ees''4) ees''4 \forceBreak
 d''4 ( ees''4) c''4 d''4 c''4 ( d''4 a'4) bes'4 d''4 ( ees''4) d''4 c''4 ( d''4 c''4) \divisioMaior
 c''4 bes'4 a'4 ( bes'4 a'4) f'4 a'4 ( bes'4 a'4) g'4 ( a'4 \once \tweak #'font-size #-4 c'' ) \divisioMinima \forceBreak

 c''4 c''4 ( a'4 bes'\prall c''4 bes'4 a'4 g'4 a'\prall bes'4 a'4 g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
r4 f'2 ~ f'2 ~ f'2*3/2 ~ f'4 \divisioMinima
ees'2 d'2*3/2 c'2 ~ c'2*3/4 d'2 ~ d'2 ~ d'2 ees'4 ~ \divisioMaior
ees'2 g'2*5/4 ~ g'2*3/2 f'2*3/2 ~ f'2*3/2 d'2 ees'2*3/2 d'2 ~ d'2*4/2 c'2 \divisioMaxima
g'4 ~ g'2 ees'4 ~ ees'2 f'2 ~ f'2*4/2 g'2*3/2 ~ g'2*3/2 \divisioMaior
f'2 ~ f'2*3/2 ~ f'4 d'2*3/2 f'2*3/2 ~ \divisioMinima
f'4 ~ f'2*3/2 ~ f'2*3/2 ees'2 ~ ees'2*3/2 d'2 ~ d'2*4/2 c'2 \finalis
}

tenorMusic = {
r2*5/2 a2*3/2 bes4 ~ \divisioMinima
bes2 g2*3/2 bes2 a2*3/4 bes2 ~ bes2 ~ bes2 ~ bes4 ~ \divisioMaior
bes2 d'2*5/4 c'2*3/2 d'2*3/2 a2*3/2 bes2 g2*3/2 a2 bes2*4/2 ~ bes4 a4 \divisioMaxima
g4 ~ g2 ~ g4 bes2 ~ bes2 a2*4/2 bes2*3/2 c'2*3/2 \divisioMaior
d'2 c'2*4/2 bes2*3/2 c'2*3/2 \divisioMinima
a4 f2*3/2 a2*3/2 bes2 ~ bes2*3/2 a2 bes2*4/2 ~ bes4 a4 \finalis
}

bassMusic = {
r2*3/2 f2 ~ f2*3/2 d4 \divisioMinima
ees2 ~ ees2*3/2 f2 ~ f2*3/4 bes2 a2 g2 ~ g4 ~ \divisioMaior
g2 f2*5/4 ees2*3/2 d2*3/2 ~ d2*3/2 ees2 c2*3/2 ~ c2 bes,2*4/2 f2 \divisioMaxima
r4 ees2 c4 ~ c2 f2 ~ f2*4/2 ~ f2*3/2 ees2*3/2 \divisioMaior
d2 ~ d2*4/2 g2*3/2 f2*3/2 ~ \divisioMinima
f4 d2*3/2 ~ d2*3/2 ~ d2 c2*3/2 ~ c2 bes,2*4/2 f2 \finalis
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
        "VII"
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
