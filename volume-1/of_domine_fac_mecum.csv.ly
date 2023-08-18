\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.242
%(volume.page)

global = {
 \key a \locrian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine fac mecum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine fac mecum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine fac mecum" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne, _ _ _ _ 
\set stanza = " * " fac me -- _ cum mi -- se -- ri -- cór -- _ di -- am _ tu -- am, 
prop -- ter no -- men tu -- _ um: _ 
qui -- a su -- á -- vis est mi -- se -- ri -- cór -- _ _ di -- a _ tu -- a. }

chantMusic = {
\tieDown   bes'4 g'4 g'4 ( a'\prall bes'4) c''4 ( bes'4) ~ bes'4 ( bes'4 g'4 f'4) a'4 ( f'4) a'4 ( c''4 a'4) \divisioMinima
 f'4 g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 bes'4) a'4 ( bes'4 a'4) \divisioMinima \forceBreak

 g'4 ( f'4) g'4 a'4 ( bes'4 a'4) bes'4 ( bes'4 a'4 g'4) a'4 ( bes'4 \once \tweak #'font-size #-4 g' ) bes'4 a'4 ( bes'4 c''4 bes'4) c''4 ( d''4 c''4) a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaior
 f'4 g'4 \forceBreak
 g'4 ( bes'4 c''4 bes'4) bes'4 ( bes'4 bes'4) g'4 ( f'4 a'\prall bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( g'4) a'4 ( bes'4 a'4) \divisioMaxima
 bes'4 ( a'4 g'4) a'4 ( bes'4 a'4) g'4 ( f'4) g'4 f'4 ( ees'4) f'4 ( g'4) \divisioMinima \forceBreak

 f'4 ( ees'4) f'4 g'4 ( bes'4 a'4) a'4 ( g'4 a'\prall bes'4) ~ bes'4 ( a'4 g'4) a'4 ( bes'4 \once \tweak #'font-size #-4 g' ) bes'4 a'4 ( bes'4 c''4 bes'4) c''4 ( d''4 c''4) a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \finalis

}

altoMusic = {
d'2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 ~ d'2 ~ d'2*5/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 f'2*4/2 ~ f'2*3/2 ~ f'2*4/2 ~ f'2 ~ \divisioMaior
f'2 ees'2*4/2 f'2*3/2 d'2*3/2 ~ d'2*4/2 ees'2 f'2*3/2 \divisioMaxima
d'2*3/2 ~ d'2*3/2 ~ d'2 ees'2*3/2 ~ ees'2 \divisioMinima
r2*3/2 d'2*3/2 f'2*3/2 d'2*4/2 f'2*4/2 ~ f'2*4/2 ~ f'2*3/2 ~ f'2*4/2 ~ f'2 \finalis
}

tenorMusic = {
bes2 c'2*3/2 a2 bes2*4/2 g2 f2*3/2 \divisioMinima
g4 ~ g2 f2*5/2 ~ f2*3/2 \divisioMinima
a2*3/2 f2*3/2 g2*4/2 bes2*4/2 c'2*4/2 a2*3/2 c'2*4/2 d'2 \divisioMaior
bes2 ~ bes2*4/2 ~ bes2*3/2 a2*3/2 g2*4/2 bes2 c'2*3/2 \divisioMaxima
bes2*3/2 c'2*3/2 bes2 ~ bes2*3/2 ~ bes2 ~ \divisioMinima
bes2*3/2 ~ bes2*3/2 c'2*3/2 bes2*4/2 c'2*4/2 bes2*4/2 a2*3/2 c'2*4/2 d'2 \finalis
}

bassMusic = {
g2 ~ g2*3/2 ~ g2 ~ g2*4/2 d2 ~ d2*3/2 ~ \divisioMinima
d4 bes,2 ~ bes,2*5/2 d2*3/2 ~ \divisioMinima
d2*3/2 ~ d2*3/2 g2*4/2 ~ g2*4/2 f2*4/2 ~ f2*3/2 d2*4/2 ~ d2 ~ \divisioMaior
d2 c2*4/2 d2*3/2 ~ d2*3/2 g2*4/2 ~ g2 f2*3/2 \divisioMaxima
g2*3/2 ~ g2*3/2 ~ g2 c2*3/2 ~ c2 \divisioMinima
g2*3/2 ~ g2*3/2 f2*3/2 g2*4/2 d2*4/2 ~ d2*4/2 ~ d2*3/2 ~ d2*4/2 ~ d2 \finalis
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
