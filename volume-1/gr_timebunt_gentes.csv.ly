\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.127
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Timebunt gentes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Timebunt gentes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Timebunt gentes" }
    \line {}
  }
}

chantText = \lyricmode {
Ti -- mé -- bunt gen -- _ _ _ tes 
\set stanza = " * " 
no -- _ _ _ men tu -- _ um, Dó -- mi -- _ ne, 
et o -- mnes _ re -- ges ter -- ræ _ _ _ _ _ 
gló -- _ ri -- am _ _ tu -- _ _ _ _ _ _ _ _ _ am. ℣. 
Quó -- ni -- am æ -- di -- fi -- cá -- vit Dó -- mi -- nus _ _ _ _ _ _ _ 
Si -- on, _ _ _ _ _ 
et vi -- dé -- bi -- tur _ _ _ _ _ _ _ 
in ma -- je -- stá -- te 
\set stanza = " * " su -- _ a. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( ees'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( ees'4) f'4 ( ees'4 d'4 c'4.) f'4 ( d'4) ees'4 ( f'4) ees'4 \divisioMaior
 g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) c''4 ( bes'4 c''4) bes'4 ( a'4 bes'4 \forceBreak
) g'4 ( f'4) g'4 bes'4 ( bes'4 g'4 f'4 ees'4) g'4 ( \once \tweak #'font-size #-4 f' ) ees'4 ees'4 ( f'4) g'4 ( f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaxima
 ees'4 f'4 ( g'4 f'4 g'4) bes'4 ( g'4) ~ g'4 ( f'4 \forceBreak
) g'4 ( a'\prall bes'4) bes'4 ( a'4) bes'4 ( c''4 bes'4 a'4 g'4) g'4 ( bes'4 g'4 f'4) g'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior
 ees'4 ( f'4 g'4 \forceBreak
) ees'4 ( f'4 g'4) f'4 ( ees'4) ees'4. d'4 ( ees'4 f'4) ~ f'4 ( ees'4) \divisioMinima
 ees'4 g'4 ( g'4 g'4) f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 a'4 g'4) bes'4 ( f'4 \forceBreak
) ees'4 ( g'4 a'\prall bes'4 a'4 g'4 f'4 ees'4 ees'4) g'4 ( f'4 ees'4) f'4 ( ees'4) ees'4 \finalis
  ees'4 ees'4 ees'4 ees'4 ees'4 g'4 ( f'4) f'4 ( bes'4) bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 c''4 ( bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 g'4) bes'4 ( bes'4 f'4)  g'4 ( aes'4 f'4 ees'4.) bes'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( aes'4 g'4) \divisioMaior \forceBreak

 bes'4 ( c''4) c''4 ( bes'4 c''4) ees''4 ( ees''4 bes'4.) c''4 ( bes'4) ees''4 ( ees''4) ~ ees''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) \divisioMaior
 g'4 bes'4 ( g'4) bes'4 bes'4 ( g'4 bes'4 \forceBreak
) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior
 ees'4 ees'4 ees'4 ees'4 ( g'4 f'4 ees'4) f'4 ( g'4)  g'4 ( bes'4 a'4 g'4 \forceBreak
) bes'4 ( bes'4 bes'4) bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4.) g'4 ( aes'4 f'4 ees'4.) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
c'4 ~ c'2*4/2 bes2*5/2 aes2*3/4 bes2*4/2 c'4 \divisioMaior
ees'2*4/2 f'2 ~ f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ d'2 ees'2 ~ ees'4 d'2 c'4 bes2 ~ bes2*4/2 ~ bes2 \divisioMaxima
ees'4 d'2*5/2 ~ d'2*3/2 ~ d'2*3/2 ees'2 f'2 ~ f'2*3/2 d'2*5/2 ~ d'2*3/2 c'2*3/2 d'2 c'2*3/2 \divisioMaior
bes2*3/2 ~ bes2*5/2 c'2*7/4 ~ c'2*3/2 ~ \divisioMinima
c'2*4/2 ~ c'2 bes2 ees'2 f'2*4/2 ~ f'2 ees'2*3/2 bes2*4/2 ees'2 ~ ees'2 ~ ees'4 bes2 ~ bes4 ees'2*5/2 d'2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2 ees'2 d'2*3/2 f'2 ~ f'4 ees'2*3/2 ~ ees'2*3/4 ~ ees'2 d'2*3/2 ~ d'2*3/2 \divisioMaior
g'2 ~ g'2*3/2 ~ g'2*7/4 f'2 g'2 ees'2*3/2 f'2 d'4 ~ \divisioMaior
d'4 ~ d'2 c'4 d'2*3/2 ees'2 f'2*4/2 ees'2 d'2*4/2 ~ d'2 ~ d'2 c'2*3/2 \divisioMaior
ees'2*3/2 ~ ees'2*6/2 ~ ees'2*4/2 f'2*3/2 d'2*3/2 ees'2 c'2 bes2*3/4 c'2*3/2 ~ c'2*3/4 ~ c'2 bes2*3/4 d'2 ees'2*3/2 c'2 ~ c'2 bes2 ~ bes4 \finalis
}

tenorMusic = {
r4 g2*4/2 ~ g2*5/2 f2*3/4 ~ f2*4/2 g4 \divisioMaior
bes2*4/2 ~ bes2 d'2*3/2 c'2*3/2 ~ c'2*3/2 bes2*5/2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 aes4 g4 \divisioMaxima
bes4 ~ bes2*5/2 a2*3/2 g2*3/2 ~ g2 f2 d'2*3/2 c'2*5/2 bes2*3/2 a2*3/2 bes2 c'2*3/2 \divisioMaior
g2*3/2 ~ g2*5/2 ~ g2*7/4 ~ g2*3/2 ~ \divisioMinima
g4 ees2*3/2 d2 ~ d2 c2 d2*4/2 g2 ~ g2*3/2 f2*4/2 g2 aes2*3/2 a2 g4 r2*5/2 bes2 ~ bes2*3/2 ~ \divisioMinima
bes2 a2 bes2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 g2*3/4 ~ g2 a2*3/2 bes2*3/2 \divisioMaior
d'2 ~ d'2*3/2 c'2*7/4 d'2 c'2 bes2*3/2 c'2 bes4 \divisioMaior
a4 g2*3/2 ~ g2*3/2 ~ g2 ~ g2*4/2 ~ g2*4/2 ~ g2 ~ g2*4/2 ~ g2*3/2 \divisioMaior
bes2*3/2 ~ bes2*4/2 ~ bes2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 c'2 aes2 g2*3/4 ees2*3/2 c2*3/4 d2 ~ d2*3/4 f2 g2*3/2 ~ g2 aes2 ~ aes2 g4 \finalis
}

bassMusic = {
r4 c2*4/2 ees2*5/2 ~ ees2*3/4 d2*4/2 c4 ~ \divisioMaior
c2*4/2 d2 ~ d2*3/2 ~ d2*3/2 g2*3/2 ~ g2*5/2 bes,2 ~ bes,4 c2 d2*4/2 ees2 \divisioMaxima
c4 bes,2*5/2 ~ bes,2*3/2 ~ bes,2*3/2 c2 d2 ~ d2*3/2 g2*5/2 ~ g2*3/2 ~ g2*3/2 ~ g2 c'2*3/2 \divisioMaior
r2*3/2 d2*5/2 c2*7/4 d2*3/2 \divisioMinima
c2*4/2 a,2 g,2 c2 d2*4/2 ~ d2 c2*3/2 d2*4/2 ~ d2 c2*3/2 ees2 ~ ees4 r2*7/2 a2*3/2 \divisioMinima
g2 ~ g2 ~ g2 ~ g2 ~ g2*3/2 d2*3/2 ees2*3/2 ~ ees2*3/4 g2 ~ g2*3/2 ~ g2*3/2 \divisioMaior
f2 g2*3/2 c'2*7/4 ~ c'2 ~ c'2 g2*3/2 f2 g4 ~ \divisioMaior
g4 ~ g2*3/2 f2*3/2 ees2 d2*4/2 c2 bes,2 a,2 g,2 bes,2 c2*3/2 \divisioMaior
g2*3/2 f2*4/2 ees2 c2*4/2 d2*3/2 g2*3/2 f2 ~ f2 g2*3/4 c2*3/2 ~ c2*3/4 a,2 g,2*3/4 ~ g,2 ~ g,2*3/2 aes,2 ~ aes,2 ees2 ~ ees4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
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
