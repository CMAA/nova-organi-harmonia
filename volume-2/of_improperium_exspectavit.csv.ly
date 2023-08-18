\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.140
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Improperium exspectavit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Improperium exspectavit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Improperium exspectavit" }
    \line {}
  }
}

chantText = \lyricmode {
Im -- _ pro -- pé -- ri -- um 
\set stanza = " * " ex -- spe -- ctá -- vit Cor _ _ _ _ me -- _ um _ 
et mi -- sé -- _ ri -- am, 
et su -- stí -- _ nu -- i qui si -- mul me -- cum con -- tri -- sta -- ré -- tur _ _ 
et _ non fu -- _ it; 
con -- _ so -- lán -- tem me quæ -- sí -- _ vi _ 
et _ non _ _ _ in -- vé -- _ _ ni. }

chantMusic = {
\tieDown   f'4 ( g'4 f'4) ~ f'4 ( e'4) c'4 ( d'4) f'4 ( f'4) f'4 ( g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 g'4 ( a'4) g'4 a'4 ( b'\prall c''4) g'4 g'4 c''4 ( c''4) ~ c''4 ( c''4 \forceBreak
) ~ c''4 ( a'4) ~ a'4 ( \once \tweak #'font-size #-4 g' )  g'4 ( bes'4 a'4) bes'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( e'4) \divisioMaior
 g'4 a'4 ( b'\prall c''4 b'4) c''4 ( d''4 c''4) ~ c''4 ( a'4) a'4 ( b'\prall c''4 b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima \forceBreak

 f'4 g'4 g'4 ( c''4) ~ c''4 ( b'4) b'4 ( d''4 c''4 c''4) c''4 ( b'4) \divisioMinima
 b'4 b'4 ( c''4) b'4 b'4 ( d''4 c''4 c''4) c''4 ( b'4) b'4 ( c''4) b'4 ( c''4) c''4 \forceBreak
 c''4 ( b'4 a'4) b'4 ( d''4 b'4) c''4 ( d''4 a'4) ~ a'4 ( g'4) \divisioMaior
 g'4 b'4 ( \once \tweak #'font-size #-4 d'' ) d''4 ( b'4 d''4) b'4 ( d''4 c''4) ~ c''4 ( c''4 b'4) b'4 \divisioMaxima \forceBreak

 g'4 c''4 ( c''4 c''4) c''4 b'4 ( d''4 c''4 c''4) c''4 ( \once \tweak #'font-size #-4 a' ) b'4 ( c''4 b'4) \divisioMinima
 c''4 ( d''4 c''4) c''4 ( c''4) ~ c''4 ( a'4) a'4 ( g'4) a'4 ( b'4 a'4) \divisioMaior
 f'4 a'4 ( \once \tweak #'font-size #-4 c''  \forceBreak
) c''4 ( a'4) c''4 ( c''4 c''4) e''4 ( d''4 c''4) ~ c''4 ( b'4 a'4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( b'4) ~ b'4 ( a'4) b'4 ( a'4 g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
a2 c'2*5/2 a2 c'2*5/2 ~ c'2 ~ \divisioMinima
c'2*3/2 e'2*3/2 d'2 c'2 ~ c'2*3/2 ~ c'2*3/2 d'2*3/2 ~ d'2*4/2 c'2*3/2 ~ \divisioMaior
c'4 e'2 ~ e'2 g'2 f'2*3/2 e'2*4/2 ~ e'2*3/2 ~ e'2 \divisioMaxima
r2 g'4 ~ g'2*3/2 e'2*4/2 g'2*3/2 ~ g'2*3/2 ~ g'2*4/2 e'2 ~ e'2 ~ e'2*3/2 d'2*6/2 ~ d'2 ~ d'2*4/2 ~ d'2 e'2*3/2 ~ e'2*3/2 ~ e'2*4/2 \divisioMaxima
r4 e'2*4/2 g'2*4/2 ~ g'2 ~ g'2*3/2 \divisioMinima
e'2*3/2 ~ e'2 f'2 e'2 ~ e'2*3/2 \divisioMaior
f'4 ~ f'2 ~ f'2 e'2*3/2 ~ e'2 f'2*4/2 d'2*3/2 ~ d'2*3/2 e'2 ~ e'2 d'2 \finalis
}

tenorMusic = {
f2 g2*5/2 f2 ~ f2*5/2 e2 \divisioMinima
g2*3/2 e2*3/2 ~ e2 ~ e2 a2*3/2 f2*3/2 d2*3/2 g2*4/2 ~ g2*3/2 ~ \divisioMaior
g4 e2 a2 ~ a2 ~ a2*3/2 ~ a2*4/2 c'2*3/2 b2 \divisioMaxima
c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 d'2*3/2 ~ d'2*3/2 c'2*4/2 g2 ~ g2 ~ g2*3/2 ~ g2*6/2 ~ g2 ~ g2*4/2 ~ g2 ~ g2*3/2 a2*3/2 g2*4/2 \divisioMaxima
r4 g2*4/2 ~ g2*4/2 c'2 d'2*3/2 \divisioMinima
a2*3/2 ~ a2 ~ a2 ~ a2 ~ a2*3/2 \divisioMaior
r4 f2 a2 ~ a2*3/2 ~ a2 ~ a2*4/2 b2*3/2 g2*3/2 ~ g2 c'2 ~ c'4 b4 \finalis
}

bassMusic = {
r2 c2*5/2 d2 a,2*5/2 c2 \divisioMinima
e2*3/2 c2*3/2 b,2 a,2 ~ a,2*3/2 ~ a,2*3/2 bes,2*3/2 ~ bes,2*4/2 c2*4/2 ~ c2 ~ c2 g2 d2*3/2 c2*4/2 ~ c2*3/2 e2 \divisioMaxima
d2*3/2 e2*3/2 a2*4/2 g2 ~ \divisioMinima
g4 e2*3/2 ~ e2*4/2 ~ e2 d2 c2*3/2 g,2*6/2 a,2 b,2*3/2 ~ \divisioMaior
b,4 g,2 c2*3/2 ~ c2*3/2 e2*4/2 \divisioMaxima
r4 c2*4/2 e2*4/2 ~ e2 g2*3/2 ~ \divisioMinima
g2*3/2 f2 d2 ~ d2 c2*3/2 \divisioMaior
d4 ~ d2 ~ d2 a,2*3/2 c2 d2*4/2 b,2*3/2 ~ b,2*3/2 c2 ~ c2 g2 \finalis
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
