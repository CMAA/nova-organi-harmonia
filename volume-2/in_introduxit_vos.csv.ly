\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.8
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Introduxit vos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Introduxit vos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Introduxit vos" }
    \line {}
  }
}

chantText = \lyricmode {
In -- tro -- dú -- xit vos Dó -- mi -- nus 
\set stanza = " * " 
in ter -- ram flu -- én -- _ tem lac et mel, _ _ al -- le -- _ lú -- ia: 
et ut lex _ Dó -- mi -- ni sem -- per sit in o -- re ve -- stro, 
al -- le -- lú -- ia, al -- le -- _ lú -- ia. Ps. 
Con -- fi -- té -- mi -- ni Dó -- mi -- no, et in -- vo -- cá -- te no -- men e -- jus: 
\set stanza = " * " 
an -- nun -- ti -- á -- te in -- ter gen -- tes ó -- pe -- ra e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   d'4 d'4 d'4 ( f'4 g'4) g'4 ( f'4) a'4 ( b'\prall c''4) a'4 ( g'4) g'4 ( a'4 g'4) g'4 \divisioMaior
 f'4 g'4 ( a'4 g'4) a'4 g'4 g'4 ( a'4) c''4 ( b'4) b'4 ( \once \tweak #'font-size #-4 a'  \forceBreak
) c''4 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( c''4) ~ c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 a'4 ( b'\prall c''4) a'4. f'4 ( a'4 g'4) g'4 ( a'4 g'4) g'4 \divisioMaxima
 g'4 g'4 g'4 ( a'4) c''4 ( b'4) c''4 c''4 ( c''4 c''4) c''4 \divisioMinima
 c''4 ( d''4 \tiny c'' a' 4 \forceBreak
) c''4 ( a'4 \once \tweak #'font-size #-4 b' ) g'4 f'4 f'4 ( g'4 a'4) a'4 a'4 ( g'4 b'4 a'4) a'4 \divisioMaior
 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 c''4 ( b'4 c''4 a'4) g'4 \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 a' ) a'4. f'4 ( a'4 g'4) g'4 ( a'4 g'4) g'4 \finalis \forceBreak

 g'4 a'4 ( g'4) g'4 ( c''4) c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 c''4 c''4 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima \forceBreak

 c''4 ( \once \tweak #'font-size #-4 a' ) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 ( c''4 b'4) g'4 ( a'4) c''4 ( b'4) a'4 g'4 \finalis
  g'4 a'4 ( g'4) g'4 ( c''4 \forceBreak
) c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima
 c''4 ( a'4) a'4 ( c''4) c''4 c''4 c''4 c''4 \forceBreak
 c''4 c''4 c''4 \divisioMinima
 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima
 c''4 ( a'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 ( c''4 b'4) g'4 ( a'4) c''4 ( b'4) a'4 g'4 ( a'4 d'4) f'4 ( f'4 g'4) \finalis

}

altoMusic = {
r2 d'2*5/2 e'2*3/2 ~ e'2 f'2*3/2 e'4 \divisioMaior
d'4 ~ d'2*5/2 e'2 ~ e'2 ~ e'2 ~ e'2*3/2 g'2*3/2 e'2*3/2 ~ \divisioMinima
e'2*3/2 ~ e'2*3/4 d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMaxima
e'2 ~ e'2 ~ e'2*3/2 ~ e'2*4/2 ~ \divisioMinima
e'2*4/2 f'2*3/2 e'2 d'2*4/2 e'2*4/2 ~ e'4 ~ \divisioMaior
e'2*3/2 ~ e'2*4/2 d'4 ~ \divisioMinima
d'2 c'2*3/4 ~ c'2*3/2 ~ c'2*3/2 b4 \finalis
e'4 d'2 e'2*4/2 ~ e'2*3/2 ~ \divisioMinima
e'2*3/2 f'4 g'2 ~ g'2*3/2 ~ g'2 ~ g'4 \divisioMaxima
e'2 f'2*3/2 e'2*6/2 g'2*3/2 ~ g'2 f'2 d'4 ~ d'4 e'4 d'2 e'2 ~ e'2*6/2 \divisioMinima
f'2 g'2 ~ g'2*3/2 ~ g'2 ~ g'4 \divisioMaxima
e'2 f'2*6/2 e'2*3/2 \divisioMinima
f'2 ~ f'2*3/2 e'2*3/2 \divisioMaxima
g'2 f'2 g'2*4/2 e'2*3/2 g'2*4/2 f'4 d'2 ~ d'4 c'2 d'4 \finalis
}

tenorMusic = {
r2 d'2*5/2 ~ d'2*3/2 c'2 ~ c'2*3/2 ~ c'4 ~ \divisioMaior
c'4 r2*5/2 c'2 ~ c'2 d'2 c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 \divisioMinima
a2*3/2 c'2*3/4 ~ c'2*3/2 ~ c'2*3/2 b4 \divisioMaxima
c'2 b2 a2*3/2 g2*4/2 \divisioMinima
a2*4/2 ~ a2*3/2 ~ a2 ~ a2*4/2 ~ a2*4/2 ~ a4 ~ \divisioMaior
a2*3/2 ~ a2*4/2 e4 ~ \divisioMinima
e2 f2*3/4 ~ f2*3/2 d2*3/2 ~ d4 \finalis
c'4 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 ~ \divisioMinima
c'2*3/2 ~ c'4 d'2 b2*3/2 f'2 e'4 \divisioMaxima
a2 ~ a2*3/2 ~ a2*6/2 g2*3/2 c'2 ~ c'2 ~ c'4 b4 c'4 ~ c'2 ~ c'2 ~ c'2*6/2 ~ \divisioMinima
c'2 d'2 b2*3/2 f'2 e'4 \divisioMaxima
a2 ~ a2*6/2 ~ a2*3/2 ~ \divisioMinima
a2 b2*3/2 c'2*3/2 ~ \divisioMaxima
c'2 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'4 a2*3/2 ~ a2 b4 \finalis
}

bassMusic = {
r2*16/2 \divisioMaior
r4 b2*5/2 ~ b2 a2 ~ a2 ~ a2*3/2 e2*3/2 c2*3/2 ~ \divisioMinima
c2*3/2 ~ c2*3/4 d2*3/2 g2*3/2 ~ g4 \divisioMaxima
c2 ~ c2 ~ c2*3/2 ~ c2*4/2 ~ \divisioMinima
c2*4/2 d2*3/2 ~ d2 ~ d2*4/2 ~ d2*4/2 c4 ~ \divisioMaior
c2*3/2 a,2*4/2 b,4 ~ \divisioMinima
b,2 a,2*3/4 d2*3/2 g,2*3/2 ~ g,4 \finalis
r2*3/2 b2*4/2 a2*3/2 ~ \divisioMinima
a2*3/2 ~ a4 g2 ~ g2*3/2 c'2 ~ c'4 \divisioMaxima
a,2 d2*3/2 c2*6/2 e2*3/2 ~ e2 d2 g4 ~ g4 r2*3/2 b2 a2*6/2 ~ \divisioMinima
a2 g2 ~ g2*3/2 c'2 ~ c'4 \divisioMaxima
a,2 d2*6/2 c2*3/2 \divisioMinima
d2 ~ d2*3/2 a2*3/2 \divisioMaxima
e2 d2 e2*4/2 a2*3/2 e2*4/2 d4 ~ d2*3/2 g2 ~ g4 \finalis
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
