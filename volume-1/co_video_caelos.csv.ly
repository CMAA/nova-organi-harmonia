\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.70
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Video caelos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Video caelos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Video caelos" }
    \line {}
  }
}

chantText = \lyricmode {
Ví -- de -- o 
\set stanza = " * " cœ -- los a -- pér -- tos, 
et Je -- sum stan -- tem a dex -- tris vir -- tú -- tis De -- _ i: 
Dó -- mi -- ne Je -- su, ác -- ci -- pe spí -- ri -- tum me -- _ um, 
et ne stá -- tu -- as il -- lis hoc pec -- cá -- tum, 
qui -- a né -- sci -- unt quid fá -- ci -- unt. }

chantMusic = {
\tieDown  ees'4 ( f'4 g'4) f'4 f'4  g'4 f'4 ( g'4 f'4) ees'4  g'4 ( \once \tweak #'font-size #-4 aes' ) f'4 \divisioMaior
 f'4 ( bes'4 \tiny a' g' 4) bes'4 ( c''4) c''4 c''4 ( \once \tweak #'font-size #-4 bes' ) c''4 ( bes'4) \divisioMinima \forceBreak

 bes'4 c''4 bes'4 ( bes'4 a'4) g'4 a'4 ( bes'4 c''4) bes'4 bes'4 ( bes'4 g'4) a'4 ( f'4) f'4 \divisioMaxima
 f'4 ( c''4) c''4 ( d''4 c''4) bes'4 ( c''4 bes'4 a'4) g'4 bes'4 ( bes'4) \divisioMinima \forceBreak

 c''4 bes'4 bes'4 ( a'4) bes'4 bes'4 ( g'4) a'4 a'4 ( g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 f'4 ( d'4) f'4 ( g'4) f'4 ees'4 f'4 d'4 \forceBreak
 d'4 ( f'4) ees'4 d'4 ( ees'4 d'4 c'4 d'4) d'4 ( c'4) \divisioMaior
 ees'4 ( d'4) ees'4 f'4 ( g'4) ees'4 ( d'4) c'4 d'4 ( ees'4 \once \tweak #'font-size #-4 f' ) f'4 f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
ees'2*3/2 ~ ees'4 d'2 ~ d'2*4/2 ees'2 d'4 ~ \divisioMaior
d'2*4/2 ~ d'2*3/2 f'2*4/2 ~ \divisioMinima
f'2 ~ f'2*4/2 ~ f'2*4/2 ~ f'2*3/2 c'2 ~ c'4 \divisioMaxima
f'2 g'2*3/2 f'2*4/2 ~ f'4 ~ f'2 ~ \divisioMinima
f'2 ~ f'2 ~ f'4 ~ f'2*3/2 ~ f'4 c'2*4/2 ~ c'2 ~ \divisioMaxima
c'4 bes2 ~ bes2*4/2 ~ bes2 ~ bes2*3/2 g2*5/2 ~ g2 ~ \divisioMaior
g2*3/2 ~ g2 ~ g2*3/2 d'2*3/2 ~ d'4 c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 c'2 bes4 ~ \divisioMaior
bes2*4/2 ~ bes2*3/2 ~ bes2*4/2 ~ \divisioMinima
bes2 c'2*4/2 ~ c'2*4/2 f2*3/2 bes2 a4 ~ \divisioMaxima
a2 g2*3/2 ~ g2*4/2 bes4 ~ bes2 ~ \divisioMinima
bes2 c'2 d'4 c'2*3/2 bes4 ~ bes2*4/2 a2 \divisioMaxima
f2*3/2 d2*4/2 ees2 f2*3/2 ~ f2*5/2 ees2 \divisioMaior
c2*3/2 d2 ees2*3/2 f2*3/2 bes4 ~ bes2*3/2 a4 \finalis
}

bassMusic = {
g2*3/2 bes2*3/2 g2*4/2 f2 bes4 \divisioMaior
a2*4/2 g2*3/2 d2*4/2 \divisioMinima
g2 f2*4/2 d2*4/2 ~ d2*3/2 f2 ~ f4 ~ \divisioMaxima
f2 ees2*3/2 d2*4/2 ~ d4 ~ d2 ~ \divisioMinima
d2 ~ d2 ~ d4 ~ d2*3/2 ~ d4 f2*4/2 ~ f2 \divisioMaxima
d2*3/2 bes,2*4/2 ~ bes,2 ~ bes,2*3/2 c2*5/2 ~ c2 ~ \divisioMaior
c2*3/2 ~ c2 ~ c2*3/2 bes,2*3/2 ~ bes,4 f2*3/2 ~ f4 \finalis
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
