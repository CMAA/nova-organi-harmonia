\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.356
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedicite Dominum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedicite Dominum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedicite Dominum" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- ne -- _ dí -- ci -- te _ _ 
\set stanza = " * " Dó -- mi -- num _ _ _ 
o -- mnes An -- ge -- li e -- _ _ _ jus: _ _ _ _ _ _ _ _ _ _ 
po -- tén -- tes vir -- tú -- _ te, _ _ _ 
qui fá -- _ ci -- _ tis ver -- bum e -- jus. _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
Bé -- ne -- dic _ _ _ á -- ni -- ma me -- a Dó -- mi -- num, _ _ _ _ _ _ _ _ _ _ 
et ó -- mni -- a in -- te -- ri -- ó -- _ _ _ _ _ _ ra me -- _ _ _ _ a _ _ _ 
no -- men _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
san -- _ _ _ ctum 
\set stanza = " * " e -- jus. _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4 ( f'4 f'4) ~ f'4 ( c'4) d'4 ( e'\prall f'4 e'4) f'4 f'4 ( f'4) ~ f'4 ( d'4) f'4 ( f'4 f'4) \divisioMinima
 e'4 ( f'4 g'\prall a'4 g'4) a'4 ( g'4)  g'4 ( a'4.) e'4 ( f'4 g'\prall a'4 bes'4 g'4) f'4 ( f'4) d'4 ( e'4 d'4) \divisioMaior
 g'4 a'4 ( c''4) c''4 c''4 c''4 c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( a'4 g'4) b'4 ( g'4 a'4) a'4 \divisioMinima
 b'4 ( c''4 b'4) c''4 ( d''4 b'4.) d''4 ( c''4 b'4 a'4) c''4 ( b'4 a'4) \divisioMinima
 c''4 ( c''4) d''4 ( b'4) c''4 ( a'4 g'4) c''4 ( a'4) b'4 ( a'4) ~ a'4 ( g'4) \divisioMaxima
 g'4 a'4 ( c''4 \tiny b' a' \normal) c''4 ( d''4 c''4 a'4) c''4 ( c''4 \once \tweak #'font-size #-4 a' ) c''4 ( c''4) ~ c''4 ( g'4)  g'4 ( a'4.) e'4 ( f'4 g'\prall a'4 bes'4 g'4) f'4 ( f'4) d'4 ( e'4 d'4) \divisioMaior
 g'4 ( c''4 b'4) c''4 ( c''4 b'4) c''4 ( d''4) c''4 ( d''4 c''4 a'4) g'4 ( b'4 a'4 b'4) b'4 ( c''4 d''4) c''4 ( \once \tweak #'font-size #-4 d'' ) g'4 ( f'4) \divisioMinima
 f'4 ( a'4 \once \tweak #'font-size #-4 c'' ) b'4 ( g'4.) b'4 ( a'4 g'4) a'4 ( a'4 f'4) a'4 ( a'4) \divisioMinima
  g'4 c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( a'4 g'4 f'4 e'4) f'4 ( a'4.) bes'4 ( g'4 f'4) g'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( e'4) \finalis
 e'4 e'4 e'4 ( g'4 e'4) g'4 ( a'4 g'4) f'4 ( f'4) d'4 ( e'4 d'4) \divisioMinima
 d'4 ( c'4) g'4 a'4 ( c''4) b'4 ( c''4 a'4) a'4 a'4 ( c''4 b'4 c''4) a'4 ( g'4 a'4) a'4 \divisioMinima
 b'4 ( c''4 b'4) c''4 ( d''4 b'4.) d''4 ( c''4 b'4 a'4) c''4 ( b'4 a'4) \divisioMinima
 c''4 ( c''4) d''4 ( b'4) c''4 ( a'4 g'4) c''4 ( a'4) b'4 ( a'4) ~ a'4 ( g'4) \divisioMaxima
 b'4 ( c''4 g'4) a'4 ( c''4) c''4 c''4 ( c''4) \divisioMinima
 b'4 ( c''4 g'4) a'4 ( b'4) b'4 d''4 ( b'4) c''4 ( d''4 c''4.) d''4 ( b'4) c''4 ( d''4 c''4 d''4.) b'4 ( c''4) d''4 ( c''4 d''4) ~ d''4 ( c''4) c''4 ( b'4) \divisioMinima
 c''4 ( a'4) c''4 ( c''4) ~ c''4 ( a'4 g'4 a'4) c''4 ( c''4) ~ c''4 ( a'4 g'4 a'4) a'4. g'4 ( c''4 a'4) b'4 ( a'4) ~ a'4 ( g'4) \divisioMaxima
 a'4 ( c''4 b'4) c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( a'4) b'4 ( c''4 a'4 g'4) \divisioMinima
 c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( a'4) b'4 ( c''4 a'4 g'4) \divisioMinima
 c''4 ( c''4) d''4 ( a'4) c''4 ( c''4 d''4) c''4 ( d''4) e''4 ( c''4) ~ c''4 ( c''4 a'4) b'4 ( c''4 a'4 g'4) \divisioMinima
 c''4 ( g'4) b'4 ( c''4.) g'4 ( a'4) c''4 ( c''4) ~ c''4 ( a'4 g'4 f'4) ~ f'4 ( d'4) \divisioMaior
 f'4 ( d'4) f'4 ( f'4 d'4) e'4 ( f'4 g'4 a'4) c''4 ( c''4 c''4) g'4 ( f'4)  f'4 ( a'4 \once \tweak #'font-size #-4 c'' ) b'4 ( g'4.) b'4 ( a'4 g'4) a'4 ( a'4 f'4) a'4 ( a'4) \divisioMinima
  g'4 c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( a'4 g'4 f'4 e'4) f'4 ( a'4.) bes'4 ( g'4 f'4) g'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( e'4) \finalis

}

altoMusic = {
r4 c'2*3/2 ~ c'2 ~ c'2*5/2 ~ c'2 bes2 a2*3/2 \divisioMinima
c'2*3/2 ~ c'2*4/2 ~ c'2*5/4 ~ c'2*4/2 d'2 g2 a2*3/2 \divisioMaior
f'2*3/2 g'2*3/2 ~ g'2 f'2 e'2*3/2 ~ e'2*3/2 ~ e'4 \divisioMinima
g'2*3/2 ~ g'2*7/4 ~ g'2*4/2 ~ g'2*3/2 \divisioMinima
f'2*4/2 g'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \divisioMaxima
e'4 ~ e'2*4/2 ~ e'2*4/2 ~ e'2*3/2 ~ e'2 ~ e'2 c'2*5/4 ~ c'2*4/2 d'2 bes2 a2*3/2 \divisioMaior
f'2*3/2 g'2*3/2 ~ g'2 a'2*4/2 g'2*4/2 ~ g'2*3/2 ~ g'2 ~ g'4 f'4 ~ \divisioMinima
f'4 e'2 g'2*5/4 ~ g'2*3/2 f'2*3/2 ~ f'2 ~ f'4 g'2 f'2 e'2 ~ e'2*5/2 d'2*5/4 ~ d'2*3/2 c'2*4/2 ~ c'2 ~ c'4 \finalis
r2 e'2*3/2 ~ e'2*3/2 d'2 a2*3/2 \divisioMinima
r4 c'2*4/2 e'2*4/2 f'2*4/2 e'2*3/2 ~ e'4 \divisioMinima
g'2*3/2 ~ g'2*7/4 a'2*4/2 ~ a'2*3/2 \divisioMinima
f'2*4/2 e'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \divisioMaxima
e'2*3/2 f'2*3/2 e'2 ~ \divisioMinima
e'2*3/2 ~ e'2*3/2 f'2 g'2*11/4 ~ g'2*13/4 ~ g'2 ~ g'2*3/2 ~ g'2 ~ \divisioMinima
g'2 f'2 e'2*4/2 d'2 e'2*4/2 f'2*3/4 g'2*4/2 e'2*3/2 ~ \divisioMaxima
e'2*3/2 ~ e'2 ~ e'2 ~ e'2*4/2 ~ e'2 \divisioMinima
g'2 f'2 e'2*4/2 d'2 \divisioMinima
e'2 ~ e'2 a'2*3/2 g'2*4/2 f'2*5/2 ~ f'2 \divisioMinima
g'2 ~ g'2*5/4 ~ g'4 a'4 f'2 e'2*3/2 f'4 ~ f'4 d'4 ~ \divisioMaior
d'2 c'2*3/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 e'2*5/4 d'2*3/2 c'2*3/2 ~ c'2 ~ c'4 ~ c'2 ~ c'2 ~ c'2 e'2*5/2 d'2*5/4 ~ d'2*3/2 c'2*4/2 ~ c'2 ~ c'4 \finalis
}

tenorMusic = {
r4 a2*3/2 ~ a2 ~ a2*5/2 f2 ~ f2 ~ f2*3/2 \divisioMinima
g2*3/2 e2*4/2 ~ e2*5/4 f2*4/2 ~ f2 ~ f2 ~ f2*3/2 \divisioMaior
a4 c'2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ c'2*3/2 d'2*3/2 c'4 \divisioMinima
d'2*3/2 c'2*7/4 b2*4/2 a2*3/2 ~ \divisioMinima
a2*4/2 g2*3/2 a2*3/2 c'2 b4 \divisioMaxima
r4 c'2*4/2 b2*4/2 a2*3/2 g2 ~ g2 e2*5/4 g2*4/2 ~ g2 ~ g2 f2*3/2 \divisioMaior
c'2*3/2 ~ c'2*3/2 e'2 ~ e'2*4/2 d'2*4/2 e'2*3/2 d'2 c'2*3/2 ~ c'2 e'2*5/4 d'2*3/2 c'2*3/2 ~ c'2 ~ c'4 ~ c'2 ~ c'2 g2 a2*5/2 ~ a2*5/4 f2*3/2 ~ f2*4/2 e2 g4 \finalis
c'2 b2*3/2 a2*3/2 ~ a2 f2*3/2 \divisioMinima
g2*5/2 c'2*4/2 ~ c'2*4/2 b2*3/2 c'4 \divisioMinima
d'2*3/2 e'2*7/4 d'2*4/2 e'2*3/2 \divisioMinima
c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 b4 \divisioMaxima
c'2*3/2 ~ c'2*3/2 ~ c'2 \divisioMinima
d'2*3/2 c'2*3/2 ~ c'2 ~ c'2*11/4 b2*13/4 a2 b2*3/2 e'2 \divisioMinima
c'2 ~ c'2 ~ c'2*4/2 ~ c'2 ~ c'2*4/2 ~ c'2*3/4 ~ c'2*4/2 b2*3/2 \divisioMaxima
r2*3/2 b2 c'2 d'2*4/2 e'2 \divisioMinima
c'2 ~ c'2 ~ c'2*4/2 b2 \divisioMinima
a2 ~ a2 ~ a2*3/2 ~ a2*4/2 ~ a2*5/2 c'2 ~ \divisioMinima
c'2 d'2*5/4 c'2 ~ c'2 ~ c'2*3/2 a2*3/2 ~ \divisioMaior
a2 ~ a2*3/2 g2*4/2 f2*3/2 d2*3/2 e2 g2*5/4 e2*3/2 f2*3/2 ~ f2 ~ f4 g2 f2 e2 g2*5/2 a2*5/4 f2*3/2 ~ f2*4/2 e2 g4 \finalis
}

bassMusic = {
r2*4/2 g2 f2*5/2 d2 ~ d2 ~ d2*3/2 \divisioMinima
c2*3/2 ~ c2*4/2 a,2*5/4 ~ a,2*4/2 g,2 bes,2 d2*3/2 ~ \divisioMaior
d4 ~ d2 e2*3/2 a2 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ a4 \divisioMinima
g2*3/2 e2*7/4 ~ e2*4/2 ~ e2*3/2 \divisioMinima
d2*4/2 e2*3/2 f2*3/2 g2 ~ g4 \divisioMaxima
c4 ~ c2*4/2 ~ c2*4/2 ~ c2*3/2 ~ c2 b,2 a,2*5/4 ~ a,2*4/2 g,2 d2 ~ d2*3/2 ~ \divisioMaior
d2*3/2 e2*3/2 ~ e2 f2*4/2 g2*4/2 ~ g2*3/2 ~ g2 a2*3/2 ~ a2 e2*5/4 ~ e2*3/2 f2*3/2 d2 ~ d4 e2 d2 c2 ~ c2*5/2 ~ c2*5/4 ~ c2*3/2 ~ c2*4/2 ~ c2 ~ c4 ~ \finalis
c2 ~ c2*3/2 ~ c2*3/2 d2 ~ d2*3/2 \divisioMinima
e2*5/2 c2*4/2 d2*4/2 e2*3/2 a4 \divisioMinima
g2*3/2 e2*7/4 f2*4/2 a2*3/2 ~ \divisioMinima
a2*4/2 ~ a2*3/2 f2*3/2 g2 ~ g4 \divisioMaxima
a2*3/2 ~ a2*3/2 ~ a2 ~ \divisioMinima
a2*3/2 ~ a2*3/2 d2 e2*11/4 ~ e2*13/4 ~ e2 ~ e2*3/2 ~ e2 \divisioMinima
a2 ~ a2 ~ a2*4/2 ~ a2 ~ a2*4/2 d2*3/4 e2*4/2 ~ e2*3/2 \divisioMaxima
a2*3/2 ~ a2 ~ a2 ~ a2*4/2 c'2 \divisioMinima
a2 ~ a2 ~ a2*4/2 ~ a2 ~ \divisioMinima
a2 g2 f2*3/2 e2*4/2 d2*5/2 ~ d2 \divisioMinima
e2 ~ e2*5/4 ~ e2 d2 c2*3/2 d2*3/2 ~ \divisioMaior
d2 a,2*3/2 ~ a,2*4/2 ~ a,2*3/2 ~ a,2*3/2 ~ a,2 e2*5/4 ~ e2*3/2 r2*3/2 d2 ~ d4 e2 d2 c2 ~ c2*5/2 ~ c2*5/4 ~ c2*3/2 ~ c2*4/2 ~ c2 ~ c4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
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
