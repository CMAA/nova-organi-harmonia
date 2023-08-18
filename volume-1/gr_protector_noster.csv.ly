\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.196
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Protector noster" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Protector noster"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Protector noster" }
    \line {}
  }
}

chantText = \lyricmode {
Pro -- té -- ctor no -- _ ster _ _ _ _ 
\set stanza = " * " 
á -- _ _ _ spi -- ce De -- _ _ _ us, 
et ré -- _ spi -- ce 
su -- per ser -- vos tu -- os. _ _ _ _ _ _ _ ℣. 
Dó -- mi -- ne De -- us vir -- tú -- tum, _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
ex -- áu -- _ _ _ di pre -- _ _ _ ces 
ser -- vó -- rum 
\set stanza = " * " tu -- ó -- _ rum. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( ees'4) ees'4 ees'4 ( f'4 ees'4) ~ ees'4 ( ees'4) ees'4 ( c'4.) ees'4 ( f'4 d'4) ees'4 ( f'4 c'4) d'4 ( c'4) ~ c'4 ( bes4) \divisioMaior
 g'4 ( ees'4) f'4 ( g'4 \forceBreak
) bes'4 ( bes'4) c''4 ( bes'4 c''4) bes'4 ( a'4 bes'4) g'4 ( f'4) g'4 bes'4 ( bes'4 g'4 ees'4.) g'4 ( f'4 ees'4) f'4 ( ees'4) ees'4 \divisioMaxima
 ees'4 f'4 ( g'4 f'4 g'4) bes'4 ( c''4 bes'4 \forceBreak
)  g'4 ( aes'4 f'4 aes'\prall bes'4 aes'4 g'4 aes'4) aes'4 ( g'4) \divisioMaior
 bes'4 ( c''4) bes'4 ( \once \tweak #'font-size #-4 g' )  bes'4 ( g'4 aes'4) f'4 ( g'4) f'4 ( ees'4)  ees'4 ( ees'4 g'4.) f'4 ( aes'4 g'4 ees'4) \divisioMinima \forceBreak

 ees'4 ( g'4 f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis
  ees'4 ees'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 \forceBreak
 c''4 ( bes'4) ~ bes'4 ( bes'4 g'4) bes'4. c''4 ( d''4 bes'4) \divisioMinima
 bes'4. c''4 ( d''4 c''4 bes'4.) c''4 ( d''4 bes'4 g'4.) a'4 ( bes'4 g'4 ees'4) \divisioMinima
 g'4 ( ees'4 g'4 f'4 ees'4.) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4 \forceBreak
) c''4 ( a'4) bes'4 ( g'4) bes'4 ( c''4) ees''4 ( ees''4) ~ ees''4 ( bes'4) \divisioMaxima
 g'4 bes'4 ( c''4 d''4 c''4 bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( \once \tweak #'font-size #-4 c'' ) bes'4 \divisioMinima
  g'4 ( aes'4 g'4 f'4.) g'4 ( aes'4 g'4 ees'4. \forceBreak
) g'4 ( f'4 ees'4) f'4 ( ees'4) ees'4 \divisioMaior
 ees'4 ees'4 ( g'4 f'4 ees'4) f'4 ( g'4)  bes'4 bes'4 ( c''4 bes'4 g'4) bes'4 ( bes'4 bes'4) bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4. \forceBreak
) g'4 ( aes'4 f'4 ees'4.) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
r4 g2*3/2 ~ g2*3/2 f2 bes2*5/4 aes,2*3/2 aes2*4/2 g2*3/2 \divisioMaior
bes2*4/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ees'2*3/2 ~ ees'2*3/4 bes2*6/2 ~ \divisioMaxima
bes4 d'2*4/2 f'2*3/2 ees'2*4/2 ~ ees'2*4/2 ~ ees'2 ~ \divisioMaior
ees'2*4/2 c'2*5/2 f'4 ees'4 ~ ees'2*7/4 bes2*3/2 ~ bes4 \divisioMinima
r2*3/2 f'2*3/4 ees'2 d'2*3/2 ees'2*4/2 bes2 ~ bes4 r2*4/2 f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 ees'2*3/4 d'2*3/2 ~ \divisioMinima
d'2*3/4 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2*3/4 c'2*3/2 ~ c'4 ~ \divisioMinima
c'2*4/2 ~ c'2*3/4 ees'2*4/2 f'2*4/2 ~ f'2 ~ f'2 ees'2 ~ ees'2 \divisioMaxima
r4 d'2*4/2 ~ d'2*3/2 c'2 f'2 ~ f'4 ees'2 f'2*5/4 ees'2*3/2 ~ ees'2*3/4 d'2*3/2 ~ d'2 c'4 ~ \divisioMaior
c'4 ees'2*7/2 f'2*4/2 ees'2*3/2 d'2*3/2 ees'2*4/2 bes2*3/4 c'2*3/2 ees'2*3/4 ~ ees'2 f'2*3/4 ees'2 d'2*3/2 ees'2*4/2 bes2 ~ bes4 \finalis
}

tenorMusic = {
c2*4/2 ~ c2*3/2 ~ c2 ~ c2*5/4 ~ c2*3/2 f2*4/2 d2*3/2 \divisioMaior
ees2*4/2 g2 ~ g2*3/2 ~ g2*3/2 bes2*3/2 ~ bes2*9/4 aes2*6/2 \divisioMaxima
g4 bes2*4/2 ~ bes2*3/2 ~ bes2*4/2 aes2*4/2 bes2 \divisioMaior
g2*4/2 aes2*5/2 bes2 ~ bes2*7/4 aes2*3/2 g4 \divisioMinima
bes2*3/2 ~ bes2*3/4 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 aes2 g4 ees'2*4/2 d'2*4/2 ees'2*3/2 d'2*3/2 c'2*3/4 r2*3/2 \divisioMinima
bes2*3/4 a2*3/2 g2*3/4 ~ g2*3/2 ~ g2*3/4 ~ g2*3/2 ~ g4 \divisioMinima
ees2*4/2 g2*3/4 bes2*4/2 ~ bes2*4/2 c'2 bes2 ~ bes2 ~ bes2 \divisioMaxima
g4 ~ g2*4/2 ~ g2*3/2 ~ g2 ~ g2 bes4 ~ bes2 ~ bes2*5/4 ~ bes2*9/4 ~ bes2*3/2 g2 ~ g4 ~ \divisioMaior
g4 bes2*7/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 c'2*4/2 g2*3/4 aes2*3/2 bes2*3/4 ~ bes2 ~ bes2*3/4 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 aes2 g4 \finalis
}

bassMusic = {
r2*4/2 bes,2*3/2 aes,2 g,2*5/4 f,2*3/2 ~ f,2*4/2 g,2*3/2 ~ \divisioMaior
g,2*4/2 ~ g,2 ~ g,2*3/2 a,2*3/2 bes,2*3/2 c2*9/4 ees2*6/2 \divisioMaxima
r2*5/2 d2*3/2 c2*4/2 ~ c2*4/2 ees2 ~ \divisioMaior
ees2*4/2 f2*5/2 g2 c2*7/4 ees2*3/2 ~ ees4 \divisioMinima
g2*3/2 ~ g2*3/4 ~ g2 ~ g2*3/2 c2*4/2 ees2 ~ ees4 r2*31/4 g2*3/2 ~ \divisioMinima
g2*3/4 ~ g2*3/2 ~ g2*3/4 f2*3/2 ees2*3/4 d2*3/2 c,4 \divisioMinima
c2*4/2 ~ c2*3/4 ~ c2*4/2 d2*4/2 ~ d2 ~ d2 c2 g2 \divisioMaxima
r2*5/2 f2*3/2 ees2 d2 ~ d4 ees2 d2*5/4 c2*9/4 bes,2*3/2 c,2 ~ c,4 ~ \divisioMaior
c,4 c2*7/2 d2*4/2 g2*3/2 ~ g2*3/2 f2*4/2 ~ f2*3/4 ~ f2*3/2 g2*3/4 ees2 d2*3/4 g2 ~ g2*3/2 c2*4/2 ees2 ~ ees4 \finalis
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
