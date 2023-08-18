\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.224
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Quis sicut Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Quis sicut Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Quis sicut Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
Quis sic -- ut Dó -- _ _ _ mi -- nus 
\set stanza = " * " 
De -- us _ no -- ster 
qui in al -- tis há -- bi -- tat: 
hu -- mí -- li -- _ a ré -- spí -- cit in cœ -- lo et in ter -- ra? _ _ _ _ _ _ _ _ ℣. 
Sús -- ci -- tans _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
a _ ter -- ra ín -- o -- pem, 
et de stér -- co -- re _ _ _ 
é -- ri -- gens 
\set stanza = " * " páu -- pe -- rem. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( ees'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( ees'4) f'4 ( ees'4 d'4 c'4.) f'4 ( d'4) ees'4 ( f'4) ees'4 ees'4 \divisioMaior
 ees'4 ( f'4 g'4) g'4 ( f'4) g'4 ( f'4 \forceBreak
) ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaior
 ees'4 g'4 ( bes'4) bes'4 g'4 bes'4 ( c''4) bes'4 ( a'4 bes'\prall c''4 bes'4 c''4) c''4 ( bes'4) \divisioMaxima
 g'4 g'4 \forceBreak
  f'4 ( aes'4 g'4 f'4) g'4 ( ees'4) ees'4 g'4 ( f'4) g'4 ees'4 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 a'4 ( bes'4) \divisioMinima
 g'4 ees'4 ( \once \tweak #'font-size #-4 f' ) ees'4 f'4 ( ees'4) ~ ees'4 ( f'4 c'4 bes4. \forceBreak
)  g'4. f'4 ( aes'4 g'4 ees'4) \divisioMinima
 ees'4 ( g'4 f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis
  bes'4 bes'4 ( c''4) c''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( c''4 bes'4 a'4. \forceBreak
) bes'4 ( c''4 g'4 ees'4) \divisioMinima
 g'4 bes'4 ( bes'4 c''4) bes'4 ( bes'4 g'4) bes'4 ( c''4 bes'4 a'4.) bes'4 ( c''4 g'4 ees'4) \divisioMinima
  g'4 ( aes'4.) f'4 ( aes'4 bes'4) aes'4 ( bes'4 aes'4) bes'4 ( g'4 ees'4) \divisioMinima \forceBreak

 g'4 ( ees'4 g'4 f'4 ees'4.) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) c''4 ( a'4) bes'4 ( g'4) bes'4 ( c''4) ees''4 ( ees''4) ~ ees''4 ( bes'4) \divisioMaior
 bes'4 ( c''4) d''4 ( c''4 d''\prall ees''4) c''4 ( ees''4 bes'4 a'4 bes'4) g'4 \forceBreak
 g'4 ( bes'4) bes'4 ( f'4 g'4) ees'4 \divisioMaxima
 ees'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 ( c''4 bes'4) c''4 ( bes'4.) d''4 ( c''4 bes'4 a'4) bes'4 ( g'4) \divisioMaior
 ees'4 ( f'4 g'4) g'4 g'4  \forceBreak
 g'4 ( bes'4 a'4 g'4) c''4 bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4.) g'4 ( aes'4 f'4 ees'4.) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4.) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
c'4 ~ c'2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ c'2*3/4 bes2 ~ bes2*3/2 ~ bes4 \divisioMaior
ees'2*3/2 d'2 ~ d'2 c'2 ~ c'2*4/2 bes2 \divisioMaior
ees'4 ~ ees'2 ~ ees'2 f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2 \divisioMaxima
ees'2 c'2 ~ c'2 ~ c'2*3/2 d'2 ees'2 ~ ees'2 ~ ees'4 bes2*3/2 ~ bes2 ~ bes2 c'2*3/2 ~ c'4 bes2*3/4 ~ bes2*3/4 c'2*3/2 bes4 ~ \divisioMinima
bes2*3/2 ~ bes2*3/4 d'2 ~ d'2*3/2 c'2 ~ c'2 bes2 ~ bes4 r2*4/2 g'2*3/2 ~ g'2*9/4 ~ g'2*3/2 r4 \divisioMinima
g'4 ~ g'2*3/2 ~ g'2 ~ g'4 f'2*9/4 ees'2*4/2 ~ ees'2*7/4 ~ ees'2 ~ ees'2*3/2 ~ ees'2*3/2 ~ \divisioMinima
ees'2*11/4 ~ ees'2*4/2 f'2*4/2 d'2 f'2 ees'2 g'2 \divisioMaior
f'2 ~ f'2*4/2 g'2 f'2*4/2 ees'2 f'2*3/2 ees'4 ~ \divisioMaxima
ees'4 ~ ees'2 f'2*3/2 ~ f'2*3/2 ~ f'2*5/4 ees'2*4/2 d'2 \divisioMaior
c'2*4/2 d'4 c'2*5/2 f'2 ~ f'4 ees'2 ~ ees'2 c'2*3/4 ~ c'2*3/2 ~ c'2*3/4 d'2 ees'2*3/4 f'2 d'2*5/4 c'2 ~ c'2 bes2 ~ bes4 \finalis
}

