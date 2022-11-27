\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.309
%(volume.page)

global = {
 \key f \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ave Rex noster" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ave Rex noster"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ave Rex noster" }
    \line {}
  }
}

chantText = \lyricmode {
A -- _ ve, 
\set stanza = " * " Rex no -- _ ster, Fi -- li Da -- vid. _ Red -- _ ém -- ptor mun -- _ di, 
quem pro -- phé -- tæ præ -- di -- xé -- runt Sal -- va -- tó -- rem dó -- mu -- i Is -- ra -- ël _ es -- se ven -- tú -- rum. 
Te e -- nim _ ad sa -- lu -- tá -- rem ví -- cti -- mam Pa -- _ ter mi -- sit in mun -- dum, 
quem ex -- spe -- ctá -- _ bant o -- mnes san -- cti 
ab o -- rí -- _ _ _ gi -- ne mun -- di, 
et _ _ _ nunc: _ <<Ho -- sán -- na Fí -- li -- o Da -- vid. 
Be -- ne -- dí -- ctus qui vé -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- _ sán -- na in ex -- cél -- sis>>. }

chantMusic = {
\tieDown   aes'4 ( aes'4 f'4) g'4 ( ees'4) ees'4  g'4 ( aes'\prall bes'4 c''4) g'4 ( f'4 aes'4) ~ aes'4 ( f'4) f'4 \divisioMinima
 aes'4 aes'4 aes'4  aes'4 ( c''4 des''4 c''4 bes'4) c''4 ( bes'4) \divisioMinima \forceBreak

 bes'4 ( aes'4) ~ aes'4 ( g'4) f'4 ( \once \tweak #'font-size #-4 g' ) ees'4 ( g'4 aes'\prall bes'4 c''4) g'4 ( f'4 aes'4) ~ aes'4 ( f'4) f'4 \divisioMaxima
 f'4 ( \once \tweak #'font-size #-4 g' ) f'4 ( ees'4) f'4 aes'4 aes'4 ( g'4) f'4 ( ees'4 \forceBreak
) f'4 ( g'\prall aes'4 g'4) f'4 ( ees'4) \divisioMinima
 g'4 f'4 ( ees'4) f'4 ( g'4) g'4 g'4 bes'4 ( c''4) aes'4 ( g'4) ees'4 g'4 ( f'4) aes'4 ( bes'4 aes'4) ~ aes'4 ( g'4) bes'4 ( c''4) aes'4 ( g'4 \forceBreak
) ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( ees'4 f'\prall g'4 aes'4) g'4 ( f'4) \divisioMaxima
 f'4 ( g'\prall aes'4) aes'4 ( g'4 f'4 g'4) f'4 ( ees'4) f'4 ( g'4 f'4) \divisioMinima
 ees'4 f'4 aes'4 ( g'4) aes'4 ( bes'4) aes'4 ( g'4 \forceBreak
) f'4 ( g'4) f'4 ( ees'4) ees'4 \divisioMinima
 g'4 bes'4 ( c''4 bes'4) aes'4 ( g'4) f'4 ( ees'4) g'4 aes'4 f'4 ( g'\prall aes'4 f'4) f'4 \divisioMaxima
 f'4 ( ees'4) aes'4 bes'4 ( c''4)  c''4 ( des''4 c''4 bes'4 \forceBreak
) c''4 ( bes'4) aes'4 ( g'4) bes'4 ( c''4) aes'4 ( g'4) ees'4 ( f'\prall g'4 aes'4) g'4 ( f'4) \divisioMaior
 ees'4 f'4 ( g'4) g'4 aes'4 ( bes'4 aes'4) g'4 ( aes'4 f'4) g'4 ( aes'4 g'4) f'4 ( ees'4 \forceBreak
) g'4 ( aes'4 g'4) f'4 ( g'4 f'4) f'4 \divisioMaxima
 ees'4 ( f'4 g'4 g'4) ~ g'4 ( aes'4) bes'4 ( c''4 bes'4) aes'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( aes'4 g'4) aes'4 ( aes'4 g'4) \divisioMinima
 ees'4 g'4 f'4 g'4 \forceBreak
 aes'4 ( bes'4) bes'4 ( aes'4) f'4 ( g'4) g'4 \divisioMaior
 ees'4 f'4 ( g'4) g'4 aes'4 ( g'4) f'4 ( ees'4) f'4 ( g'\prall aes'4 g'4) f'4 ( ees'4) \divisioMinima
 ees'4 g'4 ( aes'4) bes'4 \forceBreak
 bes'4 ( c''4 bes'4) aes'4 ( g'4) f'4 ( g'4) g'4 \divisioMaior
  f'4 ( c''4) des''4 ( c''4) bes'4 ( c''4 bes'4) aes'4 ( g'4 f'4 f'4) ees'4 g'4 ( f'4) aes'4 ( \once \tweak #'font-size #-4 bes' ) f'4 \finalis

}

