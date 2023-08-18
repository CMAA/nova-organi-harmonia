\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.458 (addenum 2 pp3)
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Extuli electum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Extuli electum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Extuli electum" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- tu -- li e -- lé -- ctum 
\set stanza = " * " de pó -- _ pu -- lo, _ 
ó -- le -- o san -- cto me -- o _ un -- xi e -- um: 
ut ma -- nus me -- a sit sem -- _ _ per cum e -- o, _ _ 
et brá -- _ chi -- um me -- um 
con -- fír -- met _ e -- um. Ps. 
Grá -- ti -- as Dó -- mi -- ni in æ -- tér -- num can -- tá -- bo: 
\set stanza = " * " 
per o -- mnes ge -- ne -- ra -- ti -- ó -- nes an -- nun -- ti -- á -- bo fi -- de -- li -- tá -- tem tu -- am o -- re me -- o. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( d'4 ees'4) c'4 ( f'4 d'4) d'4 ( f'4) f'4 ( g'4) f'4 ( g'4 bes'4) bes'4 \divisioMinima
 g'4 ( bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( f'4) f'4 ( g'4 f'4 f'4) d'4 ( ees'4 d'4) \divisioMaior
 d'4 ( ees'4) d'4 d'4 d'4 ( ees'4 g'4) g'4 ( a'\prall bes'4 f'4) f'4 ( ees'4) ees'4 ( f'4 ees'4 ees'4) c'4 ( d'4 c'4) \divisioMinima
 d'4 ( ees'4) c'4 ( ees'4 d'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \divisioMaxima
 d'4 ( ees'4) c'4 ( f'4 d'4) f'4 ( g'4) g'4 ( c''4 bes'4 a'4 bes'4) a'4 \divisioMinima
 bes'4 bes'4 ( a'4) bes'4 ( a'4) bes'4 ( d''4 c''4) c''4 ( a'4) a'4 a'4 ( c''4 bes'4) a'4 ( c''4 a'4) bes'4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( f'4) f'4 ( g'4 f'4 g'4) ees'4 ( f'4 ees'4 d'4 c'4 d'4) d'4 ( c'4) \divisioMaior
 c'4 c'4 ( d'4 ees'4 f'\prall g'4) f'4. ees'4 ( g'4 f'4 ees'4 f'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4) bes'4 \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
r2*3/2 c'2*3/2 bes2 ~ bes2 c'2*3/2 d'4 \divisioMinima
g'2 f'2 ees'2 d'2 c'2*4/2 bes2*3/2 ~ \divisioMaior
bes2*4/2 ~ bes2*3/2 ~ bes2*4/2 g2 ~ g2*4/2 ~ g2*3/2 \divisioMinima
bes2 a2*3/2 bes2*4/2 ~ bes2 ~ \divisioMaxima
bes2 c'2*3/2 ~ c'2 d'2 ees'2*4/2 \divisioMinima
f'4 ~ f'2 ~ f'2 g'2*3/2 a'2*3/2 ~ a'2*3/2 d'2 ~ d'2 c'2*3/2 \divisioMaxima
d'2 ~ d'2 ~ d'2 ees'2 ~ ees'2 d'2*4/2 bes2*6/2 a2 ~ \divisioMaior
a4 c'2 ~ c'2*3/2 ~ c'2*3/4 bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 \finalis
r4 d'2*3/2 ~ d'2*5/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 \divisioMaxima
f'2 ~ f'2*7/2 ees'2*5/2 d'2*5/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 ~ d'2 r4 d'2*3/2 ees'2*3/2 f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 g'2*4/2 f'2 ees'2 f'2*3/2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 ~ d'2 \finalis
}

tenorMusic = {
r2*13/2 g4 ~ \divisioMinima
g2 ~ g2 ~ g2 ~ g2 ~ g2*4/2 ~ g2*3/2 \divisioMaior
f2*4/2 ees2*3/2 d2*4/2 c2 f2*4/2 ees2*3/2 \divisioMinima
g2 ~ g2*3/2 ~ g2*4/2 ~ g2 \divisioMaxima
f2 g2*3/2 a2 bes2 ~ bes2*4/2 ~ \divisioMinima
bes4 c'2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 c'2 bes2 a2*3/2 \divisioMaxima
bes2 a2 g2 ~ g2 bes2 a2*4/2 g2*6/2 f2 ~ \divisioMaior
f4 g2 ~ g2*3/2 ~ g2*3/4 ~ g2 ~ g2*3/2 ~ g2*4/2 f2 \finalis
bes4 ~ bes2*3/2 ~ bes2*5/2 ~ bes2*3/2 c'2 bes2*3/2 \divisioMaxima
c'2 bes2*7/2 ~ bes2*5/2 ~ bes2*5/2 ~ bes2*3/2 ~ bes2*3/2 a2*3/2 c'4 bes2 ~ bes4 ~ bes2*3/2 c'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 c'2 g2*3/2 \divisioMaxima
d'2 c'2 bes2*4/2 ~ bes2*4/2 ~ bes2 ~ bes2 ~ bes2*3/2 ~ \divisioMaxima
bes2*4/2 ~ bes2*4/2 ~ bes2*3/2 a2*3/2 c'4 bes2 \finalis
}

bassMusic = {
bes2*3/2 a2*3/2 ~ a2 g2 ~ g2*3/2 ~ g4 \divisioMinima
ees2 d2 c2 bes,2 a,2*4/2 g,2*3/2 ~ \divisioMaior
g,2*4/2 ~ g,2*3/2 ~ g,2*4/2 c2 ~ c2*4/2 ~ c2*3/2 \divisioMinima
r2*9/2 g,2 \divisioMaxima
bes,2 ~ bes,2*3/2 ~ bes,2 ~ bes,2 c2*4/2 \divisioMinima
d4 ~ d2 ~ d2 ees2*3/2 f2*3/2 g2*3/2 ~ g2 ~ g2 a2*3/2 \divisioMaxima
bes,2 ~ bes,2 ~ bes,2 c2 ~ c2 d2*4/2 ees2*6/2 f2 \divisioMaior
r4 ees2 d2*3/2 c2*3/4 ~ c2 d2*3/2 ees2*4/2 bes,2 \finalis
r2*4/2 a2*5/2 g2*3/2 ~ g2 ~ g2*3/2 \divisioMaxima
d2 ~ d2*7/2 c2*5/2 bes,2*5/2 a,2*3/2 g,2*3/2 ~ g,2*3/2 ~ g,4 ~ g,2 r2*10/2 \divisioMinima
r2*10/2 \divisioMaxima
d2 ~ d2 g2*4/2 ees2*4/2 d2 c2 d2*3/2 \divisioMaxima
bes,2*4/2 a,2*4/2 g,2*3/2 ~ g,2*3/2 ~ g,4 ~ g,2 \finalis
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
        "3"
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
