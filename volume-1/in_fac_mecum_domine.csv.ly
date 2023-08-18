\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.244
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Fac mecum Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Fac mecum Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Fac mecum Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Fac _ me -- cum, 
\set stanza = " * " Dó -- mi -- ne, si -- gnum in bo -- num: 
ut ví -- de -- ant qui me o -- dé -- runt, et con -- fun -- dán -- tur: 
quó -- ni -- am tu Dó -- _ mi -- ne ad -- ju -- ví -- sti me, _ _ 
et con -- so -- lá -- _ tus es _ me. Ps. 
In -- clí -- na Dó -- mi -- ne au -- rem tu -- am, et ex -- áu -- di me: 
\set stanza = " * " 
quó -- ni -- am in -- ops et pau -- per sum e -- go. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 ( a'\prall bes'4) c''4 ( bes'4) bes'4 ( bes'4) g'4 \divisioMinima
 bes'4 a'4 ( f'4) g'4 ( bes'4 a'4) c''4 bes'4 bes'4 bes'4 ( a'4 g'4) g'4 \divisioMaior \forceBreak

 g'4 f'4 g'4 g'4 g'4 f'4 g'4 bes'4 ( bes'4 c''4) g'4 \divisioMinima
 g'4 ( a'4) f'4 g'4 g'4 ( a'\prall bes'4 c''4 bes'4 \forceBreak
 a'4 bes'\prall c''4 bes'4 c''4) bes'4 ( c''4) \divisioMaxima
 g'4 c''4 ( bes'4) bes'4 bes'4 ( a'4) a'4 ( bes'4) c''4 ( bes'4 c''4) bes'4 ( a'4 g'4) g'4 \divisioMinima
 g'4 bes'4 ( a'4 \forceBreak
) bes'4 g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) \divisioMaior
 g'4 bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 c''4 ( g'4) c''4 ( bes'4) bes'4 ( a'4) a'4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4 a'\prall bes'4 a'4 bes'4 \forceBreak
) a'4 ( g'4) \finalis
 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 bes'4 \divisioMaxima \forceBreak

 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis
  f'4 g'4 f'4 f'4 bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 a'4 bes'4 c''4 c''4 bes'4 c''4 bes'4 \divisioMaxima
 bes'4 g'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 a'4 bes'4 c''4 c''4 bes'4 c''4 bes'4 \divisioMaxima
 bes'4 g'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 g'4 bes'4 a'4 f'4 g'4 a'4 g'4 \finalis

}

altoMusic = {
d'2*5/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2 ~ d'2*3/2 f'2 ~ f'4 d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'4 \divisioMinima
ees'2*4/2 f'2*5/2 ~ f'2*5/2 ~ f'2 \divisioMaxima
d'4 ees'2*3/2 f'2 ~ f'2*5/2 d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2 ~ d'2 ~ d'4 c'2 f'2 ~ \divisioMaior
f'4 ~ f'2*3/2 ees'2*4/2 ~ ees'2 f'2*4/2 ~ f'2 d'2*5/2 ~ d'2 ~ \finalis
d'4 c'2 d'2 ~ d'2*3/2 ~ d'2 ees'4 f'2 ~ f'2*3/2 d'2*3/2 ~ d'4 \divisioMaxima
ees'2 ~ ees'2*3/2 d'2*3/2 f'2*4/2 ~ f'2 d'2 ~ d'4 r4 c'2 d'2 ~ d'2*3/2 ~ d'2*3/2 \divisioMinima
ees'2 f'2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
f'2 ees'2 ~ ees'2*4/2 f'2*3/2 ~ \divisioMinima
f'2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
ees'2 d'2 ~ d'2*3/2 f'2 ~ f'2*3/2 ~ f'2 d'2 ~ d'4 \finalis
}

tenorMusic = {
bes2*5/2 a2 bes4 \divisioMinima
d'4 c'2 bes2*3/2 ~ bes2 c'4 ~ c'2*3/2 bes4 ~ \divisioMaior
bes4 ~ bes2 ~ bes2 a2 g2*3/2 bes4 \divisioMinima
c'2*4/2 ~ c'2*5/2 bes2*5/2 g4 a4 \divisioMaxima
bes4 ~ bes2*3/2 c'2 ~ c'2*5/2 ~ c'2*3/2 bes4 ~ \divisioMinima
bes4 g2 ~ g2 ~ g4 ~ g2 f2 ~ \divisioMaior
f4 g2*3/2 ~ g2*4/2 c'2 bes2*4/2 c'2 ~ c'2*5/2 bes2 ~ \finalis
bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes4 c'2 a2*3/2 ~ a2*3/2 bes4 \divisioMaxima
g2 a2*3/2 bes2*3/2 ~ bes2*4/2 c'2 ~ c'2 bes4 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2 c'2 a2*3/2 bes2*3/2 ~ \divisioMaxima
bes2 g2 ~ g2*4/2 f2*3/2 \divisioMinima
bes2 a2*3/2 g2*3/2 ~ \divisioMaxima
g2 ~ g2 ~ g2*3/2 ~ g2 bes2*3/2 c'2 ~ c'2 bes4 \finalis
}

bassMusic = {
g2*5/2 ~ g2 ~ g4 ~ \divisioMinima
g4 ~ g2 ~ g2*3/2 d2 ~ d4 g2*3/2 ~ g4 \divisioMaior
r4 a2 g2 ~ g2 ~ g2*3/2 ~ g4 \divisioMinima
c2*4/2 d2*5/2 ~ d2*5/2 f2 \divisioMaxima
g4 ~ g2*3/2 f2 d2*5/2 g2*3/2 ~ g4 ~ \divisioMinima
g4 ~ g2 f2 ees4 ~ ees2 d2 ~ \divisioMaior
d4 ~ d2*3/2 c2*4/2 ~ c2 d2*4/2 ~ d2 g2*5/2 ~ g2 \finalis
r2*3/2 r2 a2*3/2 g2 ~ g4 f2 ~ f2*3/2 g2*3/2 ~ g4 \divisioMaxima
c2 ~ c2*3/2 g2*3/2 d2*4/2 ~ d2 g2 ~ g4 r2*5/2 a2*3/2 g2*3/2 ~ \divisioMinima
g2 f2 ~ f2*3/2 g2*3/2 \divisioMaxima
d2 ~ d2 c2*4/2 d2*3/2 ~ \divisioMinima
d2 ~ d2*3/2 g2*3/2 \divisioMaxima
c2 bes,2 g,2*3/2 d2 ~ d2*3/2 ~ d2 g2 ~ g4 \finalis
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
