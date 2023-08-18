\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.197
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Convertere Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Convertere Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Convertere Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Con -- vér -- _ te -- re 
\set stanza = " * " Dó -- _ mi -- ne _ _ _ 
a -- li -- quán -- tu -- lum, _ _ 
et de -- pre -- cá -- _ _ re su -- per ser -- vos tu -- os. _ _ _ _ _ _ _ 
℣. Dó -- mi -- ne _ _ _ _ _ _ _ _ 
re -- fú -- _ _ _ gi -- _ um 
fa -- ctus es no -- _ _ _ bis, 
a ge -- ne -- ra -- ti -- ó -- ne 
\set stanza = " * " et pro -- gé -- _ ni -- e. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4  ees'4 ( ees'4) f'4 ( g'\prall aes'4) f'4 ( ees'4) ees'4 ( f'4 ees'4 c'4) \divisioMinima
 c'4 ( f'4 ees'4) f'4 ( g'4) f'4  f'4. g'4 ( aes'4 f'4 ees'4) ~ ees'4 ( c'4 \forceBreak
) ees'4 ( f'4 ees'4) \divisioMaior
 g'4 bes'4 ( bes'4) bes'4 bes'4 ( a'4) g'4 ( f'4 bes'4.) c''4 ( d''4 c''4) ~ c''4 ( bes'4) \divisioMaxima
 bes'4  g'4 ( aes'4) g'4 ( f'4) g'4 bes'4 ( bes'4) ~ bes'4 ( c''4) bes'4 \divisioMinima \forceBreak

 bes'4 ( c''4) bes'4 ( \once \tweak #'font-size #-4 g' )  bes'4 ( g'4 aes'4) f'4 ( g'4) f'4 ( ees'4)  ees'4 ( ees'4 g'4.) f'4 ( aes'4 g'4 ees'4) \divisioMinima
 ees'4 ( g'4 f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4 \forceBreak
) g'4 ( f'4) ~ f'4 ( ees'4) \finalis
   bes'4 c''4 ( bes'4) bes'4 ( bes'4 a'4 g'4) bes'4 ( a'4 f'4) g'4 ( g'4)  ees'4 ( f'4 g'4 aes'4 g'4 f'4) g'4 ( f'4 ees'4 f'4) \divisioMinima
 g'4 ( bes'4) c''4 ( bes'4) c''4 ( bes'4 \forceBreak
) c''4 ( d''4 bes'4) \divisioMaior
 bes'4 c''4 ( bes'4) ees''4 ( ees''4 bes'4) c''4 ( bes'4) ees''4 ( ees''4 c''4 bes'4) bes'4 ( a'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 bes'4 ( c''4 d''\prall ees''4) c''4 ( bes'4) bes'4 \forceBreak
  g'4 ( aes'4 g'4 f'4.) g'4 ( aes'4 g'4 ees'4.) g'4 ( f'4 ees'4) f'4 ( ees'4) ees'4 \divisioMaxima
 ees'4 ees'4 ees'4 ees'4 ees'4 ees'4 ( g'4 f'4 ees'4) f'4 ( g'4) \divisioMinima
 bes'4 bes'4 \forceBreak
 bes'4 ( c''4 bes'4 g'4) bes'4 ( bes'4 bes'4) bes'4 bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4.) g'4 ( aes'4 f'4 ees'4.) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
r4 g2 c'2*5/2 bes2*4/2 \divisioMinima
aes2*3/2 bes2*3/2 c'2*3/4 ~ c'2*3/2 ~ c'2*3/2 bes2*3/2 \divisioMaior
r4 d'2 ~ d'4 ~ d'2 ~ d'2*11/4 ~ d'2 ~ d'4 \divisioMaxima
r4 ees'2*5/2 f'2 ees'2*3/2 \divisioMinima
f'2 ees'2 ~ ees'2*3/2 c'2*4/2 ees'2*7/4 bes2*3/2 ~ bes4 \divisioMinima
r2 f'4 ~ f'2*3/4 ees'2 d'2*3/2 ees'2*4/2 bes2 ~ bes4 ~ bes4 d'2 ~ d'2*4/2 f'2 ~ f'4 ees'2 ~ ees'2*3/2 ~ ees'2*3/2 d'2*4/2 \divisioMinima
ees'2*4/2 f'2 d'2*3/2 ~ \divisioMaior
d'4 g'2*5/2 f'2 ees'2*4/2 f'2 ~ f'2*4/2 d'2 \divisioMaior
g'2*4/2 f'2*3/2 ees'2*3/2 ~ ees'2*3/4 ~ ees'2*3/2 ~ ees'2*3/4 bes2*3/2 ~ bes2 ~ bes4 \divisioMaxima
ees'2*3/2 ~ ees'2 ~ ees'2*3/2 ~ ees'4 d'2 ~ \divisioMinima
d'2 ~ d'2*4/2 ees'2*4/2 d'2*3/2 ees'2*4/2 bes2*3/4 c'2*3/2 ~ c'2*3/4 ~ c'2 f'2*3/4 ~ f'2 ees'2*3/2 ~ ees'2*4/2 bes2 ~ bes4 \finalis
}

tenorMusic = {
c4 ~ c2 ees2*5/2 ~ ees2*4/2 ~ \divisioMinima
ees2*3/2 ~ ees2*3/2 ~ ees2*3/4 f2*3/2 g2*3/2 ~ g2*3/2 ~ \divisioMaior
g4 ~ g2 aes4 bes2 aes2 g2*7/4 aes2 bes4 ~ \divisioMaxima
bes4 ~ bes2*5/2 ~ bes2 ~ bes2*3/2 ~ \divisioMinima
bes2 ~ bes2 c'2*3/2 aes2 bes2 ~ bes2*7/4 aes2*3/2 g4 \divisioMinima
bes2*3/2 ~ bes2*3/4 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 aes2 g4 r4 aes2 bes2*4/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 aes2*3/2 bes2*4/2 ~ \divisioMinima
bes2*4/2 ~ bes2 ~ bes2*3/2 ~ \divisioMaior
bes4 ~ bes2*5/2 ~ bes2 ~ bes2*4/2 ~ bes2 c'2*4/2 ~ c'4 bes4 ~ \divisioMaior
bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 aes2*3/4 bes2*3/2 g2*3/4 ~ g2*3/2 aes2 g4 \divisioMaxima
r4 d'2 c'2 ~ c'2*4/2 bes2 ~ \divisioMinima
bes2 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*3/2 c'2*4/2 g2*3/4 aes2*3/2 g2*3/4 bes2 ~ bes2*3/4 ~ bes2 ~ bes2*3/2 aes2*4/2 ~ aes2 g4 \finalis
}

bassMusic = {
r2*3/2 aes,2*5/2 g,2*4/2 \divisioMinima
f,2*3/2 g,2*3/2 aes,2*3/4 ~ aes,2*3/2 ~ aes,2*3/2 g,2*3/2 \divisioMaior
r4 g2 ~ g4 ~ g2 ~ g2 ~ g2*7/4 ~ g2 ~ g4 \divisioMaxima
r4 ees2*5/2 d2 c2*3/2 \divisioMinima
d2 g2 f2*3/2 ~ f2 g2 ees2*7/4 ~ ees2*3/2 ~ ees4 \divisioMinima
g2*3/2 ~ g2*3/4 ~ g2 ~ g2*3/2 c2*4/2 ees2 ~ ees4 g4 ~ g2 ~ g2*4/2 d2*3/2 ees2 c2*3/2 ~ c2*3/2 bes,2*4/2 \divisioMinima
ees2*4/2 d2 g2*3/2 ~ \divisioMaior
g4 ees2*5/2 d2 c2*4/2 d2 ~ d2*4/2 g2 \divisioMaior
ees2*4/2 d2*3/2 c2*3/2 ~ c2*3/4 ~ c2*3/2 ~ c2*3/4 ees2*3/2 ~ ees2 ~ ees4 \divisioMaxima
r2*5/2 bes2*4/2 ~ bes2 \divisioMinima
aes2 g2*4/2 ~ g2*4/2 ~ g2*3/2 f2*4/2 ~ f2*3/4 ~ f2*3/2 ~ f2*3/4 ees2 ~ ees2*3/4 d2 c2*3/2 ~ c2*4/2 ees2 ~ ees4 \finalis
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
