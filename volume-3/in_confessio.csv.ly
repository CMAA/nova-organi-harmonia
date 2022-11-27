\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.314
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Confessio" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Confessio"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Confessio" }
    \line {}
  }
}

chantText = \lyricmode {
Con -- fes -- si -- o 
\set stanza = " * " et pul -- chri -- _ tú -- _ do _ 
in con -- spé -- _ _ ctu e -- jus: _ 
sán -- cti -- tas et ma -- gni -- fi -- cén -- _ ti -- a _ _ 
in san -- cti -- fi -- cá -- ti -- ó -- _ ne e -- jus. Ps. 
Can -- tá -- te Dó -- mi -- no cán -- ti -- cum no -- vum: 
\set stanza = " * " 
can -- tá -- te Dó -- mi -- no o -- mnis ter -- ra. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( \once \tweak #'font-size #-4 c' ) f'4 g'4 ( bes'4) bes'4 \divisioMinima
 bes'4 bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 bes'4 ( bes'4 g'4) g'4 ( f'4) a'4 ( g'4 f'4 g'4) \divisioMaior
 d'4 ( ees'4) f'4 f'4 bes'4 ( bes'4 g'4) bes'4 ( a'4 bes'4) f'4 ( g'4) g'4 ( c''4 bes'4) bes'4 ( c''4 bes'4) ~ bes'4 ( bes'4) \divisioMaxima
 f'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 ( bes'4 bes'4) \divisioMinima
 g'4 f'4 ( \once \tweak #'font-size #-4 ees' ) f'4 g'4 g'4 bes'4 ( bes'4 bes'4) g'4 ( f'4) f'4 ( g'4 a'\prall bes'4 a'4 g'4) a'4 ( bes'4 f'4 f'4) d'4 ( ees'4 d'4) \divisioMaior
 d'4 ( \once \tweak #'font-size #-4 ees' ) d'4 ( \once \tweak #'font-size #-4 ees' ) d'4 ( ees'4) ees'4 d'4 ( ees'4 g'4) g'4 g'4 bes'4 ( bes'4 g'4 f'4) f'4 ( d'4) ees'4 ( f'4 \tiny ees' d' 4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
r4 \tiny c' \normalsize4 c'4 d'2*3/2 ~ \divisioMinima
d'2 ees'2 d'2*3/2 ~ d'2*3/2 ~ d'2*5/2 ~ d'4 \divisioMaior
bes2*4/2 c'2*3/2 f'2*5/2 ees'2*3/2 c'2*3/2 d'2 \divisioMaxima
f'2*3/2 bes2*3/2 ~ \divisioMinima
bes4 c'2 ees'2*3/2 d'2*5/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 bes2*3/2 ~ \divisioMaior
bes2 ~ bes2*5/2 ~ bes2*5/2 ~ bes2*4/2 ~ bes2 ~ bes2 a2 bes4 \finalis
f'4 ~ f'2*3/2 ~ f'2*3/2 g'2*3/2 ees'2 f'2*3/2 ~ \divisioMaxima
f'2 ~ f'2*5/2 ~ f'2*3/2 d'2*3/2 ~ d'2 ~ d'4 r4 g'2*3/2 f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 f'2*3/2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 g'2*3/2 ~ \divisioMinima
g'4 ees'2 d'2 f'2*3/2 ~ \divisioMaxima
f'2*4/2 ~ f'2*4/2 ees'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2 ~ bes4 ~ \divisioMinima
bes2 ~ bes2 ~ bes2*3/2 c'2*3/2 a2*5/2 bes4 ~ \divisioMaior
bes2*4/2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 ~ \divisioMaxima
bes2*3/2 f2*3/2 ~ \divisioMinima
f4 g2 ~ g2*3/2 ~ g2*5/2 bes2*3/2 a2*3/2 g2*4/2 f2*3/2 ~ \divisioMaior
f2 g2*5/2 ~ g2*5/2 f2*4/2 g2 ees2 ~ ees2 f4 \finalis
r2*7/2 ees'2*3/2 ~ ees'2 d'2*3/2 \divisioMaxima
c'2 bes2*3/2 d'2 c'2*3/2 bes2*3/2 a2 bes4 r4 ees'2*3/2 ~ ees'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 ~ ees'2 d'2*3/2 \divisioMaxima
a2 c'2 bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2 c'2 bes2*3/2 \divisioMaxima
c'2*4/2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 c'2 bes4 \finalis
}

bassMusic = {
r2*3/2 a2 g4 ~ \divisioMinima
g2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g2*5/2 ~ g4 ~ \divisioMaior
g2*4/2 ees2*3/2 d2*5/2 c2*3/2 ees2*3/2 g2 \divisioMaxima
d2*3/2 ~ d2*3/2 ~ \divisioMinima
d4 c2 ~ c2*3/2 bes,2*5/2 ~ bes,2*3/2 ~ bes,2*3/2 ~ bes,2*4/2 ~ bes,2*3/2 ~ \divisioMaior
bes,2 f2*5/2 ees2*5/2 d2*4/2 ~ d2 c2 ~ c2 bes,4 \finalis
r4 ees'2*3/2 d'2*3/2 ~ d'2*3/2 c'2 bes2*3/2 \divisioMaxima
d2 ~ d2*3/2 ~ d2 ~ d2*3/2 ~ d2*3/2 ~ d2 g4 r2*10/2 \divisioMinima
d'2 ~ d'2*3/2 c'2 bes2*3/2 \divisioMaxima
d2 ~ d2 g2*4/2 ees2*3/2 ~ \divisioMinima
ees4 c2 d2 ~ d2*3/2 \divisioMaxima
f2*4/2 g2*4/2 ~ g2*3/2 ~ g2*3/2 g'2 g,4 \finalis
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
