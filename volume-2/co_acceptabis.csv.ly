\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.181
%(volume.page)

global = {
 \key g \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Acceptabis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Acceptabis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Acceptabis" }
    \line {}
  }
}

chantText = \lyricmode {
Ac -- cep -- tá -- _ _ bis 
\set stanza = " * " sa -- cri -- fí -- _ ci -- um ju -- _ _ _ stí -- ti -- æ, 
ob -- la -- ti -- ó -- nes et ho -- lo -- cáu -- _ _ sta, 
su -- _ per al -- tá -- _ _ re tu -- um, Dó -- mi -- ne. }

chantMusic = {
\tieDown   f'4 f'4 ( c''4)  c''4. aes'4 ( bes'4 c''4) des''4 ( bes'4 c''4) g'4 ( g'4 aes'4) \divisioMinima
 f'4 ( bes'4) bes'4  c''4 ( des''4 bes'4) c''4 ( des''4 \forceBreak
) c''4 c''4  c''4. aes'4 ( bes'4 c''4) des''4 ( bes'4) c''4 ( bes'4) g'4 g'4 ( bes'4 aes'4 aes'4) g'4 ( g'4 aes'4) \divisioMaxima
 aes'4 ( f'4) aes'4 ( g'4) aes'4 ( bes'4) bes'4 f'4 ( g'\prall aes'4 \forceBreak
) aes'4 ( f'4) g'4 ( aes'4) bes'4  bes'4 ( c''4) des''4 ( c''4) ~ c''4 ( \once \tweak #'font-size #-4 bes' ) c''4 ( bes'4) \divisioMaior
 bes'4 ( g'4) bes'4 ( c''4 bes'4 g'4 aes'4) f'4 ( g'\prall aes'4) ees'4 ( f'4 \once \tweak #'font-size #-4 aes' ) aes'4. \forceBreak
 ~ aes'4 ( aes'4) ~ aes'4 ( f'4 bes'4) bes'4 bes'4 ( c''4 aes'4) f'4 ( g'\prall aes'4) g'4 g'4 ( bes'4 aes'4 aes'4) aes'4 ( g'4) \finalis

}

altoMusic = {
f'4 ~ f'2 ~ f'2*3/4 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2*3/2 ~ f'2*5/2 ~ f'2 ~ f'2*3/4 ~ f'2*3/2 ~ f'2*4/2 ~ f'4 ees'2*4/2 ~ ees'2 ~ ees'4 \divisioMaxima
f'2 c'2 ~ c'2 bes4 ~ bes2*3/2 ees'2*5/2 ~ ees'2*3/2 des'2*3/2 ees'2 ~ \divisioMaior
ees'2 ~ ees'2*3/2 ~ ees'2 c'2*3/2 des'2*3/2 ees'2*3/4 c'2 f'2*4/2 c'2*3/2 des'2*3/2 ees'4 ~ ees'2*4/2 ~ ees'2 \finalis
}

tenorMusic = {
des'4 c'2 ~ c'2*3/4 ees'2*3/2 des'2*3/2 c'2*3/2 \divisioMinima
bes2*3/2 ~ bes2*5/2 ~ bes2 aes2*3/4 ~ aes2*3/2 bes2*4/2 ~ bes4 ~ bes2*4/2 ~ bes2 c'4 ~ \divisioMaxima
c'2 f2 ~ f2*3/2 ~ f2*3/2 ~ f2*5/2 ~ f2*3/2 aes2*3/2 g2 ~ \divisioMaior
g2 ~ g2*3/2 ees2 f2*3/2 aes2*3/2 ~ aes2*3/4 f2 ~ f2*4/2 ~ f2*3/2 ~ f2*3/2 ees4 f2*4/2 c'2 \finalis
}

bassMusic = {
bes4 ~ bes2 aes2*3/4 c'2*3/2 bes2*3/2 f2*3/2 \divisioMinima
des2*3/2 bes,2*5/2 f2 ~ f2*3/4 ees2*3/2 des2*4/2 ees4 ~ ees2*4/2 aes2 ~ aes4 \divisioMaxima
f2 ~ f2 ees2*3/2 des2*3/2 c2*5/2 bes,2*3/2 ~ bes,2*3/2 ees2 ~ \divisioMaior
ees2 c2*3/2 ~ c2 aes,2*3/2 bes,2*3/2 c2*3/4 ees2 des2*4/2 aes,2*3/2 bes,2*3/2 c4 ~ c2*4/2 ~ c2 \finalis
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
