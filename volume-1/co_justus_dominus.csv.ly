\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.219
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Justus Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Justus Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Justus Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- stus Dó -- mi -- nus, 
\set stanza = " * " et ju -- stí -- ti -- as di -- lé -- xit: _ _ _ _ _ 
æ -- qui -- tá -- tem _ vi -- dit vul -- _ tus e -- jus. }

chantMusic = {
\tieDown   bes'4 g'4 bes'4 a'4 ( bes'4) g'4 ( c''4 bes'4 bes'4) \divisioMinima
 g'4 ( c''4) c''4 c''4 ( d''4) c''4 ( bes'4) bes'4 bes'4 g'4 ( bes'4 \forceBreak
) bes'4 ( a'4) bes'4 ( c''4 g'4) ~ g'4 ( f'4) g'4 ( bes'4 a'4 bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMaxima
 g'4 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4 bes'4) g'4 ( bes'4 a'4 f'4 g'4) f'4 ( ees'4) \divisioMinima \forceBreak

 g'4 ( f'4 ees'4 f'4) bes'4 ( a'4 bes'4) g'4 ( a'\prall bes'4 a'4 f'4  g'\prall aes'4 g'4) f'4 ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \finalis

}

altoMusic = {
d'2 ees'4 f'2 ~ f'2*4/2 \divisioMinima
ees'2*3/2 f'2 ~ f'2 ~ f'2 d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2 \divisioMaxima
ees'2 f'4 ~ f'2*5/2 ~ f'2*5/2 ~ f'4 ees'4 ~ \divisioMinima
ees'2*4/2 d'2*3/2 ~ d'2*4/2 c'2 ~ c'2*3/2 ees'2 ~ ees'2*4/2 bes2 \finalis
}

tenorMusic = {
bes2 ~ bes4 c'2 bes2*4/2 ~ \divisioMinima
bes2*3/2 ~ bes2 c'2 d'2 bes2 c'2*4/2 bes2*3/2 a2*3/2 g2*4/2 c'4 bes4 ~ \divisioMaxima
bes2 ~ bes4 c'2*5/2 bes2*5/2 ~ bes2 ~ \divisioMinima
bes2*4/2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 f2*3/2 bes2 ~ bes2*4/2 aes4 g4 \finalis
}

bassMusic = {
g2 ~ g4 f2 d2*4/2 \divisioMinima
c2*3/2 d2 ~ d2 ~ d2 g2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g2*4/2 ~ g2 \divisioMaxima
ees2 d4 ~ d2*5/2 ~ d2*5/2 g2 ~ \divisioMinima
g2*4/2 ~ g2*3/2 bes2*4/2 r2*5/2 g2 ees2*4/2 ~ ees2 \finalis
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
        "V"
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
