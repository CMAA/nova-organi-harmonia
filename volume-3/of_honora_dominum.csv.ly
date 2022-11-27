\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.299
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Honora Dominum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Honora Dominum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Honora Dominum" }
    \line {}
  }
}

chantText = \lyricmode {
Ho -- nó -- _ _ _ _ _ _ ra 
\set stanza = " * " Dó -- _ mi -- num _ 
de tu -- a sub -- stán -- ti -- a, _ 
et de pri -- mí -- _ _ _ ti -- is ó -- _ _ mni -- um fru -- gum tu -- á -- rum da _ e -- i. 
No -- _ li pro -- hi -- bé -- re 
be -- ne -- fá -- ce -- re e -- um qui pot -- est: 
si va -- les, 
et _ i -- pse bé -- ne -- _ fac. _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( f'4 d'4) e'4 ( e'4 f'4.) d'4 ( g'4 f'4) ~ f'4 ( f'4) ~ f'4 ( d'4 c'4.) d'4 ( f'4 d'4 c'4.) d'4 ( f'4 d'4) e'4 ( f'4) e'4 \divisioMinima
 e'4 ( f'4 g'4 a'4) ~ a'4 ( g'4) g'4 ( f'4) f'4 ( g'4 a'4) ~ a'4 ( g'4) \divisioMaior
 g'4 g'4 d'4 ( e'\prall f'4) f'4 e'4 ( f'4 g'4 a'4 g'4 e'4 f'4) f'4 e'4 ( g'4 f'4 f'4) d'4 ( e'4 d'4) \divisioMaxima
 d'4 d'4 d'4 ( a'4) a'4 ( g'4) a'4 ( g'4 e'4.) f'4 ( g'\prall a'4 g'4 a'4.) f'4 ( g'\prall a'4 g'4 a'4) f'4 e'4 ( e'4 f'4) \divisioMinima
 e'4 ( c'4.) e'4 ( g'4 e'4) g'4 ( a'4) g'4 ( f'4) f'4 a'4 ( c''4 a'4) g'4 ( a'4 g'4) f'4 g'4 ( a'4 f'4 f'4) e'4 ( d'4) \divisioMinima
 f'4. g'4 ( a'4 g'4 a'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima
 g'4 b'4 ( b'4 c''4) g'4 a'4 a'4 g'4 ( a'4 g'4 f'4 e'4 f'4) f'4 ( e'4) \divisioMaior
 f'4 f'4 e'4 ( f'\prall g'4 a'4) g'4 g'4 \divisioMinima
 g'4 g'4 ( a'4 g'4 g'4) f'4 ( d'4) e'4 ( g'4 f'4 e'4) e'4 ( e'4 f'4) \divisioMaxima
 d'4 ( g'4) g'4 ( f'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 c''4 ( c''4) c''4 ( c''4 c''4) g'4 ( a'4) \divisioMinima
 e'4 ( f'4 g'\prall a'4 g'4) g'4. e'4 ( f'4 d'4 c'4 d'4) f'4 ( d'4) f'4 ( g'\prall a'4 g'4 a'4.) g'4 ( a'4 f'4 e'4) f'4 ( g'4 f'4) ~ f'4 ( e'4) \finalis

}

altoMusic = {
a2*3/2 ~ a2*7/4 ~ a2*3/2 c'2 ~ c'2*7/4 a2*9/4 ~ a2*3/2 ~ a2*3/2 \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ \divisioMaior
c'2 a2*4/2 c'2*8/2 a2*4/2 ~ a2*3/2 \divisioMaxima
r2 c'2 ~ c'2*11/4 d'2*11/4 c'2*6/2 ~ c'2 ~ c'4 ~ \divisioMinima
c'2*11/4 ~ c'2*5/2 ~ c'2*3/2 b2*4/2 a2*4/2 ~ a2 ~ \divisioMinima
a2*11/4 ~ a2*4/2 ~ a2 \divisioMaxima
r4 c'2*6/2 ~ c'2*6/2 ~ c'2 ~ \divisioMaior
c'2 ~ c'2*6/2 ~ \divisioMinima
c'4 ~ c'2*6/2 ~ c'2*4/2 ~ c'2*3/2 \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ \divisioMaior
d'4 g'2 f'2*3/2 e'2 \divisioMinima
c'2*5/2 ~ c'2*3/4 ~ c'2*7/2 ~ c'2 ~ c'2*7/4 ~ c'2*6/2 ~ c'2 ~ c'4 \finalis
}

tenorMusic = {
f2*3/2 g2*7/4 f2*3/2 ~ f2 ~ f2*7/4 ~ f2*9/4 d2*3/2 c2*3/2 \divisioMinima
a2*3/2 f2*3/2 e2 d2 e2*3/2 ~ \divisioMaior
e2 f2*4/2 g2*8/2 ~ g2*4/2 f2*3/2 \divisioMaxima
a2 ~ a2 g2*11/4 a2*11/4 ~ a2*6/2 g2 f4 \divisioMinima
g2*11/4 f2*5/2 e2*3/2 d2*4/2 c2*4/2 ~ c2 ~ \divisioMinima
c2*11/4 ~ c2*4/2 ~ c2 \divisioMaxima
g4 ~ g2*6/2 a2*6/2 g2 ~ \divisioMaior
g2 ~ g2*6/2 ~ \divisioMinima
g4 a2*6/2 ~ a2*4/2 ~ a2*3/2 \divisioMaxima
r2 a2*3/2 c'2*3/2 b2 ~ \divisioMaior
b4 c'2 ~ c'2*3/2 ~ c'2 \divisioMinima
g2*5/2 ~ g2*3/4 a2*7/2 f2 e2*7/4 f2*6/2 g2 a4 \finalis
}

bassMusic = {
d2*3/2 ~ d2*7/4 ~ d2*3/2 a,2 g,2*7/4 f,2*9/4 ~ f,2*3/2 a,2*3/2 ~ \divisioMinima
a,2*3/2 ~ a,2*3/2 ~ a,2 ~ a,2 c2*3/2 ~ \divisioMaior
c2 d2*4/2 c2*8/2 d2*4/2 ~ d2*3/2 \divisioMaxima
f2 ~ f2 e2*11/4 d2*11/4 a,2*6/2 ~ a,2 ~ a,4 \divisioMinima
c2*11/4 a,2*5/2 ~ a,2*3/2 ~ a,2*4/2 ~ a,2*4/2 g,2 \divisioMinima
f,2*11/4 g,2*4/2 a,2 \divisioMaxima
e4 ~ e2*6/2 f2*6/2 c2 \divisioMaior
d2 e2*6/2 ~ \divisioMinima
e4 a2*6/2 g2*4/2 f2*3/2 \divisioMaxima
d2 ~ d2*3/2 ~ d2*3/2 g2 ~ \divisioMaior
g4 e2 d2*3/2 c2 ~ \divisioMinima
c2*5/2 e2*3/4 f2*7/2 a,2 ~ a,2*7/4 ~ a,2*6/2 ~ a,2 ~ a,4 \finalis
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
        "IV"
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
