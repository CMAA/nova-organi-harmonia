\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.120
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Misit Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Misit Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Misit Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- sit Dó -- _ _ _ mi -- nus 
\set stanza = " * " 
ver -- _ _ _ bum su -- _ _ _ um, 
et sa -- ná -- vit e -- _ _ _ _ _ _ _ _ os: 
et e -- rí -- pu -- it e -- _ _ _ _ _ os 
de in -- tér -- i -- tu e -- ó -- rum _ _ _ ℣ 
Con -- fi -- te -- án -- _ _ _ _ _ _ _ _ _ _ tur Dó -- mi -- no _ _ _ _ _ _ _ 
mi -- se -- ri -- cór -- di -- æ _ _ _ _ _ _ _ _ _ _ _ _ _ 
e -- _ _ jus: _ _ 
et mi -- ra -- bí -- li -- a e -- _ _ _ _ _ jus 
fí -- li -- is 
\set stanza = " * " ho -- mi -- num. _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( ees'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( ees'4) f'4 ( ees'4 d'4 c'4.) f'4 ( d'4) ees'4 ( f'4) ees'4 ees'4 \divisioMaior
 g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) c''4 ( bes'4 c''4 \forceBreak
) bes'4 ( a'4 bes'4) g'4 ( f'4) g'4 bes'4 ( bes'4 g'4 ees'4.) g'4 ( f'4 ees'4) f'4 ( ees'4) ees'4 \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( bes'4) bes'4  bes'4 ( g'4 aes'4 f'4 ees'4) g'4 ( ees'4 g'4 f'4 ees'4. \forceBreak
) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) c''4 ( a'4) bes'4 ( g'4) bes'4 ( c''4) ees''4 ( ees''4) ~ ees''4 ( bes'4) bes'4 \divisioMaxima
 g'4 bes'4 bes'4 ( c''4) bes'4 bes'4 ( bes'4) bes'4 ( bes'4) ~ bes'4 ( bes'4 \forceBreak
) d''4 ( c''4 a'4) bes'4 ( g'4 f'4 g'4) bes'4 ( bes'4) c''4 ( bes'4 a'4) bes'4 \divisioMaior
 bes'4 bes'4 bes'4 bes'4 ( a'4) f'4 g'4 bes'4 ( c''4 bes'4 g'4) ees'4 ( f'4) g'4 ( c''4 bes'4 a'4 f'4) \divisioMinima \forceBreak

  g'4 ( bes'4 g'4 f'4.) g'4 ( aes'4 f'4 ees'4) \finalis
 ees'4 ees'4 g'4 bes'4 ( g'4) bes'4 ( bes'4 g'4) bes'4 ( bes'4 g'4) bes'4 ( bes'4 bes'4) \divisioMinima
 g'4 bes'4 ( bes'4 g'4) bes'4 ( bes'4 g'4 \forceBreak
) bes'4 ( bes'4 bes'4) c''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 g'4) bes'4 ( bes'4 bes'4) bes'4 \divisioMinima
 bes'4 bes'4 c''4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 g'4) bes'4 ( bes'4 f'4 \forceBreak
)  g'4 ( aes'4 f'4 ees'4) bes'4 ( bes'4) d''4 ( c''4 bes'4) \divisioMaxima
 ees'4 ees'4 g'4 ( f'4) f'4 ( bes'4) bes'4 c''4 ( bes'4) \divisioMinima
 bes'4 ( bes'4 bes'4) c''4 ( bes'4) ~ bes'4 ( a'4) c''4 d''4 ( c''4) ~ c''4 ( bes'4 \forceBreak
) d''4 ees''4 ( d''4) ~ d''4 ( bes'4) c''4 d''4 ( c''4) ~ c''4 ( a'4) bes'4 c''4 ( bes'4 bes'4) g'4 ( bes'4) a'4 ( bes'4 g'4 f'4) ~ f'4 ( ees'4) \divisioMaior
 g'4 ( ees'4 g'4 f'4 ees'4) g'4 ( ees'4) f'4 ( g'4 a'\prall bes'4 c''4 \forceBreak
) bes'4 ( a'4) c''4 ( d''4 c''4 bes'4) a'4 ( bes'4 a'4 g'4) \divisioMaxima
 g'4 bes'4 ( g'4 bes'4) bes'4 c''4 bes'4 ( c''4) bes'4 ( bes'4) \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( bes'4) d''4 ( c''4 a'4) bes'4 ( g'4 f'4 g'4 \forceBreak
) bes'4 ( bes'4) c''4 ( bes'4 a'4) bes'4 \divisioMaior
 bes'4 ( bes'4) bes'4 ( c''4 bes'4) bes'4 ( g'4)  g'4 ( bes'4 c''4 d''4) bes'4 ( a'4) bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 g'4) \divisioMinima \forceBreak

 ees'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 a'4 bes'4 g'4.)  f'4 ( aes'4 g'4 ees'4) \finalis

}

