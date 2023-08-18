\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.231
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In multitudine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In multitudine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In multitudine" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- _ le -- lú -- ia, 
\set stanza = " * " al -- _ le -- lú -- ia. 
_ _ _ _ _ _ _ _ _ ℣. 
In mul -- ti -- tú -- di -- ne pres -- by -- te -- ró -- _ _ rum pru -- dén -- ti -- um _ sta, 
et sa -- pi -- én -- ti -- æ il -- ló -- _ rum ex cor -- de con -- jún -- ge -- re: 
ut om -- nem nar -- ra -- ti -- ó -- nem De -- _ _ i 
pos -- _ sis 
\set stanza = " * " au -- dí -- re. 
_ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 ( f'4 c'4.) f'4 ( g'4 a'\prall bes'4) g'4 ( f'4) g'4 ( ees'4 f'4) f'4 \divisioMinima
  f'4 ( f'4 c'4.) f'4 ( g'4 a'\prall bes'4) g'4 ( f'4) g'4 ( ees'4 f'4) f'4 \divisioMaior
 f'4 ( a'4) c''4 ( c''4 bes'4 a'4 g'4.) bes'4 ( f'4) g'4 ( d'4) ees'4 ( d'4 c'4) \divisioMinima
 c'4 ( ees'4 f'4 g'4.) bes'4 ( f'4) g'4 ( ees'4.) f'4 ( c'4) f'4. \finalis
 f'4 ( f'4) g'4 ( f'4) f'4 ( bes'4) bes'4 ( c''4) bes'4 bes'4 \divisioMinima
 bes'4 bes'4 ( a'4) f'4 g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) ~ g'4 ( f'4) f'4 \divisioMinima
 c'4 ( f'4) f'4 ( g'4 bes'4) bes'4 a'4 ( bes'4 c''4 bes'4 a'4 f'4) g'4 ( ees'4 f'4) f'4 \divisioMaxima
 f'4 d'4 ees'4 f'4 ( g'4) f'4 f'4 f'4 ( g'4) g'4 ( f'4 d'4) ees'4 ( ees'4 d'4) c'4 ( bes4) \divisioMinima
 f'4 g'4 ( f'4 bes'4) bes'4 bes'4 ( bes'4 \once \tweak #'font-size #-4 a' ) f'4 ( g'4 f'4 d'4 ees'4) d'4 ( c'4) c'4 \divisioMaxima
 f'4 ( d'4 f'4) g'4 ( f'4 bes'4) bes'4 bes'4 bes'4 ( c''4) bes'4 bes'4 ( a'4) f'4 g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) ~ g'4 ( f'4) f'4 \divisioMaior
 f'4 ( f'4 c'4.) f'4 ( g'4 a'\prall bes'4) g'4 ( f'4)  f'4 g'4 ( ees'4 f'4) f'4 \divisioMaior
 f'4 ( a'4) c''4 ( c''4 bes'4 a'4 g'4.) bes'4 ( f'4) g'4 ( d'4) ees'4 ( d'4 c'4) \divisioMinima
 c'4 ( ees'4 f'4 g'4.) bes'4 ( f'4) g'4 ( ees'4.) f'4 ( c'4) f'4. \finalis

}

altoMusic = {
c'2*7/4 f'2*6/2 ees'2*3/2 c'4 ~ c'2*7/4 d'2*6/2 ees'2*3/2 c'4 \divisioMaior
f'2 d'2*11/4 ~ d'2 ~ d'2 bes2*3/2 ~ \divisioMinima
bes2*9/4 ~ bes2 ees'2*5/4 c'2 ~ c'2*3/4 \finalis
d'2*4/2 ~ d'2 ~ d'2*4/2 ~ \divisioMinima
d'4 f'2*3/2 d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 \divisioMinima
c'2 d'2*4/2 ~ d'2*6/2 c'2*3/2 ~ c'4 ~ \divisioMaxima
c'2*3/2 d'2*4/2 ~ d'2 ~ d'2*3/2 bes2*3/2 ~ bes2 ~ \divisioMinima
bes4 ~ bes2*4/2 d'2*3/2 c'2*5/2 g2 ~ g4 \divisioMaxima
r2*4/2 f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 d'2 ~ d'2*4/2 c'2*3/2 ~ c'4 ~ \divisioMaior
c'2*7/4 ~ c'2*7/2 ~ c'2*3/2 ~ c'4 \divisioMaior
f'2 d'2*11/4 ~ d'2 ~ d'2 bes2*3/2 ~ \divisioMinima
bes2*9/4 ~ bes2 ~ bes2*5/4 ~ bes2 a2*3/4 \finalis
}

tenorMusic = {
a2*7/4 bes2*6/2 ~ bes2*3/2 a4 f2*7/4 ~ f2*6/2 bes2*3/2 a4 ~ \divisioMaior
a2 g2*11/4 a2 bes2 g2*3/2 ~ \divisioMinima
g2*9/4 f2 bes2*5/4 ~ bes2 a2*3/4 \finalis
bes2*4/2 ~ bes2 ~ bes2*4/2 ~ \divisioMinima
bes4 ~ bes2*3/2 a2 f2*4/2 g2*3/2 a4 \divisioMinima
c'2 bes2*4/2 c'2*6/2 bes2*3/2 a4 \divisioMaxima
bes2*3/2 ~ bes2*4/2 ~ bes2 ~ bes2*3/2 g2*3/2 ~ g2 ~ \divisioMinima
g4 f2*4/2 g2*3/2 ~ g2*5/2 f2 ees4 \divisioMaxima
a2*3/2 bes2*5/2 d'2*3/2 c'2*3/2 ~ c'2 bes2*4/2 ~ bes2*3/2 ~ bes4 \divisioMaior
a2*7/4 g2*7/2 bes2*3/2 a4 ~ \divisioMaior
a2 g2*11/4 a2 bes2 g2*3/2 ~ \divisioMinima
g2*9/4 f2 ees2*5/4 ~ ees2 c2*3/4 \finalis
}

bassMusic = {
f2*7/4 d2*6/2 c2*3/2 f4 a,2*7/4 bes,2*6/2 c2*3/2 f4 ~ \divisioMaior
f2 g2*11/4 ~ g2 ~ g2 f2*3/2 \divisioMinima
ees2*9/4 d2 c2*5/4 f2 ~ f2*3/4 \finalis
r2*4/2 a2 g2*4/2 ~ \divisioMinima
g4 d2*3/2 ~ d2 ~ d2*4/2 ~ d2*3/2 ~ d4 \divisioMinima
a2 g2*4/2 f2*6/2 ~ f2*3/2 ~ f4 \divisioMaxima
r2*7/2 a2 g2*3/2 f2*3/2 ees2 ~ \divisioMinima
ees4 d2*4/2 g,2*3/2 c2*5/2 ~ c2 ~ c4 \divisioMaxima
d2*3/2 ~ d2*5/2 ~ d2*3/2 ~ d2*3/2 g2 ~ g2*4/2 ees2*3/2 f4 ~ \divisioMaior
f2*7/4 ~ f2*7/2 ~ f2*3/2 ~ f4 ~ \divisioMaior
f2 g2*11/4 ~ g2 ~ g2 f2*3/2 \divisioMinima
ees2*9/4 d2 c2*5/4 f,2 ~ f,2*3/4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
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
