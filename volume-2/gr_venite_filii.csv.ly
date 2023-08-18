\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.162
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Venite filii" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Venite filii"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Venite filii" }
    \line {}
  }
}

chantText = \lyricmode {
Ve -- ní -- te fí -- li -- i, 
\set stanza = " * " au -- dí -- _ te _ me: 
ti -- mó -- rem Dó -- mi -- ni do -- cé -- bo vos. _ _ _ _ _ ℣. 
Ac -- cé -- di -- te _ _ _ _ _ _ _ _ ad e -- _ _ _ um, _ 
et il -- lu -- mi -- ná -- mi -- ni: _ 
et fá -- ci -- es ve -- stræ 
\set stanza = " * " non con -- fun -- dén -- tur. _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( ees'4) f'4 ( g'4 f'4 g'4) g'4 ( ees'4 f'4) f'4 ees'4 \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( g'4.) bes'4 ( a'4 bes'4)  f'4 ( bes'4 g'4) aes'4 ( bes'4 \forceBreak
)  aes'4 ( g'4) \divisioMaxima
 g'4 g'4 ( f'4) bes'4 bes'4 a'4 ( bes'4) g'4 ( ees'4) f'4 ( g'4) ees'4 d'4 ( ees'4) c'4 ( d'4 bes4) \divisioMinima
 ees'4 ( g'4 f'4.) bes'4 ( c''4 a'4 bes'4 g'4. \forceBreak
) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis
  ees'4 ees'4 g'4 bes'4 ( bes'4 a'4 g'4) bes'4 ( a'4 f'4) g'4 ( g'4) \divisioMinima
  ees'4 ( f'4 g'4 aes'4 g'4 f'4) g'4 ( f'4 ees'4 f'4) \divisioMinima \forceBreak

 g'4 ( bes'4) c''4 ( bes'4) c''4 ( bes'4) c''4 ( d''4 bes'4) \divisioMinima
 bes'4 c''4 ( bes'4) ees''4 ( ees''4 bes'4) c''4 ( bes'4) ees''4 ( ees''4 c''4 bes'4) bes'4. a'4 ( bes'4 a'4 g'4) \divisioMaior \forceBreak

 bes'4 bes'4 bes'4 bes'4 c''4 ( d''\prall ees''4) c''4 ( bes'4) bes'4 ( c''4 bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 a'4 bes'4 g'4 \divisioMinima \forceBreak

 ees'4 ( g'4) f'4 ( bes'4 a'4 bes'4) g'4 ees'4 ( \once \tweak #'font-size #-4 f' ) ees'4 ( f'\prall g'4 f'4 g'4.) bes'4 ( c''4 a'4 bes'4 g'4.) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
c'4 ~ c'2 ~ c'2*4/2 b2*3/2 ~ b2 \divisioMinima
e'2 ~ e'2*5/4 f'2*3/2 b2*3/2 c'2 e'2 \divisioMaxima
r4 d'2*3/2 f'4 ~ f'2 e'2 b2 ~ b4 ~ b2*4/2 ~ b4 \divisioMinima
e'2 f'2*3/4 ~ f'2*4/2 e'2*3/4 c'2 ~ c'2 b2 ~ b4 r4 e'2 d'2*4/2 e'2*3/2 d'2 e'2 ~ e'2*4/2 d'2*4/2 \divisioMinima
g'2 ~ g'2 ~ g'2 ~ g'2*3/2 ~ \divisioMinima
g'4 ~ g'2 ~ g'2*3/2 ~ g'2 ~ g'2*4/2 f'2*3/4 d'2*3/2 ~ d'4 \divisioMaior
g'2 f'2 ~ f'2*3/2 e'2 d'2*4/2 c'2 b4 \divisioMaxima
d'2 f'2*3/2 e'2 ~ \divisioMinima
e'2 f'2*5/2 b2 c'2 e'2*7/4 d'2*11/4 c'2 ~ c'2 b2 ~ b4 \finalis
}

tenorMusic = {
r2*3/2 aes2*4/2 a2*3/2 g2 ~ \divisioMinima
g2 ~ g2*5/4 f2*3/2 ~ f2*3/2 e2 ~ e2 \divisioMaxima
r4 b2*3/2 ~ b4 c'2 b2 aes2 g4 f2*5/2 \divisioMinima
b2 ~ b2*3/4 f2*4/2 b2*3/4 aes2 a2 ~ a2 g4 r2*7/2 c'2*3/2 b2 ~ b2 c'2*4/2 b2*4/2 \divisioMinima
d'2 ~ d'2 ~ d'2 e'2*3/2 \divisioMinima
d'4 b2 ~ b2*3/2 ~ b2 c'2*4/2 ~ c'2*3/4 ~ c'2*3/2 b4 \divisioMaior
g2 ~ g2 ~ g2*3/2 ~ g2 ~ g2*4/2 d2 ~ d4 \divisioMaxima
g2 ~ g2*3/2 ~ g2 \divisioMinima
b2 ~ b2*5/2 g2 ~ g2 ~ g2*7/4 ~ g2*11/4 ~ g2 aes2 a2 g4 \finalis
}

bassMusic = {
r2*7/2 e2*3/2 ~ e2 \divisioMinima
d2 c2*5/4 d2*3/2 ~ d2*3/2 c2 ~ c2 \divisioMaxima
r4 b,2*3/2 d4 ~ d2 e2 ~ e2 ~ e4 b,2*5/2 \divisioMinima
c2 d2*3/4 ~ d2*4/2 e2*3/4 aes2 e2 ~ e2 ~ e4 r4 c'2 g2*4/2 ~ g2*3/2 ~ g2 ~ g2 f2*4/2 b2*4/2 ~ \divisioMinima
b2 a2 g2 ~ g2*3/2 ~ \divisioMinima
g4 f2 e2*3/2 d2 c2*4/2 d2*3/4 g2*3/2 ~ g4 \divisioMaior
e2 d2 c2*3/2 ~ c2 g,2*4/2 ~ g,2 ~ g,4 \divisioMaxima
b,2 d2*3/2 c2 ~ \divisioMinima
c2 d2*5/2 ~ d2 c2 ~ c2*7/4 b,2*11/4 ~ b,2 aes,2 e2 ~ e4 \finalis
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
