\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.194
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Propitius esto" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Propitius esto"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Propitius esto" }
    \line {}
  }
}

chantText = \lyricmode {
Pro -- pí -- ti -- us e -- sto _ 
\set stanza = " * " Dó -- _ mi -- ne _ _ _ 
pec -- cá -- _ tis no -- stris: 
ne quan -- do di -- cant gen -- _ tes: _ _ _ _ 
U -- _ bi est De -- us e -- ó -- rum? _ _ _ _ _ ℣. 
Ad -- ju -- va nos, De -- us sa -- lu -- tá -- ris no -- ster: _ _ _ _ _ _ _ _ _ _ _ _ 
et prop -- ter ho -- nó -- _ _ _ _ _ rem _ _ _ 
nó -- mi -- nis tu -- i Dó -- mi -- ne, 
\set stanza = " * " lí -- be -- ra _ nos. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( ees'4 f'4) ees'4 ees'4 f'4 ( g'4 f'4 g'4) f'4. ees'4 ( f'4 ees'4 c'4) \divisioMinima
 c'4 ( f'4 ees'4) f'4 ( g'4) f'4  f'4. \forceBreak
 g'4 ( aes'4 f'4 ees'4) ~ ees'4 ( c'4) ees'4 ( f'4 ees'4) \divisioMaior
 ees'4 f'4 ( g'4 f'4 g'4) bes'4 ( c''4 bes'4)  g'4 ( aes'4 g'4 f'4)  g'4 ( bes'4 f'4 g'\prall aes'4 g'4 aes'4) aes'4 ( g'4) \divisioMaxima \forceBreak

 ees'4 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( bes'4) g'4 ( g'4 f'4) f'4 ( g'4) g'4 ( f'4) g'4 ( ees'4 f'4) ees'4. d'4 ( f'4 g'4.) ees'4 ( f'4 g'4 ees'4 d'4 c'4) d'4 ( ees'4 f'4) ~ f'4 ( ees'4) \divisioMaxima \forceBreak

  ees'4 g'4 ( g'4 aes'4) f'4 f'4 ( bes'4 bes'4) bes'4 bes'4  bes'4 ( g'4 aes'\prall bes'4 aes'4 f'4 g'\prall aes'4 g'4 f'4) ees'4 ( f'4 ees'4) ees'4 ( g'4 bes'4) \divisioMinima \forceBreak

 ees'4 ( g'4) bes'4 ( bes'4 a'4 f'4.) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis
  ees'4 ees'4 g'4  aes'4 bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 c''4 ( bes'4) ~ bes'4 ( f'4.) bes'4 ( c''4 bes'4) c''4 ( bes'4) ~ bes'4 ( f'4) \divisioMinima
 bes'4 ( c''4) ees''4. f''4 ( ees''4 c''4) d''4 ( bes'4 g'4) \divisioMinima
 bes'4 ( a'4 \forceBreak
) c''4 ( d''4 bes'4.) d''4 ( c''4 bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) \divisioMaxima
 bes'4 ( bes'4) bes'4 bes'4 bes'4 c''4 ( bes'4) c''4 ( d''4 bes'4.) c''4 ( bes'4) c''4 ( d''4 c''4 d''4.) bes'4 ( c''4 \forceBreak
) d''4 ( c''4 d''4) d''4 ( bes'4) d''4 ( ees''4 c''4) bes'4 ( bes'4) g'4 ( a'4 g'4) \divisioMaior
 ees'4 ees'4 ees'4 ees'4 ees'4 ees'4 ees'4 ees'4 \divisioMinima
 ees'4 ( g'4 f'4 ees'4) f'4 ( g'4 \forceBreak
) g'4 ( bes'4 a'4 g'4) bes'4 ( bes'4 bes'4) bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4.) g'4 ( aes'4 f'4 ees'4.) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
r4 g2*5/2 ~ g2*4/2 c'2*3/4 bes2*4/2 \divisioMinima
aes2*3/2 bes2*3/2 c'2*3/4 ~ c'2*3/2 ~ c'2*3/2 bes2*3/2 \divisioMaior
c'4 d'2*4/2 ~ d'2*3/2 ees'2*4/2 ~ ees'2 ~ ees'2 d'2*3/2 ees'2 ~ \divisioMaxima
ees'4 ~ ees'2 d'2 ees'2*3/2 d'2 ees'2*5/2 c'2*5/4 ~ c'2*5/4 ~ c'2*6/2 ~ c'2 bes2*3/2 ees'4 ~ ees'2*4/2 f'2*3/2 ~ f'2 ees'2*3/2 c'2 ~ c'2 ~ c'2*3/2 bes2*3/2 ees'2*3/2 ~ \divisioMinima
ees'2 f'2*3/2 ~ f'2*3/4 ees'2*4/2 bes2 ~ bes4 r2 g'2 f'2*4/2 ~ f'2*4/2 ~ f'2 ~ f'2*3/4 ees'2*4/2 f'2*3/2 ~ \divisioMinima
f'2 g'2*9/4 ~ g'2 ~ g'4 \divisioMinima
f'2 ~ f'2*7/4 ~ f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2*3/2 g'2*4/2 f'2*3/4 ~ f'2*5/2 ~ f'2*3/4 g'2 ~ g'2*3/2 f'2 ees'2*3/2 d'2 ~ d'2 ~ d'4 \divisioMaior
bes2*5/2 c'2*3/2 \divisioMinima
ees'2*6/2 f'2*4/2 ees'2*3/2 d'2*3/2 ees'2*4/2 bes2*3/4 c'2*3/2 ees'2*3/4 ~ ees'2 f'2*3/4 ees'2 d'2*3/2 ees'2*4/2 bes2 ~ bes4 \finalis
}

