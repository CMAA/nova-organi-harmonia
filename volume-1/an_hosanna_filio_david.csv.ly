\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.299
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Hosanna filio David" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Hosanna filio David"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Hosanna filio David" }
    \line {}
  }
}

chantText = \lyricmode {
Ho -- san -- na 
\set stanza = " * " fí -- li -- o Da -- vid: 
be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Rex Is -- ra -- _ el: 
Ho -- sán -- na in ex -- cél -- sis. }

chantMusic = {
\tieDown   f'4 f'4 ( \once \tweak #'font-size #-4 c'' ) c''4  c''4 bes'4 a'4 bes'4 c''4 ( d''4 c''4) \divisioMaior
 a'4 bes'4 c''4 ( d''4 c''4) bes'4 ( c''4 bes'4) \divisioMinima \forceBreak

 bes'4 g'4 ( f'4) f'4 ( ees'4) g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( g'4) a'4 g'4 ( a'4) f'4 f'4 f'4 \divisioMaxima
 bes'4 bes'4 ( bes'4 bes'4) g'4 ( bes'4) c''4 ( bes'4 a'4 bes'4) bes'4 ( a'4) \divisioMaior \forceBreak

 f'4 f'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( d''4 bes'4 g'4) a'4 g'4 ( \once \tweak #'font-size #-4 a' ) f'4 f'4 \finalis

}

altoMusic = {
r4 f'2 ~ f'4 d'2 ~ d'2 f'2*3/2 ~ \divisioMaior
f'2 g'2*3/2 d'2*3/2 \divisioMinima
ees'4 c'2 bes2 d'2 c'2*3/2 d'2 c'2 ~ c'4 \divisioMaxima
d'4 ees'2*3/2 ~ ees'2 f'2 ~ f'2 ~ f'2 ~ \divisioMaior
f'4 ~ f'2 ~ f'2 ees'2*3/2 d'2 c'2 \finalis
}

tenorMusic = {
a4 bes2 a4 g2 f2 a2*3/2 \divisioMaior
bes2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes4 a2 g2 ~ g2 ~ g2*3/2 bes2 ~ bes2 a4 \divisioMaxima
g4 ~ g2*3/2 bes2 a2 bes2 c'2 \divisioMaior
bes4 a2 bes2 c'2*3/2 bes2 ~ bes4 a4 \finalis
}

bassMusic = {
f4 ~ f2 ~ f4 g2 d2 ~ d2*3/2 ~ \divisioMaior
d2 ees2*3/2 g2*3/2 ~ \divisioMinima
g4 ~ g2 ~ g2 f2 ees2*3/2 ~ ees2 f2 ~ f4 \divisioMaxima
r4 c2*3/2 ~ c2 d2 ~ d2 ~ d2 \divisioMaior
f4 ~ f2 bes2 ~ bes2*3/2 ~ bes2 f2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Antiphon"
        "VII"
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