altoMusic = {
g2*4/2 c'2*13/4 ~ c'2 bes2*3/2 ~ bes4 ~ \divisioMaior
bes2*4/2 f'2 ees'2*3/2 f'2*3/2 d'2*3/2 ees'2*9/4 ~ ees'2 ~ ees'4 bes2 ~ bes4 \divisioMaxima
d'2*4/2 ~ d'4 ees'2 ~ ees'2*3/2 ~ ees'2*11/4 ~ ees'2*4/2 ~ ees'2*4/2 d'2 ees'2 aes'2 bes'2 ~ bes'4 \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2 '2 f'2 ~ f'2*3/2 ~ f'2*4/2 d'2*5/2 ~ d'4 ~ \divisioMaior
d'2 ees'4 f'2*4/2 ees'2*4/2 ~ ees'2 f'2*3/2 ~ f'2 d'2*3/2 c'2*3/4 ~ c'2*3/2 bes4 \finalis
r2*3/2 g'2 ~ g'2 ~ g'4 f'2*3/2 ees'2*3/2 ~ \divisioMinima
ees'4 d'2*3/2 ~ d'2*3/2 ees'2*4/2 f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*4/2 ~ d'2 ~ d'2 ees'2*3/2 f'2 ~ f'4 ees'2*3/2 ~ ees'4 d'2 ~ d'2 ~ d'4 \divisioMaxima
ees'2 ~ ees'2 f'2*3/2 ~ f'2 \divisioMinima
d'2*4/2 f'2*5/2 ~ f'2*3/2 ~ f'2 g'2*5/2 ~ g'2*4/2 d'2*3/2 ~ d'2 ~ d'2*3/2 c'2*3/2 \divisioMaior
ees'2*5/2 ~ ees'2 d'2*5/2 f'2 ~ f'2*4/2 d'2*3/2 ~ d'4 ~ \divisioMaxima
d'4 ~ d'2*3/2 ees'4 f'2*3/2 ~ f'2 ~ \divisioMinima
f'2 ~ f'2 aes'2 ~ aes'4 d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'4 \divisioMaior
f'2 ~ f'2*3/2 ees'2 d'2 ~ d'2 ~ d'2 ees'2 ~ ees'2 f'2 ~ f'2 d'2*3/2 \divisioMinima
ees'2*3/2 d'2 ~ d'2*4/2 ~ d'2*3/4 c'2*3/2 g4 \finalis
}

