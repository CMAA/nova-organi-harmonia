\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.110
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine in tua misericordia" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine in tua misericordia"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine in tua misericordia" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- _ ne, 
\set stanza = " * " in tu -- a mi -- se -- _ ri -- cór -- di -- a 
spe -- _ rá -- vi: 
ex -- sul -- tá -- vit cor me -- um in sa -- lu -- tá -- ri _ tu -- _ o: 
can -- tá -- bo Dó -- mi -- no, 
qui bo -- _ _ na trí -- _ bu -- it mi -- hi. Ps. 
Us -- que -- quo Dó -- mi -- ne o -- bli -- vi -- scé -- ris me in -- fi -- nem? 
\set stanza = " * " 
ús -- que -- quo a -- vér -- tis fá -- ci -- em tu -- am a me? 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   ees'4 ( g'4) g'4 ( f'4) ~ f'4 ( ees'4 f'4) f'4 ( ees'4) \divisioMinima
 ees'4 ( \once \tweak #'font-size #-4 c' ) ees'4 ( f'4) f'4 g'4 g'4 bes'4 ( bes'4 g'4) g'4 ( f'4) f'4 ( \once \tweak #'font-size #-4 g' ) ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaior \forceBreak

  ees'4 ( f'4) aes'4 ( aes'4 f'4 g'\prall aes'4 g'4 f'4) ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaxima
 ees'4 ees'4 ees'4 ( f'4 g'4) g'4 ( f'4) g'4 ( bes'4) bes'4 ( bes'4 bes'4) bes'4 \divisioMinima \forceBreak

 bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( d''4 c''4) bes'4 ( a'4) bes'4 ( d''4 c''4) c''4 ( bes'4) ~ bes'4 ( g'4) g'4 bes'4 ( bes'4 g'4) g'4 ( a'\prall bes'4) \divisioMaxima
 ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 ees'4 ees'4 ( f'4 g'4 \forceBreak
) f'4 ( ees'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 g'4 ( a'\prall bes'4) bes'4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4 f'4.)  g'4 ( aes'4) g'4 \divisioMinima
 g'4 bes'4 ( bes'4 g'4) f'4 ( g'4 \forceBreak
)  g'4 ( aes'4 f'4 g'\prall aes'4 g'4 f'4) ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \finalis
 ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 \finalis \forceBreak

  ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 ( f'4) g'4 ( f'4 ees'4 f'4) \finalis

}

altoMusic = {
r2*9/2 \divisioMinima
r2*5/2 ees'2 f'2*3/2 d'2 ~ d'2 c'2 ~ c'2*4/2 ~ c'2 ~ c'2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ c'2 d'2*4/2 bes2 \divisioMaxima
r2*5/2 bes2 ~ bes2 ees'2*4/2 \divisioMinima
d'2 g'2*3/2 f'2 ees'2*4/2 d'2*3/2 ~ d'4 c'2*3/2 ~ c'2 bes4 \divisioMaxima
r2*4/2 c'2*3/2 bes2*3/2 ~ bes2*3/2 ~ bes2 \divisioMaior
d'2*3/2 ees'2 f'2*11/4 ~ f'2 ees'4 ~ \divisioMinima
ees'4 ~ ees'2*3/2 ~ ees'2 c'2 ~ c'2*5/2 ~ c'2 d'2*4/2 bes2 \finalis
ees'2*3/2 g'2*6/2 ~ g'2 ~ g'2 ~ g'2 \divisioMaxima
d'2*6/2 f'2*3/2 ~ f'2*3/2 ees'4 ~ ees'2*3/2 ~ ees'2*6/2 ~ \divisioMinima
ees'2 ~ ees'2*3/2 f'2 \divisioMaxima
ees'2 ~ ees'2*4/2 ~ ees'2*3/2 ~ \divisioMinima
ees'2*3/2 d'2 ~ \divisioMaxima
d'2 ees'2*3/2 f'2 ~ f'2 ~ f'4 ~ f'2 ees'2*3/2 d'4 \finalis
}

tenorMusic = {
r2*3/2 bes2*4/2 c'2 ~ \divisioMinima
c'2 ~ c'2*3/2 bes2 ~ bes2*3/2 g2 bes2 ~ bes2 aes2*4/2 g2 ~ g2 f2 aes2 f2*3/2 g2 bes2*4/2 g2 \divisioMaxima
r2 g2*3/2 ~ g2 ~ g2 ~ g2*4/2 ~ \divisioMinima
g2 ~ g2*3/2 ~ g2 ~ g2*4/2 ~ g2*3/2 f4 ees2*3/2 d2 ~ d4 \divisioMaxima
r2 g2 ~ g2*3/2 ~ g2*3/2 ees2*3/2 d2 \divisioMaior
g2*3/2 ~ g2 bes2*11/4 ~ bes2 ~ bes4 ~ \divisioMinima
bes4 ~ bes2*3/2 ~ bes2 ~ bes2 aes2*5/2 g2 bes2*4/2 aes4 g4 \finalis
r2*3/2 ees'2*6/2 ~ ees'2 ~ ees'2 d'2 \divisioMaxima
bes2*6/2 ~ bes2*3/2 f2*3/2 bes4 r2*3/2 g2*6/2 ~ \divisioMinima
g2 ~ g2*3/2 f2 \divisioMaxima
bes2 g2*4/2 ~ g2*3/2 ~ \divisioMinima
g2*3/2 ~ g2 ~ \divisioMaxima
g2 ~ g2*3/2 bes2 f2 bes4 ~ bes2 c'2*3/2 bes4 \finalis
}

bassMusic = {
r2*9/2 \divisioMinima
bes2 aes2*3/2 ees2 ~ ees2*3/2 bes,2 ~ bes,2 c2 ~ c2*4/2 ~ c2 bes,2 aes,2 ~ aes,2 ~ aes,2*3/2 c2 bes,2*4/2 ees2 ~ \divisioMaxima
ees2 ~ ees2*3/2 ~ ees2 d2 c2*4/2 \divisioMinima
f2 ees2*3/2 d2 c2*4/2 g,2*4/2 ~ g,2*3/2 ~ g,2 ~ g,4 \divisioMaxima
c2 ~ c2 ~ c2*3/2 g,2*3/2 ~ g,2*3/2 bes,2 ~ \divisioMaior
bes,2*3/2 c2 d2*11/4 ees2 ~ ees4 ~ \divisioMinima
ees4 g2*3/2 ees2 f2 ~ f2*5/2 c2 bes,2*4/2 ees2 \finalis
r2*9/2 d'2 c'2 g2 ~ \divisioMaxima
g2*6/2 d2*3/2 ~ d2*3/2 ees4 ~ ees2*3/2 ~ ees2*6/2 \divisioMinima
d2 c2*3/2 d2 \divisioMaxima
ees2 ~ ees2*4/2 d2*3/2 \divisioMinima
c2*3/2 g,2 \divisioMaxima
bes,2 c2*3/2 d2 ~ d2 ~ d4 ees2 bes2*3/2 ~ bes4 \finalis
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
