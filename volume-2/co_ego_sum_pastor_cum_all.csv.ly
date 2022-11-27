\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.45
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego sum pastor (cum allel)" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego sum pastor (cum allel)"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego sum pastor (cum allel)" }
    \line {}
  }
}

chantText = \lyricmode {
E -- go sum 
\set stanza = " * " pa -- stor bo -- nus, al -- le -- lú -- ia: 
et co -- gnó -- sco _ _ o -- ves me -- as, 
et co -- gnó -- scunt me me -- æ, al -- le -- lú -- ia, al -- le -- lú -- ia. }

chantMusic = {
\tieDown   a'4 ( a'4 bes'4) g'4 ( a'\prall bes'4) bes'4 ( \once \tweak #'font-size #-4 f' )  a'4 ( a'4 bes'4) bes'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( c''4 bes'4 c''4) a'4 ( a'4 bes'4) \divisioMinima
 a'4 f'4 a'4 ( bes'4 \tiny a' g' 4) g'4 \divisioMaxima \forceBreak

 f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 g'4 a'4 ( c''4 g'4) ~ g'4 ( f'4) a'4 ( c''4) bes'4 c''4 ( d''4 c''4 a'4) a'4 \divisioMaior
 f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 g'4 f'4 \forceBreak
 f'4 ( g'4 a'4) a'4 ( a'4 g'4) \divisioMinima
 g'4 g'4 f'4 ( e'4 f'4) d'4 \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
d'2*3/2 ees'2*3/2 f'2 ~ f'2*3/2 g'2 ~ g'2*4/2 f'2*3/2 ~ \divisioMinima
f'2 d'2*4/2 ~ d'4 \divisioMaxima
c'2*3/2 f'2 e'2 d'2*3/2 ~ d'2*3/2 e'2*4/2 d'4 \divisioMaior
r4 f'2 e'2*3/2 f'2*3/2 c'2*3/2 \divisioMinima
e'2 a2*3/2 ~ a4 \divisioMinima
c'2*3/2 ~ c'2*3/2 bes4 \finalis
}

tenorMusic = {
r2*3/2 c'2*3/2 d'2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2 c'2*4/2 bes4 \divisioMaxima
a4 ~ a2 ~ a2 ~ a2 ~ a2*3/2 ~ a2*3/2 g2*4/2 a4 ~ \divisioMaior
a2*3/2 ~ a2*3/2 ~ a2*3/2 g2*3/2 \divisioMinima
a2 g2*3/2 f4 ~ \divisioMinima
f2*3/2 d2*3/2 ~ d4 \finalis
}

bassMusic = {
bes2*3/2 ~ bes2*3/2 ~ bes2 c'2*3/2 bes2 d'2*4/2 r2*3/2 \divisioMinima
c'2 g2*4/2 ~ g4 \divisioMaxima
r4 e2 d2 c2 d2*3/2 f2*3/2 ~ f2*4/2 ~ f4 \divisioMaior
d2*3/2 c2*3/2 d2*3/2 e2*3/2 \divisioMinima
c2 d2*3/2 ~ d4 \divisioMinima
a,2*3/2 g,2*3/2 ~ g,4 \finalis
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
