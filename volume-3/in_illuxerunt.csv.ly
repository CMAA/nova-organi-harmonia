\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.302
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Illuxerunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Illuxerunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Illuxerunt" }
    \line {}
  }
}

chantText = \lyricmode {
Il -- lu -- xe -- runt 
\set stanza = " * " co -- ru -- _ sca -- ti -- ó -- _ nes tu -- æ _ or -- bi ter -- ræ: 
com -- mó -- ta est, _ _ _ 
et con -- tré -- _ mu -- it ter -- ra. Ps. 
Quam di -- lé -- cta ta -- ber -- ná -- cu -- la tu -- a, Dó -- mi -- ne vir -- tú -- tum! 
\set stanza = " * " 
con -- cu -- pí -- scit et dé -- fi -- cit á -- ni -- ma me -- a in á -- tri -- a Dó -- mi -- ni. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( \once \tweak #'font-size #-4 c' ) f'4 g'4 ( bes'4) bes'4 \divisioMinima
 bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( f'4) g'4 ( a'4) f'4 ( g'4) bes'4 ( a'4 bes'4) ees'4 ( f'4) g'4 ( c''4 bes'4) bes'4 ( c''4 bes'4) ~ bes'4 ( bes'4) \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 f'4 ( g'4 f'4 d'4) d'4 \divisioMaxima
 f'4 a'4 ( a'4 bes'4) g'4 g'4 bes'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( \once \tweak #'font-size #-4 ees' ) g'4 ( f'4) bes'4 ( bes'4) g'4 ( f'4) f'4 ( d'4) ees'4 ( f'4 \tiny ees' d' 4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
d'4 \tiny c' \normalsize4 c'4 d'2 ~ d'4 ~ \divisioMinima
d'4 ees'2 d'2 ~ d'2*4/2 ~ d'2 ~ d'2*5/2 g'2*3/2 ees'2*3/2 f'2 \divisioMinima
d'2*3/2 a2*4/2 ~ a4 \divisioMaxima
d'4 ~ d'2*5/2 ees'2*3/2 d'2*3/2 ~ \divisioMaior
d'2 bes2 ~ bes2 ~ bes2*4/2 ~ bes2 c'2*4/2 bes4 \finalis
r4 g'2 ~ g'2*4/2 f'2*5/2 ~ \divisioMinima
f'2*4/2 ees'2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*3/2 g'2*6/2 f'2 ~ \divisioMinima
f'2 ees'2*3/2 d'2 ~ d'2 ~ d'2 r4 g'2*3/2 f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 g'2*3/2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 g'2*3/2 ~ \divisioMinima
g'4 ees'2 ~ ees'2 g'2*3/2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 c'2*3/2 ~ c'2 bes4 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2 ~ bes4 ~ \divisioMinima
bes4 ~ bes2 ~ bes2 a2*4/2 c'2 bes2*5/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 \divisioMinima
a2*3/2 g2*4/2 f4 ~ \divisioMaxima
f4 bes2*5/2 ~ bes2*3/2 a2*3/2 ~ \divisioMaior
a2 g2 ees2 f2*4/2 ~ f2 ~ f2*4/2 ~ f4 \finalis
r4 f'2 ees'2*4/2 ~ ees'2*5/2 \divisioMinima
d'2*4/2 c'2 g2*3/2 \divisioMaxima
d'2 c'2 bes2*3/2 ~ bes2*6/2 ~ bes2 ~ \divisioMinima
bes2 ~ bes2*3/2 a2 c'2 ~ c'4 bes4 r4 ees'2*3/2 ~ ees'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 ~ ees'2 d'2*3/2 ~ \divisioMaxima
d'2 c'2 bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2 c'2 d'2*3/2 \divisioMaxima
a2*4/2 g2*4/2 ~ g2*3/2 ~ g2*3/2 f2 d4 \finalis
}

bassMusic = {
r2*3/2 a2 g4 ~ \divisioMinima
g4 ~ g2 ~ g2 ~ g2*4/2 ~ g2 ~ g2*5/2 ees2*3/2 c2*3/2 d2 ~ \divisioMinima
d2*3/2 ~ d2*4/2 ~ d4 \divisioMaxima
bes,4 ~ bes,2*5/2 c2*3/2 d2*3/2 ~ \divisioMaior
d2 ees2 ~ ees2 d2*4/2 bes,2 ~ bes,2*4/2 ~ bes,4 \finalis
r2*12/2 \divisioMinima
r2*9/2 \divisioMaxima
d2 ~ d2 g2*3/2 ees2*6/2 d2 ~ \divisioMinima
d2 c2*3/2 d2 ~ d2 g2 r2*12/2 c'2*3/2 ~ c'2 g2*3/2 \divisioMaxima
d2 ~ d2 g2*4/2 ees2*3/2 ~ \divisioMinima
ees4 c2 ~ c2 g,2*3/2 \divisioMaxima
d2*4/2 g2*4/2 f2*3/2 ees2*3/2 d2 g,4 \finalis
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
