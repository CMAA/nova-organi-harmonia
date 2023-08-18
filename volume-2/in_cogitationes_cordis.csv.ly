\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.133
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Cogitationes Cordis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Cogitationes Cordis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Cogitationes Cordis" }
    \line {}
  }
}

chantText = \lyricmode {
Co -- gi -- ta -- ti -- ó -- nes 
\set stanza = " * " Cor -- _ dis e -- jus 
in ge -- ne -- ra -- ti -- ó -- ne et ge -- ne -- ra -- ti -- ó -- nem: _ 
ut é -- ru -- at a mor -- te á -- ni -- mas e -- _ ó -- rum 
et a -- lat e -- os _ in fa -- me. T.P. 
Al -- le -- lú -- _ ia, al -- le -- lú -- ia. Ps. 
Ex -- sul -- tá -- te, ju -- sti, in Dó -- mi -- no, 
\set stanza = " * " 
re -- ctos de -- cet col -- lau -- dá -- ti -- o. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   ees'4 g'4 bes'4 ( bes'4) bes'4 bes'4 ( c''4) bes'4 \divisioMinima
 bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) f'4 ( g'4) bes'4 ( c''4 a'4 bes'4) a'4 ( g'4) \divisioMaior
 ees'4 \forceBreak
 f'4 g'4 g'4 g'4 g'4 ( a'\prall bes'4) bes'4 ( bes'4) \divisioMinima
 bes'4 bes'4 ( g'4) bes'4 bes'4 ( d''4 c''4) bes'4 ( a'4) bes'4 ( d''4 c''4) bes'4 ( bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima \forceBreak

 g'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 ( d''4 c''4) c''4 ( bes'4) \divisioMinima
 bes'4 ( bes'4 bes'4) f'4 a'4 a'4 ( c''4) d''4 ( c''4 d''4) bes'4 ( c''4 bes'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaior \forceBreak

 ees'4  f'4 ( aes'4) g'4 ( g'4 aes'4) f'4 ( bes'4) bes'4 ( bes'4) c''4 ( bes'4 f'4 g'4)  g'4 ( bes'4 g'4 f'4 g'\prall aes'4 g'4 f'4) ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \finalis
 ees'4 ( g'4 \forceBreak
) g'4 ( f'4 g'4) bes'4 ( g'4) bes'4 ( bes'4 bes'4) bes'4 ( c''4 bes'4 g'4) \divisioMinima
 f'4 ( g'4) g'4 ( bes'4 f'4 g'\prall aes'4 g'4 f'4) ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \finalis
 ees'4 g'4 \forceBreak
 a'4 a'4 a'4 a'4 c''4 c''4 bes'4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 g'4 \finalis
  ees'4 g'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 \finalis

}

altoMusic = {
ees'2 <g' ees'>2*3/2 <f' ees'>2 <f' d'>4 \divisioMinima
f'2 ~ f'2*3/2 c'2 d'2 ~ d'2 ~ d'2 \divisioMaior
ees'4 ~ ees'2 ~ ees'2 ~ ees'2*3/2 f'2 ~ \divisioMinima
f'4 g'2*3/2 f'2*5/2 ees'2*3/2 d'2*3/2 c'2 bes4 \divisioMaxima
r4 d'2 ~ d'2 ~ d'2 g'2*3/2 f'2 ~ \divisioMinima
f'2*5/2 ~ f'2 ~ f'2*3/2 ~ f'2*6/2 d'2 \divisioMaior
c'4 ~ c'2 ees'2*3/2 f'2 ~ f'2*6/2 ees'2*3/2 c'2 ~ c'2*3/2 ~ c'2 d'2*4/2 bes2 \finalis
ees'2 ~ ees'2*3/2 f'2 ees'2*3/2 d'2*5/2 ~ \divisioMinima
d'2 ees'2 c'2 ~ c'2*3/2 ~ c'2 d'2*4/2 bes2 \finalis
ees'2 <g' ees'>2 ~ <g' ees'>2*3/2 f'2*3/2 \divisioMaxima
d'2 ees'2 f'2 d'2 ~ d'4 ees'2*3/2 ~ ees'2*6/2 ~ \divisioMinima
ees'2 ~ ees'2*3/2 f'2 \divisioMaxima
ees'2 ~ ees'2*4/2 f'2*3/2 \divisioMinima
ees'2*3/2 d'2 ~ \divisioMaxima
d'2 ees'2*5/2 f'2 ~ f'4 ees'4 \finalis
}

tenorMusic = {
r2*5/2 bes2 ~ bes4 ~ \divisioMinima
bes2 c'2*3/2 ~ c'2 bes2 c'2 bes2 ~ \divisioMaior
bes4 ~ bes2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 g2*5/2 ~ g2*3/2 ~ g2*3/2 d2 ~ d4 \divisioMaxima
r4 bes2 a2 g2 ~ g2*3/2 bes2 \divisioMinima
d'2*5/2 c'2 a2*3/2 f2*6/2 g2 ~ \divisioMaior
g4 c'2 ~ c'2*3/2 ~ c'2 bes2*6/2 ~ bes2*3/2 aes2 a2*3/2 g2 bes2*4/2 g2 \finalis
r2 bes2*3/2 g2 ~ g2*3/2 ~ g2*5/2 ~ \divisioMinima
g2 ~ g2 aes2 f2*3/2 g2 bes2*4/2 aes4 g4 \finalis
ees'2 d'2 c'2*3/2 d'2*3/2 \divisioMaxima
g2 ~ g2 f4 c'4 ~ c'2 bes4 r2*3/2 g2*6/2 ~ \divisioMinima
g2 ~ g2*3/2 f2 \divisioMaxima
bes2 g2*4/2 ~ g2*3/2 ~ \divisioMinima
g2*3/2 ~ g2 ~ \divisioMaxima
g2 ~ g2*5/2 f2 bes4 ~ bes4 \finalis
}

bassMusic = {
r2*8/2 \divisioMinima
d2 f2*3/2 a2 g2 ~ g2 ~ g2 ~ \divisioMaior
g4 ~ g2 ees2 c2*3/2 d2 ~ \divisioMinima
d4 ees2*3/2 d2*5/2 c2*3/2 g,2*3/2 ~ g,2 ~ g,4 \divisioMaxima
r4 bes,2 ~ bes,2 ~ bes,2 ees2*3/2 d2 ~ \divisioMinima
d2*5/2 f2 ~ f2*3/2 d2*6/2 bes,2 ~ \divisioMaior
bes,4 aes,2 c2*3/2 d2 ~ d2*6/2 ees2*3/2 aes2 f2*3/2 c2 bes,2*4/2 ees2 ~ \finalis
ees2 ~ ees2*3/2 d2 c2*3/2 g,2*5/2 \divisioMinima
bes,2 c2 aes,2 ~ aes,2*3/2 c2 bes,2*4/2 ees2 \finalis
r2*10/2 \divisioMaxima
bes,2 c2 d2 g2 ~ g4 ees2*3/2 ~ ees2*6/2 \divisioMinima
d2 c2*3/2 d2 \divisioMaxima
ees2 ~ ees2*4/2 d2*3/2 \divisioMinima
c2*3/2 g,2 \divisioMaxima
bes,2 c2*5/2 d2 ~ d4 ees4 \finalis
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
        "V"
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
