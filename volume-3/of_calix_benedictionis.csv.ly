\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.253
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Calix benedictionis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Calix benedictionis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Calix benedictionis" }
    \line {}
  }
}

chantText = \lyricmode {
Ca -- _ _ lix 
\set stanza = " * " be -- ne -- di -- cti -- ó -- _ _ nis, 
cu -- i be -- ne -- dí -- ci -- mus, _ _ _ 
non -- _ _ ne _ com -- mu -- ni -- cá -- ti -- o sán -- gui -- nis Chri -- _ sti est? _ _ 
Et pa -- _ nis quem frán -- gi -- mus, _ _ 
non -- _ _ ne _ par -- ti -- ci -- pá -- ti -- o cór -- po -- ris Dó -- mi -- ni _ est? _ }

chantMusic = {
\tieDown   d'4 f'4 ( f'4 f'4) g'4 ( f'4 d'4) d'4 ( c'4) \divisioMinima
 d'4 d'4 ( c'4) f'4 ( g'4) f'4 ( e'4) g'4 ( e'4.) g'4 ( a'4 f'4) ~ f'4 ( e'4 d'4) f'4 ( f'4) \divisioMaior
 f'4 ( g'4 f'4) f'4 ( d'4) d'4 ( g'4) g'4 ( a'4 g'4) e'4 ( f'4 g'4 a'4) g'4 ( f'4)  f'4 ( f'4) a'4 ( g'4) bes'4 ( a'4) ~ a'4 ( f'4) \divisioMaior
 a'4 c''4 ( c''4) d''4 ( c''4) c''4 ( c''4) ~ c''4 ( g'4 a'4) g'4 g'4 ( e'4) g'4 g'4 ( a'4) g'4 g'4 ( b'4 a'4 a'4) \divisioMinima
 g'4 ( a'4 b'\prall c''4) a'4 ( g'4) g'4 a'4 ( g'4) a'4 ( f'4) d'4 f'4 ( d'4) f'4 ( f'4) ~ f'4 ( g'4) \divisioMaxima
 c'4 ( d'4) d'4 ( g'4 f'4 e'4.) f'4 ( g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( a'4 f'4 f'4) d'4 ( g'4 f'4 e'4) f'4 ( g'4 d'4) \divisioMaior
 d'4 f'4 ( f'4) g'4 ( f'4) f'4 ( f'4) ~ f'4 ( c'4) d'4 d'4 e'4 f'4 g'4 f'4 e'4 ( g'4 f'4 f'4) \divisioMinima
 d'4 ( f'4 e'4 f'4) d'4 c'4 ( f'4 f'4) e'4 ( f'\prall g'4 a'4) g'4 f'4 ( g'4 e'4 e'4) d'4 ( f'4 e'4) d'4 ( c'4) d'4 ( d'4 e'4) \finalis

}

altoMusic = {
r4 a2*6/2 ~ a2 ~ \divisioMinima
a4 ~ a2 ~ a2*4/2 c'2*9/4 ~ c'2*4/2 a2 \divisioMaior
c'2*3/2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ c'2*6/2 d'2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMaior
f'4 g'2*4/2 c'2 d'2*4/2 e'2*3/2 ~ e'2*3/2 ~ e'2 ~ e'2 ~ \divisioMinima
e'2*4/2 ~ e'2*3/2 c'2*5/2 ~ c'2 ~ c'2 ~ c'2 ~ \divisioMaxima
c'2 ~ c'2*9/4 ~ c'2*5/2 ~ c'2 ~ \divisioMinima
c'2 ~ c'2*3/2 ~ c'2 ~ c'2 a2*4/2 ~ a2*3/2 ~ \divisioMaior
a4 c'2*4/2 ~ c'2 ~ c'2*3/2 a2*3/2 ~ a2 c'2*4/2 \divisioMinima
a2*5/2 c'2*3/2 ~ c'2*5/2 a2*4/2 ~ a2*3/2 ~ a2 ~ a2 ~ a4 \finalis
}

tenorMusic = {
r2*7/2 e2 ~ \divisioMinima
e4 g2 f2*4/2 e2*9/4 g2*4/2 f2 \divisioMaior
c2*3/2 d2 f2 e2*3/2 a2*6/2 ~ a2 g2*3/2 f2 a4 ~ \divisioMaior
a4 g2*4/2 ~ g2 ~ g2*4/2 b2*3/2 d'2*3/2 ~ d'2 c'2 \divisioMinima
b2*4/2 c'2*3/2 a2*5/2 ~ a2 ~ a2 g2 \divisioMaxima
a2 ~ a2*9/4 f2*5/2 g2 ~ \divisioMinima
g2 ~ g2*3/2 f2 aa2 f2*4/2 ~ f2*3/2 ~ \divisioMaior
f4 a2*4/2 ~ a2 ~ a2*3/2 f2*3/2 ~ f2 ~ f2*4/2 ~ \divisioMinima
f2*5/2 ~ f2*3/2 g2*5/2 ~ g2*4/2 f2*3/2 e2 f2 e4 \finalis
}

bassMusic = {
d4 ~ d2*6/2 ~ d2 ~ \divisioMinima
d4 ~ d2 ~ d2*4/2 c2*9/4 ~ c2*4/2 d2 \divisioMaior
a,2*3/2 ~ a,2 ~ a,2 ~ a,2*3/2 ~ a,2*6/2 bes,2 ~ bes,2*3/2 d2 ~ d4 ~ \divisioMaior
d4 e2*4/2 ~ e2 ~ e2*4/2 ~ e2*3/2 ~ e2*3/2 a2 ~ a2 ~ \divisioMinima
a2*4/2 ~ a2*3/2 g2*5/2 ~ g2 f2 e2 \divisioMaxima
r2 f2*9/4 d2*5/2 e2 \divisioMinima
d2 e2*3/2 f2 ~ f2 e2*4/2 d2*3/2 ~ \divisioMaior
d4 a2*4/2 g2 f2*3/2 e2*3/2 d2 a,2*4/2 \divisioMinima
f,2*5/2 a,2*3/2 ~ a,2*5/2 d2*4/2 ~ d2*3/2 ~ d2 ~ d2 a,4 \finalis
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
        "IV."
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
