\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.77
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Spiritus Domini (cum alleluia)" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Spiritus Domini (cum alleluia)"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Spiritus Domini (cum alleluia)" }
    \line {}
  }
}

chantText = \lyricmode {
Spi -- ri -- tus Dó -- mi -- ni 
\set stanza = " * " re -- plé -- vit or -- bem ter -- rá -- rum, al -- le -- _ lú -- ia: 
et hoc quod cón -- ti -- net ó -- mni -- a, 
sci -- én -- ti -- am _ ha -- bet vo -- cis, 
al -- le -- lú -- _ ia, al -- le -- lú -- _ ia, al -- le -- _ lú -- ia. Ps. 
Ex -- súr -- gat De -- us, et dis -- si -- pén -- tur in -- i -- mí -- ci e -- jus: 
\set stanza = " * " 
et fú -- gi -- ant, qui o -- dé -- runt e -- um, a fá -- ci -- e e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   d'4 f'4 ( a'4 g'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 g'4 ( a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 f'4 ( a'4) c''4 ( c''4 d''4) c''4 d''4 ( \once \tweak #'font-size #-4 e'' ) c''4 \forceBreak
 c''4 ( c''4 c''4) g'4 c''4 ( c''4) \divisioMinima
 a'4 a'4 f'4 ( a'4 g'4) g'4 ( a'4 g'4) g'4 \divisioMaxima
 f'4 ( g'4) g'4 ( c''4 c''4 \forceBreak
) g'4 g'4 ( c''4 b'4 c''4) a'4 ( b'4 a'4 g'4 a'4) a'4 ( g'4) g'4 ( a'4 \once \tweak #'font-size #-4 c'' ) c''4 c''4 \divisioMaior
 b'4 c''4 ( \once \tweak #'font-size #-4 d'' ) d''4 ( c''4 \forceBreak
) c''4 ( c''4 c''4) a'4 ( b'4 a'4) d''4 ( e''4) c''4 c''4 ( c''4 c''4) a'4 \divisioMaior
 a'4 ( \once \tweak #'font-size #-4 g' ) f'4 ( g'4 a'4) a'4 ( g'4) a'4 ( \tiny g' f' 4) f'4 \divisioMinima \forceBreak

 f'4 ( a'4 \once \tweak #'font-size #-4 c'' ) c''4 c''4 ( b'4) c''4 ( a'4 \once \tweak #'font-size #-4 c'' ) b'4 ( c''4 a'4 g'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( \once \tweak #'font-size #-4 a' ) f'4 ( a'4 g'4) g'4 ( a'4 g'4) g'4 \finalis \forceBreak

 g'4 a'4 ( g'4) g'4 ( c''4) c''4 c''4 \divisioMinima
 c''4 c''4 c''4 c''4 c''4 c''4 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima \forceBreak

 c''4 ( \once \tweak #'font-size #-4 a' ) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 ( c''4 b'4) g'4 ( a'4) c''4 ( b'4) a'4 g'4 \finalis \forceBreak

  g'4 a'4 ( g'4) g'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima \forceBreak

 c''4 ( a'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima \forceBreak

 c''4 ( a'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 ( c''4 b'4) g'4 ( a'4) c''4 ( b'4) a'4 g'4 ( a'4 d'4) f'4 ( f'4 g'4) \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 e'2 ~ e'4 ~ e'2*3/2 c'2 d'2 \divisioMinima
f'2 g'2*4/2 a'2*3/2 e'2*3/2 ~ e'4 ~ e'2 ~ \divisioMinima
e'4 d'4 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMaxima
r2 g'2*3/2 ~ g'4 e'2*4/2 ~ e'2*5/2 d'2 e'2*3/2 ~ e'2 ~ \divisioMaior
e'4 ~ e'2 a'2 g'2*3/2 f'2*3/2 g'2*3/2 e'2*3/2 ~ e'4 ~ \divisioMaior
e'2 f'2*3/2 c'2 ~ c'2*3/2 ~ c'4 \divisioMinima
f'4 ~ f'2*3/2 ~ f'2*5/2 e'2 d'2 \divisioMinima
e'2 ~ e'2 f'2*3/2 d'2*3/2 ~ d'4 \finalis
r4 e'2 ~ e'2 ~ e'2 ~ \divisioMinima
e'2*3/2 f'2*3/2 g'2 ~ g'2 ~ g'4 e'2 ~ e'4 \divisioMaxima
g'2 a'2*6/2 ~ a'2*4/2 ~ \divisioMinima
a'4 g'2*3/2 ~ g'2 ~ g'2 d'2 r4 e'2 ~ e'2*5/2 ~ e'2*3/2 ~ \divisioMinima
e'2 g'2 ~ g'2*3/2 ~ g'2*3/2 \divisioMaxima
f'2 ~ f'2*6/2 g'2*3/2 ~ \divisioMinima
g'2 ~ g'2*3/2 e'2 ~ e'4 ~ \divisioMaxima
e'2 f'2 g'2*4/2 ~ g'2*3/2 ~ g'2 ~ g'2 e'4 d'2 ~ d'4 c'2 d'4 \finalis
}

tenorMusic = {
r4 c'2*3/2 ~ c'2 ~ c'4 ~ c'2*3/2 a2 ~ a2 \divisioMinima
d'2 c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 b4 a2 \divisioMinima
c'4 ~ c'4 ~ c'2*3/2 ~ c'2*3/2 b4 \divisioMaxima
c'2 ~ c'2*3/2 d'4 ~ d'2*4/2 c'2*5/2 b2 c'2*3/2 ~ c'2 ~ \divisioMaior
c'4 a2 ~ a2 ~ a2*3/2 c'2*3/2 ~ c'2*3/2 b2*3/2 c'4 ~ \divisioMaior
c'2 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 a4 \divisioMinima
f4 ~ f2 a4 ~ a2*5/2 ~ a2 b2 \divisioMinima
c'2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 b4 \finalis
r4 c'2 ~ c'2 ~ c'2 ~ \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2 a2 b4 ~ b2 a4 \divisioMaxima
e'2 ~ e'2*6/2 d'2*4/2 ~ \divisioMinima
d'4 ~ d'2*3/2 b2 c'2 ~ c'4 b4 c'2*3/2 ~ c'2*5/2 ~ c'2*3/2 ~ \divisioMinima
c'2 d'2 b2*3/2 c'2*3/2 \divisioMaxima
d'2 c'2*6/2 ~ c'2*3/2 \divisioMinima
d'2 b2*3/2 ~ b2 a4 ~ \divisioMaxima
a2 ~ a2 g2*3/2 c'4 d'2*3/2 b2 c'2 ~ c'4 ~ c'2*3/2 a2 b4 \finalis
}

bassMusic = {
r2*6/2 b4 a2*3/2 ~ a2 d2 ~ \divisioMinima
d2 e2*4/2 f2*3/2 a2*3/2 ~ a4 ~ a2 ~ \divisioMinima
a4 f4 d2*3/2 g2*3/2 ~ g4 \divisioMaxima
d2 e2*3/2 ~ e4 a2*4/2 ~ a2*5/2 b2 ~ b2*3/2 a2 ~ \divisioMaior
a4 g2 f2 e2*3/2 d2*3/2 e2*3/2 a2*3/2 ~ a4 \divisioMaior
c2 d2*3/2 e2 f2*3/2 ~ f4 ~ \divisioMinima
f4 e2 ~ e4 d2*5/2 c2 ~ c2 ~ \divisioMinima
c2 f2 d2*3/2 g2*3/2 ~ g4 \finalis
r4 r2 b2 a2 ~ \divisioMinima
a2*3/2 d2*3/2 e2 g2 ~ g4 a2 ~ a4 \divisioMaxima
e2 f2*6/2 ~ f2*4/2 ~ \divisioMinima
f4 g2*3/2 ~ g2 e2 g2 r2*3/2 b2*5/2 a2*3/2 ~ \divisioMinima
a2 g2 ~ g2*3/2 e2*3/2 \divisioMaxima
d2 ~ d2*6/2 e2*3/2 \divisioMinima
g2 ~ g2*3/2 a2 ~ a4 \divisioMaxima
d2 ~ d2 e2*3/2 ~ e4 g2*3/2 ~ g2 e2 f4 g2*3/2 ~ g2 ~ g4 \finalis
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
