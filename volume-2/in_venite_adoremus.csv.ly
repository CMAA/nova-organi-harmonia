\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.227
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Venite adoremus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Venite adoremus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Venite adoremus" }
    \line {}
  }
}

chantText = \lyricmode {
Ve -- ní -- te 
\set stanza = " * " ad -- o -- ré -- mus De -- um, _ 
et pro -- ci -- dá -- mus an -- te Dó -- mi -- num: 
plo -- ré -- _ mus an -- te e -- _ um, qui fe -- cit nos: 
qui -- a i -- _ _ pse est Dó -- mi -- nus De -- us no -- ster. Ps. 
Ve -- ní -- te, ex -- sul -- té -- mus Dó -- mi -- no: 
\set stanza = " * " 
ju -- bi -- lé -- mus De -- o sa -- lu -- tá -- ri no -- stro. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   bes'4 bes'4 ( c''4) f'4 ( g'4 ees'4) \divisioMinima
 f'4 g'4 bes'4 ( bes'4 c''4) bes'4 bes'4 ( d''4 c''4 bes'4) bes'4 ( bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaior \forceBreak

 g'4 ( \once \tweak #'font-size #-4 ees' ) f'4 ( g'4) g'4 bes'4 ( bes'4) bes'4 ( c''4 bes'4 g'4) \divisioMinima
 g'4 ( bes'4 \once \tweak #'font-size #-4 c'' ) c''4 c''4 ( d''4 c''4 bes'4) bes'4 ( c''4 bes'4) bes'4 \divisioMaxima
 g'4 ( f'4 g'4 \forceBreak
) bes'4 ( g'4) bes'4 ( bes'4 bes'4) bes'4 ( c''4 bes'4 g'4) \divisioMinima
 g'4 ( bes'4 \once \tweak #'font-size #-4 c'' ) c''4 bes'4 ( c''4 bes'4) ~ bes'4 ( f'4) g'4 bes'4 ( a'4) bes'4 g'4 ( a'4 \tiny g' f' 4) f'4 \divisioMaxima \forceBreak

 g'4 g'4 ( f'4 g'4) bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( c''4) bes'4 bes'4 \divisioMinima
 bes'4 bes'4 ( bes'4 bes'4) f'4 ( g'4) g'4 ( c''4 bes'4) bes'4 ( a'4) bes'4 ( a'4 bes'4 g'4) g'4 \finalis \forceBreak

 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis
  f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 a'4 bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis

}

altoMusic = {
r4 f'2 ~ f'4 g'4 ees'4 ~ \divisioMinima
ees'2 f'2*4/2 ~ f'2*4/2 ees'2*3/2 d'2 ~ d'4 \divisioMaior
ees'2*5/2 f'2 d'2*5/2 ~ d'2*3/2 ees'2*4/2 ~ ees'2*3/2 d'4 \divisioMaxima
c'2*3/2 bes2 ees'2*3/2 d'2*4/2 ~ \divisioMinima
d'4 g'2*3/2 f'2 ~ f'2*4/2 ees'2*3/2 c'2*4/2 ~ c'4 \divisioMaxima
d'4 ~ d'2*3/2 ~ d'2 ~ d'2 g'2*3/2 f'4 ~ \divisioMinima
f'4 ees'2*3/2 d'2 c'2*3/2 ~ c'2 ~ c'2*4/2 bes4 \finalis
r4 d'2 ~ d'2*3/2 ~ d'2 g'2*3/2 f'2*3/2 ~ f'4 \divisioMaxima
d'2 ees'2 d'2*4/2 ~ d'2 ees'2*3/2 f'2 d'2 ~ d'4 r4 d'2 ~ d'2 ~ d'2 ees'4 f'2*3/2 ~ \divisioMinima
f'2 ees'2 g'2*3/2 f'2 ~ f'4 \divisioMaxima
d'2 ees'2 d'2*4/2 ~ d'2*3/2 \divisioMinima
f'2 ees'2*3/2 ~ ees'2 d'4 ~ \divisioMaxima
d'2 ees'2 d'2*3/2 g'2 ees'2*3/2 c'2 ~ c'2 bes4 \finalis
}

tenorMusic = {
r4 f2 g2*3/2 \divisioMinima
bes2 ~ bes2*4/2 d'2*4/2 c'2*3/2 ~ c'2 bes4 ~ \divisioMaior
bes2*5/2 ~ bes2 ~ bes2*4/2 ~ \divisioMinima
bes4 g2*3/2 ~ g2*4/2 f2*3/2 ~ f4 \divisioMaxima
d2*3/2 g2 ~ g2*3/2 ~ g2*5/2 ~ g2*3/2 bes2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*4/2 a4 \divisioMaxima
bes4 ~ bes2*3/2 ~ bes2 g2 ~ g2*3/2 bes4 \divisioMinima
g4 ~ g2*3/2 ~ g2 ees2*3/2 ~ ees2 d2*4/2 ~ d4 \finalis
r4 bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes4 \divisioMaxima
g2 ~ g2 ~ g2*4/2 ~ g2 ~ g2*3/2 c'2 ~ c'2 bes4 r4 bes2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes4 ~ \divisioMaxima
bes2 c'2 bes2*4/2 g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 ~ g2 r4 \divisioMaxima
g2 ~ g2 ~ g2*3/2 ~ g2 ~ g2*3/2 f2 d2 ~ d4 \finalis
}

bassMusic = {
r4 d2 c2*3/2 ~ \divisioMinima
c2 d2*4/2 ~ d2*4/2 g2*3/2 ~ g2 ~ g4 \divisioMaior
ees2*5/2 d2 g2*4/2 ~ \divisioMinima
g4 f2*3/2 ees2*4/2 bes,2*3/2 ~ bes,4 \divisioMaxima
a,2*3/2 g,2 c2*3/2 bes,2*4/2 ~ \divisioMinima
bes,4 ees2*3/2 ~ ees2 d2*4/2 c2*3/2 f2*4/2 ~ f4 \divisioMaxima
r4 a2*3/2 g2 f2 ees2*3/2 d4 ~ \divisioMinima
d4 c2*3/2 ~ c2 ~ c2*3/2 g,2 ~ g,2*4/2 ~ g,4 \finalis
bes4 ~ bes2 a2*3/2 g2 ees2*3/2 ~ ees2*3/2 d4 \divisioMaxima
g,2 c2 g,2*4/2 bes,2 c2*3/2 d2 g2 ~ g4 bes4 ~ bes2 a2 g2*3/2 d2*3/2 ~ \divisioMinima
d2 c2 ees2*3/2 ~ ees2 d4 \divisioMaxima
g2 ~ g2 ~ g2*4/2 ~ g2*3/2 \divisioMinima
d2 c2*3/2 g2 ~ g4 \divisioMaxima
g,2 c2 g,2*3/2 ees2 c2*3/2 d2 g,2 ~ g,4 \finalis
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
        "II."
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
