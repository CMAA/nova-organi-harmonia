\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.3
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ad te levavi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ad te levavi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ad te levavi" }
    \line {}
  }
}

chantText = \lyricmode {
Ad te le -- vá -- vi 
\set stanza = " * " á -- ni -- mam me -- am: _ 
De -- us me -- _ us in te con -- fí -- _ do, non e -- ru -- bé -- scam: 
ne -- que _ _ ir -- rí -- de -- ant me i -- ni -- mí -- ci me -- i: 
ét -- e -- nim u -- ni -- vér -- si qui te ex -- spé -- _ ctant 
non con -- fun -- _ dén -- tur. 
\set stanza = " Ps. " 
Vi -- as tu -- as, Dó -- mi -- ne, de -- món -- stra mi -- hi: 
\set stanza = " * " 
et sé -- mi -- tas tu -- as é -- do -- ce me. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown  g'4 ( \once \tweak #'font-size #-4 d' ) f'4 g'4 ( a'4) a'4 g'4 \divisioMinima
 g'4 ( c''4 c''4) a'4 g'4 ( a'4) f'4 ( g'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMaior
 a'4 c''4 ( c''4) c''4 ( c''4) d''4 ( c''4) c''4 ( d''4) \divisioMinima \forceBreak

 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 f'4 f'4 ( a'4) c''4 ( b'4) b'4 ( a'4) \divisioMinima
 c''4 ( c''4 c''4) a'4 ( g'4) g'4 ( a'4 f'4 g'4) g'4 ( a'4 g'4) g'4 \divisioMaxima
 c''4 c''4. ~ c''4 ( c''4 c''4) a'4 ( b'4 a'4) a'4 \forceBreak
 c''4 ( d''4 c''4) b'4 ( a'4) c''4 ( c''4 c''4) g'4 \divisioMinima
 g'4 g'4 g'4 ( a'4 b'\prall c''4) c''4 ( a'4) a'4 ( f'4) f'4 \divisioMaxima
 f'4 ( a'4) a'4 ( g'4) g'4 g'4 g'4 \forceBreak
 g'4 ( b'4 a'4 b'4) g'4 \divisioMinima
 g'4 g'4 a'4 ( c''4 b'4) b'4 c''4 ( d''4 c''4) a'4 ( b'4 a'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 ( f'4) a'4 ( g'4) g'4 ( a'4 g'4) g'4 \finalis \forceBreak

 g'4 a'4 ( g'4) g'4 ( c''4) c''4 c''4 c''4 c''4 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima
 c''4 ( \once \tweak #'font-size #-4 a' ) a'4 ( c''4) c''4 c''4 \forceBreak
 c''4 c''4 ( c''4 b'4) g'4 ( a'4) c''4 ( b'4) a'4 g'4 \finalis
 g'4 a'4 ( g'4) g'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima \forceBreak

 c''4 c''4 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima
 c''4 ( \once \tweak #'font-size #-4 a' ) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima \forceBreak

 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima
 c''4 ( \once \tweak #'font-size #-4 a' ) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 ( c''4 b'4) g'4 ( a'4) c''4 ( b'4) a'4 g'4 ( a'4 d'4) f'4 ( f'4 g'4) \finalis

}

altoMusic = {
r4 d'2 ~ d'2 ~ d'2 \divisioMinima
e'2*6/2 c'2 ~ c'2 d'2*3/2 \divisioMaior
f'4 e'2 f'2 g'2 f'2 ~ \divisioMinima
f'2*4/2 ~ f'2 ~ f'2 e'2 \divisioMinima
g'2*3/2 e'2 ~ e'2*4/2 d'2*3/2 ~ d'4 \divisioMaxima
g'4 ~ g'2*3/4 f'2*3/2 e'2*4/2 ~ e'2*3/2 f'2 c'2*4/2 \divisioMinima
d'2 c'2*4/2 f'2 e'2 d'4 ~ \divisioMaxima
d'2 ~ d'2*5/2 e'2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*3/2 ~ e'4 g'2*3/2 e'2*3/2 ~ \divisioMaior
e'2*3/2 f'2 e'2 d'2*3/2 ~ d'4 \finalis
r4 e'2 ~ e'2*3/2 ~ e'2*3/2 g'2 ~ g'2*3/2 e'2*3/2 \divisioMaxima
g'2 a'2*4/2 ~ a'4 g'2*3/2 e'2 f'2*3/2 d'4 \finalis
r4 e'2 ~ e'2 ~ e'2*6/2 ~ \divisioMinima
e'2 g'2 ~ g'2*3/2 e'2*3/2 ~ \divisioMaxima
e'2 f'2*6/2 g'2*3/2 ~ \divisioMinima
g'2 ~ g'2*3/2 e'2*3/2 \divisioMaxima
f'2 ~ f'2 g'2*4/2 ~ g'2*3/2 ~ g'2 f'2 e'4 d'2*3/2 c'2 d'4 \finalis
}

tenorMusic = {
r2*7/2 \divisioMinima
\shiftRightB c'4 ~ c'2*5/2 \shiftRight a2 ~ a2 ~ a2*3/2 ~ \divisioMaior
a4 ~ a2 ~ a2 ~ a2 ~ a2 \divisioMinima
c'2*4/2 ~ c'2 d'2 c'2 ~ \divisioMinima
c'2*3/2 b2 c'2*4/2 ~ c'2*3/2 b4 \divisioMaxima
g4 a2*3/4 ~ a2*3/2 ~ a2*4/2 ~ a2*3/2 ~ a2 g2*4/2 \divisioMinima
b2 a2*4/2 ~ a2 ~ a2 ~ a4 ~ \divisioMaxima
a2 b2*5/2 c'2 b2*3/2 ~ \divisioMinima
b2 a2*3/2 ~ a4 g2*3/2 a2*3/2 \divisioMaior
c'2*3/2 ~ c'2*4/2 ~ c'2*3/2 b4 \finalis
c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 d'2 b2*3/2 c'2*3/2 \divisioMaxima
e'2 ~ e'2*4/2 d'4 ~ d'2*3/2 c'2 ~ c'2*3/2 b4 \finalis
r4 c'2 ~ c'2 ~ c'2*6/2 ~ \divisioMinima
c'2 d'2 b2*3/2 a2*3/2 \divisioMaxima
c'2 ~ c'2*6/2 ~ c'2*3/2 \divisioMinima
d'2 b2*3/2 a2*3/2 ~ \divisioMaxima
a2 d'2 g2*4/2 d'2*3/2 c'2 ~ c'2 ~ c'4 ~ c'2*3/2 a2 b4 \finalis
}

bassMusic = {
r2*3/2 c'2 b2 ~ \divisioMinima
b4 a2*5/2 ~ a2 e2 d2*3/2 ~ \divisioMaior
d4 a2 d2 e2 d2 ~ \divisioMinima
d2*4/2 a2 ~ a2 ~ a2 \divisioMinima
e2*3/2 ~ e2 a2*4/2 g2*3/2 ~ g4 \divisioMaxima
e4 ~ e2*3/4 d2*3/2 c2*4/2 a2*3/2 d2 e2*4/2 ~ \divisioMinima
e2 ~ e2*4/2 d2 c2 d4 \divisioMaxima
c2 ~ c2*5/2 ~ c2 e2*3/2 \divisioMinima
d2 c2*3/2 e4 ~ e2*3/2 \shiftRight a2*3/2 ~ \divisioMaior
a2*3/2 f2*4/2 g2*3/2 ~ g4 \finalis
r2*3/2 b2*3/2 a2*3/2 g2 ~ g2*3/2 a2*3/2 \divisioMaxima
e2 f2*4/2 ~ f4 g2*3/2 e2 d2*3/2 g4 \finalis
r2*3/2 b2 a2*6/2 ~ \divisioMinima
a2 g2 ~ g2*3/2 a2*3/2 \divisioMaxima
c2 d2*6/2 e2*3/2 \divisioMinima
g2 ~ g2*3/2 a2*3/2 \divisioMaxima
d2 ~ d2 e2*4/2 g2*3/2 e2 d2 f4 g2*3/2 ~ g2 ~ g4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*387/4
\voiceLine "down" "down" g2*4/2 g2*3/2
}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
        "VIII."
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
