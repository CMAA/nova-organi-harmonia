\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.89
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Salvos fac nos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Salvos fac nos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Salvos fac nos" }
    \line {}
  }
}

chantText = \lyricmode {
Sal -- _ _ vos fac _ _ nos, 
\set stanza = " * " Do -- mi -- ne De -- us no -- ster, _ _ _ 
et cón -- gre -- ga -- _ nos _ _ de na -- ti -- ó -- ni -- bus: _ _ _ _ _ _ _ _ _ _ 
ut con -- fi -- te -- á -- mur _ 
nó -- _ mi -- _ ni _ san -- _ cto _ tu -- _ o, _ _ _ 
et gló -- ri -- _ é -- _ mur in gló -- _ ri -- a tu -- a. _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
Tu, Dó -- mi -- ne, _ _ _ 
pa -- ter no -- ster, _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
et re -- dém -- _ _ _ _ _ _ _ _ ptor no -- _ _ ster: 
a sǽ -- _ cu -- lo _ _ _ 
no -- _ _ men _ 
\set stanza = " * " tu -- um. _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4. ~ ees'4 ( ees'4 ees'4) ~ ees'4 ( \once \tweak #'font-size #-4 bes ) c'4 ( d'\prall ees'4 d'4) d'4 ( f'4 d'4) f'4 ( g'4 f'4 ees'4) ~ ees'4 ( c'4) ees'4 ( ees'4 ees'4) \divisioMinima
 d'4 ( ees'4 f'\prall g'4) f'4 f'4 f'4 \forceBreak
 f'4 ( g'4) g'4 ( f'4)  f'4 ( g'4.) d'4 ( ees'4 f'\prall g'4 aes'4 f'4) ees'4 ( ees'4) c'4 ( d'4 c'4) \divisioMaxima
 f'4 g'4 ( bes'4 g'4) bes'4 bes'4 ( g'4) bes'4 ( bes'4) bes'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMinima \forceBreak

 f'4 f'4 ( g'4) g'4 g'4 ( bes'4 a'4 bes'4) g'4 ( f'4 g'4) g'4 a'4 ( bes'4 a'4) bes'4 ( c''4 a'4.) c''4 ( bes'4 a'4 g'4) bes'4 ( a'4 g'4) \divisioMinima
 bes'4 ( bes'4) c''4 ( a'4 \forceBreak
) bes'4 ( g'4 f'4) bes'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 ( bes'4) bes'4 bes'4 ( a'4) bes'4 bes'4 ( c''4) bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) \divisioMaior
 bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 bes'4 ( bes'4) bes'4 ( bes'4 \forceBreak
) ~ bes'4 ( g'4 f'4) \divisioMinima
 g'4 ( f'4) g'4 ( a'\prall bes'4) g'4 ( f'4) g'4 ( a'\prall bes'4) g'4 ( f'4 ees'4) f'4 ( g'4 f'4)  f'4 ( g'4.) d'4 ( ees'4 f'\prall g'4 aes'4 f'4) ees'4 ( ees'4) c'4 ( d'4 c'4) \divisioMaxima \forceBreak

 f'4 f'4 ( bes'4 a'4) g'4 ( bes'4 a'4) bes'4 ( c''4) bes'4 ( c''4 bes'4 g'4) f'4 ( a'4 g'4 a'4) a'4 \divisioMinima
 a'4 ( bes'4 c''4) bes'4 ( c''4 a'4) bes'4 ( g'4) g'4 ( f'4 ees'4) f'4 \forceBreak
 ees'4 ( g'4 a'\prall bes'4 c''4) a'4 ( f'4) a'4 ( g'4 f'4) g'4 ( g'4 ees'4) g'4 ( g'4) \divisioMinima
 f'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4 d'4)  ees'4 ( g'4.) aes'4 ( f'4 ees'4 \forceBreak
) f'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4) \finalis
 d'4 d'4 d'4 d'4 ( f'4 d'4) f'4 ( g'4 f'4) ees'4 ( ees'4) c'4 ( d'4 c'4) \divisioMaior
 f'4 g'4 ( bes'4) bes'4 a'4. bes'4 ( c''4 g'4 \forceBreak
) bes'4 ( a'4 bes'4 g'4 f'4) \divisioMinima
 bes'4 ( a'4) bes'4 ( c''4) d''4 ( a'4) bes'4 ( c''4 bes'4 a'4 g'4) \divisioMinima
 c''4 ( d''4 a'4) bes'4 ( c''4 bes'4 a'4 g'4.) bes'4 ( a'4 bes'4 g'4 f'4) bes'4 ( f'4) a'4 ( bes'4.) f'4 ( g'4 \forceBreak
) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4) ~ ees'4 ( c'4) \divisioMaior
 c'4 c'4 ees'4 ( c'4) ees'4 ( ees'4 c'4) d'4 ( ees'4) f'4 ( g'4) bes'4 ( c''4 bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) bes'4 ( bes'4 \forceBreak
) ~ bes'4 ( a'4) a'4 a'4 ( bes'4) c''4 ( d''4 bes'4) ~ bes'4 ( a'4 bes'4) bes'4 ( a'4) \divisioMaxima
 g'4 ( bes'4) g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 bes'4. a'4 ( bes'4 a'4.) g'4 ( a'4 g'4 \forceBreak
) f'4 ( g'4 ees'4 d'4) \divisioMaior
 d'4 ( f'4 d'4) f'4 ( g'4.) f'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( f'4 ees'4 f'4)  ees'4 ( g'4 a'\prall bes'4 c''4) a'4 ( f'4) a'4 ( g'4 f'4) g'4 ( g'4 ees'4) g'4 ( g'4) \divisioMinima \forceBreak

 f'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( bes'4) g'4 ( f'4 ees'4 d'4 ) ees'4 ( g'4.) aes'4 ( f'4 ees'4) f'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4) \finalis

}

