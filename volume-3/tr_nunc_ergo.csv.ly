\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.333
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Nunc ergo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Nunc ergo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Nunc ergo" }
    \line {}
  }
}

chantText = \lyricmode {
Nunc er -- _ go, _ 
\set stanza = " * " fí -- _ li -- i, _ _ 
au -- dí -- te me: _ _ _ _ _ _ 
Be -- á -- ti, qui _ cus -- tó -- di -- unt vi -- as _ me -- as. _ _ _ ℣. 
Au -- dí -- te dis -- ci -- plí -- nam, et es -- tó -- te sa -- pi -- én -- _ _ tes, 
et no -- lí -- te ab -- jí -- ce -- re _ e -- am. _ _ _ ℣. 
Be -- á -- tus _ ho -- _ mo qui au -- _ dit me, _ _ _ _ _ _ _ _ _ 
et qui ví -- gi -- lat _ ad fo -- res me -- as quo -- _ tí -- di -- e, _ _ _ 
et ob -- sér -- _ vat ad po -- stes ó -- _ _ sti -- i me -- i. _ _ _ _ _ ℣. 
Qui me in -- vé -- ne -- rit, in -- vé -- ni -- et vi -- _ _ _ tam, 
et háu -- _ ri -- et sa -- lú -- tem 
\set stanza = " * " a Dó -- mi -- no. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4 g'4 ( a'4 g'4) f'4 g'4 ( g'4 f'4) \divisioMinima
 f'4 ( bes'4) ~ bes'4 ( c''4) g'4 f'4 ( ees'4) f'4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 g'4 g'4 ( bes'4 a'4 bes'4) g'4 ( bes'4) bes'4 ( bes'4) ~ bes'4 ( c''4 g'4) ~ g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 g'4 ( bes'4) a'4 ( f'4 g'4) f'4 ( ees'4) f'4 ( g'4) f'4 f'4 ( g'4) f'4 f'4 f'4 f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \finalis
 f'4 f'4 ( g'\prall a'4 bes'4) bes'4 bes'4 bes'4 a'4 ( bes'4) bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) f'4 g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( bes'4 g'4) g'4 ( f'4) \divisioMaior
 ees'4 ees'4 g'4 ( bes'4) a'4 ( f'4 g'4) f'4 ( ees'4 f'4) f'4 ( g'4) f'4 f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \finalis
 f'4 f'4 ( g'4 bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( g'4) ~ g'4 ( f'4) f'4 ( g'4) \divisioMinima
 g'4 g'4 bes'4 ( bes'4 g'4) f'4 ( ees'4) f'4 g'4 ( ees'4 f'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4) f'4 g'4 ( f'4) g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 ees'4 g'4 ( bes'4) a'4 ( f'4 g'4) f'4 ( ees'4) f'4 ( g'4) f'4 f'4 ( g'4) f'4 f'4 ( g'4) f'4 f'4 ( g'4) bes'4 ( a'4) bes'4 g'4 ( a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \divisioMaxima
 f'4 ( \once \tweak #'font-size #-4 g' ) f'4 g'4 ( f'4) g'4 ( a'\prall bes'4) f'4 ( g'4 ees'4) f'4 f'4 ( g'4) f'4 g'4 ( f'4) bes'4 ( bes'4 f'4) g'4 ( f'4 ees'4) ees'4 ( g'4 bes'4) bes'4 bes'4 bes'4 ( a'4 bes'4 g'4 f'4.)  bes'4 ( bes'4 g'4 f'4) g'4 ( aes'4 f'4 ees'4) \divisioMinima
  g'4 bes'4 ( g'4) a'4 ( f'4) g'4 ( g'4 f'4) \finalis
 f'4 f'4 ( g'\prall a'4 bes'4) bes'4 a'4 ( bes'4) bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 ( c''4 bes'4 f'4) g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( bes'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 g'4 ( f'4) g'4 ( a'\prall bes'4) f'4 ( g'4 f'4 ees'4) ees'4 \divisioMinima
 ees'4 ees'4 ( g'4 a'\prall bes'4 c''4) bes'4  bes'4 bes'4 bes'4 bes'4 ( a'4 bes'4 g'4 f'4) ~ f'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4 f'4) \divisioMinima
 bes'4 ( bes'4 bes'4) c''4 ( bes'4 a'4 g'4) ~ g'4 ( f'4) g'4 ( bes'4 a'4 g'4 f'4) ~ f'4 ( g'4 ees'4) \divisioMinima
 g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
r2*8/2 f'4 ~ \divisioMinima
f'2*4/2 r2*4/2 c'2*3/2 ~ \divisioMaior
c'4 d'2*4/2 ~ d'2 g'2 f'2 d'2*3/2 c'2 d'2 ~ d'2 r2*3/2 \divisioMaxima
ees'4 ~ ees'2 c'2*3/2 bes2*5/2 c'2*5/2 f'2 ~ f'2*3/2 ees'2*4/2 f'2 ~ f'2*3/2 ~ f'2*3/2 c'2 \finalis
d'4 ~ d'2*5/2 ees'2 f'2*3/2 \divisioMinima
d'2 ees'2 f'2*4/2 c'2 d'2*5/2 ~ d'2*3/2 c'2 \divisioMaior
r2 d'2 ~ d'2*3/2 r2*3/2 c'2*3/2 ~ c'2 f'2*3/2 ~ f'2*4/2 ees'2 ~ ees'2*3/2 c'2*3/2 ~ c'2 \finalis
r4 d'2*3/2 ~ d'2 ~ d'2*4/2 c'2*3/2 d'2 ~ \divisioMinima
d'2 c'2*3/2 ~ c'2*3/2 ~ c'2 d'4 ees'2 ~ ees'2*4/2 ~ ees'2 ~ ees'2 ~ ees'2 bes2*4/2 ~ bes2*3/2 \divisioMaxima
r4 ees'4 ~ ees'2 c'2*3/2 bes2*5/2 c'2*3/2 d'2*3/2 f'2 ~ f'2 ees'4 ~ ees'2*3/2 f'2 ~ f'2*3/2 c'2*3/2 ~ c'2 \divisioMaxima
r2*12/2 c'2*3/2 ~ c'2 f'2*3/2 ees'2*3/2 ~ ees'2*5/2 f'2*11/4 c'2*4/2 ~ c'2*3/2 ees'4 ~ ees'4 d'2 f'2 c'2*3/2 \finalis
r4 d'2*5/2 ~ d'2*4/2 ~ \divisioMinima
d'4 ees'2*3/2 f'2*4/2 d'2 ~ d'2*5/2 ~ d'2*3/2 ~ d'2 ~ \divisioMaior
d'4 ~ d'2 ~ d'2*3/2 bes2*4/2 ~ bes4 ~ \divisioMinima
bes4 ees'2*3/2 ~ ees'2*4/2 ~ ees'2 f'2*5/2 d'2*3/2 c'2*3/2 ~ c'4 \divisioMinima
d'2*3/2 f'2*3/2 d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 \divisioMinima
c'2 ~ c'2 ~ c'2 bes2 a4 \finalis
}

tenorMusic = {
r4 d'4 ~ d'2*4/2 c'2*3/2 ~ \divisioMinima
c'4 d'2*4/2 bes2*3/2 a2*3/2 ~ \divisioMaior
a4 bes2*4/2 ~ bes2 ~ bes2 ~ bes2 a2*3/2 ~ a2 g2 bes2 c'2*3/2 ~ \divisioMaxima
c'4 bes2 f2*3/2 g2*5/2 a2*5/2 bes2 g2*3/2 ~ g4 bes2*3/2 ~ bes2 c'2*3/2 bes2*3/2 ~ bes4 a4 \finalis
bes4 ~ bes2*5/2 ~ bes2 ~ bes2*3/2 ~ \divisioMinima
bes2 ~ bes2 c'2*4/2 ~ c'2 ~ c'2*5/2 bes2*3/2 a2 \divisioMaior
bes2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 a2 f2*3/2 g2*4/2 ~ g2 bes2*3/2 ~ bes2*3/2 a2 \finalis
r4 bes2*3/2 ~ bes2 ~ bes2*4/2 a2*3/2 bes2 ~ \divisioMinima
bes2 g2*3/2 bes2*3/2 ~ bes2 ~ bes4 ees2 f2 g2 bes2 a2 g2 f2*4/2 g2*3/2 \divisioMaxima
c'2 bes2 f2*3/2 g2*5/2 a2*3/2 bes2*3/2 ~ bes2 g2 ~ g4 bes2*3/2 ~ bes2 c'2*3/2 bes2*3/2 a2 \divisioMaxima
d'2*3/2 ~ d'2 ~ d'2*3/2 bes2*4/2 ~ bes2*3/2 a2 bes2*3/2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2*11/4 ~ bes2*4/2 aes2 bes2 ~ bes4 ~ bes2 c'2 bes2 a4 \finalis
f4 ~ f2*5/2 g2*4/2 ~ \divisioMinima
g4 ~ g2*3/2 bes2*4/2 a2 c'2*5/2 bes2*3/2 a2 ~ \divisioMaior
a4 ~ a2 g2*3/2 ~ g2*4/2 ~ g4 ~ \divisioMinima
g4 c'2*3/2 g2*4/2 bes2 ~ bes2*5/2 ~ bes2*3/2 ~ bes2*3/2 a4 \divisioMinima
g2*3/2 f2*3/2 a2*3/2 g2*4/2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g2 ees2 ~ ees2 c2*3/2 \finalis
}

bassMusic = {
r2 bes2*4/2 a2*3/2 ~ \divisioMinima
a4 g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ \divisioMaior
g4 ~ g2*4/2 f2 ees2 d2 ~ d2*3/2 a2 g2 bes2 c'2*3/2 \divisioMaxima
c4 ~ c2 d2*3/2 g2*5/2 r2*5/2 d2 ~ d2*3/2 c4 ~ c2*3/2 d2 f2*3/2 ~ f2*3/2 ~ f2 \finalis
r4 bes,2*5/2 c2 d2*3/2 \divisioMinima
g2 ~ g2 f2*4/2 a2 g2*5/2 ~ g2*3/2 ~ g2 ~ \divisioMaior
g2 ~ g2 bes2*3/2 g2*3/2 f2*3/2 ~ f2 d2*3/2 ~ d2*4/2 c2 ~ c2*3/2 f2*3/2 ~ f2 \finalis
r2*4/2 a2 g2*4/2 ~ g2*3/2 ~ g2 \divisioMinima
f2 ees2*3/2 ~ ees2*3/2 bes,2 ~ bes,4 c2 ~ c2 ~ c2 ~ c2 ~ c2 ~ c2 d2*4/2 ees2*3/2 \divisioMaxima
c2 ~ c2 d2*3/2 g2*5/2 a2*3/2 bes2*3/2 d2 ~ d2 c4 ~ c2*3/2 d2 f2*3/2 ~ f2*3/2 ~ f2 \divisioMaxima
r2*3/2 c'2 bes2*3/2 g2*4/2 f2*3/2 ~ f2 d2*3/2 ees2*3/2 c2*5/2 d2*11/4 ees2*4/2 f2 g2 ~ g4 ~ g2 f2 ~ f2 ~ f4 \finalis
r4 bes,2*5/2 ~ bes,2*4/2 ~ \divisioMinima
bes,4 c2*3/2 d2*4/2 ~ d2 ~ d2*5/2 ~ d2*3/2 ~ d2 ~ \divisioMaior
d4 bes,2 ~ bes,2*3/2 g,2*4/2 c4 ~ \divisioMinima
c4 ~ c2*3/2 ~ c2*4/2 ~ c2 d2*5/2 g2*3/2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g2*3/2 d2*3/2 ~ d2*3/2 bes,2*4/2 c2*3/2 ~ c4 \divisioMinima
ees2 ~ ees2 ees,2 f,2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Tract"
        "8"
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
