\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.175
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ecce oculi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ecce oculi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ecce oculi" }
    \line {}
  }
}

chantText = \lyricmode {
Ec -- ce ó -- cu -- li 
\set stanza = " * " Dó -- _ mi -- ni su -- _ per ti -- mén -- tes e -- um, 
spe -- rán -- tes in mi -- se -- ri -- cór -- di -- a e -- jus, al -- le -- lú -- ia: 
ut e -- _ rí -- pi -- at _ a mor -- te á -- ni -- mas _ e -- ó -- rum: 
quó -- ni -- am ad -- jú -- tor et pro -- té -- ctor no -- ster est, _ 
al -- le -- lú -- ia, al -- le -- _ lú -- ia. Ps. 
Ex -- sul -- tá -- te ju -- sti in Dó -- mi -- no: 
\set stanza = " * " 
re -- ctos de -- cet col -- lau -- dá -- ti -- o. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( d'4 ees'4) c'4 ( f'4 d'4) d'4 ( f'4) f'4 ( g'4) g'4  g'4 ( c''4 bes'4) ~ bes'4 ( a'4) bes'4 ( a'4) a'4 \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( bes'4) g'4 f'4 ( ees'4 g'4) g'4 ( bes'4 f'4) ees'4 ( g'4 f'4) d'4 ( ees'4 g'4 f'4 d'4) d'4 \divisioMaxima
 d'4 ( ees'4) f'4 ( g'4) f'4 f'4 f'4 ( g'4) g'4 ( g'4 f'4) ees'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 f'4 ( \once \tweak #'font-size #-4 ees' ) g'4 ( f'4) \divisioMinima
 f'4 ( bes'4) bes'4 ( bes'4 bes'4) g'4 ( f'4 ees'4 f'\prall g'4 a'4 g'4 f'4) g'4 ( f'4) \divisioMaxima
 ees'4 ( f'4) f'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 f'4 c''4 ( bes'4 bes'4) ~ bes'4 ( bes'4 bes'4) f'4 ( g'4 a'\prall bes'4) g'4 ( g'4 f'4 \once \tweak #'font-size #-4 g' ) f'4 ( d'4) \divisioMinima
 d'4 ( ees'\prall f'4 g'4) f'4 f'4 ( g'4) ~ g'4 ( f'4) f'4 ( ees'4 g'4) g'4 ( a'\prall bes'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 g'4 ( bes'4) bes'4 ( bes'4 bes'4) g'4 bes'4 ( g'4 a'4 f'4) ees'4 \divisioMinima
 f'4 g'4 ( a'4) a'4 ( a'4 bes'4) g'4 ( g'4 f'4 \once \tweak #'font-size #-4 g' ) f'4 f'4 ( ees'4 ees'4) c'4 ( ees'4) ~ ees'4 ( ees'4 ees'4) \divisioMaior
 bes4 c'4 d'4 ( c'4 g'4) g'4 \divisioMinima
 g'4 ( f'4 f'4) d'4 ( ees'4 g'4 f'4 ees'4) f'4 ( g'4 f'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 c''4 bes'4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
bes2*3/2 c'2*3/2 d'2 ~ d'2 ~ d'4 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 ees'2*3/2 c'2*3/2 d'2*3/2 c'2*3/2 d'4 c'2*4/2 bes4 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 c'2 bes2*3/2 ~ bes2 ~ bes2 d'2 ~ d'2 ~ d'2 \divisioMinima
f'2 ees'2*3/2 d'2 c'2*3/2 ~ c'2*3/2 ~ c'2 \divisioMaxima
r2 f'2 ees'2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 c'2*4/2 bes2 ~ \divisioMinima
bes2*4/2 c'2 ~ c'2*3/2 ~ c'2*3/2 ees'2*7/2 c'2 \divisioMaxima
f'4 ~ f'2 g'2*3/2 ~ g'4 f'2 ~ f'2 r4 \divisioMinima
f'2*3/2 ~ f'2*3/2 d'2*5/2 c'2*3/2 ~ c'2 bes2*3/2 \divisioMaior
r2*3/2 c'2 bes4 \divisioMinima
d'2*3/2 bes4 c'2*4/2 d'2*3/2 bes2*4/2 ~ bes2 \finalis
r4 g'2 ~ g'2 f'2*3/2 ees'2*3/2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 ees'2 f'2*3/2 d'2 ~ d'2 ~ d'2 ~ \finalis
d'2*4/2 ees'2*3/2 f'2*3/2 \divisioMinima
g'2 f'2*3/2 ees'2 d'2*3/2 \divisioMaxima
f'2 ~ f'2 g'2*4/2 f'2*3/2 ~ \divisioMinima
f'4 ~ f'2 ees'2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 c'2*3/2 ~ c'4 bes2 \finalis
}

tenorMusic = {
g2*3/2 a2*3/2 bes2 ~ bes2 ~ bes4 a2 g2*3/2 ~ g2 a4 \divisioMinima
g2 ~ g2*3/2 bes2*3/2 ~ bes2*6/2 ~ bes2*5/2 ~ bes4 \divisioMaxima
f2 ees2 d2 ~ d2 ~ d2*3/2 ees2 d2 g2 ~ g2 a2 \divisioMinima
bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 a2 \divisioMaxima
r2 bes2 ~ bes2*3/2 ~ bes2 a2*3/2 g2*3/2 f2*4/2 ~ f2*4/2 g2 \divisioMinima
d2*4/2 c2 f2*3/2 g2*3/2 bes2*7/2 a2 ~ \divisioMaxima
a4 bes2 ~ bes2*4/2 ~ bes2 c'2 ~ c'4 ~ \divisioMinima
c'2*3/2 bes2*3/2 a2*5/2 g2*5/2 ~ g2*3/2 \divisioMaior
f2 g2*3/2 ~ g4 \divisioMinima
bes2*3/2 ~ bes4 ~ bes2*4/2 ~ bes2*3/2 g2*4/2 f2 \finalis
f'4 ~ f'2 ees'2 d'2*3/2 c'2*3/2 bes2*3/2 \divisioMaxima
f2 ~ f2 ~ f2 ~ f2*3/2 a2 c'2 bes2 ~ \finalis
bes2*4/2 c'2*3/2 d'2*3/2 \divisioMinima
ees'2 d'2*3/2 c'2 bes2*3/2 \divisioMaxima
c'2 bes2 ~ bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 f2 g2 ~ g2*3/2 \divisioMaxima
f2 ~ f2 g2*4/2 ~ g2*3/2 ~ g2*3/2 d4 ~ d2 \finalis
}

bassMusic = {
r2*8/2 a2 g4 ~ g2 ~ g2*3/2 f2 ~ f4 \divisioMinima
g2 c2*3/2 ~ c2*3/2 bes,2*6/2 ~ bes,2*5/2 ~ bes,4 ~ \divisioMaxima
bes,2 ~ bes,2 ~ bes,2 a,2 g,2*3/2 ~ g,2 bes,2 ~ bes,2 d2 ~ d2 ~ \divisioMinima
d2 c2*3/2 bes,2 c2*3/2 f2*3/2 ~ f2 \divisioMaxima
r2 d2 c2*3/2 bes,2 ~ bes,2*3/2 ~ bes,2*3/2 ~ bes,2*4/2 a,2*4/2 g,2 ~ \divisioMinima
g,2*4/2 a,2 ~ a,2*3/2 c2*3/2 ~ c2*7/2 f2 ~ \divisioMaxima
f4 ~ f2 ees2*4/2 d2 ~ d2 c4 \divisioMinima
d2*3/2 ~ d2*3/2 ~ d2*5/2 ees2*5/2 ~ ees2*3/2 \divisioMaior
d2 ees2*3/2 ~ ees4 \divisioMinima
bes,2*3/2 ~ bes,4 ~ bes,2*4/2 ~ bes,2*3/2 ~ bes,2*4/2 ~ bes,2 \finalis
r2*14/2 \divisioMaxima
d2 bes,2 c2 d2*3/2 ~ d2 ~ d2 g2 \finalis
r2*20/2 \divisioMaxima
d2 ~ d2 ees2*4/2 d2*3/2 ~ \divisioMinima
d4 ~ d2 c2 g,2*3/2 \divisioMaxima
d2 bes,2 ~ bes,2*4/2 g,2*3/2 a,2*3/2 ~ a,4 g,2 \finalis
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
