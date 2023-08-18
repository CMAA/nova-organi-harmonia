\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.223
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Fuit homo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Fuit homo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Fuit homo" }
    \line {}
  }
}

chantText = \lyricmode {
Fu -- it ho -- _ mo _ _ _ _ 
\set stanza = " * " 
mis -- _ _ _ sus a _ De -- o, 
cu -- i no -- men Jo -- án -- nes e -- _ rat: 
hic _ _ ve -- _ _ _ _ _ nit. ℣. 
Ut tes -- ti -- mó -- ni -- um _ _ _ _ _ _ _ 
per -- hi -- bé -- ret de lú -- _ mi -- _ ne, 
et pa -- rá -- re _ Dó -- mi -- no _ _ _ 
\set stanza = " * " 
ple -- bem per -- fé -- _ ctam. _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( ees'4) ees'4 ees'4 ( f'4 ees'4) ~ ees'4 ( ees'4) ees'4 ( c'4.) ees'4 ( f'4 d'4) ees'4 ( f'4 c'4) d'4 ( c'4) ~ c'4 ( bes4) \divisioMaior
 g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) c''4 ( bes'4 c''4) bes'4 ( a'4 bes'4) g'4 ( f'4 g'4) bes'4 ( bes'4 g'4 f'4 g'4) ees'4 ( f'4 ees'4) ees'4 \divisioMaxima
  ees'4 ( aes'4) aes'4 ( g'4 aes'4 f'4) g'4 ( bes'4)  aes'4 ( bes'4 aes'4 ees'4 f'4) \divisioMinima
 ees'4 ees'4 ( g'4) f'4 ( g'4) ees'4 ( c'4.) ees'4 ( ees'4 c'4) c'4 ( bes4) \divisioMaxima
 ees'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4 g'4 ees'4) ees'4 ( g'4 f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( ees'4 ees'4) g'4 ( f'4 ees'4) f'4 ( ees'4) ees'4 \finalis
  ees'4 ees'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 ( c''4 bes'4.) c''4 ( bes'4) d''4 ( bes'4 g'4) \divisioMinima
 bes'4 ( a'4) c''4 ( d''4 bes'4.) d''4 ( c''4 bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) \divisioMaior
 g'4 bes'4 c''4 bes'4 ( c''4 bes'4 g'4) \divisioMinima
 g'4 g'4 ( bes'4 c''4) bes'4 ( bes'4 g'4) bes'4 ( g'4 bes'4) ~ bes'4 ( f'4 g'4 ees'4) ees'4 \divisioMaxima
 bes'4 ( bes'4) bes'4 bes'4 bes'4 ( a'4) c''4 ( d''4) c''4 ( bes'4) bes'4 bes'4 ( a'4) c''4 ( bes'4.) d''4 ( c''4 bes'4 a'4) bes'4 ( g'4) \divisioMaior
 bes'4 ( bes'4) bes'4 bes'4 c''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 g'4) \divisioMinima
 ees'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 a'4 bes'4 g'4.)  f'4 ( aes'4 g'4 ees'4) \finalis

}

altoMusic = {
r2*3/2 g2*3/2 ~ g2 ~ g2*5/4 bes2*3/2 ~ bes2*4/2 g2*3/2 \divisioMaior
bes2*4/2 f'2*5/2 ~ f'2*3/2 d'2*3/2 ees'2 bes2*3/2 ~ bes2*3/2 ~ bes4 c'2 ~ c'2*4/2 ~ c'2 ~ c'2*4/2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2*4/2 g2*5/4 ~ g2*3/2 f2 \divisioMaxima
bes2*4/2 ees'2*4/2 ~ ees'2*3/2 c'2*3/4 d'2*3/2 ees'2 bes2*5/2 ~ bes2 ~ bes4 r4 ees'4 ~ ees'2 f'2*3/2 ~ f'2*7/4 ees'2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*7/4 ~ d'2*5/2 ~ d'2*3/2 ~ d'4 \divisioMaior
g'2 ~ g'4 f'2*4/2 ~ \divisioMinima
f'4 ~ f'4 ees'2 d'2*5/2 ~ d'2*5/2 c'4 \divisioMaxima
d'2*3/2 ees'4 f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2*5/4 ~ f'2*4/2 ~ f'2 \divisioMaior
ees'2*5/2 d'2*3/2 ~ d'2 ~ d'2 ~ d'2 ~ d'2 ~ d'2 ~ d'4 \divisioMinima
ees'2*3/2 f'2*6/2 d'2*3/4 bes2*3/2 ~ bes4 \finalis
}

tenorMusic = {
ees2*3/2 ~ ees2*3/2 ~ ees2 ~ ees2*5/4 ~ ees2*3/2 f2*4/2 d2*3/2 \divisioMaior
ees2*4/2 f2*5/2 bes2*3/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 aes2*3/2 g4 aes2 ~ aes2*4/2 c'2 bes2*4/2 aes4 \divisioMinima
a4 g2*4/2 f2*5/4 ees2*3/2 f2 \divisioMaxima
g2*4/2 ~ g2*4/2 bes2*3/2 ~ bes2*3/4 ~ bes2*3/2 ~ bes2 g2*5/2 aes2 g4 bes2*4/2 ~ bes2*3/2 ~ bes2*7/4 ~ bes2 ~ bes2*3/2 \divisioMinima
c'2 a2*7/4 bes2*5/2 c'2*3/2 bes4 ~ \divisioMaior
bes2 g4 ~ g2*4/2 ~ \divisioMinima
g4 ~ g4 ~ g2 ~ g2*5/2 f2*5/2 g4 \divisioMaxima
bes2*3/2 ~ bes4 ~ bes2 a2 f2*3/2 g2 a2*5/4 bes2*4/2 c'2 \divisioMaior
bes2*5/2 ~ bes2*3/2 d'2 c'2 bes2 a2 g2 bes4 ~ \divisioMinima
bes2*3/2 ~ bes2*6/2 ~ bes2*3/4 aes2*3/2 g4 \finalis
}

bassMusic = {
r2*3/2 r2*3/2 d2 c2*5/4 g,2*3/2 ~ g,2*4/2 ~ g,2*3/2 \divisioMaior
ees2*4/2 d2*5/2 ~ d2*3/2 bes,2*3/2 c2 d2*3/2 ees2*3/2 ~ ees4 r2 f2*4/2 ~ f2 ~ f2*4/2 ~ f4 ~ \divisioMinima
f4 c2*4/2 ~ c2*5/4 ~ c2*3/2 d2 \divisioMaxima
ees2*4/2 ~ ees2*4/2 g2*3/2 ~ g2*3/4 ~ g2*3/2 ees2 ~ ees2*5/2 ~ ees2 ~ ees4 c2*4/2 d2*3/2 g2*7/4 ~ g2 ~ g2*3/2 ~ \divisioMinima
g2 ~ g2*7/4 ~ g2*5/2 ~ g2*3/2 ~ g4 \divisioMaior
ees2 ~ ees4 d2*4/2 ~ \divisioMinima
d4 c4 ~ c2 ~ c2*5/2 ~ c2*5/2 ~ c4 \divisioMaxima
g2*3/2 ~ g4 d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2*5/4 ~ d2*4/2 ~ d2 \divisioMaior
g2*5/2 ~ g2*3/2 ~ g2 ~ g2 ~ g2 ~ g2 g,2 ~ g,4 \divisioMinima
c2*3/2 d2*6/2 bes,2*3/4 ees2*3/2 ~ ees4 \finalis
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
