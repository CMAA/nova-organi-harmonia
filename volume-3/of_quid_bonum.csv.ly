\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.400
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Quid bonum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Quid bonum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Quid bonum" }
    \line {}
  }
}

chantText = \lyricmode {
Quid bo -- num 
\set stanza = " * " e -- jus _ est, 
et quid pul -- chrum e -- _ _ _ jus, 
ni -- _ si fru -- mén -- tum e -- le -- ctó -- rum, _ 
et vi -- num gér -- ni -- nans _ vír -- _ _ _ _ _ gi -- nes? }

chantMusic = {
\tieDown   ees'4 ( ees'4 f'4)  ees'4 ( f'\prall g'4 aes'4) g'4   g'4 ( aes'4 \tiny g' f' 4) g'4 ( f'4) ~ f'4 ( ees'4 f'4) f'4 ( ees'4) \divisioMaior
 g'4 ( bes'4) bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( d''4 c''4) bes'4 ( a'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4) c''4 ( \tiny bes' a' 4) a'4 \divisioMaior
 g'4 ( bes'4 c''4 a'4) bes'4 ( g'4) g'4 ees'4 ( f'4) f'4 ( g'4 a'\prall bes'4 \tiny a' g' 4) g'4 g'4 g'4 ( f'4)  f'4 ( aes'4 g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 g'4 ( ees'4) f'4 g'4 ( bes'4) bes'4 ( d''4 c''4) bes'4 ( a'4) bes'4 ( bes'4 bes'4) g'4 ( bes'4 f'4 ees'4 f'4) \divisioMinima
 ees'4 ( f'\prall g'4 f'4 g'4) bes'4 ( bes'4 bes'4) c''4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( f'4.) ~ f'4 ( bes'4 a'4 g'4 bes'4) ees'4 ( f'4 ees'4) ees'4 \finalis

}

altoMusic = {
bes2*3/2 c'2*5/2 d'2*5/2 ~ d'2*4/2 c'2 \divisioMaior
d'2 ees'2 f'2*5/2 ~ f'2*3/4 ees'2 d'2 ~ d'2*4/2 ~ \divisioMaior
d'2*7/2 bes2 c'2*3/2 d'2*5/2 ees'2 c'2*5/2 ~ c'2*3/2 ~ \divisioMaxima
c'2*3/2 ees'2 f'2*3/2 ~ f'2 ~ f'2*3/2 d'2*5/2 \divisioMinima
c'2*5/2 d'2*3/2 ~ d'2*3/2 ~ d'2*7/4 bes2*5/2 ~ bes2*3/2 ~ bes4 \finalis
}

tenorMusic = {
g2*3/2 aes2*5/2 bes2*5/2 ~ bes2*4/2 g2 \divisioMaior
bes2 ~ bes2 ~ bes2*5/2 ~ bes2*7/4 ~ bes2 a2*3/2 c'4 \divisioMaior
bes2*7/2 ~ bes2 a2*3/2 g2*5/2 bes2 aes2*5/2 g2*3/2 \divisioMaxima
bes2 ~ bes2*3/2 ~ bes2*3/2 c'2 bes2*3/2 ~ bes2*5/2 ~ \divisioMinima
bes2*5/2 f2*3/2 g2*3/2 f2*7/4 ~ f2*5/2 g2*3/2 ~ g4 \finalis
}

bassMusic = {
r2*13/2 bes,2*4/2 c2 ~ \divisioMaior
c2 ~ c2 d2*5/2 g2*7/4 ~ g2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g2*7/2 ~ g2 ~ g2*3/2 ~ g2*5/2 ees2 f2*5/2 c2*3/2 \divisioMaxima
ees2 c2*3/2 d2*3/2 ~ d2 ~ d2*3/2 bes,2*5/2 ~ \divisioMinima
bes,2*5/2 ~ bes,2*3/2 ~ bes,2*3/2 ~ bes,2*7/4 d2*5/2 ees2*3/2 ees,4 \finalis
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
        "5"
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