altoMusic = {
c'2*3/2 ~ c'2 ees'4 ~ ees'2*4/2 c'2 ~ c'2*4/2 \divisioMinima
aes'2*3/2 ~ aes'2 f'2*3/2 ~ f'2 \divisioMinima
r4 ees'2*3/2 ~ ees'2 ~ ees'2*3/2 ~ ees'2 ~ ees'2 des'2*3/2 c'4 ~ \divisioMaxima
c'2 ~ c'2 ~ c'2 ees'2*4/2 c'2*4/2 ~ c'2 \divisioMinima
r2 ees'4 ~ ees'2*4/2 f'2 ees'2*3/2 c'2 ~ c'2 ~ c'2*3/2 d'2*4/2 ees'2*3/2 ~ ees'2 ~ ees'2 c'2 ~ \divisioMaxima
c'2*3/2 ~ c'2*4/2 bes2 c'2*3/2 ~ \divisioMinima
c'2*4/2 ees'2*4/2 ~ ees'2 bes2 ~ bes2 f'2*3/2 ees'2 ~ ees'2 ~ ees'2 c'2*4/2 ~ c'4 \divisioMaxima
f'4 ees'4 ~ ees'4 f'2 aes'2*4/2 f'2 ees'2 f'2 ees'2 ~ ees'2*4/2 c'2*3/2 ~ c'2 ees'2*7/2 ~ ees'2*3/2 ~ ees'2 c'2*3/2 ~ c'2*3/2 ~ c'4 \divisioMaxima
ees'2 ~ ees'2 ~ ees'2 ~ ees'2*3/2 c'2 d'2*3/2 ees'2*4/2 ~ ees'2*3/2 ~ ees'2 c'2 d'2 ees'4 ~ \divisioMaior
ees'4 bes2 ~ bes4 ees'2*4/2 ~ ees'2*4/2 ~ ees'2*3/2 ~ ees'2*3/2 f'2*3/2 ees'2 d'2 ees'4 f'2*4/2 ~ f'2*3/2 ees'2*4/2 ~ ees'4 c'2 des'2 c'4 \finalis
}

tenorMusic = {
aes2*3/2 c'2*3/2 bes2*4/2 aes2 ~ aes2*4/2 \divisioMinima
des'2*3/2 c'2 bes2*3/2 des'2 \divisioMinima
r4 c'2*3/2 ~ c'2 bes2*3/2 ~ bes2 ~ bes2 ~ bes2*3/2 aes4 ~ \divisioMaxima
aes2 ~ aes2 ~ aes2 ~ aes2 g2 f2*4/2 g2 \divisioMinima
r4 bes2 ~ bes2*4/2 g2 ~ g2*3/2 ees2 ~ ees2 ~ ees2*3/2 f2*4/2 g2*3/2 aes2 bes2 ~ bes4 aes4 \divisioMaxima
f2*3/2 ees2*4/2 ~ ees2 ~ ees2*3/2 \divisioMinima
aes2*4/2 ~ aes2*4/2 ~ aes2 ~ aes2 g2 ~ g2*3/2 ~ g2 aes2 bes2 ~ bes2*4/2 aes4 \divisioMaxima
c'2*3/2 des'2 ees'2*4/2 des'2 c'2 des'2 c'2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 ~ c'2*7/2 bes2*3/2 aes2 g2*3/2 ~ g2*3/2 aes4 \divisioMaxima
bes2 ~ bes2 aes2 g2*3/2 f2 ~ f2*3/2 c'2*4/2 bes2*3/2 aes2 ~ aes2 ~ aes2 bes4 ~ \divisioMaior
bes4 ~ bes2 ees4 ~ ees2 g2 aes2*4/2 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 c'2 ~ c'2 ~ c'4 aes2*4/2 ~ aes2*3/2 ~ aes2*4/2 bes4 aes2 ~ aes2 ~ aes4 \finalis
}

bassMusic = {
f2*3/2 ees2*3/2 ~ ees2*4/2 ~ ees2 f2*4/2 ~ \divisioMinima
f2*3/2 ~ f2 bes2*3/2 ~ bes2 \divisioMinima
r4 c'2*3/2 aes2 g2*3/2 f2 ees2 f2*3/2 ~ f4 \divisioMaxima
r2 g2 f2 c2 ~ c2 aes,2*4/2 c2 \divisioMinima
r4 g2 ees2*4/2 d2 c2*3/2 bes,2 aes,2 c2*3/2 ~ c2*4/2 ~ c2*3/2 ~ c2 ~ c2 f2 \divisioMaxima
aes,2*3/2 c2*4/2 g,2 aes,2*3/2 ~ \divisioMinima
aes,2*4/2 c2*4/2 ees2 ~ ees2 ~ ees2 d2*3/2 c2 ~ c2 ~ c2 f2*4/2 ~ f4 \divisioMaxima
aes2*3/2 ~ aes2 ~ aes2*4/2 ~ aes2 c'2 ~ c'2 ~ c'2 bes2*4/2 aes2*3/2 f2 c2*7/2 ~ c2*3/2 ~ c2 ees2*3/2 f2*3/2 ~ f4 \divisioMaxima
g2 ees2 ~ ees2 ~ ees2*3/2 f2 c2*3/2 ~ c2*4/2 ees2*3/2 c2 f2 ~ f2 ees4 ~ \divisioMaior
ees4 d2 ~ d4 c2 ~ c2 ~ c2*4/2 g2*3/2 ees2*3/2 d2*3/2 c2 ~ c2 ~ c4 ees2*4/2 des2*3/2 c2*4/2 ees4 ~ ees2 f2 ~ f4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Antiphon"
        "I"
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