tenorMusic = {
c2*6/2 ~ c2*4/2 ~ c2*3/4 ~ c2*4/2 ~ \divisioMinima
c2*3/2 ~ c2*3/2 ~ c2*3/4 f2*3/2 g2*3/2 ~ g2*3/2 ~ \divisioMaior
g4 ~ g2*4/2 ~ g2*3/2 ~ g2*4/2 bes2 aes2 f2*3/2 c'2 \divisioMaxima
r4 bes2 aes2 c'2*3/2 aes2 g2*5/2 ~ g2*3/4 f4 ~ f2*5/4 g2*6/2 f2 g2*3/2 r4 bes2*4/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 aes2 f2*3/2 aes2*3/2 g4 ~ g2 ~ \divisioMinima
g2 f2*3/2 bes2*3/4 ~ bes2*4/2 aes2 g4 ees'2 ~ ees'2 ~ ees'2*4/2 d'2*4/2 ees'2 d'2*3/4 c'2*4/2 d'2*3/2 ~ \divisioMinima
d'2 c'2*9/4 bes2*3/2 \divisioMinima
c'2 bes2*7/4 a2*3/2 bes2*3/2 ~ bes2*3/2 \divisioMaxima
g2 ~ g2*3/2 ~ g2*4/2 ~ g2*3/4 a2*5/2 bes2*3/4 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 c'2 bes4 \divisioMaior
g2*5/2 ~ g2*3/2 \divisioMinima
bes2*6/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 c'2*4/2 g2*3/4 aes2*3/2 bes2*3/4 ~ bes2 ~ bes2*3/4 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 aes2 g4 \finalis
}

bassMusic = {
r2*6/2 bes,2*4/2 aes,2*3/4 g,2*4/2 \divisioMinima
f,2*3/2 g,2*3/2 aes,2*3/4 ~ aes,2*3/2 ~ aes,2*3/2 g,2*3/2 \divisioMaior
c4 bes,2*4/2 ~ bes,2*3/2 c,2*4/2 c2 ~ c2 ~ c2*3/2 ~ c2 ~ \divisioMaxima
c4 ~ c2 ~ c2 ~ c2*3/2 ~ c2 ~ c2*5/2 bes,2*3/4 ~ bes,4 aes,2*5/4 a,2*6/2 ~ a,2 g,2*3/2 c4 ~ c2*4/2 d2*3/2 g2 ~ g2*3/2 ees2 ~ ees2 ~ ees2*3/2 ~ ees2*3/2 bes4 d2 \divisioMinima
c2 d2*3/2 ~ d2*3/4 c2*4/2 ees2 ~ ees4 r2*31/4 r2*7/2 \divisioMinima
r2*19/4 \divisioMinima
f2 d2*7/4 ~ d2*3/2 ~ d2*3/2 g2*3/2 \divisioMaxima
r2 f2*3/2 ees2*4/2 d2*3/4 ~ d2*5/2 ~ d2*3/4 ees2 ~ ees2*3/2 d2 c2*3/2 g2 ~ g2 ~ g4 ~ \divisioMaior
g2*5/2 c2*3/2 ~ \divisioMinima
c2*6/2 d2*4/2 g2*3/2 ~ g2*3/2 f2*4/2 ~ f2*3/4 ~ f2*3/2 g2*3/4 ees2 d2*3/4 g2 ~ g2*3/2 c2*4/2 ees2 ~ ees4 \finalis
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
