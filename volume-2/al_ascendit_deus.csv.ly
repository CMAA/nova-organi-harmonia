\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.67
%(volume.page)

global = {
 \key g \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ascendit Deus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ascendit Deus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ascendit Deus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ ℣. 
As -- cén -- dit De -- us in ju -- bi -- la -- _ ti -- ó -- ne, 
et Dó -- mi -- nus _ _ _ _ _ _ _ _ _ 
in vo -- ce _ 
\set stanza = " * " tu -- _ bæ. _ _ _ _ _ _ }

chantMusic = {
\tieDown   aes'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( aes'4 bes'4) c''4 ( bes'4 c''4)  c''4 ( des''4 c''4 bes'4) ~ bes'4 ( aes'4) \divisioMinima
 aes'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( aes'4 bes'4) c''4 ( bes'4 c''4)  c''4 ( des''4 c''4 bes'4) ~ bes'4 ( aes'4) \divisioMinima \forceBreak

  c''4 ( des''4 c''4 bes'4) ~ bes'4 ( g'4) bes'4 ( c''4 bes'4 aes'4 g'4) aes'4 ( bes'4 aes'4) ~ aes'4 ( g'4) \finalis
 c''4 c''4 bes'4 bes'4 ( c''4 bes'4 g'4) aes'4 ( bes'4 aes'4 bes'4) \divisioMinima \forceBreak

 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 bes'4 bes'4 ( c''4 bes'4) c''4 ( aes'4) g'4 ( f'4) g'4 ( bes'4 aes'4 f'4) f'4 \divisioMaxima
 f'4 ( \once \tweak #'font-size #-4 ees' ) aes'4 bes'4 ( c''4 bes'4)  c''4 ( des''4 bes'4 g'4 bes'4. \forceBreak
) c''4 ( des''4 aes'4 f'4) aes'4 ( aes'4) ~ aes'4 ( f'4) bes'4 ( aes'4 g'4) \divisioMinima
 f'4 ( aes'4) c''4 ( aes'4) bes'4 ( g'4) aes'4. f'4 ( aes'4 bes'4 aes'4 g'4) aes'4 ( g'4) \divisioMaxima
 aes'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( aes'4 bes'4) bes'4 ( f'4) bes'4 ( aes'4 g'4)  \forceBreak
 aes'4 ( f'4) g'4 ( aes'4 bes'4 c''4)  c''4 ( des''4 c''4 bes'4) ~ bes'4 ( aes'4) \divisioMinima
  c''4 ( des''4 c''4 bes'4) ~ bes'4 ( g'4) bes'4 ( c''4 bes'4 aes'4 g'4) aes'4 ( bes'4 aes'4) ~ aes'4 ( g'4) \finalis

}

altoMusic = {
r2*5/2 <g' e'>2*3/2 f'2*3/2 ees'2*3/2 \divisioMinima
f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ees'2*3/2 ~ ees'2*3/2 ~ ees'2*3/2 f'2*3/2 ees'2 des'2 ees'2 ~ ees'4 \finalis
r4 g'2 f'2*4/2 ees'2*4/2 ~ \divisioMinima
ees'2 ~ ees'2 ~ ees'2*3/2 ~ ees'2*4/2 c'2*4/2 ~ c'4 \divisioMaxima
r2 ees'2*4/2 des'2*4/2 ~ des'2*3/4 ~ des'2*4/2 c'2 ees'2 ~ ees'2*3/2 ~ \divisioMinima
ees'2*4/2 ~ ees'2 c'2*7/4 ~ c'2*3/2 bes2 \divisioMaxima
c'2 ~ c'2*3/2 f'2 ees'2*3/2 des'2 ees'2*4/2 ~ ees'2*3/2 c'2*3/2 ees'2*3/2 ~ ees'2*3/2 c'2*5/2 ~ c'2 ees'2*3/2 \finalis
}

tenorMusic = {
r2*8/2 des'2*3/2 c'2*3/2 ~ \divisioMinima
c'2 bes2*3/2 aes2*3/2 ~ aes2*3/2 ~ aes2*3/2 ~ aes2*3/2 g2*3/2 ~ g2*3/2 aes2 ~ aes2 ~ aes2 c'4 ~ \finalis
c'4 ~ c'2 d'2*4/2 ees'2*4/2 \divisioMinima
bes2 aes2 ~ aes2*3/2 ~ aes2*4/2 bes2*4/2 aes4 \divisioMaxima
c'2 bes4 aes2*3/2 ~ aes2*4/2 g2*3/4 f2*4/2 ~ f2 ees2 g2*3/2 \divisioMinima
aes2*4/2 g2 f2*7/4 ~ f2*3/2 ees2 \divisioMaxima
f2 ~ f2*3/2 ~ f2 g2*3/2 bes2 ~ bes2*4/2 aes2*3/2 ~ aes2*3/2 ~ aes2*3/2 g2*3/2 ~ g2*5/2 f2 c'2*3/2 \finalis
}

bassMusic = {
r2*14/2 \divisioMinima
f2 ~ f2*3/2 ~ f2*3/2 des2*3/2 c2*3/2 r2*3/2 ees2*3/2 des2*3/2 c2 bes,2 c2 ~ c4 \finalis
r4 c'2 ~ c'2*4/2 ~ c'2*4/2 \divisioMinima
g2 aes2 g2*3/2 f2*4/2 ~ f2*4/2 ~ f4 \divisioMaxima
c2*3/2 ~ c2*3/2 bes,2*4/2 ~ bes,2*3/4 aes,2*4/2 ~ aes,2 c2 ~ c2*3/2 ~ \divisioMinima
c2*4/2 ~ c2 f2*7/4 ees2*3/2 ~ ees2 \divisioMaxima
r2 ees2*3/2 des2 c2*3/2 bes,2 c2*4/2 ~ c2*3/2 f2*3/2 aes,2*3/2 c2*3/2 ees2*5/2 f2 c2*3/2 \finalis
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
        "IV"
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