altoMusic = {
g2*3/4 aes2*3/2 bes2*6/2 ~ bes2*6/2 c'2*3/2 ~ c'2*3/2 \divisioMinima
bes2*7/2 ~ bes2 c'2 ~ c'2*5/4 ~ c'2*6/2 g2*4/2 bes4 \divisioMaxima
d'4 ~ d'2*4/2 ees'2*4/2 f'2*3/2 d'2*3/2 ~ \divisioMinima
d'4 c'2*3/2 d'2*4/2 ~ d'2*4/2 f'2*3/2 ~ f'2*7/4 ~ f'2*4/2 d'2 ~ d'4 ~ \divisioMinima
d'2*4/2 f'2 ~ f'4 ees'2*3/2 c'2 ~ c'4 \divisioMaxima
f'2*3/2 ~ f'2*3/2 ~ f'2 ~ f'2 ~ f'2*3/2 \divisioMaior
g'2 f'2*3/2 ~ f'2 ees'2 f'2 ~ f'4 \divisioMinima
d'2 ~ d'2*3/2 c'2 d'2*3/2 ees'2*3/2 d'2*3/2 bes4 c'2*15/4 g2*4/2 bes4 \divisioMaxima
r4 d'2*3/2 ~ d'2*3/2 ~ d'2 f'2*4/2 ~ f'2*5/2 ~ \divisioMinima
f'2*3/2 ~ f'2*3/2 ~ f'2 ees'2*4/2 ~ ees'2*5/2 f'2*5/2 ~ f'2*3/2 ees'2 ~ \divisioMinima
ees'4 f'2 ~ f'2 ~ f'2 d'2*5/2 ees'2*5/4 ~ ees'2*3/2 d'2*4/2 ~ d'2 ~ d'4 \finalis
r4 bes2 a2*3/2 bes2*3/2 c'2 g2 ~ g4 \divisioMaior
d'2*3/2 ~ d'2*11/4 ~ d'2*5/2 \divisioMinima
f'2 ~ f'2 ~ f'2 d'2*5/2 ~ \divisioMinima
d'2*3/2 ~ d'2*11/4 ~ d'2*7/2 f'2*9/4 ~ f'2 ees'2*3/2 g2 ~ g4 ~ \divisioMaior
g2 ~ g2 c'2*5/2 ~ c'2 f'2*3/2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2*3/2 d'2*4/2 ~ d'2*4/2 f'2 \divisioMaxima
d'2 c'2 d'2*13/4 ~ d'2*7/4 ~ d'2*3/2 ~ d'2*4/2 ~ \divisioMaior
d'2*3/2 c'2*5/4 bes2*4/2 f'2 ees'2*4/2 ~ ees'2*5/2 f'2*5/2 ~ f'2*3/2 ees'2 ~ \divisioMinima
ees'4 f'2 ~ f'2 d'2 bes2*13/4 c'2*3/2 bes2*4/2 d'2 bes4 \finalis
}

