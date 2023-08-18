\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.393
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sub umbra" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sub umbra"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sub umbra" }
    \line {}
  }
}

chantText = \lyricmode {
Sub um -- bra il -- lí -- us, 
\set stanza = " * " quem de -- si -- de -- rá -- ve -- ram, se -- di: _ _ 
et fru -- ctus e -- jus 
dul -- _ cis gút -- tu -- ri me -- o. Ps. 
Quam di -- lé -- cta ta -- ber -- ná -- cu -- la tu -- a, Dó -- mi -- ne vir -- tú -- tum! 
con -- cu -- pí -- scit et dé -- fi -- cit á -- ni -- ma me -- a, in á -- tri -- a Dó -- mi -- ni. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   ees'4 ees'4 g'4 bes'4 g'4 bes'4 ( bes'4) \divisioMinima
 bes'4 ( bes'4 bes'4) g'4 g'4 g'4 g'4 ( a'\prall bes'4) f'4 ( g'4 f'4 ees'4 f'4) f'4 ( ees'4) \divisioMinima
 ees'4 ( f'\prall g'4 f'4 g'4)  g'4 ( f'4) g'4 ( aes'4 f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 ( g'4) g'4 ( a'\prall bes'4 a'4 g'4) bes'4 ( bes'4) bes'4 ( c''4 d''4 c''4 bes'4 c''4) c''4 ( bes'4) \divisioMaior
 bes'4 ( bes'4) a'4 ( c''4 bes'4 bes'4) g'4 \divisioMinima
 g'4 ( ees'4) f'4 ( g'4)  g'4 ( bes'4 f'4 g'\prall aes'4 g'4 f'4) f'4 ( g'4 a'4 g'4 f'4 f'4) f'4 ( ees'4) \finalis
 ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 a'4 bes'4 g'4 g'4 \finalis
 ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 ( f'4) g'4 ( f'4 ees'4 f'4) \finalis

}

altoMusic = {
r4 ees'2*3/2 c'4 d'2 \divisioMinima
f'2*4/2 ees'2 ~ ees'2*3/2 r2*5/2 bes2 \divisioMinima
ees'2 ~ ees'2*3/2 c'2*4/2 ~ c'2*3/2 \divisioMaxima
ees'2 ~ ees'2*5/2 ~ ees'2 f'2*6/2 ~ f'2 \divisioMaior
d'2 ~ d'2*4/2 ~ d'4 \divisioMinima
ees'2*4/2 ~ ees'2 ~ ees'2*5/2 ~ ees'2 d'2*4/2 bes2 \finalis
r4 g'4 ~ g'2*4/2 f'2*5/2 g'2*4/2 ~ g'2 ~ \divisioMaxima
g'2 ~ g'2*3/2 f'2*6/2 ~ f'2*3/2 ees'2*3/2 f'2 ees'4 \finalis
r4 g'2*5/2 f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ~ g'2 \divisioMaxima
d'2 ~ d'2*4/2 a'2*3/2 ~ \divisioMinima
a'2*3/2 g'2 ~ \divisioMaxima
g'2 f'2*5/2 ees'2 f'4 ees'2 c'2*3/2 d'4 \finalis
}

tenorMusic = {
r4 bes2*4/2 ~ bes2 ~ \divisioMinima
bes2*4/2 ~ bes2 ~ bes2*3/2 ~ bes2*5/2 g2 \divisioMinima
bes2 ~ bes2*3/2 aes2*4/2 g2*3/2 \divisioMaxima
c'2 bes2*5/2 g2 f2*6/2 bes2 \divisioMaior
d'2 c'2*4/2 bes4 ~ \divisioMinima
bes2*4/2 ~ bes2 aes2*5/2 g2 bes2*4/2 g2 \finalis
r2 ees'2*4/2 d'2*5/2 ees'2*4/2 d'2 \divisioMaxima
r2 bes2*3/2 ~ bes2*6/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 ~ bes4 \finalis
ees'2*6/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 d'2 \divisioMaxima
c'2 bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes2*3/2 ~ bes2 ~ \divisioMaxima
bes2 ~ bes2*5/2 ~ bes2 ~ bes4 ~ bes2 ~ bes2*3/2 ~ bes4 \finalis
}

bassMusic = {
r4 g2*4/2 ~ g2 \divisioMinima
d2*4/2 ~ d2 c2*3/2 d2*5/2 ees2 \divisioMinima
g2 ees2*3/2 f2*4/2 c2*3/2 ~ \divisioMaxima
c2 ~ c2*5/2 ~ c2 d2*6/2 ~ d2 \divisioMaior
g2 ~ g2*4/2 ~ g4 \divisioMinima
ees2*4/2 c2 ~ c2*5/2 ~ c2 bes,2*4/2 ees2 \finalis
r2*11/2 c'2*4/2 g2 \divisioMaxima
ees2 ~ ees2*3/2 ~ ees2*6/2 d2*3/2 c2*3/2 d2 ees4 \finalis
r2*9/2 \divisioMinima
r2 c'2*3/2 g2 ~ \divisioMaxima
g2 ~ g2*4/2 f2*3/2 ~ \divisioMinima
f2*3/2 ees2 ~ \divisioMaxima
ees2 d2*5/2 c2 d4 ees2 ~ ees2*3/2 bes,4 \finalis
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
        "5"
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
