\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.216
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ne derelinquas me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ne derelinquas me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ne derelinquas me" }
    \line {}
  }
}

chantText = \lyricmode {
Ne de -- re -- lín -- quas me, 
\set stanza = " * " Dó -- mi -- ne _ De -- us me -- us, 
ne di -- scé -- das a me: in -- tén -- de in ad -- ju -- tó -- ri -- um me -- um, 
Dó -- mi -- ne _ _ vir -- tus sa -- lú -- _ tis me -- _ æ. Ps. 
Dó -- mi -- ne, ne in fu -- ró -- re tu -- o ár -- gu -- as me: 
\set stanza = " * " 
ne -- que in i -- ra tu -- a cor -- rí -- pi -- as me. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 g'4 ( fis'4) g'4 a'4 a'4 a'4 \divisioMinima
 a'4 ( c''4 b'4 c''4) a'4 ( g'4) g'4 ( b'4 a'4) b'4 ( g'4 fis'4) \divisioMinima
 fis'4 ( g'4 a'4) a'4 \forceBreak
 a'4 ( b'4 c''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMaxima
 g'4 ( fis'4) g'4 a'4 ( b'4) a'4 g'4 ( a'4) g'4 \divisioMinima
 g'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 g'4 g'4 \forceBreak
 g'4 ( b'4 a'4) g'4 g'4 ( g'4 g'4) e'4 ( fis'\prall g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaxima
 fis'4 ( g'4 a'4) a'4 ( fis'4 g'\prall a'4) a'4 ( b'4 g'4 fis'4) g'4 ( fis'4 e'4 d'4) e'4 ( d'4) \divisioMinima \forceBreak

 fis'4 ( fis'4 g'4) e'4 ( fis'\prall g'4) d'4 g'4 ( g'4) ~ g'4 ( e'4) fis'4 ( g'4 a'4) a'4 ( b'4 g'4 fis'4) g'4 ( fis'4 e'4 d'4 e'4) e'4 ( d'4) \finalis
 d'4 ( g'4 fis'4) g'4 ( a'4) a'4 \forceBreak
 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( c''4) b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 \forceBreak
 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis
  d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 a'4 ( c''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 ( c''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 ~ d'2*3/2 \divisioMinima
e'2*4/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'4 e'2*6/2 fis'2 \divisioMaxima
b2*3/2 e'2*3/2 d'2*3/2 ~ \divisioMinima
d'4 c'2*6/2 d'2*4/2 b2*3/2 ~ b2*6/2 ~ b2 \divisioMaxima
d'2*3/2 e'2*4/2 ~ e'2*4/2 d'2*3/2 ~ d'4 b2 \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'4 c'2 d'2 ~ d'2*3/2 ~ d'2*4/2 c'2*5/2 a2 \finalis
r2*3/2 g'2*3/2 ~ g'2*3/2 fis'2*4/2 e'2*3/2 fis'2 ~ fis'2 \divisioMaxima
d'2*5/2 e'2 d'2 c'2*3/2 d'2 ~ d'2*3/2 a2 d'2*6/2 e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*4/2 f'2 ~ f'2 \divisioMaxima
d'2*4/2 ~ d'2 ~ d'2 e'2*4/2 c'2*3/2 e'2 d'2 ~ \divisioMaxima
d'2*4/2 ~ d'2 ~ d'2 c'2*3/2 d'2 ~ d'2*3/2 a2 \finalis
}

tenorMusic = {
r4 e2*3/2 fis2*3/2 \divisioMinima
e2*4/2 ~ e2 g2*3/2 a2*3/2 \divisioMinima
b2*3/2 a4 ~ a2*6/2 ~ a2 \divisioMaxima
e2*3/2 fis2*3/2 g2*3/2 ~ \divisioMinima
g4 ~ g2*6/2 ~ g2*4/2 ~ g2*3/2 a2*6/2 g2 \divisioMaxima
a2*3/2 ~ a2*4/2 e2*4/2 g2*4/2 fis2 \divisioMinima
a2*3/2 g2*4/2 ~ g2 ~ g2 a2*3/2 g2*4/2 ~ g2*5/2 ~ g4 fis4 \finalis
d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 c'2*3/2 d'2 ~ d'2 \divisioMaxima
fis2*5/2 e2 ~ e2 ~ e2*3/2 ~ e2 g2*3/2 ~ g4 fis4 b2*6/2 c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*4/2 d'2 ~ d'2 \divisioMaxima
f2*4/2 e2 f2 e2*4/2 ~ e2*3/2 f2 ~ f2 \divisioMaxima
g2*4/2 ~ g2 f2 e2*3/2 ~ e2 g2*3/2 ~ g4 f4 \finalis
}

bassMusic = {
d4 ~ d2*3/2 ~ d2*3/2 \divisioMinima
c2*4/2 b,2 ~ b,2*3/2 ~ b,2*3/2 ~ \divisioMinima
b,2*3/2 ~ b,4 c2*6/2 d2 ~ \divisioMaxima
d2*3/2 c2*3/2 b,2*3/2 ~ \divisioMinima
b,4 a,2*6/2 b,2*4/2 e2*3/2 ~ e2*6/2 ~ e2 \divisioMaxima
d2*3/2 c2*4/2 ~ c2*4/2 b,2*4/2 ~ b,2 ~ \divisioMinima
b,2*3/2 ~ b,2*4/2 a,2 b,2 ~ b,2*3/2 ~ b,2*4/2 a,2*5/2 d2 \finalis
b2*3/2 ~ b2*3/2 ~ b2*3/2 d'2*4/2 r2*5/2 b2 \divisioMaxima
d2*5/2 c2 b,2 a,2*3/2 b,2 ~ b,2*3/2 d2 r2*9/2 b2*3/2 ~ \divisioMinima
b2 a2*4/2 d'2 b2 \divisioMaxima
d2*4/2 ~ d2 ~ d2 c2*4/2 a,2*3/2 c2 b,2 ~ \divisioMaxima
b,2*4/2 d2 ~ d2 a,2*3/2 b,2 ~ b,2*3/2 d2 \finalis
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
        "VII"
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
