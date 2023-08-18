\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.339
%(volume.page)

global = {
 \key f \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Vos qui secuti... dicit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Vos qui secuti... dicit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Vos qui secuti... dicit" }
    \line {}
  }
}

chantText = \lyricmode {
Vos qui se -- cú -- ti e -- stis me, 
\set stanza = " * " 
se -- dé -- bi -- tis su -- per se -- des, 
ju -- di -- cán -- tes du -- ó -- de -- cim tri -- bus Is -- ra -- el, di -- cit Dó -- mi -- nus. }

chantMusic = {
\tieDown   f'4 ( f'4) ees'4 f'4 g'4 aes'4 bes'4 ( aes'4) f'4 ( g'4) f'4 \divisioMaior
 ees'4 f'4 aes'4 aes'4 aes'4 bes'4 ( c''4) bes'4 bes'4 \divisioMaior
 bes'4 bes'4 bes'4 g'4 bes'4 aes'4 g'4 ees'4 g'4 ( aes'4) bes'4 ( aes'4) f'4 ees'4 g'4 ( aes'4) bes'4 aes'4 ( g'4) f'4 f'4 f'4 \finalis

}

altoMusic = {
c'2*4/2 ~ c'2 ~ c'2*4/2 ~ c'4 ~ \divisioMaior
c'4 ~ c'2*3/2 ees'2*3/2 ~ ees'2 ~ \divisioMaior
ees'2 ~ ees'2*3/2 ~ ees'2*3/2 ~ ees'2*4/2 ~ ees'2*4/2 ~ ees'2*3/2 c'2*3/2 \finalis
}

tenorMusic = {
aes2*4/2 bes2 g2*4/2 aes4 ~ \divisioMaior
aes4 ~ aes2*3/2 f2*3/2 g2 ~ \divisioMaior
g2 ~ g2*3/2 c'2*3/2 bes2*4/2 aes2 g2 ees2*3/2 f2*3/2 \finalis
}

bassMusic = {
f2*4/2 ~ f2 ~ f2*4/2 ~ f4 ~ \divisioMaior
f4 ees2*3/2 ~ ees2*3/2 ~ ees2 ~ \divisioMaior
ees2 c2*3/2 ~ c2*3/2 ~ c2*4/2 ~ c2*4/2 ~ c2*3/2 f,2*3/2 \finalis
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
