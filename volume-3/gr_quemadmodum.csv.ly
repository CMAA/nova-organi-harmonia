\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.191
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Quemadmodum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Quemadmodum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Quemadmodum" }
    \line {}
  }
}

chantText = \lyricmode {
Quem -- ád -- mo -- dum 
\set stanza = " * " de -- sí -- de -- rat cer -- _ _ _ vus 
ad fon -- _ tes a -- quá -- _ _ _ _ _ _ _ rum: 
i -- _ ta de -- sí -- de -- rat á -- ni -- ma me -- _ a 
ad te, De -- _ us. _ _ _ ℣. 
Si -- tí -- vit _ _ _ _ _ _ _ _ _ _ _ 
á -- ni -- ma me -- _ a _ _ 
ad De -- _ _ _ um for -- _ _ _ _ _ _ _ tem, 
\set stanza = " * " 
vi -- vum. _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( ees'4 f'4) ees'4 ees'4 \divisioMinima
 ees'4 f'4 ( g'4 f'4 g'4) f'4 ( ees'4) ees'4 ( ees'4 g'4 f'4) ees'4 ( ees'4) ~ ees'4 ( c'4 bes4) c'4 ( ees'4 ees'4) g'4 ( f'4 g'4 ees'4) ees'4 \divisioMaior
 g'4 bes'4 ( g'4) bes'4 ( bes'4 bes'4) bes'4 bes'4 c''4 ( bes'4.) a'4 ( bes'4 a'4 g'4.) c''4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) g'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( bes'4 a'4) a'4 \divisioMaxima
 g'4 bes'4 ( bes'4 c''4) bes'4 bes'4 bes'4 bes'4 bes'4 ( c''4 g'4) g'4 g'4 g'4 ( f'4 g'4)  g'4. ees'4 ( f'4 g'4 aes'4) g'4 ( f'4 g'4) \divisioMaior
 bes'4 ( bes'4 \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4) g'4 ( f'4) ~ f'4 ( ees'4 f'4) ees'4 ( f'\prall g'4 f'4 g'4) bes'4 ( bes'4 g'4 ees'4 f'\prall g'4 f'4) g'4 ( bes'4 g'4 g'4) ees'4 ( f'4 ees'4) \finalis
  bes'4 c''4 ( bes'4) bes'4 ( bes'4 a'4 g'4.) c''4 ( a'4) bes'4 ( c''4 a'4.) bes'4 ( c''4 bes'4.) ~ bes'4 ( c''4 bes'4 a'4 f'4 g'4) ~ g'4 ( g'4) \divisioMinima
  g'4 ( g'4 g'4) ~ g'4 ( g'4 g'4) ~ g'4 ( bes'4) c''4 ( bes'4) aes'4 ( aes'4) f'4 ( g'4 f'4) \divisioMaior
  g'4 ( aes'4 bes'4) aes'4 g'4 ( f'4) g'4 bes'4 ( bes'4 bes'4) bes'4. g'4 ( bes'4 g'4 g'4) ees'4 ( f'4 ees'4) \divisioMaxima
 ees'4 g'4 ( ees'4 g'4 f'4 ees'4.) g'4 ( ees'4) f'4 ( g'4 a'\prall bes'4) ~ bes'4 ( c''4) bes'4 \divisioMinima
 c''4 ( bes'4.) a'4 ( bes'4 a'4 g'4.) c''4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) g'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( bes'4 a'4) bes'4 \divisioMaior
 bes'4 ( c''4 bes'4 g'4) g'4 ees'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 a'4 bes'4 g'4.)  f'4 ( aes'4 g'4 ees'4) \finalis

}

altoMusic = {
r4 g2*5/2 ~ \divisioMinima
g4 b2*6/2 ~ b2*4/2 g2 ~ g2*3/2 c'2*3/2 d'2*4/2 b4 ~ \divisioMaior
b4 e'2 f'2*5/2 d'2*5/4 ~ d'2*9/4 g'2 f'2 e'2*3/2 ~ e'2*3/2 f'2*5/2 ~ f'4 \divisioMaxima
r4 d'2*5/2 ~ d'2 ~ d'2*3/2 ~ d'2 e'2*3/2 c'2*11/4 d'2*3/2 \divisioMaior
e'2*3/2 d'2*3/2 c'2*4/2 b2 ~ b2*3/2 ~ b2*3/2 e'2*4/2 d'2*4/2 b2*3/2 r4 g'2 f'2*9/4 g'2 ~ g'2*7/4 d'2*7/4 ~ d'2*6/2 ~ d'2 g'2*3/2 f'2*3/2 e'2*4/2 ~ e'2 d'2*3/2 c'2*7/2 d'2*3/2 ~ d'2*3/4 ~ d'2*4/2 b2*3/2 \divisioMaxima
r4 c'2*11/4 e'2 ~ e'2*3/2 f'2*4/2 \divisioMinima
d'2*5/4 ~ d'2*9/4 g'2 f'2 e'2*3/2 ~ e'2*3/2 f'2*5/2 ~ f'4 \divisioMaior
d'2*5/2 e'2*3/2 f'2 ~ f'2*3/2 d'2*5/4 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
r4 e2*5/2 ~ \divisioMinima
e4 d2*6/2 e2*4/2 ~ e2 f2*3/2 g2*3/2 b2*4/2 g4 ~ \divisioMaior
g4 ~ g2 f2*5/2 g2*5/4 ~ g2*9/4 ~ g2 ~ g2 ~ g2*3/2 b2*3/2 ~ b2*5/2 ~ b4 \divisioMaxima
r2*6/2 a2 c'2*3/2 b2 ~ b2*3/2 aes2*11/4 b2*3/2 ~ \divisioMaior
b2*3/2 ~ b2*3/2 aes2*4/2 g2 ~ g2*3/2 f2*3/2 b2*4/2 ~ b2*4/2 g2*3/2 r4 e'2 d'2*9/4 e'2 d'2*7/4 ~ d'2*7/4 c'2*6/2 b2 g2*3/2 ~ g2*3/2 ~ g2*4/2 f2 ~ f2*3/2 e2*7/2 f2*3/2 g2*3/4 b2*4/2 g2*3/2 \divisioMaxima
r4 g2*11/4 ~ g2 b2*3/2 ~ b2*4/2 \divisioMinima
g2*5/4 ~ g2*9/4 ~ g2 ~ g2 ~ g2*3/2 b2*3/2 ~ b2*5/2 ~ b4 ~ \divisioMaior
b2*5/2 ~ b2*3/2 ~ b2 ~ b2*3/2 ~ b2*5/4 aes2*3/2 g4 \finalis
}

bassMusic = {
r4 c2*5/2 ~ \divisioMinima
c4 b,2*6/2 g,2*4/2 c2 ~ c2*3/2 ~ c2*3/2 b,2*4/2 e4 ~ \divisioMaior
e4 c2 d2*5/2 g2*5/4 f2*9/4 e2 d2 c2*3/2 ~ c2*3/2 d2*5/2 ~ d4 \divisioMaxima
g4 ~ g2*5/2 ~ g2 ~ g2*3/2 ~ g2 ~ g2*3/2 aes2*11/4 r2*3/2 \divisioMaior
g2*3/2 ~ g2*3/2 aes2*4/2 r2 e2*3/2 d2*3/2 c2*4/2 b,2*4/2 e2*3/2 r2*15/4 c'2 g2*7/4 ~ g2*7/4 ~ g2*6/2 ~ g2 e2*3/2 d2*3/2 c2*4/2 ~ c2 b,2*3/2 ~ b,2*7/2 ~ b,2*3/2 ~ b,2*3/4 ~ b,2*4/2 e2*3/2 ~ \divisioMaxima
e4 ~ e2*11/4 c2 ~ c2*3/2 d2*4/2 \divisioMinima
g2*5/4 f2*9/4 e2 d2 c2*3/2 ~ c2*3/2 d2*5/2 ~ d4 \divisioMaior
g2*5/2 c2*3/2 d2 b,2*3/2 ~ b,2*5/4 e2*3/2 ~ e4 \finalis
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
