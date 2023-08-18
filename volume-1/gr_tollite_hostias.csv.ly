\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.293
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tollite hostias" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tollite hostias"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tollite hostias" }
    \line {}
  }
}

chantText = \lyricmode {
Tol -- li -- te 
\set stanza = " * " hó -- sti -- as, _ _ _ 
et in -- tro -- í -- te in á -- _ _ tri -- a _ e -- _ jus: _ 
a -- do -- rá -- te Dó -- mi -- num 
in au -- _ la san -- _ cta e -- jus. _ _ _ _ _ ℣. 
Re -- ve -- lá -- bit Dó -- _ _ _ _ _ _ _ _ mi -- nus 
con -- dén -- _ _ _ _ _ sa: _ 
et in tem -- plo e -- _ _ _ _ jus 
o -- mnes di -- cent 
\set stanza = " * " gló -- _ ri -- am. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( f'4) f'4 ( g'4 f'4) ees'4 \divisioMinima
 ees'4 ( f'\prall g'4 f'4 g'4) ees'4 ( f'\prall g'4 f'4) f'4 ( ees'4 f'\prall g'4 f'4) g'4 ( bes'4 g'4 f'4 ees'4 d'4) ees'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior \forceBreak

 ees'4 ees'4 ( g'4 a'\prall bes'4 c''4) bes'4 bes'4 ( c''4) bes'4 \divisioMinima
 g'4 g'4 ( f'4) ~ f'4 ( ees'4) g'4 ( bes'4) bes'4 ( c''4 a'4 bes'4 g'4) g'4. f'4 ( a'4 g'4 \forceBreak
) ees'4 ( g'4 f'4) bes'4. c''4 ( d''4 c''4 c''4) bes'4 ( c''4 bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima
 g'4 bes'4 c''4 ( d''4) c''4 bes'4 ( c''4) c''4 ( bes'4) bes'4 \divisioMaior \forceBreak

 g'4 g'4 ( f'4) g'4 ( f'4 ees'4 f'4) f'4 ( ees'4) \divisioMinima
 ees'4 ( g'4 f'4) bes'4 ( a'4 bes'4) g'4 ees'4 ( f'4) ees'4 ( g'4 f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis \forceBreak

 ees'4 g'4 ( f'4) f'4 ( bes'4) bes'4 \divisioMinima
 c''4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( f'4.)  g'4 ( aes'4 f'4 ees'4) bes'4 ( bes'4) c''4 ( bes'4) bes'4 \divisioMaior \forceBreak

 bes'4 c''4 ( bes'4) ees''4 ( ees''4 bes'4) c''4 ( bes'4) ees''4 ( ees''4) ~ ees''4 ( c''4) ~ c''4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( c''4 bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima
 g'4 bes'4 c''4 ( d''4) c''4 ( bes'4 \forceBreak
) g'4 ( g'4 f'4 g'4) ~ g'4 ( f'4 g'4) bes'4 ( g'4) ~ g'4 ( f'4) ~ f'4 ( ees'4 f'4) f'4 ( ees'4) \divisioMaior
 ees'4 ees'4 ees'4 ( g'4 f'4 ees'4) f'4 ( g'4)  g'4 ( bes'4 a'4 g'4 \forceBreak
) bes'4 ( bes'4 bes'4) bes'4 bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4.) g'4 ( aes'4 f'4 ees'4.) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
r2 d'2*3/2 ees'4 ~ \divisioMinima
ees'2*5/2 ~ ees'2*4/2 ~ ees'2*5/2 d'2*5/2 ~ d'4 r2*4/2 \divisioMaior
ees'4 ~ ees'2*6/2 f'2*3/2 ~ \divisioMinima
f'4 ees'4 r2*3/2 g'2 f'2*5/2 d'2*3/4 ~ d'2*3/2 ees'2*3/2 d'2*3/4 g'2*4/2 f'2*4/2 d'2 ~ d'4 \divisioMaxima
g'2 ~ g'2*3/2 f'2 ~ f'2 ~ f'4 ~ \divisioMaior
f'4 d'2 ~ d'2*4/2 c'2 \divisioMinima
ees'2*3/2 f'2*4/2 ees'2*5/2 d'2*3/4 g'2 f'2*3/2 ees'2*4/2 bes2 ~ bes4 \finalis
ees'4 ~ ees'2 f'2 ~ f'4 ~ \divisioMinima
f'2 g'2 f'2 ees'2 d'2 ~ d'2 f'4 ~ f'2*3/4 ees'2*3/2 ~ ees'4 f'2 ees'2 d'4 ~ \divisioMaior
d'4 g'2 ~ g'2*3/2 ~ g'2 ~ g'2*3/2 f'2*3/2 d'2*4/2 ~ d'2*3/2 \divisioMaxima
ees'2 f'2*4/2 d'2*3/2 ~ d'2*5/2 c'2 d'2*4/2 c'2 ~ \divisioMaior
c'2 ees'2*3/2 ~ ees'4 f'2 d'2*4/2 ees'2*4/2 d'2*3/2 f'2*3/2 ~ f'4 ees'2*3/4 ~ ees'2*9/4 ~ ees'2 f'2*3/4 ees'2 d'2*3/2 ees'2*4/2 bes2 ~ bes4 \finalis
}

tenorMusic = {
bes2 ~ bes2*3/2 c'4 ~ \divisioMinima
c'2*5/2 ~ c'2*4/2 bes2*5/2 ~ bes2*7/2 ~ bes2 ~ bes4 ~ \divisioMaior
bes4 ~ bes2*6/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2*4/2 ~ bes2 ~ bes2*5/2 ~ bes2*3/4 a2*3/2 bes2*3/2 ~ bes2*3/4 ~ bes2*4/2 c'2*4/2 ~ c'2 bes4 ~ \divisioMaxima
bes2 g2*3/2 ~ g2 a2 bes4 ~ \divisioMaior
bes4 ~ bes2 g2*4/2 ~ g2 \divisioMinima
bes2*3/2 ~ bes2*4/2 ~ bes2*5/2 ~ bes2*3/4 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 aess2 g4 \finalis
c'4 ~ c'2 d'2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2 bes2 a2 bes2 ~ bes2*5/4 ~ bes2*4/2 ~ bes2 ~ bes2 ~ bes4 ~ \divisioMaior
bes4 ~ bes2 c'2*3/2 d'2 c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 bes2*3/2 ~ \divisioMaxima
bes2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2 ~ bes2*4/2 g2 ~ \divisioMaior
g2 bes2*4/2 ~ bes2 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*3/2 c'2*4/2 bes2*3/4 ~ bes2*9/4 ~ bes2 ~ bes2*3/4 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 aes2 g4 \finalis
}

bassMusic = {
g2 bes2*3/2 r4 \divisioMinima
bes2*5/2 aes2*4/2 g2*5/2 ~ g2*7/2 aes2 g4 ~ \divisioMaior
g4 c2*6/2 d2*3/2 ~ \divisioMinima
d4 ees2*4/2 ~ ees2 d2*5/2 g2*3/4 ~ g2*3/2 ~ g2*3/2 ~ g2*3/4 ees2*4/2 d2*4/2 g2 ~ g4 \divisioMaxima
ees2 ~ ees2*3/2 d2 ~ d2 ~ d4 ~ \divisioMaior
d4 bes,2 ~ bes,2*4/2 c2 ~ \divisioMinima
c2*3/2 d2*4/2 g2*5/2 ~ g2*3/4 ees2 d2*3/2 c2*4/2 ees2 ~ ees4 \finalis
r4 c'2 ~ c'2 bes4 \divisioMinima
a2 g2 ~ g2 ~ g2 ~ g2 ~ g2 d2*5/4 c2*4/2 d2 g2 ~ g4 ~ \divisioMaior
g4 ees2 ~ ees2*3/2 ~ ees2 ~ ees2*3/2 d2*3/2 g2*4/2 ~ g2*3/2 \divisioMaxima
c2 d2*4/2 g2*3/2 f2*5/2 ees2 bes,2*4/2 ~ bes,2 \divisioMaior
c2 ~ c2*4/2 d2 g2*4/2 ~ g2*4/2 ~ g2*3/2 f2*4/2 g2*3/4 ees2*9/4 d2 ~ d2*3/4 c2 g2*3/2 c2*4/2 ees2 ~ ees4 \finalis
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
        "V."
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
