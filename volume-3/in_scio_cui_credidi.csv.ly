\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.44
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Scio cui credidi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Scio cui credidi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Scio cui credidi" }
    \line {}
  }
}

chantText = \lyricmode {
Sci -- o 
\set stanza = " * " cu -- i _ cré -- di -- di, 
et _ cer -- tus sum, qui -- a po -- tens est _ 
de -- pó -- si -- tum me -- um ser -- vá -- _ re in _ _ _ il -- lum di -- em Ps. 
Dó -- mi -- ne pro -- bá -- sti me, et co -- gno -- ví -- sti me: 
\set stanza = " * " 
tu co -- gno -- ví -- sti ses -- si -- ó -- nem me -- am, et re -- sur -- re -- cti -- ó -- nem me -- am. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   a'4 g'4 ( a'4 g'4)  a'4  a'4 ( g'4) a'4 ( bes'4 a'4) f'4 ( g'4 a'4) f'4 d'4 ( e'\prall f'4 e'4 c'4) \divisioMaior
 f'4 ( f'4) ~ f'4 ( d'4) f'4 ( g'4 a'4) d'4 ( e'\prall f'4 d'4) d'4 \divisioMinima
 d'4 d'4 f'4 ( g'4 a'4) g'4 f'4 ( g'4 f'4 f'4) d'4 ( e'4 d'4) \divisioMaior
 d'4 f'4 e'4 ( f'4) d'4 ( \once \tweak #'font-size #-4 c' ) f'4 ( a'4) g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 a' ) f'4 ( g'4) a'4 ( g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 g'4 ( f'4) ~ f'4 ( e'4 c'4) d'4 ( e'\prall f'4) g'4 ( a'4) f'4 ( \once \tweak #'font-size #-4 d' ) f'4 d'4 ( e'4 d'4) d'4 \finalis
 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( g'4) a'4 \finalis
  f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( g'4) a'4 \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 ~ d'4 ~ d'2 ~ d'2*3/2 c'2*4/2 a2*5/2 ~ \divisioMaior
a2 bes2 a2*3/2 ~ a2*4/2 ~ a4 \divisioMinima
d'2 c'2*4/2 a2*4/2 ~ a2 ~ a4 ~ \divisioMaior
a4 c'2*3/2 a2 c'2*4/2 ~ c'2 ~ c'2 ~ c'2*4/2 ~ c'2 ~ \divisioMinima
c'4 ~ c'2*4/2 a2*5/2 ~ a2*3/2 ~ a2*3/2 ~ a4 \finalis
f'4 ~ f'2*4/2 g'2*4/2 f'2*3/2 e'4 d'2 c'2 ~ \divisioMaxima
c'2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2 e'2 \divisioMinima
d'2*4/2 c'2*3/2 ~ c'2 d'2 c'4 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 c'2*4/2 ~ c'2 ~ c'2 ~ \divisioMaxima
c'2*4/2 ~ c'2*4/2 d'2*3/2 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2 c'2 ~ \divisioMaxima
c'2*4/2 ~ c'2*4/2 ~ c'2*5/2 d'2 c'4 \finalis
}

tenorMusic = {
d4 e2*3/2 f4 ~ f2 ~ f2*3/2 ~ f2*4/2 ~ f2*5/2 ~ \divisioMaior
f2 ~ f2 ~ f2*3/2 g2*4/2 f4 ~ \divisioMinima
f2 ~ f2*4/2 ~ f2*4/2 g2 f4 ~ \divisioMaior
f4 ~ f2*3/2 e2 f2*4/2 e2 d2 e2*4/2 f2 ~ \divisioMinima
f4 a2*4/2 f2*5/2 a2*3/2 g2*3/2 f4 \finalis
f'2*5/2 e'2*4/2 d'2*3/2 c'4 bes2 f2 \divisioMaxima
a2 g2*3/2 f2*4/2 e2 ~ e2 \divisioMinima
f2*4/2 e2*3/2 f2 ~ f2 ~ f4 r2*4/2 e2*3/2 f2*3/2 ~ \divisioMinima
f2 ~ f2*4/2 e2 ~ e2 ~ \divisioMaxima
e2*4/2 f2*4/2 ~ f2*3/2 ~ \divisioMinima
f4 ~ f2*3/2 d2 e2 ~ \divisioMaxima
e2*4/2 ~ e2*4/2 f2*5/2 ~ f2 ~ f4 \finalis
}

bassMusic = {
d4 ~ d2*3/2 ~ d4 c2 bes,2*3/2 a,2*4/2 d2*5/2 ~ \divisioMaior
d2 ~ d2 ~ d2*3/2 ~ d2*4/2 ~ d4 \divisioMinima
bes,2 a,2*4/2 d2*4/2 ~ d2 ~ d4 ~ \divisioMaior
d4 a,2*3/2 ~ a,2 ~ a,2*4/2 c2 ~ c2 ~ c2*4/2 a,2 ~ \divisioMinima
a,4 ~ a,2*4/2 d2*5/2 ~ d2*3/2 ~ d2*3/2 ~ d4 \finalis
r2*17/2 \divisioMaxima
a,2 ~ a,2*3/2 ~ a,2*4/2 ~ a,2 c2 \divisioMinima
d2*4/2 a,2*3/2 ~ a,2 bes,2 f,4 d2*4/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMinima
d2 a,2*4/2 c2 a,2 \divisioMaxima
c2*4/2 f2*4/2 d2*3/2 ~ \divisioMinima
d4 c2*3/2 bes,2 a,2 \divisioMaxima
c2*4/2 a,2*4/2 ~ a,2*5/2 bes,2 f,4 \finalis
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