tenorMusic = {
ees2*9/4 ~ ees2*6/2 f2*6/2 g2*3/2 ~ g2*3/2 \divisioMinima
f2*7/2 ees2 ~ ees2 ~ ees2*5/4 f2*6/2 ~ f2*4/2 ees4 \divisioMaxima
bes4 g2*4/2 ~ g2*4/2 bes2*3/2 a2*3/2 ~ \divisioMinima
a4 ~ a2*3/2 c'2*4/2 bes2*4/2 c'2*3/2 ~ c'2*7/4 d'2*4/2 ~ d'2 bes4 ~ \divisioMinima
bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 a4 \divisioMaxima
bes2*3/2 g2*3/2 f2 bes2 d'2*3/2 ~ \divisioMaior
d'2 ~ d'2*3/2 bes2 ~ bes2 ~ bes2*3/2 \divisioMinima
c'2 bes2*3/2 a2 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 d4 f2*15/4 ~ f2*4/2 ees4 \divisioMaxima
f4 bes2*3/2 ~ bes2*3/2 ~ bes2 ~ bes2*4/2 c'2*5/2 \divisioMinima
d'2*3/2 c'2*3/2 bes2 ~ bes2*4/2 ~ bes2*5/2 c'2*5/2 bes2*3/2 ~ bes2 ~ \divisioMinima
bes4 ~ bes2 c'2 bes2 ~ bes2*5/2 ~ bes2*5/4 c'2*3/2 bes2*4/2 g2 f4 \finalis
r4 f2 ~ f2*3/2 ~ f2*3/2 g2 f2 ees4 \divisioMaior
g2*3/2 f2*11/4 g2*5/2 ~ \divisioMinima
g2 a2 bes2 ~ bes2*5/2 \divisioMinima
a2*3/2 c'2*11/4 bes2*7/2 ~ bes2*9/4 g2 ~ g2*3/2 f2 ees4 ~ \divisioMaior
ees2 f2 g2*5/2 ~ g2 a2*3/2 bes2 c'2*3/2 d'2 c'2*3/2 a2*4/2 g2*4/2 c'2 \divisioMaxima
bes2 a2 bes2*13/4 c'2*7/4 bes2*3/2 g2*4/2 \divisioMaior
f2*3/2 ~ f2*5/4 ~ f2*4/2 g2 ~ g2*4/2 bes2*5/2 c'2*5/2 bes2*3/2 ~ bes2 ~ \divisioMinima
bes4 ~ bes2 g2 f2 ees2*13/4 ~ ees2*3/2 d2*4/2 ees2 f4 \finalis
}

bassMusic = {
c2*9/4 g,2*6/2 ~ g,2*6/2 c2*3/2 ~ c2*3/2 \divisioMinima
d2*7/2 ~ d2 c2 bes,2*5/4 aes,2*6/2 c2*4/2 ~ c4 \divisioMaxima
bes,4 ~ bes,2*4/2 c2*4/2 d2*3/2 ~ d2*3/2 ~ \divisioMinima
d4 g2*3/2 ~ g2*4/2 ~ g2*4/2 f2*3/2 d2*7/4 ~ d2*4/2 g2 ~ g4 ~ \divisioMinima
g2*4/2 d2*3/2 c2*3/2 f2 ~ f4 \divisioMaxima
d2*3/2 ~ d2*3/2 ~ d2 ~ d2 ~ d2*3/2 \divisioMaior
g2 ~ g2*3/2 ~ g2 ~ g2 d2*3/2 \divisioMinima
g2 ~ g2*3/2 ~ g2 ~ g2*3/2 ees2*3/2 bes,2*3/2 ~ bes,4 aes,2*15/4 c2*4/2 ~ c4 \divisioMaxima
r2*4/2 a2*3/2 g2 d2*4/2 ~ d2*5/2 ~ \divisioMinima
d2*3/2 ~ d2*3/2 ~ d2 ees2*4/2 c2*5/2 d2*5/2 ees2*3/2 ~ ees2 ~ \divisioMinima
ees4 d2 ~ d2 ~ d2 g2*5/2 ~ g2*5/4 f2*3/2 bes,2*4/2 ~ bes,2 ~ bes,4 \finalis
d4 ~ d2 ~ d2*3/2 ~ d2*3/2 c2 ~ c2 ~ c4 \divisioMaior
bes,2*3/2 ~ bes,2*11/4 ~ bes,2*5/2 \divisioMinima
d2 ~ d2 ~ d2 g2*5/2 ~ \divisioMinima
g2*3/2 ~ g2*11/4 ~ g2*7/2 d2*9/4 ~ d2 c2*3/2 ~ c2 ~ c4 ~ \divisioMaior
c2 ~ c2 ~ c2*5/2 d2 ~ d2*3/2 ~ d2 ~ d2*3/2 ~ d2 f2*3/2 ~ f2*4/2 g2*4/2 f2 \divisioMaxima
g2 ~ g2 ~ g2*13/4 ~ g2*7/4 ~ g2*3/2 bes,2*4/2 ~ \divisioMaior
bes,2*3/2 d2*5/4 ~ d2*4/2 ~ d2 c2*4/2 ~ c2*5/2 d2*5/2 ees2*3/2 ~ ees2 ~ \divisioMinima
ees4 d2 ~ d2 g,2 ~ g,2*13/4 f,2*3/2 bes,2*4/2 ~ bes,2 ~ bes,4 \finalis
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
        "III"
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
