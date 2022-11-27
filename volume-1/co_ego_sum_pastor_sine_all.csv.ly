\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.85
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego sum pastor (sine Alleluia)" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego sum pastor (sine Alleluia)"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego sum pastor (sine Alleluia)" }
    \line {}
  }
}

chantText = \lyricmode {
E -- go sum 
\set stanza = " * " pa -- stor bo -- nus, 
et co -- gnó -- sco _ o -- ves me -- as, 
et co -- gnó -- scunt me _ me -- _ æ. _ }

chantMusic = {
\tieDown   a'4 ( a'4 bes'4) g'4 ( a'\prall bes'4) bes'4 ( \once \tweak #'font-size #-4 f' )  a'4 ( a'4 bes'4) bes'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( c''4 bes'4 c''4) a'4 ( a'4 bes'4) \divisioMaior
 f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 g'4 ( a'4 c''4 g'4) ~ g'4 ( f'4 \forceBreak
) a'4 ( c''4) bes'4 c''4 ( d''4 c''4 a'4) a'4 \divisioMaior
 f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 g'4 f'4 ( g'4 a'4) ~ a'4 ( g'4) f'4 ( g'4 f'4 d'4) f'4 ( g'4) g'4 ( a'4) ~ a'4 ( g'4) \finalis

}

altoMusic = {
f'2*3/2 d'2*3/2 f'2 ~ f'2*3/2 ~ f'2 ~ f'2*4/2 ~ f'2*3/2 ~ \divisioMaior
f'4 ~ f'2 d'2*4/2 c'2*3/2 f'2*3/2 ~ f'2*5/2 ~ \divisioMaior
f'4 ~ f'2 d'2*4/2 ~ d'2*3/2 ~ d'2*7/2 ~ d'2 ~ d'4 \finalis
}

tenorMusic = {
c'2*3/2 bes2*3/2 ~ bes2 d'2*3/2 bes2 c'2*4/2 bes2*3/2 \divisioMaior
a2*3/2 bes2*4/2 a2*3/2 c'2*3/2 d'2*5/2 \divisioMaior
a4 bes2 c'2*4/2 bes2*3/2 a2*7/2 c'2 bes4 \finalis
}

bassMusic = {
f2*3/2 g2*3/2 d2 ~ d2*3/2 ~ d2 ~ d2*4/2 ~ d2*3/2 \divisioMaior
f2*3/2 ~ f2*4/2 ~ f2*3/2 d2*3/2 ~ d2*5/2 ~ \divisioMaior
d4 ~ d2 g2*4/2 ~ g2*3/2 ~ g2*7/2 ~ g2 ~ g4 \finalis
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
