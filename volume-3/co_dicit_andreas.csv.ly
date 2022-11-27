\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.4
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dicit Andreas" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dicit Andreas"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dicit Andreas" }
    \line {}
  }
}

chantText = \lyricmode {
Di -- cit An -- dré -- as 
\set stanza = " * " Si -- mó -- ni fra -- tri su -- o: 
In -- vé -- ni -- mus Mes -- sí -- am, 
qui dí -- ci -- tur Chri -- stus: 
et ad -- dú -- xit e -- um ad Je -- sum. _ }

chantMusic = {
\tieDown   bes'4 ( bes'4) bes'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 bes'4 ( a'4 bes'4) \divisioMinima
 bes'4 bes'4 ( a'4) a'4 ( f'4) a'4 bes'4 ( c''4 bes'4) bes'4 ( g'4 a'\prall bes'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 bes'4 c''4 ( ees''4) d''4 c''4 ( d''4 a'4) bes'4 c''4 ( bes'4 c''4) c''4 ( f'4) \divisioMaior
 g'4 bes'4 ( a'4) bes'4 ( c''4 d''4) c''4 ( \once \tweak #'font-size #-4 d'' ) bes'4 ( c''4 bes'4 a'4) a'4 \divisioMaxima
 a'4 bes'4 c''4 ( d''4) c''4 bes'4 ( g'4) g'4 ( f'4) f'4 ( g'4) f'4 ees'4 ( d'4 c'4.) f'4 ( d'4 f'4) \finalis

}

altoMusic = {
f'2*3/2 ~ f'2*3/2 g'2*3/2 ~ \divisioMinima
g'4 f'2 ~ f'2 ~ f'4 ~ f'2*3/2 d'2*8/2 ~ d'2 \divisioMaxima
f'4 ees'2*3/2 d'2*4/2 c'2*3/2 ~ c'2 \divisioMaior
d'4 f'2 ~ f'2*3/2 ~ f'2 ~ f'2*4/2 ~ f'4 ~ \divisioMaxima
f'2 ees'2*3/2 ~ ees'2 r2 bes2 ~ bes4 ~ bes2*7/4 ~ bes2 c'4 \finalis
}

tenorMusic = {
d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'4 ~ d'2 c'2 ~ c'4 bes2*3/2 ~ bes2*8/2 a2 \divisioMaxima
f4 g2*3/2 ~ g2*4/2 ~ g2*3/2 f2 ~ \divisioMaior
f4 ~ f2 g2*3/2 a2 bes2*4/2 d'4 \divisioMaxima
f2 g2*3/2 bes2 ~ bes2 f2 g4 ~ g2*7/4 ~ g2 a4 \finalis
}

bassMusic = {
bes2*3/2 a2*3/2 g2*3/2 ~ \divisioMinima
g4 d2 ~ d2 ~ d4 ~ d2*3/2 g2*8/2 d2 ~ \divisioMaxima
d4 c2*3/2 bes,2*4/2 a,2*3/2 ~ a,2 \divisioMaior
bes,4 d2 ~ d2*3/2 ~ d2 ~ d2*4/2 ~ d4 ~ \divisioMaxima
d2 c2*3/2 ~ c2 d2 ~ d2 ~ d4 c2*7/4 g,2 ~ g,4 \finalis
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
