\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.255
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laudate Dominum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laudate Dominum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laudate Dominum" }
    \line {}
  }
}

chantText = \lyricmode {
Lau -- dá -- te _ _ _ 
\set stanza = " * " Dó -- mi -- num, 
qui -- a be -- _ ní -- gnus est: _ 
psál -- _ li -- te no -- _ mi -- ni e -- jus, 
quó -- ni -- am su -- á -- vis est: _ 
ó -- mni -- a _ quæ -- cúm -- que vó -- lu -- _ it, fe -- cit 
in cœ -- lo et in ter -- ra. }

chantMusic = {
\tieDown   g'4 ( \once \tweak #'font-size #-4 d' ) f'4 ( g'4) g'4 ( a'\prall bes'4) ~ bes'4 ( a'4 g'4) a'4 ( f'4) ~ f'4 ( d'4)  f'4 ( g'4) g'4 ( bes'4 g'4) f'4 ( g'4 f'4) \divisioMaior \forceBreak

 g'4 ( f'4) g'4 g'4 bes'4 ( bes'4 bes'4) bes'4 ( c''4 bes'4 bes'4) g'4 g'4 ( a'\prall bes'4 a'4 f'4) a'4 ( g'4) \divisioMaxima
 g'4 ( bes'4) c''4 ( bes'4) bes'4 ( bes'4 bes'4) g'4 \forceBreak
 g'4 bes'4 ( bes'4 bes'4) g'4 f'4 ( bes'4) a'4 ( bes'4 g'4 f'4) a'4 ( g'4) \divisioMaior
 g'4 ( a'\prall bes'4 a'4 g'4) g'4 ( f'4) g'4 bes'4 ( bes'4) bes'4 ( c''4 bes'4 bes'4) g'4 ( f'4 \forceBreak
) f'4 ( g'\prall a'4 g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 ( g'4 a'\prall bes'4 c''4) c''4 ( bes'4) bes'4 ( c''4 bes'4) ~ bes'4 ( bes'4) \divisioMinima
 g'4 bes'4 ( bes'4 c''4) bes'4 bes'4 ( c''4 bes'4 \forceBreak
) bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( c''4 bes'4 a'4) \divisioMinima
 bes'4 ( a'4 bes'4 g'4) g'4 ( f'4 g'\prall a'4 g'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( g'4 f'4) g'4 ( c''4 bes'4 a'4) \divisioMinima
 bes'4 ( a'4 bes'4 g'4 \forceBreak
) g'4 ( f'4 g'\prall a'4 g'4 f'4 g'4) g'4 ( a'\prall bes'4 a'4 bes'4) a'4 ( g'4) \finalis

}

altoMusic = {
d'2 ~ d'2 ~ d'2 f'2*5/2 ~ f'4 r2 d'2 ~ d'2*3/2 c'2*3/2 \divisioMaior
d'2*4/2 ~ d'2*3/2 ees'2*4/2 ~ ees'4 f'2 ~ f'2 ~ f'4 d'2 \divisioMaxima
g'2*4/2 f'2*4/2 ~ f'4 d'2*4/2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ \divisioMaior
d'2 ~ d'2*3/2 c'2*3/2 d'2 f'2*4/2 ~ f'2 ~ f'2*3/2 c'2 ~ c'4 \divisioMaxima
d'2*5/2 ~ d'2 ees'2*3/2 f'2 ~ \divisioMinima
f'4 ~ f'2*4/2 ees'2*3/2 f'2 ~ f'2 ~ f'2 ~ f'2 \divisioMinima
d'2*4/2 c'2*3/2 d'2 ~ \divisioMaior
d'2 ~ d'2*3/2 ~ d'2 ~ d'2 \divisioMinima
f'2*4/2 ~ f'2*3/2 ~ f'2*4/2 d'2*5/2 ~ d'2 \finalis
}

tenorMusic = {
d'2 c'2 bes2 c'2*3/2 a2 ~ a2*3/2 ~ a2 g2*3/2 a2*3/2 ~ \divisioMaior
a2*4/2 g2*3/2 ~ g2*4/2 bes4 ~ bes2 c'2*3/2 ~ c'4 bes4 ~ \divisioMaxima
bes2*4/2 ~ bes2*4/2 c'4 ~ c'2*4/2 a2 g2*4/2 bes2 ~ \divisioMaior
bes2 g2*3/2 ~ g2*3/2 ~ g2 f2 g2 a2 bes2*3/2 ~ bes2 a4 \divisioMaxima
bes4 a2*4/2 g2 ~ g2*3/2 f2 ~ \divisioMinima
f4 g2*4/2 ~ g2*3/2 f2 g2 a2 c'2 ~ \divisioMinima
c'2*4/2 a2*3/2 bes2 \divisioMaior
a2 ~ a2*3/2 g2 f2 \divisioMinima
g2 f2 a2*3/2 c'2*4/2 ~ c'2*5/2 ~ c'4 bes4 \finalis
}

bassMusic = {
g2 ~ g2 ~ g2 f2*3/2 ~ f2 d2*3/2 c2 bes,2*3/2 a,2*3/2 \divisioMaior
bes,2*4/2 ~ bes,2*3/2 c2*4/2 ~ c4 d2 ~ d2*3/2 g2 \divisioMaxima
ees2*4/2 d2*4/2 ~ d4 g2*4/2 ~ g2 ~ g2*4/2 ~ g2 \divisioMaior
bes,2 ~ bes,2*3/2 a,2*3/2 g,2 d2 ~ d2 ~ d2 ~ d2*3/2 f2 ~ f4 \divisioMaxima
bes,2*5/2 ~ bes,2 c2*3/2 d2 ~ \divisioMinima
d4 ~ d2*4/2 c2*3/2 d2 ~ d2 ~ d2 ~ d2 \divisioMinima
g2*4/2 ~ g2*3/2 ~ g2 \divisioMaior
d2 c2*3/2 bes,2 d2 ~ \divisioMinima
d2 ~ d2 ~ d2*3/2 ~ d2*4/2 g2*5/2 ~ g2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
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
