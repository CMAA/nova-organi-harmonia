\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.214
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Loquetur Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Loquetur Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Loquetur Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
Lo -- qué -- tur 
\set stanza = " * " Dó -- mi -- nus pa -- cem in ple -- _ bem su -- am: 
et su -- per san -- ctos su -- _ os, 
et in e -- os 
qui con -- ver -- tún -- _ tur ad _ i -- psum. Ps. 
Be -- ne -- di -- xí -- sti Dó -- mi -- ne, ter -- ram tu -- am: 
\set stanza = " * " 
a -- ver -- tí -- sti ca -- pti -- vi -- tá -- tem Ja -- cob. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 f'4 ( bes'4 g'4 f'4 bes'4) bes'4  bes'4 bes'4 ( bes'4 bes'4) a'4 ( g'4) \divisioMinima
 g'4 ( bes'4 a'4 bes'4) a'4 ( g'4) g'4 ( a'4) f'4 bes'4 ( bes'4 bes'4) g'4 ( c''4) c''4 ( bes'4) bes'4 ( c''4 bes'4 bes'4 bes'4) \divisioMaior
 g'4 f'4 g'4 g'4 ( bes'4 c''4 bes'4) bes'4 ( bes'4 bes'4) g'4 ( bes'4 f'4) ~ f'4 ( d'4 ees'4) ees'4 ( d'4) \divisioMaxima
 d'4 f'4 g'4 ( f'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 bes'4 ( bes'4) f'4 g'4 ( f'4) ~ f'4 ( \once \tweak #'font-size #-4 ees' ) ees'4 ( f'4 g'4)  g'4 ( aes'4 f'4 ees'4) f'4 ( g'4 f'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
r4 d'2*5/2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*6/2 ~ d'2 f'4 ~ f'2*3/2 ~ f'2 ~ f'2 ~ f'2*5/2 ~ \divisioMaior
f'4 d'2 ees'2*4/2 d'2*5/2 c'2*4/2 bes2 \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ \divisioMaior
d'4 bes2*4/2 c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2*3/2 bes2*4/2 ~ bes2 \finalis
r4 d'2*3/2 ~ d'2 ~ d'2*3/2 ees'2 ~ ees'2 f'2*3/2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 f'2*3/2 ees'2*3/2 d'2 ~ d'4 r4 d'2*3/2 ees'2*3/2 f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 f'2*3/2 ~ \divisioMaxima
f'2*4/2 d'2*4/2 g'2*3/2 ~ \divisioMinima
g'4 f'2 ees'2 f'2*3/2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 f'2*3/2 ees'2*3/2 d'2 ~ d'4 \finalis
}

tenorMusic = {
r4 bes2*5/2 ~ bes2 ~ bes2*3/2 c'2 \divisioMinima
bes2*6/2 a2*3/2 f2*3/2 g2 a2 bes2*5/2 ~ \divisioMaior
bes4 a2 bes2*4/2 ~ bes2*5/2 a2*4/2 g2 \divisioMaxima
r2 a2*3/2 c'2*3/2 bes2 ~ \divisioMaior
bes4 f2*4/2 g2*3/2 ~ g2*3/2 ees2*4/2 aes2*3/2 g2*4/2 f2 \finalis
bes4 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 g2 bes2 ~ bes2*3/2 \divisioMaxima
d'2 c'2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 c'2 bes4 r2*4/2 c'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 ~ ees'2 d'2*3/2 \divisioMaxima
c'2*4/2 bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2 ~ bes2 ~ bes2*3/2 \divisioMaxima
c'2*4/2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 c'2 bes4 \finalis
}

bassMusic = {
r2*6/2 a2 g2*3/2 ~ g2 ~ \divisioMinima
g2*6/2 d2*3/2 ~ d2*3/2 ~ d2 ~ d2 ~ d2*5/2 ~ \divisioMaior
d4 ~ d2 c2*4/2 g2*5/2 ~ g2*4/2 ~ g2 ~ \divisioMaxima
g2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ \divisioMaior
g4 d2*4/2 c2*3/2 bes,2*3/2 aes,2*4/2 ~ aes,2*3/2 bes,2*4/2 ~ bes,2 \finalis
r2*4/2 a2 g2*3/2 c2 ~ c2 d2*3/2 ~ \divisioMaxima
d2 ~ d2 g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g4 bes4 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2 ees'2*3/2 c'2 bes2*3/2 \divisioMaxima
f2*4/2 g2*4/2 ees2*3/2 ~ \divisioMinima
ees4 d2 c2 d2*3/2 ~ \divisioMaxima
d2*4/2 g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g4 \finalis
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
