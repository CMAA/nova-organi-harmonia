\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.165
%(volume.page)

global = {
 \key c \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Unam petii. V/. Ut videam... et protegar" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Unam petii. V/. Ut videam... et protegar"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Unam petii. V/. Ut videam... et protegar" }
    \line {}
  }
}

chantText = \lyricmode {
U -- nam pé -- ti -- i 
\set stanza = " * " a Dó -- _ mi -- no, _ _ _ 
hanc re -- quí -- _ ram, 
ut in -- há -- bi -- tem in do -- mo Dó -- _ _ mi -- ni. _ _ _ _ ℣. 
Ut ví -- de -- am _ _ _ _ _ _ _ _ _ _ _ _ _ 
vo -- lup -- tá -- tem _ Dó -- mi -- ni: _ _ _ 
et pró -- _ _ _ _ _ te -- gar _ _ _ 
a tem -- plo san -- cto 
\set stanza = " * " e -- _ jus. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( ees'4 f'4) ees'4 f'4 ( g'4 f'4 g'4) f'4 ees'4 ( f'4 ees'4 c'4) \divisioMinima
 c'4 c'4 ( f'4 ees'4) f'4 ( g'4) f'4  f'4. g'4 ( a'4 f'4 ees'4) ~ ees'4 ( c'4 \forceBreak
) ees'4 ( f'4 ees'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( g'4) bes'4 ( g'4 bes'4) ~ bes'4 ( g'4) g'4 \divisioMaior
 g'4 g'4 ( bes'4) bes'4  a'4 ( bes'4 c''4 bes'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
  a'4 \forceBreak
 g'4 ( g'4 f'4) f'4 ( g'4) g'4 ( f'4) g'4 ( ees'4) f'4 ( ees'4) d'4 ( ees'4)  ees'4. g'4 ( a'4 g'4 ees'4) \divisioMinima
 g'4 ( f'4) g'4 ( bes'4 g'4 g'4) ees'4 ( f'4 ees'4) \finalis \forceBreak

  ees'4 ees'4 g'4  g'4 ( bes'4) c''4 ( bes'4) c''4 ( bes'4.) c''4 ( g'4 ees'4.) g'4 ( bes'4 c''4 g'4 ees'4) g'4 ( bes'4 g'4 a'4) \divisioMinima
 g'4 ( bes'4) c''4 ( bes'4) c''4 ( bes'4.) c''4 ( g'4 ees'4 \forceBreak
) f'4 ( ees'4) ~ ees'4 ( ees'4) ~ ees'4 ( g'4 bes'4) c''4 ( d''4 bes'4) \divisioMaior
 bes'4 ( c''4) bes'4 bes'4 bes'4 ( a'4) c''4 ( d''4) c''4 ( bes'4) bes'4 bes'4 ( a'4) c''4 ( bes'4) d''4 ( c''4 bes'4 a'4) bes'4 ( g'4) \divisioMaxima \forceBreak

 bes'4 ( bes'4) c''4 ( bes'4) c''4 ( d''4 bes'4.) c''4 ( bes'4) c''4 ( d''4 c''4 d''4.) bes'4 ( c''4) d''4 ( c''4 d''4) d''4 d''4 ( bes'4) d''4 ( ees''4 c''4) bes'4 ( bes'4) g'4 ( a'4 g'4) \divisioMaior \forceBreak

 ees'4 ees'4 ees'4 ees'4 ( g'4 f'4 ees'4) f'4 ( g'4)  g'4 ( bes'4 a'4 g'4) bes'4 ( bes'4 bes'4) bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4) a'4 ( f'4 ees'4.) g'4 ( a'4 f'4 ees'4.) g'4 ( f'4 \forceBreak
) bes'4 ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
bes2*4/2 ~ bes2*5/2 c'2*4/2 ~ \divisioMinima
c'4 ~ c'2*6/2 ~ c'2*9/4 bes2*3/2 ~ bes2*3/2 \divisioMaior
ees'2 f'2 ~ f'2 d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 ees'2*3/2 ~ ees'2*7/2 ~ ees'2 ~ ees'4 d'2*3/2 ~ d'2 ees'2*3/2 ~ ees'4 r2*4/2 ees'2*11/4 \divisioMinima
d'2*6/2 bes2 ~ bes4 ees'4 ~ ees'2 ~ ees'2 ~ ees'2*3/2 f'2*3/4 g'2*7/4 d'2*4/2 ees'4 ~ ees'2*4/2 ~ \divisioMinima
ees'2*4/2 g'2*11/4 f'4 ees'4 ~ ees'2*3/2 ~ ees'2 f'2*3/2 \divisioMaior
g'2*3/2 f'4 ~ f'2*4/2 ~ f'2*3/2 ~ f'2*4/2 ~ f'2*4/2 d'2 ~ \divisioMaxima
d'2 g'2*11/4 f'2*13/4 ~ f'2*5/2 ~ f'4 ~ f'2 ees'2*3/2 d'2 ~ d'2 ~ d'4 \divisioMaior
ees'2*3/2 ~ ees'2*4/2 ~ ees'2 ~ ees'2*4/2 f'2*3/2 d'2*3/2 ees'2*4/2 bes2*3/4 c'2*3/2 ees'2*3/4 ~ ees'2 f'4 ees'2 d'2*3/2 ees'2*4/2 bes2 ~ bes4 \finalis
}

tenorMusic = {
g2*4/2 ~ g2*5/2 ~ g2*4/2 \divisioMinima
ees4 ~ ees2*6/2 ~ ees2*9/4 ~ ees2*3/2 g2*3/2 ~ \divisioMaior
g2 ~ g2 c'2 ~ c'2*3/2 bes4 ~ \divisioMaior
bes4 ~ bes2 c'4 ~ c'2*7/2 ~ c'2 ~ c'4 bes2*3/2 ~ bes2 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*11/4 ~ \divisioMinima
bes2*6/2 aes2 g4 ees'4 d'2*7/2 ~ d'2*3/4 ees'2*7/4 c'2*5/2 ~ c'2*4/2 \divisioMinima
bes2*4/2 ~ bes2*11/4 ~ bes2 ~ bes2 ~ bes4 g2 f2*3/2 \divisioMaior
bes2*3/2 ~ bes4 c'2*4/2 d'2*3/2 c'2*4/2 bes2*4/2 ~ bes2 ~ \divisioMaxima
bes2 ~ bes2*11/4 ~ bes2*13/4 ~ bes2*5/2 a4 bes2 ~ bes2*3/2 ~ bes2 c'2 bes4 ~ \divisioMaior
bes2*3/2 ~ bes2*4/2 ~ bes2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 c'2*4/2 g2*3/4 aes2*3/2 bes2*3/4 ~ bes2 ~ bes4 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 aes2 g4 \finalis
}

bassMusic = {
ees2*4/2 d2*5/2 c2*4/2 ~ \divisioMinima
c4 bes,2*6/2 aes,2*9/4 g,2*3/2 ~ g,2*3/2 \divisioMaior
c2 d2 ~ d2 g2*3/2 ~ g4 ~ \divisioMaior
g4 ~ g2 ~ g4 f2*7/2 c'2 r4 r2*3/2 g2 ees2*4/2 g2*4/2 c2*11/4 \divisioMinima
bes,2*6/2 ees2 ~ ees4 r2*3/2 c'2*5/2 ~ c'2*3/4 ~ c'2*7/4 ~ c'2*5/2 f2*4/2 \divisioMinima
g2*4/2 ees2*11/4 d2 c2 ~ c4 ~ c2 d2*3/2 \divisioMaior
ees2*3/2 d4 ~ d2*4/2 ~ d2*3/2 ~ d2*4/2 g2*4/2 ~ g2 ~ \divisioMaxima
g2 ees2*11/4 d2*13/4 g2*5/2 ~ g4 ~ g2 ~ g2*3/2 ~ g2 ~ g2 ~ g4 ~ \divisioMaior
g2*3/2 f2*4/2 ees2 c2*4/2 d2*3/2 g2*3/2 f2*4/2 ~ f2*3/4 ~ f2*3/2 g2*3/4 ees2 d4 g2 ~ g2*3/2 c2*4/2 ees2 ~ ees4 \finalis
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