tenorMusic = {
r2*7/2 g2*3/2 ees2*3/4 f2 ~ f2*3/2 g4 ~ \divisioMaior
g2*3/2 ~ g2 bes2 ~ bes2 aes2*4/2 g2 ~ \divisioMaior
g4 bes2 ~ bes2 ~ bes2 c'2*3/2 a2*3/2 bes2 \divisioMaxima
r4 bes4 ~ bes2 aes2 g2*3/2 bes2 ~ bes2 ~ bes2 g4 f2 ~ \divisioMinima
f4 g2 ~ g2 ~ g2*3/2 f2*5/4 ees2*3/4 aes2*3/2 a4 \divisioMinima
g2*3/2 f2*3/4 ~ f2 g2*3/2 ~ g2 aes2 a2 g4 r2*7/2 f'2*9/4 ees'2*4/2 ~ \divisioMinima
ees'4 f'2*3/2 ees'2*3/2 d'2*9/4 c'2*4/2 ~ c'2*7/4 ~ c'2 ~ c'2*3/2 bes2*3/2 ~ \divisioMinima
bes2*11/4 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*4/2 ~ bes2 ~ bes2 ~ \divisioMaior
bes2 ~ bes2*4/2 ~ bes2 ~ bes2*4/2 ~ bes2 ~ bes2*3/2 g2 bes2 ~ bes2*3/2 ~ bes2*3/2 g2*5/4 ~ g2*4/2 ~ g2 ~ \divisioMaior
g2*4/2 ~ g4 ~ g2*5/2 f2 bes4 c'2 f2 g2*3/4 f2*3/2 g2*3/4 bes2 ~ bes2*3/4 f2 g2*5/4 ~ g2 aes2 a2 g4 \finalis
}

bassMusic = {
r4 c2 d2 ees2 c2*3/2 ~ c2*3/4 d2 bes,2*3/2 ees4 \divisioMaior
c2*3/2 bes,2 ~ bes,2 ees2 ~ ees2*4/2 ~ ees2 ~ \divisioMaior
ees4 d2 c2 d2 f2*3/2 ~ f2*3/2 d2 \divisioMaxima
ees2 f2 ~ f2 c2*3/2 bes,2 ees2 c2 ~ c4 d2 ~ \divisioMinima
d4 ees2 d2 c2*3/2 d2*5/4 ees2*3/4 ~ ees2*4/2 ~ \divisioMinima
ees2*3/2 d2*3/4 bes,2 ~ bes,2*3/2 ~ bes,2 aes,2 ees2 ~ ees4 r2*31/4 \divisioMinima
r4 d'2*3/2 c'2*3/2 g2*9/4 c'2*4/2 aes2*7/4 g2 f2*3/2 g2*3/2 \divisioMinima
ees2 d2*7/4 c2*4/2 d2*4/2 g2*4/2 ~ g2 ees2 \divisioMaior
d2 bes,2*4/2 ees2 d2*4/2 c2 d2*3/2 ees2 ~ ees2 ~ ees2*3/2 d2*3/2 ~ d2*5/4 c2*4/2 g,2 \divisioMaior
c2*4/2 bes,4 ees2*5/2 d2 ~ d4 c2 ~ c2 ~ c2*3/4 aes,2*3/2 c2*3/4 bes,2 c2*3/4 d2 bes,2*5/4 ~ bes,2 aes,2 ees2 ~ ees4 \finalis
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
