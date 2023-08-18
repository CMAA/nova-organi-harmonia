\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.215
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Minuisti eum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Minuisti eum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Minuisti eum" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- nu -- í -- sti e -- _ um 
\set stanza = " * " 
pau -- lo mi -- nus ab An -- ge -- lis: _ 
gló -- ri -- a et ho -- nó -- re _ _ 
co -- ro -- ná -- _ sti e -- um. Ps. 
Lau -- dá -- te Dó -- mi -- num o -- mnes An -- ge -- li e -- jus: 
\set stanza = " * " 
lau -- dá -- te e -- um o -- mnes vir -- tú -- tes e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( d'4 ees'4) c'4 ( f'4) f'4 ( bes'4 g'4 f'4 g'\prall a'4 bes'4) bes'4 a'4 ( bes'4 g'4) ~ g'4 ( f'4) f'4 \divisioMaior
 g'4 ( a'4) f'4 ( g'4) g'4 g'4 a'4 ( bes'4) c''4 bes'4 a'4 ( c''4 bes'4) ~ bes'4 ( bes'4) \divisioMaxima
 f'4 ( bes'4) bes'4 bes'4 ( bes'4 bes'4) g'4 f'4 g'4 ( a'4) f'4 ( g'4 a'\prall bes'4 a'4 g'4) a'4 ( bes'4 f'4 f'4) d'4 ( ees'4 d'4) \divisioMaior
 ees'4 d'4 ( ees'4 g'4) g'4 bes'4 ( bes'4 g'4 f'4) f'4 ( d'4) ees'4 ( f'4 ees'4 d'4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
r2*3/2 c'2 d'2*3/2 ~ d'2*5/2 ~ d'2 c'2*3/2 ~ c'4 \divisioMaior
d'2*4/2 ~ d'2 ~ d'2 ees'2 c'2*3/2 d'2 \divisioMaxima
f'2*3/2 ees'2*5/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 bes2*3/2 ~ \divisioMaior
bes4 ~ bes2*3/2 ~ bes4 ~ bes2*4/2 ~ bes2 ~ bes2 a2 bes4 \finalis
r4 g'2*3/2 f'2*5/2 g'2*3/2 ees'2 g'2*3/2 \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2*4/2 ees'2*3/2 d'2*3/2 ~ d'2 ~ d'4 r4 g'2*3/2 f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 g'2*3/2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 a'2*3/2 ~ \divisioMinima
a'4 g'2 ees'2 f'2*3/2 ~ \divisioMaxima
f'2*4/2 ~ f'2*4/2 ees'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2 ~ bes2*3/2 a4 ~ \divisioMaior
a2*4/2 g2 f2 g2 ~ g2*3/2 ~ g2 \divisioMaxima
bes2*3/2 ~ bes2*5/2 ~ bes2 a2*3/2 g2*3/2 f2*4/2 ~ f2*3/2 ~ \divisioMaior
f4 g2*3/2 ees4 f2*4/2 g2 ~ g2 ees2 f4 \finalis
r4 ees'2*3/2 d'2*5/2 ees'2*3/2 ~ ees'2 d'2*3/2 \divisioMaxima
bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 a2*3/2 c'2 bes4 r4 ees'2*3/2 ~ ees'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 ~ ees'2 d'2*3/2 \divisioMaxima
c'2*4/2 bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2 ~ bes2 ~ bes2*3/2 \divisioMaxima
c'2*4/2 bes2*4/2 ~ bes2*3/2 a2*3/2 c'2 bes4 \finalis
}

bassMusic = {
r2*8/2 a2*5/2 g2 ees2*3/2 f4 \divisioMaior
d2*4/2 ~ d2 ~ d2 c2 g,2*3/2 ~ g,2 \divisioMaxima
d2*3/2 c2*5/2 bes,2 ~ bes,2*3/2 ~ bes,2*3/2 ~ bes,2*4/2 ~ bes,2*3/2 ~ \divisioMaior
bes,4 ees2*3/2 ~ ees4 d2*4/2 ~ d2 c2 ~ c2 bes,4 \finalis
r2*9/2 c'2*3/2 ~ c'2 g2*3/2 \divisioMaxima
r2 a2*3/2 g2*4/2 c2*3/2 d2*3/2 ~ d2 g4 r2*12/2 c'2*3/2 ~ c'2 g2*3/2 ~ \divisioMaxima
g2*4/2 ~ g2*4/2 f2*3/2 ~ \divisioMinima
f4 ees2 c2 d2*3/2 ~ \divisioMaxima
d2*4/2 ~ d2*4/2 c2*3/2 d2*3/2 ~ d2 g4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
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