tenorMusic = {
ees2*4/2 ~ ees2 g2*3/2 ees2*3/4 ~ ees2 ~ ees2*3/2 g4 ~ \divisioMaior
g2*4/2 ~ g2 ~ g2*3/2 f2*3/2 g2*3/2 ~ g2*9/4 aes2*3/2 ~ aes2 g4 \divisioMaxima
bes2 aes2 g4 ~ g2 c'2*3/2 bes2*11/4 ~ bes2*4/2 ~ bes2*4/2 ~ bes2 ees'2 ~ ees'2 ~ ees'2 d'4 \divisioMaxima
g2 aes2*3/2 g2 ~ g2 f2 bes2*3/2 c'2*4/2 ~ c'2 aes2*3/2 g4 ~ \divisioMaior
g2*3/2 f2*4/2 g2*4/2 bes2 ~ bes2*3/2 c'2 bes2*3/2 aes2*3/4 f2*3/2 g4 \finalis
ees'2*3/2 ~ ees'2 ~ ees'2*3/2 d'2*3/2 c'2*3/2 ~ \divisioMinima
c'4 ~ c'2*3/2 bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 c'2*3/2 ~ c'2*3/2 bes4 \divisioMinima
g2 aes2 g2 ~ g2 ~ g2*3/2 f2*3/2 ees2 g2 ~ g2 aes2 bes4 \divisioMaxima
g2 bes2 ~ bes2*3/2 f2 \divisioMinima
g2*4/2 c'2*5/2 d'2*3/2 bes2 ~ bes2*5/2 g2*4/2 ~ g2*3/2 aes2 bes2*3/2 c'2*3/2 ~ \divisioMaior
c'2*5/2 bes2 ~ bes2*5/2 c'2 ~ c'2*4/2 ~ c'2*3/2 bes4 \divisioMaxima
r4 g2*3/2 ~ g4 f4 g2 f2 \divisioMinima
bes2 d'2 ~ d'2*3/2 ~ d'2 c'2 bes2 aes2*3/2 g4 \divisioMaior
f2 g2*3/2 ~ g2 ~ g2 aes2 g2 ~ g2 bes2 ~ bes2 c'2 bes2*3/2 ~ \divisioMinima
bes2*3/2 g2 aes2 g2 ees2*3/4 ~ ees2*3/2 ~ ees4 \finalis
}

bassMusic = {
r2*4/2 c2 ~ c2*3/2 bes2*3/4 aes2 g,2*3/2 ~ g,4 \divisioMaior
ees2*4/2 d2 c2*3/2 d2*3/2 bes,2*3/2 c2*9/4 ~ c2*3/2 ees2 ~ ees4 \divisioMaxima
bes,2 ~ bes,2 ~ bes,4 c2 ~ c2*3/2 ees2*11/4 d2*4/2 c2*4/2 g2 ~ g2 f2 g2 ~ g4 \divisioMaxima
bes,2 ~ bes,2*3/2 ~ bes,2 c2 d2 ~ d2*3/2 ~ d2*4/2 g2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g2*3/2 d2*4/2 c2*4/2 ~ c2 d2*3/2 ~ d2 ees2*3/2 ~ ees2*3/4 ~ ees2*3/2 ~ ees4 \finalis
r2*3/2 d'2 c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'4 g2*3/2 ~ g2*3/2 c2*4/2 d2*3/2 ~ d2*3/2 g2*3/2 ~ g4 \divisioMinima
g,2 ~ g,2 ~ g,2 bes,2 c2*3/2 d2*3/2 ees2 ~ ees2 g2 ~ g2 ~ g4 \divisioMaxima
c2 ~ c2 d2*3/2 ~ d2 \divisioMinima
g2*4/2 f2*5/2 d2*3/2 ~ d2 ees2*5/2 ~ ees2*4/2 g2*3/2 ~ g2 ~ g2*3/2 c'2*3/2 ~ \divisioMaior
c'2*5/2 g2 ~ g2*5/2 f2 d2*4/2 g2*3/2 ~ g4 \divisioMaxima
bes,4 ~ bes,2*3/2 c,4 d2*3/2 ~ d2 ~ \divisioMinima
d2 ~ d2 f2*3/2 g2 ~ g2 ~ g2 ~ g2*3/2 ~ g4 \divisioMaior
d2 ~ d2*3/2 c2 bes,2*4/2 ~ bes,2 c2 ~ c2 d2 ~ d2 g2*3/2 ~ \divisioMinima
g2*3/2 ~ g2 bes,2*4/2 ~ bes,2*3/4 aes,2*3/2 ees,4 \finalis
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
