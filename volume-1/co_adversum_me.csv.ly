\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.333
%(volume.page)

global = {
 \key ees \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Adversum me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Adversum me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Adversum me" }
    \line {}
  }
}

chantText = \lyricmode {
Ad -- vér -- sum me _ 
\set stanza = " * " ex -- er -- ce -- bán -- tur, qui se -- dé -- bant in por -- ta 
et in me psal -- lé -- bant qui bi -- bé -- bant vi -- num: 
e -- go ve -- ro o -- ra -- ti -- ó -- nem me -- _ am 
ad te, Dó -- mi -- ne: 
tem -- pus be -- ne -- plá -- ci -- ti, _ De -- us, 
in mul -- ti -- tú -- di -- ne _ mi -- se -- ri -- cór -- _ _ di -- æ tu -- æ. }

chantMusic = {
\tieDown   g'4 ees'4 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMinima
 bes'4 ( bes'4)  g'4 ( a'4) g'4 ( f'4) g'4 ( a'4) g'4 ( a'4) \divisioMinima
 f'4 ees'4  g'4 ( a'4 \forceBreak
) g'4 ( a'4) f'4 ees'4 ( f'\prall g'4) f'4 \divisioMaior
 g'4 ( bes'4) bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4)  bes'4 g'4 ( a'4) g'4 ( a'4) \divisioMinima
 f'4 ees'4  g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' )  g'4 ( a'4) g'4 \divisioMaxima \forceBreak

 bes'4 g'4 bes'4 ( c''4 bes'4)  g'4 ( a'4 g'4) \divisioMinima
 g'4 ees'4 f'4 ( g'4)  g'4 ( a'4) g'4 g'4 ( f'4) ~ f'4 ( ees'4 f'4) f'4 ( ees'4) \divisioMaior \forceBreak

  a'4  g'4 ( a'4 bes'4 a'4 g'4 f'4 g'\prall a'4 g'4 f'4) ees'4 ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaxima
  g'4 ( a'4) g'4 ( f'4) f'4 ( g'4 f'4) ees'4 \forceBreak
  g'4 ( a'4 g'4) f'4 bes'4 ( a'4) bes'4 ( a'4)  g'4 ( a'4 bes'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 c''4 bes'4 bes'4 ( bes'4) c''4 ( g'4 ees'4 f'4) \divisioMinima \forceBreak

 ees'4 f'4 g'4  g'4 bes'4 ( a'4 f'4) bes'4 ( a'4 g'4) f'4 ( g'4) g'4 ( a'4 f'4 g'\prall a'4 g'4 f'4) ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \finalis

}

altoMusic = {
r4 ees'4 ~ ees'2 f'4 ~ f'2*3/2 \divisioMinima
ees'2 ~ ees'2*4/2 ~ ees'2 ~ ees'2 \divisioMinima
c'2 ees'2 ~ ees'2*3/2 c'2*4/2 \divisioMaior
ees'2 f'2 ees'2*3/2 ~ ees'2 ~ ees'2 \divisioMinima
c'2 ees'2 c'2 ees'2*3/2 \divisioMaxima
f'2 ees'2*3/2 ~ ees'2*3/2 ~ \divisioMinima
ees'2 ~ ees'2 ~ ees'2*3/2 d'4 ~ d'2*4/2 bes2 ees'4 ~ ees'2*5/2 c'2*4/2 ~ c'4 ~ c'4 ~ c'2 d'2*4/2 bes2 ees'2*4/2 c'2*4/2 ees'2*4/2 ~ ees'2 ~ ees'2 ~ ees'2*6/2 ~ ees'2 ~ \divisioMaior
ees'4 f'2*3/2 ~ f'2 g'2 ees'2 ~ ees'2 ~ \divisioMinima
ees'2*3/2 ~ ees'4 c'2*3/2 d'2*3/2 ees'2 ~ ees'2 c'2 ~ c'2*3/2 ~ c'2*6/2 bes2 \finalis
}

tenorMusic = {
r4 bes4 ~ bes2 ~ bes4 ~ bes2*3/2 ~ \divisioMinima
bes2 ~ bes2*4/2 ~ bes2 c'2 \divisioMinima
g2 bes2 aes2*3/2 ~ aes2*4/2 \divisioMaior
bes2 ~ bes2 ~ bes2*3/2 c'2 aes2 \divisioMinima
g2 bes2 aes2 bes2*3/2 \divisioMaxima
g2 ~ g2*3/2 c'2*3/2 \divisioMinima
bes2 aes2 g2*3/2 ~ g4 bes2*4/2 g2 aes4 bes2*5/2 ~ bes2*4/2 aes4 g4 ~ g2 bes2*4/2 aes4 g4 bes2*4/2 aes2*4/2 bes2*4/2 g2 aes2 bes2*6/2 c'2 ~ \divisioMaior
c'4 ~ c'2*3/2 bes2 ~ bes2 ~ bes2 aes2 \divisioMinima
g2*3/2 c'4 aes2*3/2 ~ aes2*3/2 bes2 ~ bes2 ~ bes2 aes2*3/2 g2*6/2 aes4 g4 \finalis
}

bassMusic = {
ees4 ~ ees4 ~ ees2 ~ ees4 d2*3/2 \divisioMinima
g2 ees2*4/2 c2 ~ c2 ~ \divisioMinima
c2 ~ c2 ~ c2*3/2 f2*4/2 \divisioMaior
ees2 d2 c2*3/2 ~ c2 ~ c2 ~ \divisioMinima
c2 ~ c2 f2 ees2*3/2 \divisioMaxima
d2 c2*3/2 ~ c2*3/2 ~ \divisioMinima
c2 ~ c2 ~ c2*3/2 bes,4 ~ bes,2*4/2 ees2 c4 ~ c2*5/2 f2*4/2 ~ f4 ~ f4 c2 bes,2*4/2 ees2 ~ ees2*4/2 f2*4/2 c2*4/2 ~ c2 ~ c2 ~ c2*6/2 ~ c2 ~ \divisioMaior
c4 d2*3/2 ~ d2 ees2 c2 ~ c2 ~ \divisioMinima
c2*3/2 ~ c4 f2*3/2 ~ f2*3/2 g2 ees2 f2 ~ f2*3/2 c2*6/2 ees2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
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
