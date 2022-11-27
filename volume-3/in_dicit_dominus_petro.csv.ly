\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.236
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dicit Dominus Petro" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dicit Dominus Petro"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dicit Dominus Petro" }
    \line {}
  }
}

chantText = \lyricmode {
Di -- cit 
\set stanza = " * " Dó -- mi -- nus Pe -- tro: 
Cum es -- ses jú -- ni -- or, cin -- gé -- bas te, 
et am -- bu -- lá -- _ bas u -- bi vo -- lé -- bas: 
cum au -- tem se -- nú -- e -- ris, 
ex -- tén -- des ma -- nus tu -- _ as, 
et á -- li -- us te cin -- _ get, 
et du -- cet quo tu non vis: 
hoc au -- tem di -- _ xit, si -- gní -- fi -- cans qua mor -- _ te cla -- ri -- fi -- ca -- tú -- rus es -- set De -- um. Ps. 
Cœ -- li e -- nár -- rant gló -- ri -- am De -- i: 
\set stanza = " * " 
et ó -- pe -- ra má -- nu -- um e -- jus an -- nún -- ti -- at fir -- ma -- mén -- tum. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 ( g'4 f'4) e'4 ( f'4 g'4)  a'4 ( g'4 a'4) f'4 f'4 ( d'4 e'\prall f'4) f'4 ( g'4 f'4) e'4 ( g'4 f'4 f'4) \divisioMaior
 d'4 g'4 a'4 a'4 a'4 a'4 ( b'4 a'4) \divisioMinima
 a'4 a'4 a'4 ( g'4) a'4 \divisioMaior
 a'4 ( f'4) g'4 g'4 ( d'4) f'4 ( f'4) ~ f'4 ( g'4) f'4 \divisioMinima
 f'4 f'4 ( g'4 a'4) a'4 ( g'4 g'4) e'4 e'4 ( g'4 f'4 f'4) \divisioMaxima
 d'4 g'4 ( a'4) a'4 ( g'4 a'4) g'4 ( e'4) e'4 ( g'4 f'4 e'4) e'4 e'4 ( g'4 f'4 f'4) \divisioMaior
 d'4 ( g'4) a'4 ( b'4 a'4 g'4 a'\prall b'4 c''4 c''4) c''4 c''4 b'4 ( b'4 a'4) b'4 ( a'4) ~ a'4 ( g'4 a'4) a'4 ( g'4) \divisioMaxima
 f'4 g'4 ( a'4) a'4 ( g'4) g'4 g'4 g'4 ( f'4) ~ f'4 ( \tiny e' d' 4) e'4 ( d'4) \divisioMaior
 f'4 g'4 ( a'4) a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) g'4 e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima
 f'4 f'4 ( f'4 f'4) f'4 ( \once \tweak #'font-size #-4 d' ) g'4 ( a'4 g'4) a'4 ( b'4) a'4 \divisioMinima
 a'4 c''4 ( c''4 d''4) a'4 a'4 ( b'4 a'4) g'4 g'4 ( f'4) ~ f'4 ( \tiny e' d' 4) e'4 ( d'4) \divisioMinima
 d'4 d'4 ( f'4) f'4 f'4 ( e'4) g'4 ( a'4 g'4) a'4 a'4 ( c''4 b'4 c''4) a'4 ( c''4 b'4 g'4 a'\prall b'4 a'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 a'4 g'4 ( f'4) g'4 ( a'4) g'4 e'4 \finalis
  a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 g'4 ( f'4) g'4 ( a'4) g'4 e'4 \finalis

}

altoMusic = {
c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2*4/2 d'2*3/2 c'2*4/2 ~ \divisioMaior
c'4 d'2 ~ d'2 ~ d'2 c'4 ~ \divisioMinima
c'4 b4 b'2 c'4 ~ \divisioMaior
c'2*3/2 ~ c'2 a2 ~ a2 ~ a4 ~ \divisioMinima
a4 c'2*3/2 ~ c'2*3/2 ~ c'4 a2*4/2 \divisioMaxima
r4 c'2 ~ c'2*5/2 ~ c'2*5/2 a2*4/2 \divisioMaior
d'2 e'2*3/2 ~ e'2*3/2 ~ e'2*4/2 g'2*4/2 d'2*4/2 ~ d'2 \divisioMaxima
r4 c'2 ~ c'2*5/2 a2*4/2 ~ a2 ~ \divisioMaior
a4 c'2 ~ c'2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2 \divisioMaxima
r4 c'2*3/2 d'2 ~ d'2*3/2 e'2 ~ e'4 ~ \divisioMinima
e'4 f'2*4/2 e'2*5/2 c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2*4/2 f'2*4/2 ~ f'2*3/2 e'2*5/2 c'2 b2 c'2 \finalis
e'2 ~ e'2*3/2 ~ e'2 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'4 ~ \divisioMaxima
e'2 d'2*4/2 c'2*3/2 ~ c'2 ~ \divisioMinima
c'4 ~ c'2*3/2 b2*4/2 c'2 e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'4 ~ \divisioMaxima
e'2 d'2 c'2*4/2 ~ c'2*3/2 \divisioMinima
b2 d'2*3/2 ~ d'2 c'4 \divisioMaxima
d'2 ~ d'2 e'2*5/2 b2*4/2 c'2 \finalis
}

tenorMusic = {
a2*3/2 ~ a2*3/2 ~ a2*4/2 ~ a2*4/2 ~ a2*3/2 ~ a2*4/2 ~ \divisioMaior
a4 g2 d2 e2*3/2 ~ \divisioMinima
e2 d2 e4 \divisioMaior
f2*3/2 e2 d2 e2 f4 ~ \divisioMinima
f4 ~ f2*3/2 e2*3/2 g4 a2*4/2 \divisioMaxima
r4 c'2 g2*5/2 ~ g2*5/2 f2*4/2 \divisioMaior
d'2 ~ d'2*3/2 b2*3/2 a2*4/2 d'2*4/2 c'2*4/2 b2 \divisioMaxima
r4 c'2 g2*5/2 ~ g2*4/2 f2 ~ \divisioMaior
f4 ~ f2 d2 e2*3/2 g2*4/2 a2 \divisioMaxima
r4 c'2*3/2 ~ c'2 b2*3/2 d'2 c'4 ~ \divisioMinima
c'4 ~ c'2*4/2 ~ c'2*5/2 a2*4/2 ~ a2 ~ \divisioMinima
a4 g2*3/2 a2 ~ a2*4/2 ~ a2*4/2 c'2*3/2 b2*5/2 a2 ~ a2 ~ a2 \finalis
c'2 ~ c'2*3/2 ~ c'2 b2 d'2*3/2 ~ d'2 c'4 \divisioMaxima
b2 ~ b2*4/2 a2*3/2 g2 ~ \divisioMinima
g4 f2*3/2 ~ f2*4/2 e2 e'2 d'2*3/2 ~ d'2*3/2 c'2*3/2 ~ \divisioMinima
c'2 b2 d'2*3/2 ~ d'2 c'4 \divisioMaxima
a2 ~ a2 ~ a2*4/2 e2*3/2 ~ \divisioMinima
e2 ~ e2*3/2 ~ e2*3/2 \divisioMaxima
d2 a2 ~ a2*5/2 ~ a2*4/2 ~ a2 \finalis
}

bassMusic = {
r2*3/2 g2*3/2 f2*4/2 e2*4/2 d2*3/2 a,2*4/2 ~ \divisioMaior
a,4 b,2 ~ b,2 a,2*3/2 ~ \divisioMinima
a,2 ~ a,2 ~ a,4 ~ \divisioMaior
a,2*3/2 ~ a,2 d2 ~ d2 ~ d4 ~ \divisioMinima
d4 ~ d2*3/2 ~ d2*3/2 ~ d4 ~ d2*4/2 \divisioMaxima
r4 e2 ~ e2*5/2 c2*5/2 d2*4/2 \divisioMaior
b2 a2*3/2 ~ a2*3/2 ~ a2*4/2 g2*4/2 ~ g2*4/2 ~ g2 \divisioMaxima
r4 e2 ~ e2*5/2 d2*4/2 ~ d2 ~ \divisioMaior
d4 a,2 ~ a,2 ~ a,2*3/2 ~ a,2*4/2 ~ a,2 \divisioMaxima
r4 a2*3/2 ~ a2 ~ a2*3/2 ~ a2 ~ a4 ~ \divisioMinima
a4 ~ a2*4/2 ~ a2*5/2 g2*4/2 f2*3/2 ~ f2*3/2 ~ f2 e2*4/2 d2*4/2 ~ d2*3/2 e2*5/2 a,2 ~ a,2 ~ a,2 \finalis
r2 b2*3/2 a2 e2 ~ e2*3/2 a2 ~ a4 \divisioMaxima
e2 ~ e2*4/2 f2*3/2 e2 ~ \divisioMinima
e4 d2*3/2 ~ d2*4/2 a,2 c'2 b2*3/2 a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2 e2 ~ e2*3/2 a2 ~ a4 \divisioMaxima
c2 b,2 a,2*4/2 ~ a,2*3/2 ~ \divisioMinima
a,2 ~ a,2*3/2 ~ a,2*3/2 \divisioMaxima
b,2 ~ b,2 c2*5/2 d2*4/2 a,2 \finalis
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
