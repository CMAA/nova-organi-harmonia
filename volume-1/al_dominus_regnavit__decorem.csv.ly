\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.57
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dominus regnavit, decorem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dominus regnavit, decorem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dominus regnavit, decorem" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ ia, _ _ _ 
\set stanza = " * " al -- le -- lú -- _ _ ia. _ _ _ _ _ _ _ _ ℣. 
Dó -- _ _ mi -- nus re -- gná -- _ _ vit, 
de -- có -- rem _ ín -- _ _ _ du -- it: 
ín -- du -- it _ Dó -- _ _ mi -- nus for -- _ ti -- tú -- _ di -- nem, _ _ _ 
et præ -- cín -- xit se 
\set stanza = " * " vir -- tú -- te. _ _ _ }

chantMusic = {
\tieDown  f'4 ( g'4) g'4 bes'4 ( bes'4) c''4 ( bes'4 a'4) bes'4 ( c''4) c''4 ( d''4 c''4 bes'4 bes'4) g'4 ( c''4 bes'4) ~ bes'4 ( f'4) g'4 ( a'\prall bes'4 g'4) \divisioMinima
 f'4 ( g'4) g'4 \forceBreak
 bes'4 ( bes'4) c''4 ( bes'4 a'4) bes'4 ( c''4) c''4 ( d''4 c''4 bes'4 bes'4) g'4 ( c''4 bes'4) ~ bes'4 ( f'4) g'4 ( a'\prall bes'4 g'4) \divisioMinima
 bes'4 ( bes'4 g'4) bes'4 ( a'4) bes'4 ( g'4 f'4.) c''4 ( bes'4 a'4 \forceBreak
) bes'4 ( g'4 a'\prall bes'4 g'4) \finalis
 g'4 ( c''4) d''4 ( c''4 bes'4) g'4 ( c''4 bes'4 c''4) c''4 ( a'4 bes'4 g'4) g'4 \divisioMinima
 g'4 ( f'4 a'4) a'4. g'4 ( c''4 a'4) bes'4 ( g'4 a'\prall bes'4 a'4 bes'4 \forceBreak
) bes'4 ( a'4) \divisioMaior
 a'4 ( bes'4) c''4 ( d''4 c''4 d''4) bes'4 ( g'4) bes'4 ( d''4 c''4 a'4 bes'4) \divisioMinima
 f'4 ( a'4) c''4 ( bes'4 c''4) a'4 ( bes'4 g'4.) bes'4 ( c''4 bes'4 a'4 bes'4) g'4 ( a'4 g'4) g'4 \divisioMaxima \forceBreak

 g'4 g'4 ( bes'4 c''4) c''4 ( d''4 c''4 bes'4) ~ bes'4 ( bes'4) a'4 ( bes'4) c''4 ( bes'4 g'4.) a'4 ( bes'4 c''4) c''4 c''4 \divisioMinima
  d''4 ( c''4) d''4 ( e''4 c''4) bes'4 \forceBreak
 bes'4 ( d''4 c''4) bes'4 ( bes'4 g'4) g'4 g'4 ( bes'4.) g'4 ( bes'4) ~ bes'4 ( f'4) aes'4 ( g'4 f'4) \divisioMaior
 f'4 g'4 bes'4 ( bes'4 c''4) g'4 g'4 ( bes'4 a'4) \divisioMinima \forceBreak

 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( c''4 bes'4 c''4) c''4. d''4 ( c''4 d''4 c''4 a'4.) bes'4 ( c''4 bes'4 f'4) g'4 ( a'\prall bes'4 g'4) \finalis

}

altoMusic = {
d'2*3/2 ~ d'2 g'2*5/2 f'2*5/2 ~ f'2 ~ f'2*3/2 d'2*3/2 ~ d'4 \divisioMinima
c'2*3/2 d'2*5/2 g'2 f'2*5/2 ~ f'2 ~ f'2*3/2 d'2*3/2 ~ d'4 \divisioMinima
ees'2*5/2 f'2*7/4 ~ f'2*3/2 ees'2*3/2 c'4 bes4 \finalis
d'2*5/2 c'2*4/2 ees'2*4/2 d'4 \divisioMinima
c'2*3/2 d'2*3/4 ees'2*3/2 g'2*6/2 f'2 ~ \divisioMaior
f'2 ~ f'2*4/2 d'2 f'2*5/2 ~ \divisioMinima
f'2*5/2 ~ f'2*7/4 ~ f'2 ~ f'2*3/2 d'2*3/2 ~ d'4 \divisioMaxima
ees'2 d'2 ~ d'2*4/2 ~ d'2 f'2 ~ f'2*7/4 ~ f'2*3/2 ~ f'2 a'2 g'2*4/2 f'2*3/2 ~ f'2*4/2 ~ f'2*7/4 ~ f'2*3/2 ~ f'2*3/2 \divisioMaior
c'2 d'2*4/2 ees'2*3/2 \divisioMinima
f'2 ~ f'2*11/4 ~ f'2 ~ f'2*7/4 ~ f'2*4/2 d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2 ~ bes2*5/2 ~ bes2*5/2 d'2 c'2*3/2 ~ c'2*3/2 bes4 \divisioMinima
c'2*3/2 bes2*5/2 ~ bes2 ~ bes2*5/2 d'2 c'2*3/2 ~ c'2*3/2 bes4 \divisioMinima
c'2*5/2 bes2*7/4 f2*3/2 g2*3/2 ~ g4 d4 \finalis
bes2*5/2 a2*4/2 bes2*4/2 ~ bes4 \divisioMinima
a2*3/2 bes2*3/4 ~ bes2*3/2 d'2*6/2 ~ d'2 \divisioMaior
c'2 a2*4/2 bes2 ~ bes2*5/2 \divisioMinima
a2*5/2 bes2*7/4 d'2 c'2*3/2 ~ c'2*3/2 bes4 \divisioMaxima
g2 ~ g2 a2*4/2 g2 f2 g2*7/4 bes2*3/2 ~ bes2 a2 bes2*4/2 ~ bes2*3/2 d'2*4/2 c'2*7/4 bes2*3/2 f2*3/2 ~ \divisioMaior
f2 ~ f2*4/2 ees2*3/2 \divisioMinima
r2 a2*11/4 bes2 c'2*7/4 d'2*4/2 c'2*3/2 bes4 \finalis
}

bassMusic = {
r2*3/2 g2 ees2*5/2 d2*5/2 ~ d2 ~ d2*3/2 g2*3/2 ~ g4 \divisioMinima
a2*3/2 g2*5/2 ees2 d2*5/2 ~ d2 ~ d2*3/2 g2*3/2 ~ g4 \divisioMinima
c2*5/2 d2*7/4 ~ d2*3/2 c2*3/2 g,2 \finalis
g2*5/2 ~ g2*4/2 ~ g2*4/2 ~ g4 ~ \divisioMinima
g2*3/2 ~ g2*3/4 ~ g2*3/2 ~ g2*6/2 d2 ~ \divisioMaior
d2 f2*4/2 g2 d2*5/2 ~ \divisioMinima
d2*5/2 ~ d2*7/4 ~ d2 ~ d2*3/2 g2*3/2 ~ g4 \divisioMaxima
c2 bes,2 ~ bes,2*4/2 ~ bes,2 d2 ~ d2*7/4 ~ d2*3/2 f2 ~ f2 ees2*4/2 d2*3/2 ~ d2*4/2 ~ d2*7/4 ~ d2*3/2 ~ d2*3/2 ~ \divisioMaior
d2 bes,2*4/2 c2*3/2 \divisioMinima
d2 ~ d2*11/4 ~ d2 ~ d2*7/4 ~ d2*4/2 g2*3/2 ~ g4 \finalis
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
