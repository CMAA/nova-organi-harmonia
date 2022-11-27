\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.354
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedicite Dominum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedicite Dominum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedicite Dominum" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- ne -- di -- ci -- te Dó -- mi -- num 
\set stanza = " * " o -- mnes An -- ge -- _ li e -- jus: _ 
po -- tén -- tes vir -- tú -- te, 
qui fá -- _ ci -- tis ver -- bum e -- jus, 
ad au -- di -- én -- dam _ vo -- cem ser -- mó -- _ num e -- jus. T.P. 
Al -- le -- _ lú -- ia, al -- le -- _ lú -- ia. Ps. 
Bé -- ne -- dic á -- ni -- ma me -- a Dó -- mi -- no: 
\set stanza = " * " 
et ó -- mni -- a quæ in -- tra me sunt, nó -- mi -- ni san -- cto e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 f'4 g'4 ( bes'4) bes'4 bes'4 a'4 ( bes'4) bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( c''4) c''4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) \divisioMaior
 f'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 bes'4 ( bes'4) a'4 ( g'4) \divisioMaior
 f'4 ( ees'4 f'4) g'4 ( f'4) bes'4 ( a'4) bes'4 bes'4 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( bes'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 g'4) \divisioMaxima
 f'4 g'4 g'4 ( c''4 bes'4) a'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) g'4 ( f'4) f'4 ( ees'4) \divisioMinima
 ees'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4) bes'4 ( bes'4 g'4 f'4) f'4 ( d'4) ees'4 ( f'4 \tiny ees' d' 4) d'4 \finalis
 f'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( bes'4) ~ bes'4 ( f'4) a'4 ( c''4 bes'4) bes'4 ( a'4) \divisioMinima
 bes'4 bes'4 ( bes'4 f'4) g'4 ( f'4 d'4) ees'4 ( f'4 \tiny ees' d' 4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*3/2 f'2 ~ f'2 ~ f'2 ~ f'2 ~ f'2 ~ f'2*3/2 ~ \divisioMaior
f'4 d'2*4/2 ~ d'2*4/2 \divisioMaior
c'2*3/2 ees'2*6/2 f'2 ~ f'2 d'2 ~ d'2*3/2 \divisioMaxima
c'2 ~ c'2*4/2 f'2 ees'2 d'2 c'2 \divisioMinima
ees'2 ~ ees'2 d'2*4/2 ~ d'2 c'2*4/2 bes4 \finalis
d'2 ees'2 f'2 ~ f'2*3/2 ~ f'2 ~ \divisioMinima
f'4 bes2*3/2 d'2*3/2 c'2*4/2 bes4 \finalis
r4 g'2*3/2 ~ g'2*3/2 f'2 ees'2*3/2 f'2*3/2 \divisioMaxima
d'2 ~ d'2*5/2 ees'2*4/2 \divisioMinima
c'2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 r4 g'2*3/2 f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 g'2*3/2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 a'2*3/2 ~ \divisioMinima
a'4 g'2*4/2 f'2*3/2 ~ \divisioMaxima
f'2*4/2 ~ f'2*4/2 ~ f'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \finalis
}

tenorMusic = {
bes2 ~ bes2*4/2 c'2*3/2 bes4 ~ \divisioMinima
bes2*3/2 ~ bes2 f2 g2 a2 bes2 c'2*3/2 ~ \divisioMaior
c'4 bes2*4/2 g2*4/2 ~ \divisioMaior
g2*3/2 bes2*6/2 ~ bes2 c'2 ~ c'2 ~ c'2 bes4 \divisioMaxima
a2 g2*4/2 ~ g2 ~ g2 ~ g2 ~ g2 ~ \divisioMinima
g2 ees2 f2*4/2 g2 ~ g2*4/2 f4 \finalis
bes2 ~ bes2 ~ bes2 c'2*3/2 d'2 ~ \divisioMinima
d'4 f2*3/2 ~ f2*3/2 ~ f2*4/2 ~ f4 \finalis
f'2*4/2 ees'2*3/2 d'2 ~ d'4 c'2 d'2*3/2 \divisioMaxima
c'2 bes2*5/2 ~ bes2*4/2 ~ \divisioMinima
bes2 ~ bes2*3/2 a2*3/2 c'2 bes4 f'4 ees'2*3/2 ~ ees'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 ~ ees'2 d'2*3/2 \divisioMaxima
c'2*4/2 bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2*4/2 ~ bes2*3/2 \divisioMaxima
c'2*4/2 d'2*4/2 c'2*3/2 bes2*3/2 a2 bes4 \finalis
}

bassMusic = {
r2 g2*4/2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g2*3/2 d2 ~ d2 ~ d2 ~ d2 ~ d2 f2*3/2 ~ \divisioMaior
f4 bes,2*4/2 ~ bes,2*4/2 \divisioMaior
c2*3/2 ~ c2*6/2 d2 ~ d2 ~ d2 g2 ~ g4 \divisioMaxima
d2 ees2*4/2 d2 c2 ~ c2 ~ c2 ~ \divisioMinima
c2 ~ c2 bes,2*4/2 ~ bes,2 ~ bes,2*4/2 ~ bes,4 ~ \finalis
bes,2 c2 d2 ~ d2*3/2 ~ d2 ~ \divisioMinima
d4 ~ d2*3/2 bes,2*3/2 ~ bes,2*4/2 ~ bes,4 \finalis
r2*12/2 bes2*3/2 \divisioMaxima
g2 ~ g2*5/2 ~ g2*4/2 ~ \divisioMinima
g2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g4 r2*12/2 c'2*3/2 ~ c'2 g2*3/2 ~ \divisioMaxima
g2*4/2 ~ g2*4/2 f2*3/2 ~ \divisioMinima
f4 ees2*4/2 d2*3/2 ~ \divisioMaxima
d2*4/2 ~ d2*4/2 ~ d2*3/2 ~ d2*3/2 ~ d2 g4 \finalis
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
