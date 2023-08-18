\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.312
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine ne longe" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine ne longe"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine ne longe" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne, 
\set stanza = " * " ne lon -- ge fá -- ci -- as 
au -- xí -- li -- um tu -- _ um a me, 
ad de -- fen -- si -- ó -- nem me -- am _ á -- spi -- ce: 
lí -- be -- ra me _ _ _ de o -- re le -- ó -- nis, 
et a cór -- ni -- bus u -- ni -- cor -- nu -- ó -- rum hu -- mi -- li -- tá -- tem _ me -- _ am. Ps. 
De -- us, De -- us me -- us, ré -- spi -- ce in me, 
\set stanza = " * " 
qua -- re me de -- re -- li -- quí -- sti? lon -- ge a sa -- lú -- te me -- a ver -- ba de -- li -- ctó -- rum me -- ó -- rum. _ 
Do -- mi -- ne. }

chantMusic = {
\tieDown   d'4 ( f'4 \once \tweak #'font-size #-4 g' ) g'4 g'4 ( a'4 g'4) \divisioMinima
 c'4 ( d'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 g'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \forceBreak
 a'4 ( f'4 a'4 g'4) g'4 g'4 ( c''4) ~ c''4 ( a'4) a'4 a'4 ( f'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima
 g'4 ( a'4 g'4) g'4 ( d'4) g'4 a'4 ( c''4) b'4 ( c''4) c''4 \forceBreak
 c''4 ( b'4) c''4 ( c''4 c''4) a'4 ( b'4 a'4) \divisioMinima
 d''4 ( e''4) c''4 ( b'4) c''4 ( c''4) \divisioMaxima
 c''4 ( c''4) c''4 ( b'4) c''4 ( a'4) a'4 c''4 ( c''4) ~ c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 g'4 ( a'4) a'4 ( f'4 g'\prall a'4 g'4 a'4 \forceBreak
) a'4 ( g'4) a'4 a'4 ( c''4 b'4 a'4) g'4 ( a'4 g'4 f'4) \divisioMaior
 f'4 g'4 ( a'4) a'4 a'4 ( f'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) g'4 ( a'4 g'4) g'4 ( f'4) g'4 ( \once \tweak #'font-size #-4 a' ) g'4 \forceBreak
 g'4 ( c''4 c''4) a'4 ( b'4) \divisioMinima
 g'4 ( f'4) g'4 a'4 ( c''4) b'4 ( b'4 c''4) a'4 ( c''4) ~ c''4 ( b'4 a'4 b'\prall c''4 b'4 a'4) g'4 ( a'4) b'4 ( a'4 g'4 a'4) a'4 ( g'4) \finalis \forceBreak

 g'4 a'4 ( g'4) g'4 ( c''4) c''4 c''4 c''4 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima
 c''4 ( a'4) a'4 ( c''4) c''4 c''4 c''4 \forceBreak
 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 c''4 c''4 \forceBreak
 c''4 ( c''4 b'4) g'4 ( a'4) c''4 ( b'4) a'4 g'4 ( a'4 d'4) f'4 ( f'4 g'4) \finalis
 d'4 ( f'4 \once \tweak #'font-size #-4 g' ) g'4 g'4 ( a'4 g'4) \finalis

}

altoMusic = {
r4 c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*4/2 ~ c'2*3/2 ~ c'4 ~ \divisioMaior
c'2 ~ c'4 d'2 ~ d'2 ~ d'2 c'2*3/2 ~ c'4 ~ c'2*3/2 f'2*3/2 d'2 \divisioMaxima
c'2*3/2 d'2*3/2 c'2 e'2 ~ e'4 f'2 g'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 f'2 e'2 \divisioMaxima
f'2 ~ f'2*4/2 ~ f'4 g'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*3/2 d'2*3/2 e'2*3/2 ~ e'2*4/2 ~ e'2 d'2 \divisioMaior
c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 d'2 c'2*3/2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 e'2 ~ \divisioMinima
e'2*3/2 d'2 g'2*4/2 e'2*3/2 ~ e'2 f'2*3/2 e'2 ~ e'2 ~ e'2 d'2 \finalis
r4 e'2 ~ e'2*5/2 ~ e'2 a'2 ~ a'4 g'2 ~ g'4 \divisioMaxima
f'2 ~ f'2*5/2 g'2*3/2 ~ \divisioMinima
g'2*4/2 ~ g'2 ~ g'2 \divisioMinima
a'2*4/2 g'2*3/2 ~ g'2 f'2 ~ f'4 d'2 ~ d'4 c'2 d'4 \finalis
r4 c'2*3/2 ~ c'2*3/2 \finalis
}

tenorMusic = {
d2*4/2 e2*3/2 \divisioMinima
g2 a2*3/2 g4 f2*3/2 e4 \divisioMaior
g2 f4 ~ f2 ~ f2 e2 ~ e2*3/2 f4 ~ f2*3/2 c'2*3/2 ~ c'4 b4 \divisioMaxima
e2*3/2 ~ e2*3/2 ~ e2 a2 ~ a4 ~ a2 g2*3/2 a2*3/2 \divisioMinima
b2 d'2 c'2 \divisioMaxima
r2 a2 d'2 c'4 ~ c'2*3/2 b2*3/2 \divisioMinima
c'2 ~ c'2*3/2 a2*3/2 b2*3/2 a2*4/2 ~ a2 ~ a2 ~ \divisioMaior
a4 g2 f4 ~ f2*3/2 e2*3/2 ~ e2 ~ e2*3/2 f2 e2*3/2 g2*3/2 ~ g2 \divisioMinima
a2*3/2 f2 e2*4/2 a2*3/2 c'2 ~ c'2*3/2 b2 c'2 ~ c'2 ~ c'4 b4 \finalis
c'2*3/2 ~ c'2*5/2 ~ c'2 ~ c'2 a4 c'2 ~ c'4 \divisioMaxima
a2 c'2*5/2 ~ c'2*3/2 \divisioMinima
e'2*4/2 d'2 c'2 ~ \divisioMinima
c'2*4/2 ~ c'2*3/2 a2 ~ a2 c'4 ~ c'2*3/2 a2 b4 \finalis
d2*4/2 e2*3/2 \finalis
}

bassMusic = {
r2*4/2 a,2*3/2 ~ \divisioMinima
a,2 ~ a,2*3/2 ~ a,4 c2*3/2 ~ c4 \divisioMaior
e2 ~ e4 d2 c2 b,2 a,2*3/2 ~ a,4 d2*3/2 ~ d2*3/2 g2 \divisioMaxima
c2*3/2 b,2*3/2 a,2 ~ a,2 c4 d2 e2*3/2 a2*3/2 ~ \divisioMinima
a2 ~ a2 ~ a2 \divisioMaxima
d2 ~ d2 ~ d2 ~ d4 e2*3/2 ~ e2*3/2 ~ \divisioMinima
e2 f2*3/2 ~ f2*3/2 e2*3/2 c2*4/2 d2 ~ d2 \divisioMaior
a,2*3/2 ~ a,4 d2*3/2 c2*3/2 b,2 a,2*3/2 ~ a,2 c2*3/2 e2*3/2 ~ e2 \divisioMinima
d2*3/2 ~ d2 e2*4/2 c2*3/2 ~ c2 d2*3/2 e2 ~ e2 f2 g2 \finalis
r2*3/2 b2*5/2 a2 f2 ~ f4 e2 ~ e4 \divisioMaxima
d2 ~ d2*5/2 e2*3/2 ~ \divisioMinima
e2*4/2 ~ e2 ~ e2 \divisioMinima
f2*4/2 e2*3/2 ~ e2 d2 ~ d4 g2*3/2 ~ g2 ~ g4 \finalis
r2*4/2 a,2*3/2 \finalis
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
