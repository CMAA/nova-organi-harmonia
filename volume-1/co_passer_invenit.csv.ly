\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.230
%(volume.page)

global = {
 \key d \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Passer invenit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Passer invenit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Passer invenit" }
    \line {}
  }
}

chantText = \lyricmode {
Pas -- ser 
\set stanza = " * " in -- vé -- nit si -- bi do -- mum, et tur -- tur ni -- dum, 
u -- bi re -- pó -- _ nat pul -- los su -- os: 
al -- tá -- ri -- a tu -- a Dó -- mi -- ne vir -- tú -- _ tum, 
Rex me -- us, et De -- us me -- us: 
be -- á -- ti qui há -- bi -- tant _ in do -- mo tu -- _ a, 
in sǽ -- cu -- lum sǽ -- cu -- li lau -- _ _ dá -- bunt te. }

chantMusic = {
\tieDown   f'4 ( bes'4) bes'4  bes'4 bes'4 bes'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( c''4) c''4 a'4 ( bes'4) a'4 ( bes'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 a' ) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( \once \tweak #'font-size #-4 a' ) f'4 ( g'4) g'4 \divisioMaior \forceBreak

 g'4 g'4 g'4 bes'4. ~ bes'4 ( bes'4 bes'4) g'4 ( f'4) f'4  ees'4 ( g'4 f'4) f'4 ( g'4 d'4) d'4 \divisioMaxima
 f'4 g'4 ( bes'4 a'4) a'4 a'4 c''4 \forceBreak
 c''4 ( a'4) c''4 ( d''4) c''4 bes'4 ( bes'4 a'4) f'4 ( \once \tweak #'font-size #-4 bes' ) bes'4. ~ bes'4 ( bes'4 bes'4) a'4 ( g'4) \divisioMaior
 a'4 ( f'4 a'4) g'4 ( a'4 f'4 d'4) d'4 \divisioMinima
 d'4 ( f'4 g'4 \forceBreak
) g'4 ( a'4 f'4) f'4 ( e'4 f'4) d'4 ( e'4 d'4 c'4) c'4 \divisioMaxima
 f'4 ( g'4 d'4) f'4 f'4 ( g'4) g'4 ( d'4) f'4 ( a'4) g'4 ( a'4) f'4 ( g'4) a'4 ( g'4) \divisioMinima \forceBreak

 bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4) d''4 ( c''4 d''4) bes'4 ( g'4) c''4 ( bes'4 a'4) a'4 \divisioMaior
 f'4 a'4 ( bes'4 a'4) g'4 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( a'4 g'4 a'4) g'4 f'4 ( g'4 e'4) \divisioMinima \forceBreak

 e'4 ( f'4) g'4 ( f'4) g'4 ( \once \tweak #'font-size #-4 a' ) d'4 d'4 ( e'\prall f'4 d'4) d'4 \finalis

}

altoMusic = {
f'2*4/2 ~ f'4 g'2 ~ g'2*3/2 d'2 ~ d'2 ~ \divisioMinima
d'2*4/2 ~ d'2 c'2 d'4 ~ \divisioMaior
d'2*3/2 ees'2*3/4 f'2*3/2 ~ f'2 ~ f'4 ees'2*3/2 c'2*3/2 bes4 \divisioMaxima
d'2*4/2 ~ d'2 ~ d'4 f'2*5/2 ~ f'2*3/2 ~ f'2 g'2*3/4 d'2*3/2 ~ d'2 ~ \divisioMaior
d'2*3/2 ~ d'2*4/2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2 ~ d'2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'4 ~ c'4 \divisioMaxima
a2*4/2 ~ a2 ~ a2 ~ a2*4/2 ~ a2 d'2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 f'2 e'2*3/2 f'4 ~ \divisioMaior
f'4 d'2*4/2 ~ d'2 c'2*5/2 ~ c'2*3/2 \divisioMinima
e'2 ~ e'2 ~ e'2 d'4 bes2*4/2 a4 \finalis
}

tenorMusic = {
bes2*4/2 d'4 ~ d'2 c'2*3/2 ~ c'2 bes2 ~ \divisioMinima
bes2 ~ bes2 ~ bes2 a2 g4 ~ \divisioMaior
g2*3/2 ~ g2*3/4 f2*3/2 a2 bes4 ~ bes2*3/2 a2*3/2 bes4 \divisioMaxima
a4 g2*3/2 ~ g2 f4 a2 bes2*3/2 c'2*3/2 d'2 ~ d'2*3/4 c'2*3/2 bes2 \divisioMaior
f2*3/2 e2*4/2 f4 \divisioMinima
a4 ~ a2 g2*3/2 ~ g2*3/2 f2*4/2 e4 \divisioMaxima
a2*3/2 g4 f2 e2 d2*4/2 ~ d2 ~ d2 \divisioMinima
g2 a2 bes2*3/2 ~ bes2 g2*3/2 a4 \divisioMaior
f4 g2*4/2 e2 ~ e2 f2*3/2 a2*3/2 ~ \divisioMinima
a2 ~ a2 ~ a2 ~ a4 g2*4/2 f4 \finalis
}

bassMusic = {
d2*4/2 ~ d4 ees2 e2*3/2 g2 ~ g2 \divisioMinima
r2 a2 g2 ~ g2 ~ g4 \divisioMaior
bes,2*3/2 c2*3/4 d2*3/2 ~ d2 ~ d4 g2*3/2 ~ g2*3/2 ~ g4 \divisioMaxima
bes,4 ~ bes,2*3/2 d2 ~ d4 ~ d2 ~ d2*3/2 ~ d2*3/2 ~ d2 g2*3/4 ~ g2*3/2 ~ g2 \divisioMaior
d2*3/2 ~ d2*4/2 ~ d4 ~ \divisioMinima
d4 c2 bes,2*3/2 a,2*3/2 ~ a,2*4/2 ~ a,4 \divisioMaxima
d2*4/2 ~ d2 ~ d2 ~ d2*4/2 c2 bes,2 ~ \divisioMinima
bes,2 ~ bes,2 ~ bes,2*3/2 d2 ~ d2*3/2 ~ d4 ~ \divisioMaior
d4 bes,2*4/2 ~ bes,2 a,2 ~ a,2*3/2 ~ a,2*3/2 \divisioMinima
c2 d2 e2 f4 g2*4/2 d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
        "I"
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
