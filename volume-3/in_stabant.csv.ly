\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.128
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Stabant" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Stabant"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Stabant" }
    \line {}
  }
}

chantText = \lyricmode {
Sta -- bant 
\set stanza = " * " ju -- xta cru -- cem Je -- _ su ma -- ter e -- jus, 
et so -- ror ma -- tris e -- jus Ma -- rí -- a Clé -- o -- phæ, 
et Sa -- ló -- me, _ _ 
et _ Ma -- rí -- a Mag -- da -- _ lé -- ne. ℣. 
Mú -- li -- er, ec -- ce fí -- li -- us tu -- us, di -- xit Je -- sus; 
\set stanza = " * " 
ad di -- scí -- pu -- lum au -- tem: Ec -- ce ma -- ter tu -- a. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown    d'4 ( a'4 bes'4) a'4 \divisioMinima
 a'4 a'4 g'4 ( f'4 a'4) a'4  a'4 ( g'4) bes'4 ( a'4) a'4 \divisioMinima
 a'4 c''4 ( c''4) c''4 ( d''4) a'4 \divisioMaior
 a'4 f'4 ( g'4 a'4) a'4 ( g'4) a'4 c''4 ( b'4) c''4 a'4 \divisioMinima
 c''4 ( c''4) c''4 d''4 ( c''4 b'4 c''4) a'4 a'4 ( b'4 a'4) a'4 \divisioMaxima
 a'4 f'4 g'4 ( a'4) a'4 ( g'4) a'4 ( g'4 f'4) d'4 ( e'\prall f'4) \divisioMaior
 d'4 f'4 ( f'4 f'4) f'4 ( d'4) f'4 ( a'4) g'4 g'4 a'4 ( f'4) g'4 ( f'4 e'4) d'4 ( e'\prall f'4 e'4 f'4) e'4 ( d'4) \finalis
 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( c''4) a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis
  f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis

}

altoMusic = {
d'2*3/2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2*3/2 ~ d'4 ~ d'2*4/2 ~ d'4 \divisioMinima
f'4 g'2 f'2 e'4 ~ \divisioMaior
e'4 d'2*3/2 ~ d'2 ~ d'4 e'2 ~ e'2 \divisioMinima
f'2 e'4 ~ e'2*4/2 ~ e'4 ~ e'2*3/2 ~ e'4 \divisioMaxima
c'2 d'2 c'2 ~ c'2*3/2 a2*3/2 ~ \divisioMaior
a4 ~ a2*3/2 ~ a2 c'2*3/2 ~ c'4 ~ c'2 ~ c'2*3/2 a2*5/2 ~ a2 \finalis
f'4 ~ f'2*3/2 g'2 f'2*3/2 e'2 ~ e'2*3/2 d'2 e'2 \divisioMaxima
d'2 ~ d'2 ~ d'2*3/2 e'2 \divisioMinima
d'4 ~ d'2*3/2 ~ d'2 a2*3/2 ~ a4 f'4 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2 e'2*4/2 d'2 e'2 \divisioMaxima
c'2 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 ~ \divisioMinima
c'4 ~ c'2*3/2 d'2 c'2 ~ \divisioMaxima
c'2*4/2 ~ c'2*4/2 ~ c'2*5/2 a2*4/2 \finalis
}

tenorMusic = {
r2*4/2 \divisioMinima
r2 e2*3/2 f4 ~ f2*4/2 ~ f4 \divisioMinima
a4 g2 a2 ~ a4 ~ \divisioMaior
a4 ~ a2*3/2 ~ a2 ~ a4 ~ a2 ~ a2 ~ \divisioMinima
a2*3/2 b2*4/2 c'4 d'2*3/2 c'4 \divisioMaxima
f2 ~ f2 e2 f2*3/2 ~ f2*3/2 ~ \divisioMaior
f4 e2*3/2 d2 ~ d2*3/2 e4 d2 e2*3/2 f2*5/2 g4 f4 \finalis
f'2*4/2 e'2 d'2*3/2 c'2 ~ c'2*3/2 bes2 c'2 \divisioMaxima
a2 g2 f2*3/2 e2 \divisioMinima
f4 g2*3/2 a2 f2*3/2 ~ f4 f'2*4/2 e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 c'2*4/2 bes2 c'2 \divisioMaxima
a2 g2 f2*4/2 e2*3/2 ~ \divisioMinima
e4 f2*3/2 ~ f2 ~ f2 \divisioMaxima
e2*4/2 ~ e2*4/2 f2*5/2 ~ f2*4/2 \finalis
}

bassMusic = {
r2*4/2 \divisioMinima
d2 ~ d2*3/2 ~ d4 bes,2*4/2 d4 ~ \divisioMinima
d4 e2 d2 c4 ~ \divisioMaior
c4 d2*3/2 e2 f4 g2 a2 ~ \divisioMinima
a2*3/2 ~ a2*4/2 ~ a4 ~ a2*3/2 ~ a4 \divisioMaxima
a,2 bes,2 c2 a,2*3/2 d2*3/2 ~ \divisioMaior
d4 ~ d2*3/2 ~ d2 c2*3/2 ~ c4 ~ c2 ~ c2*3/2 d2*5/2 ~ d2 \finalis
r2*11/2 a2*3/2 bes2 a2 \divisioMaxima
d2 ~ d2 ~ d2*3/2 c2 \divisioMinima
d4 ~ d2*3/2 ~ d2 ~ d2*3/2 ~ d4 r2*18/2 a2 \divisioMaxima
a,2 ~ a,2 ~ a,2*4/2 ~ a,2*3/2 ~ \divisioMinima
a,4 ~ a,2*3/2 bes,2 f,2 \divisioMaxima
c2*4/2 a,2*4/2 ~ a,2*5/2 d2*4/2 \finalis
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
