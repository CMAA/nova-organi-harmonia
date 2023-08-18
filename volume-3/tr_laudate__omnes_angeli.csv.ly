\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.411
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laudate... omnes Angeli" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laudate... omnes Angeli"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laudate... omnes Angeli" }
    \line {}
  }
}

chantText = \lyricmode {
Lau -- dá -- _ te _ 
\set stanza = " * " Dó -- _ mi -- num _ _ 
o -- mnes An -- ge -- li e -- _ jus: _ _ _ _ _ 
lau -- dá -- te e -- _ um o -- mnes Vir -- tú -- tes _ e -- jus. _ _ _ ℣. 
Be -- ne -- dí -- ci -- te Dó -- mi -- num o -- mnes Vir -- tú -- tes e -- _ _ jus 
mi -- ní -- stri e -- _ jus: _ _ _ _ _ 
qui fá -- ci -- tis vo -- lun -- tá -- _ _ tem 
\set stanza = " * " e -- jus. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4 g'4 ( a'4 g'4) f'4 g'4 ( g'4 f'4) \divisioMinima
 f'4 ( bes'4) ~ bes'4 ( c''4) g'4 f'4 ( ees'4) f'4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 a'4 ( c''4 d''4 bes'4) ~ bes'4 ( g'4) bes'4 ( g'4) ~ g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 g'4 ( bes'4) a'4 ( f'4 g'4) f'4 ( ees'4) f'4 ( g'4) f'4 \divisioMinima
 f'4 ( g'4) f'4 f'4 f'4 f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \finalis
 f'4 f'4 f'4 ( g'\prall a'4 bes'4) bes'4 bes'4 a'4 ( bes'4) bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) f'4 g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( bes'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 f'4 ( bes'4) bes'4 a'4 ( c''4 d''4 bes'4) ~ bes'4 ( g'4) bes'4 ( g'4) ~ g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior
 f'4 f'4 ( g'4) f'4 f'4 f'4 f'4 g'4 ( f'4) bes'4 ( bes'4 f'4) g'4 ( f'4 ees'4) ees'4 ( g'4 bes'4)  bes'4 bes'4 ( a'4 bes'4 g'4 f'4) ~ f'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4 f'4) \divisioMinima
 bes'4 ( bes'4 bes'4) c''4 ( bes'4 a'4 g'4) ~ g'4 ( f'4) g'4 ( bes'4 a'4 g'4 f'4) ~ f'4 ( g'4 ees'4) \divisioMinima
 g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
c'2 ~ c'2*4/2 ~ c'2*3/2 \divisioMinima
f'2*5/2 c'2*3/2 ~ c'2 ~ c'4 \divisioMaior
f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*4/2 d'2*3/2 ~ d'2 bes2*4/2 c'2*3/2 \divisioMaxima
r4 c'2*5/2 ~ c'2*4/2 ~ c'4 \divisioMinima
d'2*4/2 ~ d'4 f'2*5/2 ees'2*4/2 f'2 c'2*3/2 ~ c'2*3/2 ~ c'2 \finalis
d'2 ~ d'2*6/2 ~ d'2*4/2 \divisioMinima
c'2*3/2 d'2*6/2 ~ d'2*5/2 ~ d'2*3/2 ~ d'2 \divisioMaxima
r4 f'2*3/2 ~ f'2*3/2 ~ f'2*4/2 d'2*3/2 ~ d'2 bes2*4/2 c'2*3/2 ~ \divisioMaior
c'4 ~ c'2*6/2 d'2 f'2*3/2 ees'2*4/2 d'2 c'4 ~ c'2*5/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 \divisioMinima
f'2*6/2 d'2*3/2 ~ d'2*4/2 c'2*4/2 ~ \divisioMinima
c'2*6/2 ~ c'2 ~ c'4 \finalis
}

tenorMusic = {
a2 bes2*4/2 a2*3/2 \divisioMinima
c'4 bes2*4/2 ~ bes2*3/2 ~ bes2 a4 \divisioMaior
bes2*3/2 d'2*3/2 c'2*3/2 bes2*4/2 a2*3/2 g2 f2*4/2 g2*3/2 \divisioMaxima
r4 bes2*5/2 g2*4/2 a4 ~ \divisioMinima
a2*4/2 c'4 bes2*5/2 ~ bes2*4/2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 a2 \finalis
r2 bes2*6/2 f2*4/2 ~ \divisioMinima
f2*3/2 ~ f2*4/2 bes2 a2*5/2 g2*3/2 a2 \divisioMaxima
r4 bes2*3/2 f2*3/2 g2*4/2 a2*3/2 g2 f2*4/2 g2*3/2 ~ \divisioMaior
g4 a2*6/2 ~ a2 bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*5/2 a2*3/2 g2*3/2 a4 \divisioMinima
bes2*6/2 a2*3/2 g2*4/2 ~ g2*4/2 \divisioMinima
bes2*6/2 ~ bes2 a4 \finalis
}

bassMusic = {
f2 ~ f2*4/2 ~ f2*3/2 \divisioMinima
d2*5/2 ees2*3/2 f2 ~ f4 \divisioMaior
d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d2*4/2 ~ d2*3/2 ~ d2 ~ d2*4/2 c2*3/2 \divisioMaxima
r4 f2*5/2 ~ f2*4/2 ~ f4 \divisioMinima
d2*4/2 ~ d4 ~ d2*5/2 c2*4/2 d2 ees2*3/2 f2*3/2 ~ f2 \finalis
bes,2 ~ bes,2*6/2 ~ bes,2*4/2 ~ \divisioMinima
bes,2*3/2 ~ bes,2*4/2 ~ bes,2 ~ bes,2*5/2 ~ bes,2*3/2 d2 \divisioMaxima
r4 d2*3/2 ~ d2*3/2 ~ d2*4/2 ~ d2*3/2 ~ d2 ~ d2*4/2 c2*3/2 ~ \divisioMaior
c4 f2*6/2 d2 ~ d2*3/2 ees2*4/2 ~ ees2*3/2 f2*5/2 ~ f2*3/2 ~ f2*3/2 ~ f4 \divisioMinima
d2*6/2 ~ d2*3/2 bes,2*4/2 c2*4/2 ~ \divisioMinima
c2*6/2 f2 ~ f4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Tract"
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
