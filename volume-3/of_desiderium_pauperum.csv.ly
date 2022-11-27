\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.341
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Desiderium pauperum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Desiderium pauperum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Desiderium pauperum" }
    \line {}
  }
}

chantText = \lyricmode {
De -- si -- dé -- ri -- um páu -- pe -- rum 
\set stanza = " * " ex -- au -- dí -- vit Dó -- mi -- nus: 
præ -- pa -- ra -- ti -- ó -- nem _ 
cor -- _ dis e -- ó -- _ rum 
au -- dí -- _ vit au -- _ ris tu -- a. }

chantMusic = {
\tieDown   d'4 d'4 f'4 ( g'4 a'4) f'4 d'4 ( f'4) e'4 ( f'4 a'4 g'4) f'4 ( g'4) g'4 \divisioMinima
 f'4 g'4 bes'4 ( c''4 bes'4) bes'4 ( bes'4 bes'4) bes'4 ( c''4 bes'4 bes'4) g'4 g'4 ( a'4 g'4) \divisioMaxima
 g'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 ( d''4 c''4) c''4 ( d''4 bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaior
 bes'4 ( bes'4) ~ bes'4 ( c''4 bes'4 g'4) g'4 f'4 ( g'4) g'4 ( a'\prall bes'4 c''4 bes'4) ~ bes'4 ( a'4 bes'4) bes'4 ( a'4) \divisioMaior
 bes'4 ( bes'4) bes'4 ( c''4) d''4 ( c''4 d''4) bes'4 ( bes'4 a'4 g'4) \divisioMinima
 c''4 ( c''4 a'4) bes'4 ( c''4 bes'4) bes'4 ( a'4 f'4 g'4) g'4 ( a'\prall bes'4 a'4 bes'4) a'4 ( g'4) \finalis

}

altoMusic = {
r4 d'4 ~ d'2*6/2 c'2*4/2 ~ c'2 d'4 ~ \divisioMinima
d'2 f'2*3/2 ~ f'2*3/2 d'2*5/2 ~ d'2*3/2 ~ \divisioMaxima
d'4 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 \divisioMaior
f'2 ~ f'2*7/2 ~ f'2*4/2 ~ f'2*4/2 ~ f'2 ~ \divisioMaior
f'2 d'2 ~ d'2*3/2 ~ d'2*4/2 \divisioMinima
f'2*3/2 ~ f'2*3/2 ~ f'2*4/2 d'2*5/2 ~ d'2 \finalis
}

tenorMusic = {
r2 a2*6/2 ~ a2*4/2 c'2 bes4 ~ \divisioMinima
bes2 ~ bes2*3/2 d'2*3/2 c'2*5/2 bes2*3/2 ~ \divisioMaxima
bes4 a2 g2*3/2 f2*3/2 g2*4/2 ~ g2*3/2 \divisioMaior
f2 g2*5/2 a2 bes2*4/2 c'2*4/2 d'2 \divisioMaior
f2 g2 ~ g2*3/2 g'2*4/2 \divisioMinima
a2*3/2 d'2*3/2 c'2*4/2 ~ c'2*5/2 bes2 \finalis
}

bassMusic = {
d2 ~ d2*6/2 f2*4/2 a2 g4 ~ \divisioMinima
g2 d2*3/2 ~ d2*3/2 g2*5/2 ~ g2*3/2 \divisioMaxima
bes,4 ~ bes,2 ~ bes,2*3/2 ~ bes,2*3/2 g,2*4/2 bes,2*3/2 \divisioMaior
d2 ~ d2*5/2 ~ d2 ~ d2*4/2 ~ d2*4/2 ~ d2 ~ \divisioMaior
d2 g,2 a,2*3/2 bes,2*4/2 \divisioMinima
d2*3/2 ~ d2*3/2 ~ d2*4/2 g2*5/2 ~ g2 \finalis
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
