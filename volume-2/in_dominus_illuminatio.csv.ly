\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.149
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dominus illuminatio" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dominus illuminatio"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dominus illuminatio" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- _ mi -- nus 
\set stanza = " * " il -- lu -- mi -- ná -- ti -- _ o me -- _ a, et sa -- lus me -- _ _ a, 
quem ti -- mé -- bo? 
Dó -- mi -- nus de -- fén -- sor vi -- tæ me -- æ, 
a quo tre -- pi -- dá -- bo? 
qui trí -- bu -- lant _ me _ in -- i -- mí -- ci me -- _ _ _ i, 
in -- fir -- má -- ti sunt, et ce -- ci -- dé -- runt. Ps. 
Si con -- sí -- stant ad -- vér -- sum me ca -- stra: 
\set stanza = " * " 
non ti -- mé -- bit cor me -- um. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( a'4 g'4) \divisioMinima
 f'4 g'4 bes'4 ( bes'4) bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 g'4 ( bes'4) ~ bes'4 ( g'4) g'4 \divisioMinima \forceBreak

 f'4 ( g'4) bes'4 ( bes'4 c''4) bes'4 bes'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( f'4) f'4 \divisioMaior
 g'4 ( c''4) bes'4 ( c''4 bes'4 a'4 bes'4) g'4 ( a'4 g'4) g'4 \divisioMaxima \forceBreak

 g'4 ( bes'4 \once \tweak #'font-size #-4 c'' ) c''4 c''4 ( d''4 c''4) \divisioMinima
 bes'4 bes'4 ( c''4 bes'4) bes'4 ( bes'4 bes'4) bes'4 ( c''4 bes'4) bes'4 ( bes'4 bes'4) bes'4 ( c''4 bes'4 g'4) g'4 \divisioMaior
 g'4 g'4 ( bes'4 c''4 \forceBreak
) c''4 bes'4 bes'4 ( d''4 c''4 d''4) bes'4 ( c''4 d''4) \divisioMaxima
 g'4 g'4 ( bes'4 c''4) c''4  c''4 ( bes'4) d''4 ( ees''4 c''4) bes'4 ( c''4 bes'4 bes'4) g'4 ( a'4 g'4) \divisioMinima \forceBreak

 g'4 bes'4 ( a'4) bes'4 g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) \divisioMaior
 g'4 bes'4 ( bes'4) bes'4 bes'4 ( bes'4 bes'4) g'4 \divisioMinima \forceBreak

 g'4 ( a'4 f'4) bes'4 ( bes'4) c''4 ( bes'4 a'4 bes'4) g'4 ( a'4 g'4) g'4 \finalis
 f'4 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( bes'4) bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima \forceBreak

 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis
  f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 g'4 ~ g'2 f'2 ees'2 ~ ees'2*3/2 d'4 ~ \divisioMinima
d'2 ~ d'2*4/2 g'2*3/2 f'2*4/2 \divisioMaior
ees'2 ~ ees'2*5/2 d'2*4/2 \divisioMaxima
r4 d'2*3/2 ees'2*3/2 ~ \divisioMinima
ees'4 f'2*3/2 ~ f'2*3/2 g'2*3/2 ees'2*3/2 ~ ees'2 d'2 ees'4 \divisioMaior
eess'2 d'2 g'2 f'2*4/2 ~ f'2 ~ f'4 \divisioMaxima
g'4 ~ g'2*4/2 f'2 ees'2*3/2 ~ ees'2 d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ees'2*4/2 d'2*3/2 ~ d'2 f'4 ees'2*3/2 d'4 \divisioMinima
c'2*3/2 d'2 c'2*4/2 ~ c'2*3/2 bes4 \finalis
r4 d'2 ~ d'2 ~ d'2 ~ d'2 g'2*3/2 f'2 ~ f'4 \divisioMaxima
d'2 ~ d'4 ees'2*3/2 c'2 ~ c'2 bes4 d'4 ~ d'2 ~ d'2 ~ d'2*3/2 ees'2*3/2 \divisioMinima
f'2 d'2 g'2*3/2 f'2 ~ f'4 \divisioMaxima
bes2 c'2 bes2*4/2 d'2*3/2 \divisioMinima
f'2 ees'2*3/2 e'2 d'4 ~ \divisioMaxima
d'2 ~ d'2 g'2*3/2 f'2 ees'2*3/2 c'2 ~ c'2 bes4 \finalis
}

tenorMusic = {
r4 c'2*3/2 bes2*3/2 ~ \divisioMinima
bes2 ~ bes2 ees'4 d'2 ~ d'2 ~ d'2 c'2*3/2 bes4 \divisioMinima
a2 g2*4/2 ~ g2*3/2 bes2*3/2 ~ bes4 \divisioMaior
g2 ~ g2*5/2 ~ g2*4/2 ~ \divisioMaxima
g4 ~ g2*3/2 ~ g2*3/2 ~ \divisioMinima
g4 f2*3/2 bes2*3/2 ~ bes2*3/2 g2*3/2 f2 ~ f2 ees4 \divisioMaior
g2 ~ g2 ~ g2 bes2 f2 bes2 ~ bes4 \divisioMaxima
r4 bes4 g2*3/2 ~ g2 ~ g2*3/2 ~ g2 ~ g2 c'2 bes4 ~ \divisioMinima
bes4 g2 ~ g2*3/2 ~ g2*3/2 bes2*4/2 a2 ~ \divisioMaior
a4 g2 ~ g4 ~ g2*3/2 ~ g4 \divisioMinima
d2*3/2 g2 ees2 f2 d2*3/2 ~ d4 \finalis
r4 bes2 ~ bes2 ~ bes2 g2 ~ g2*3/2 bes2 ~ bes4 ~ \divisioMaxima
bes2 a4 g2*3/2 f2 d2 ~ d4 r4 bes2 a2 g2*3/2 ~ g2*3/2 \divisioMinima
f2 g2 ~ g2*3/2 bes2 ~ bes4 \divisioMaxima
d2 ees2 d2*4/2 g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 ~ g2 ~ g4 ~ \divisioMaxima
g2 ~ g2 ~ g2*3/2 ~ g2 ~ g2*3/2 f2 d2 ~ d4 \finalis
}

bassMusic = {
r2*7/2 \divisioMinima
a2 g2 ~ g4 ~ g2 ~ g2 ~ g2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g2 ~ g2*4/2 ees2*3/2 ~ ees2*3/2 d4 ~ \divisioMaior
d2 c2*5/2 bes,2*4/2 \divisioMaxima
r4 g,2*3/2 c2*3/2 ~ \divisioMinima
c4 d2*3/2 ~ d2*3/2 ees2*3/2 ~ ees2*3/2 bes,2 ~ bes,2 c4 ~ \divisioMaior
c2 f2 ees2 d2*4/2 ~ d2 bes,4 \divisioMaxima
ees4 ~ ees4 e2*3/2 d2 c2*3/2 g2 ~ g2 ~ g2 ~ g4 ~ \divisioMinima
g4 ~ g2 f2*3/2 ees2*3/2 c2*4/2 d2 ~ \divisioMaior
d4 g2 r4 c2*3/2 bes,4 \divisioMinima
a,2*3/2 g,2 ~ g,2*4/2 ~ g,2*3/2 ~ g,4 \finalis
r2*3/2 a2 g2 f2 ees2*3/2 ~ ees2 d4 \divisioMaxima
bes,2 ~ bes,4 c2*3/2 d2 g,2 ~ g,4 bes,4 ~ bes,2 ~ bes,2 ~ bes,2*3/2 c2*3/2 \divisioMinima
d2 g2 ees2*3/2 e2 d4 \divisioMaxima
g,2*4/2 ~ g,2*4/2 ~ g,2*3/2 \divisioMinima
d2 c2*3/2 g,2 ~ g,4 \divisioMaxima
r2 f2 ees2*3/2 d2 c2*3/2 d2 g,2 ~ g,4 \finalis
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
        "II"
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
