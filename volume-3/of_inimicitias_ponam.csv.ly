\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.323
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Inimicitias ponam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Inimicitias ponam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Inimicitias ponam" }
    \line {}
  }
}

chantText = \lyricmode {
I -- ni -- mi -- cí -- ti -- as 
\set stanza = " * " po -- _ nam 
in -- ter te _ _ _ _ et Mu -- lí -- _ e -- rem, 
et _ se -- _ men _ tu -- _ um 
et Se -- men _ _ _ il -- lí -- us. _ _ }

chantMusic = {
\tieDown   g'4 g'4 ( d'4) f'4 f'4 ( a'4 g'4) g'4 g'4 \divisioMinima
 g'4 bes'4 ( bes'4 bes'4) g'4 ( f'4 g'4 f'4) \divisioMaior
 bes'4 ( bes'4) g'4 ( f'4 g'4) g'4 bes'4 ( bes'4 bes'4) a'4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMinima
 g'4 ( bes'4 g'4 f'4 g'4) ees'4 ees'4 ( g'4) bes'4 ( g'4 ees'4) ees'4 ( f'4 ees'4) ees'4 \divisioMaxima
 g'4 bes'4 ( bes'4 c''4) g'4 bes'4 ( bes'4 bes'4) g'4 bes'4 ( bes'4 bes'4) f'4 g'4 ( a'4 f'4) d'4 ( f'4 d'4 f'4) \divisioMaior
 c'4 d'4 ( f'4) d'4 f'4 ( g'4 f'4) a'4 ( c''4 bes'4) c''4 ( bes'4 a'4 g'4) g'4 g'4 g'4 ( a'\prall bes'4) ~ bes'4 ( a'4 g'4) a'4 ( a'4 g'4) \finalis

}

altoMusic = {
r2 d'4 ~ d'4 ~ d'2*4/2 ~ d'4 ~ \divisioMinima
d'4 ees'2*3/2 d'2*4/2 \divisioMaior
ees'2 ~ ees'2*4/2 f'2*3/2 ~ f'2*4/2 d'2*3/2 ~ d'2 \divisioMinima
ees'2*6/2 ~ ees'2 ~ ees'2*3/2 bes2*3/2 ~ bes4 \divisioMaxima
r4 f'2*4/2 ees'2*4/2 ~ ees'2*4/2 d'2*3/2 ~ d'2*4/2 \divisioMaior
c'4 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*5/2 f'4 ees'2 d'2*4/2 c'2 bes4 \finalis
}

tenorMusic = {
r4 a2*3/2 c'2*4/2 bes4 ~ \divisioMinima
bes4 g2*3/2 ~ g2*4/2 ~ \divisioMaior
g2 bes2*4/2 ~ bes2*3/2 c'2*4/2 ~ c'2*3/2 bes2 ~ \divisioMinima
bes2*6/2 ~ bes2 g2*3/2 f2*3/2 g4 \divisioMaxima
r4 bes2*4/2 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*3/2 a2*4/2 ~ \divisioMaior
a4 ~ a2*3/2 g2*3/2 ~ g2*3/2 ~ g2*5/2 ~ g4 ~ g2 ~ g2*4/2 d2 ~ d4 \finalis
}

bassMusic = {
g4 ~ g2*3/2 ~ g2*4/2 ~ g4 ~ \divisioMinima
g4 c2*3/2 bes,2*4/2 \divisioMaior
c2 ~ c2*4/2 d2*3/2 ~ d2*4/2 g2*3/2 ~ g2 ~ \divisioMinima
g2*6/2 f2 ees2*3/2 ~ ees2*3/2 ~ ees4 \divisioMaxima
r4 d2*4/2 c2*4/2 bes,2*4/2 ~ bes,2*3/2 d2*4/2 ~ \divisioMaior
d4 c2*3/2 bes,2*3/2 a,2*3/2 g,2*5/2 ~ g,4 ~ g,2 ~ g,2*4/2 ~ g,2 ~ g,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
        "2"
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
