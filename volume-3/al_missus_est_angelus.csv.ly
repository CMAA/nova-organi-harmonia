\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.413
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Missus est Angelus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Missus est Angelus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Missus est Angelus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ _ lú -- _ _ _ ia. 
\set stanza = " * " 
_ _ _ _ _ _ _ _ _ ℣. 
Mis -- sus est An -- ge -- lus Dó -- mi -- ni san -- ctus _ Rá -- pha -- el _ _ 
a De -- o ad To -- bí -- am, 
et sa -- lu -- tá -- _ vit e -- um, _ _ 
et di -- _ _ _ xit: 
Gáu -- _ di -- um sit _ ti -- _ _ _ bi 
\set stanza = " * " sem -- _ _ _ per. 
_ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( bes'4 a'4 g'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( f'4) g'4 ( bes'4 a'4) g'4 ( a'4 f'4) d'4 ( ees'4 d'4) ~ d'4 ( \once \tweak #'font-size #-4 c' ) c'4 \divisioMaior
 g'4 ( bes'4 a'4) g'4 ( a'4 f'4) d'4 ( ees'4 d'4) ~ d'4 ( c'4) \divisioMinima
 g'4 ( g'4 f'4 ees'4) f'4 ( f'4 ees'4 d'4) ees'4 ( c'4 d'4) ees'4 ( f'4 f'4.) ees'4 ( g'4 f'4 ees'4) f'4 ( ees'4 d'4) \finalis
 d'4 ( ees'4) d'4 ( c'4) c'4 ( f'4) f'4 ( g'4) f'4 ( ees'4) ees'4 f'4 f'4 ( ees'4) g'4 \divisioMinima
 bes'4 a'4 bes'4 ( c''4 bes'4) bes'4 ( a'4 g'4) a'4 ( bes'4) g'4 ( f'4 ees'4) f'4 ( g'4) ~ g'4 ( d'4) \divisioMaior
 ees'4 ( d'4 c'4) d'4 ( ees'4 f'4 g'4) f'4 g'4 g'4 ( a'4) g'4 ( f'4) f'4 \divisioMaxima
 g'4 f'4 g'4 ( bes'4) bes'4 ( bes'4 c''4.) bes'4 ( d''4 c''4) bes'4 ( a'4 g'4 f'4) a'4 ( bes'4) g'4 ( f'4 ees'4) f'4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( bes'4 a'4) g'4 ( a'4 f'4.) g'4 ( f'4 ees'4) f'4 ( ees'4 c'4) d'4 \divisioMaxima
 ees'4 ( d'4 c'4) d'4 ( ees'4 f'4 g'4) f'4 f'4 g'4 ( bes'4 a'4) c''4 ( bes'4) bes'4 ( a'4 g'4 f'4) g'4 ( ees'4) f'4 ( g'4) ~ g'4 ( f'4) f'4 \divisioMinima
 g'4 ( bes'4 a'4) g'4 ( a'4 f'4) d'4 ( ees'4 d'4) ~ d'4 ( \once \tweak #'font-size #-4 c' ) c'4 \divisioMaior
 g'4 ( bes'4 a'4) g'4 ( a'4 f'4) d'4 ( ees'4 d'4) ~ d'4 ( c'4) \divisioMinima
 g'4 ( g'4 f'4 ees'4) f'4 ( f'4 ees'4 d'4) ees'4 ( c'4 d'4) ees'4 ( f'4 f'4.) ees'4 ( g'4 f'4 ees'4) f'4 ( ees'4 d'4) \finalis

}

altoMusic = {
r2 d'2*4/2 ~ d'2 c'2*5/2 d'2*6/2 g2 ~ g2*3/2 ~ g4 \divisioMaior
d'2*3/2 ~ d'2*3/2 bes2 g2*3/2 \divisioMinima
bes2*4/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*7/4 ~ bes2*4/2 ~ bes2 ~ bes4 ~ \finalis
bes2*4/2 ~ bes2 ~ bes2*5/2 ~ bes4 ~ bes2 ~ bes4 \divisioMinima
d'2 ~ d'2*3/2 c'2*5/2 ~ c'2*4/2 bes2*3/2 ~ \divisioMaior
bes2*3/2 ~ bes2*6/2 ~ bes2*4/2 a4 \divisioMaxima
d'2*4/2 f'2*7/4 ~ f'2*3/2 ~ f'2*4/2 ~ f'2 ees'2*4/2 c'2*3/2 \divisioMaior
d'2 ~ d'2*3/2 ~ d'2*7/4 c'2*6/2 bes4 \divisioMaxima
c'2*3/2 d'2*6/2 ~ d'2*5/2 f'2*4/2 c'2*3/2 ~ c'2*3/2 ~ c'4 \divisioMinima
d'2*3/2 ~ d'2*3/2 g2 ~ g2*3/2 ~ g4 \divisioMaior
bes2*6/2 ~ bes2 g2 ~ g4 \divisioMinima
bes2*4/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*7/4 ~ bes2*4/2 ~ bes2 ~ bes4 \finalis
}

tenorMusic = {
r2 f2*4/2 g2 ees2*5/2 f2*6/2 ~ f2 ~ f2*3/2 ees4 \divisioMaior
bes2*3/2 ~ bes2*3/2 ~ bes2 g2*3/2 \divisioMinima
ees2*4/2 d2*4/2 c2*3/2 d2*7/4 ees2*4/2 d2 f4 ~ \finalis
f2*4/2 ees2 d2*5/2 ~ d4 ees2 d4 \divisioMinima
g2 f2*3/2 ees2*5/2 d2*4/2 ~ d2*3/2 \divisioMaior
g2*3/2 c2*6/2 ~ c2*4/2 ~ c4 \divisioMaxima
bes2*4/2 ~ bes2*7/4 a2*3/2 g2*4/2 f2 bes2*4/2 ~ bes2 a4 \divisioMaior
bes2 f2*3/2 g2*7/4 ees2*6/2 f4 \divisioMaxima
bes2*3/2 ~ bes2*6/2 ~ bes2*5/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 a4 \divisioMinima
bes2*3/2 f2*3/2 ~ f2 ~ f2*3/2 ees4 \divisioMaior
d2*6/2 f2 ~ f2 ees4 ~ \divisioMinima
ees2*4/2 d2*4/2 c2*3/2 d2*7/4 ees2*4/2 d2 f4 \finalis
}

bassMusic = {
r2 bes,2*4/2 ~ bes,2 ~ bes,2*5/2 ~ bes,2*6/2 ~ bes,2 c2*3/2 ~ c4 \divisioMaior
r2*3/2 a2*3/2 g2 ees2*3/2 \divisioMinima
g,2*4/2 ~ g,2*4/2 ~ g,2*3/2 ~ g,2*7/4 ~ g,2*4/2 bes,2 ~ bes,4 ~ \finalis
bes,2*4/2 ~ bes,2 ~ bes,2*5/2 g,2*3/2 ~ g,4 ~ \divisioMinima
g,2 ~ g,2*3/2 ~ g,2*5/2 ~ g,2*4/2 ~ g,2*3/2 ~ \divisioMaior
g,2*3/2 ~ g,2*6/2 f,2*4/2 ~ f,4 \divisioMaxima
bes,2*4/2 d2*7/4 ~ d2*3/2 ~ d2*4/2 ~ d2 ees2*4/2 f2 ~ f4 \divisioMaior
bes,2 ~ bes,2*3/2 ~ bes,2*7/4 ~ bes,2*6/2 ~ bes,4 \divisioMaxima
r2*3/2 a2*6/2 g2*5/2 d2*4/2 ees2*3/2 f2*3/2 ~ f4 \divisioMinima
bes,2*3/2 ~ bes,2*3/2 ~ bes,2 c2*3/2 ~ c4 \divisioMaior
g,2*6/2 ~ g,2 c2 ~ c4 \divisioMinima
g,2*4/2 ~ g,2*4/2 ~ g,2*3/2 ~ g,2*7/4 ~ g,2*4/2 bes,2 ~ bes,4 \finalis
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
        "III"
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
