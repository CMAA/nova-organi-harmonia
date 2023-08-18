\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.324
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Improperium exspectavit ... et dederunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Improperium exspectavit ... et dederunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Improperium exspectavit ... et dederunt" }
    \line {}
  }
}

chantText = \lyricmode {
Im -- _ pro -- pé -- ri -- um 
\set stanza = " * " ex -- spe -- ctá -- vit cor _ _ _ _ me -- _ um, _ 
et mi -- sé -- _ ri -- am: 
et su -- stí -- _ nu -- i qui si -- mul con -- tri -- sta -- ré -- tur, _ _ 
et non fu -- _ it: 
con -- _ so -- lán -- tem me quæ -- sí -- _ vi, _ 
et non _ _ _ in -- vé -- _ ni: 
et de -- dé -- _ _ runt _ in e -- scam me -- am fel, _ _ 
et in si -- ti me -- _ a po -- ta -- vé -- _ runt me a -- cé -- _ _ _ to. _ }

chantMusic = {
\tieDown   ees'4 ( f'4 ees'4) ~ ees'4 ( d'4) bes4 ( c'4) ees'4 ( ees'4) ees'4 ( f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 f'4 ( g'4) f'4 g'4 ( a'\prall bes'4) f'4 f'4 bes'4 ( bes'4 \forceBreak
) ~ bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 f' )  f'4 ( aes'4 g'4) aes'4 ( f'4 ees'4) f'4 ( ees'4) ~ ees'4 ( d'4) \divisioMaior
 f'4 g'4 ( a'\prall bes'4 a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( g'4) g'4 ( a'\prall bes'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima \forceBreak

 ees'4 f'4 f'4 ( bes'4) ~ bes'4 ( a'4) a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMinima
 a'4 a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) a'4 ( bes'4) a'4 ( bes'4) bes'4 bes'4 ( a'4 g'4 \forceBreak
) a'4 ( c''4 a'4) bes'4 ( c''4 g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 ( a'4 \once \tweak #'font-size #-4 c'' ) c''4 ( a'4 c''4) a'4 ( c''4 bes'4) ~ bes'4 ( bes'4 a'4) a'4 \divisioMaxima
 f'4 bes'4 ( bes'4 bes'4) bes'4 a'4 ( c''4 bes'4 bes'4 \forceBreak
) bes'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( bes'4 a'4) \divisioMinima
 bes'4 ( c''4 bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( f'4) g'4 ( a'4 g'4) \divisioMaior
 ees'4 ( g'4 \once \tweak #'font-size #-4 bes' ) bes'4 ( g'4) bes'4 ( bes'4 bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) g'4 ( \once \tweak #'font-size #-4 f'  \forceBreak
) f'4 ( a'4 g'4 f'4) g'4 ( f'4 ees'4) ees'4 \divisioMaxima
 ees'4 ( f'\prall g'4) g'4 ( f'4) g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 ( a'\prall bes'4 a'4 g'4 f'4) g'4 ( a'4 g'4) \divisioMinima
 f'4 ( ees'4) f'4 ( g'4 f'4) g'4 \forceBreak
 g'4 ( bes'4 a'4 g'4) f'4 ( \once \tweak #'font-size #-4 ees' ) f'4 ( g'4 f'4) g'4 ( f'4) g'4 ( bes'4 a'4 g'4) \divisioMaxima
 ees'4 ( f'4) g'4 ( \once \tweak #'font-size #-4 f' ) bes'4 bes'4 ( c''\prall d''4 c''4) c''4 ( bes'4) ~ bes'4 ( a'4) g'4 ( f'4) \divisioMinima
 bes'4 bes'4 ( c''4 bes'4 \forceBreak
) bes'4 ( bes'4) ~ bes'4 ( g'4) f'4 ( ees'4 f'\prall g'4 a'4 g'4 f'4) g'4 ( f'4) \divisioMinima
 g'4 bes'4 ( c''4 bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 g'4) bes'4 ( bes'4 g'4 f'4) f'4 ( g'\prall a'4 g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
bes2 ~ bes2*3/2 ~ bes2 ~ bes2 c'2 d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*3/2 ~ d'2*5/2 bes2 c'2*3/2 d'2*3/2 ees'2*3/2 ~ ees'2 aes2 bes2*3/2 ~ \divisioMaior
bes4 d'2*4/2 ees'2 f'2*3/2 d'2 ~ d'2 ~ d'2*3/2 c'2 \divisioMaxima
ees'2 d'2*4/2 ~ d'2 ~ d'2 f'2 ~ \divisioMinima
f'2*5/2 ~ f'2 ~ f'2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 \divisioMaior
f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'4 ~ \divisioMaxima
f'4 ~ f'2*4/2 ~ f'2 ~ f'2 g'2 d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2 ~ d'2 c'2 d'2*3/2 \divisioMaior
ees'4 ~ ees'2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 c'4 \divisioMaxima
bes2*3/2 c'2 d'4 ees'2 f'2*3/2 ~ f'2*6/2 d'2 ~ d'4 \divisioMinima
bes2 c'2*4/2 d'2*4/2 c'2 ~ c'2*3/2 ~ c'2 d'2*3/2 ~ d'4 \divisioMaxima
ees'2 d'2*3/2 f'2 ~ f'2*3/2 ees'2*3/2 d'2 \divisioMinima
f'4 ~ f'2*3/2 ~ f'2 ees'2 d'2*4/2 ~ d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2 c'4 \finalis
}

tenorMusic = {
ees2 f2*3/2 g2 ~ g2 ~ g2 ~ g2*3/2 bes2 \divisioMinima
a2*3/2 g2*5/2 ~ g2 ~ g2*3/2 ~ g2*3/2 aes2*3/2 ees2 f2 ~ f2*3/2 ~ \divisioMaior
f4 bes2*4/2 ~ bes2 ~ bes2*3/2 c'2 bes2 ~ bes2*3/2 ~ bes4 a4 \divisioMaxima
bes2*3/2 ~ bes2*3/2 a2 g2 c'2 ~ \divisioMinima
c'4 ~ c'2*4/2 d'2 c'2 ~ c'2*3/2 bes2*3/2 c'2*3/2 g2 a2*3/2 ~ \divisioMaior
a4 c'2 d'2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'4 \divisioMaxima
r4 bes2*4/2 c'2 d'2 ~ d'2 c'2*3/2 ~ \divisioMinima
c'2*3/2 bes2 a2 ~ a2 bes2*3/2 \divisioMaior
c'2*3/2 ~ c'2 bes2*3/2 a2*3/2 g2*3/2 a2 ~ a2*4/2 bes2*3/2 g4 ~ \divisioMaxima
g2*3/2 ~ g2 ~ g4 ~ g2 f2*3/2 bes2*5/2 c'4 ~ c'2 bes4 ~ \divisioMinima
bes2 a2*4/2 bes2*4/2 g2 f2*3/2 a2 g2*3/2 bes4 ~ \divisioMaxima
bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 a2 \divisioMinima
f4 g2*3/2 ~ g2*4/2 ~ g2*4/2 ~ g2*3/2 a2 ~ \divisioMinima
a4 g2 ~ g2*3/2 ~ g2*3/2 ~ g2*4/2 bes2*3/2 ~ bes2 a4 \finalis
}

bassMusic = {
g,2 ~ g,2*3/2 ~ g,2 c2 ~ c2 bes,2*3/2 ~ bes,2 ~ \divisioMinima
bes,2*3/2 ~ bes,2*5/2 g,2 a,2*3/2 bes,2*3/2 c2*3/2 ~ c2 ~ c2 bes,2*3/2 ~ \divisioMaior
bes,4 ~ bes,2*4/2 c2 d2*3/2 g2 ~ g2 ees2*3/2 f2 \divisioMaxima
r2*3/2 g2*3/2 f2 ~ f2 ~ f2 ~ \divisioMinima
f4 d2*4/2 ~ d2 ~ d2 g2*3/2 ~ g2*3/2 f2*3/2 ~ f2 d2*3/2 ~ \divisioMaior
d2*3/2 ~ d2*3/2 ~ d2*3/2 f2*3/2 ~ f4 \divisioMaxima
r4 d2*4/2 ~ d2 ~ d2 g2 ~ g2*3/2 ~ \divisioMinima
g2*3/2 ~ g2 ~ g2 ~ g2 ~ g2*3/2 \divisioMaior
r2*3/2 g2 ~ g2*3/2 f2*3/2 g2*3/2 d2 c2*4/2 bes,2*3/2 c4 \divisioMaxima
g,2*3/2 a,2 bes,4 c2 d2*3/2 ~ d2*5/2 ~ d4 g2 ~ g4 ~ \divisioMinima
g2 ~ g2*4/2 ~ g2*4/2 c2 d2*3/2 ~ d2 g2*3/2 ~ g4 ~ \divisioMaxima
g2 ~ g2*3/2 d2 bes,2*3/2 c2*3/2 d2 ~ \divisioMinima
d4 ~ d2*3/2 c2*4/2 ~ c2*4/2 bes,2*3/2 ~ bes,2 ~ \divisioMinima
bes,4 ~ bes,2 g,2*3/2 a,2*3/2 bes,2*4/2 ~ bes,2*3/2 ees2 f4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
        "VIII"
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
