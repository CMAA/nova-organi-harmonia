\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.116
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Jubilate Deo omnis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Jubilate Deo omnis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Jubilate Deo omnis" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- bi -- lá -- _ te De -- _ _ o 
\set stanza = " * " 
o -- mnis _ ter -- _ _ _ _ _ _ ra: 
ju -- bi -- lá -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ te De -- _ _ o 
o -- mnis _ ter -- _ _ _ _ _ _ _ _ ra, 
ser -- ví -- te Dó -- _ _ _ mi -- no 
in læ -- _ _ tí -- ti -- a: 
in -- trá -- _ _ te in con -- spé -- ctu e -- _ jus 
in ex -- sul -- ta -- ti -- ó -- ne, 
qui -- _ a Dó -- mi -- _ nus 
i -- pse _ _ _ est De -- us. }

chantMusic = {
\tieDown   ees'4 ees'4  g'4 ( bes'4 g'4 f'4) g'4 ( aes'4 f'4) ees'4 f'4. ees'4 ( f'4 ees'4) ~ ees'4 ( f'4) f'4 \divisioMaior
  aes'4 ( \once \tweak #'font-size #-4 g' ) aes'4 ( bes'4 aes'4) ~ aes'4 ( f'4 ees'4 f'4)  \forceBreak
  ees'4 ( g'4) bes'4. d''4 ( c''4 bes'4) g'4 ( bes'4 aes'4) ~ aes'4 ( f'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( bes'4 f'4 ees'4) f'4 ( ees'4) ees'4 \divisioMaxima
 ees'4 ees'4 g'4 ( bes'4 \forceBreak
) ~ bes'4 ( bes'4) ~ bes'4 ( g'4.) bes'4 ( c''4 bes'4) ~ bes'4 ( g'4 f'4 ees'4) \divisioMinima
 g'4 ( bes'4 g'4 f'4) g'4 ( bes'4 f'4 ees'4) g'4 ( bes'4) ~ bes'4 ( g'4.) bes'4 ( d''4 c''4 bes'4) \divisioMinima
 g'4 \forceBreak
 bes'4 ( bes'4) d''4 ( c''4 bes'4) c''4 ( bes'4) ~ bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4 f'4) g'4 ( f'4 ees'4) g'4 ( g'4 f'4) g'4 ( g'4) f'4 ( g'4) bes'4 ( bes'4 g'4) bes'4 ( d''4 c''4 bes'4) ~ bes'4 ( g'4) \divisioMinima \forceBreak

 g'4 bes'4 ( bes'4 g'4) bes'4 ( f'4) ees'4 f'4. ees'4 ( f'4 ees'4) ~ ees'4 ( f'4) f'4 \divisioMaior
  g'4 ( aes'4 bes'\prall c''4 bes'4)  aes'4 ( bes'4 aes'4) ~ aes'4 ( f'4 ees'4 f'4)  ees'4 ( g'4) bes'4. \forceBreak
 d''4 ( c''4 bes'4) g'4 ( bes'4 aes'4) ~ aes'4 ( f'4) aes'4 ( aes'4) ~ aes'4 ( f'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( bes'4 f'4 ees'4) f'4 ( ees'4) ees'4 \divisioMaxima
 ees'4 g'4 ( bes'4 g'4 a'4) f'4 ( g'4 \forceBreak
) bes'4 ( bes'4) g'4 ( c''4 a'4) bes'4 ( d''4 c''4 bes'4) c''4 ( bes'4 g'4) g'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 f'4 ( bes'4 g'4.) bes'4 ( d''4 c''4 bes'4) c''4 ( bes'4 g'4) g'4 \forceBreak
 g'4 ( a'\prall bes'4 g'4) g'4 \divisioMaxima
 ees'4 g'4 bes'4 ( bes'4) ~ bes'4 ( c''4) bes'4 \divisioMinima
 g'4 bes'4 ( bes'4 c''4) bes'4 ( c''4) bes'4 bes'4 ( d''4 c''4 a'4) bes'4 ( a'4 g'4 a'4 \forceBreak
) a'4 ( g'4) \divisioMaior
 g'4 g'4 ( a'\prall bes'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( f'4) f'4 ( ees'4 g'4) g'4 ( bes'4 f'4 g'4) f'4 ( g'4) \divisioMaior
 bes'4 ( g'4) c''4 ( bes'4 a'4 f'4) f'4 ( g'4) g'4 ( bes'4 c''4 \forceBreak
) c''4 ( bes'4) ~ bes'4 ( g'4) g'4 ( bes'4 f'4 ees'4 f'4) \divisioMaior
 ees'4 ( f'4 g'4.) f'4 ( g'4 a'\prall bes'4) ~ bes'4 ( a'4) bes'4 ( a'4) bes'4 ( g'4) bes'4 ( a'4 bes'4 g'4 f'4) f'4 ( g'4 f'4 ees'4) ees'4 \finalis

}

altoMusic = {
r2 bes2*4/2 ees'2*3/2 ~ ees'4 bes2*7/4 ~ bes2*3/2 ~ bes4 c'2*4/2 ~ c'2*5/2 ees'2 f'2*3/4 ~ f'2*3/2 g'2 f'2 ~ f'4 ees'2 ~ ees'2*4/2 bes2 ~ bes4 \divisioMaxima
c'2 ~ c'2 bes2 d'2*9/4 ~ d'2 ees'2 ~ ees'4 \divisioMinima
d'2*4/2 ~ d'2*5/2 ~ d'2*7/4 f'2*4/2 ~ \divisioMinima
f'4 ees'2 ~ ees'2*3/2 f'2 d'2*3/2 ees'2*5/2 ~ ees'4 d'2*7/2 ~ d'2*3/2 g'2*3/2 f'2*3/2 ~ \divisioMinima
f'4 ~ f'2*3/2 bes2*3/2 c'2*3/4 ~ c'2 ~ c'2*3/2 d'4 ees'2*3/2 ~ ees'2 f'2 ees'2*5/2 ~ ees'2 d'2*3/4 ~ d'2*3/2 ~ d'2 ees'2*3/2 ~ ees'2 c'2 ees'2*5/2 ~ ees'4 bes2 ~ bes4 \divisioMaxima
r4 d'2*4/2 ~ d'2 ~ d'2 ees'2*3/2 f'2*4/2 ~ f'2*3/2 d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 f'2*7/4 ~ f'2*4/2 ~ f'2*3/2 ~ f'4 ees'2*4/2 d'4 \divisioMaxima
ees'2 d'2*4/2 ~ d'4 \divisioMinima
g'4 ~ g'2*3/2 f'2*3/2 ees'2*4/2 f'2*4/2 d'2 ~ \divisioMaior
d'4 ees'2*3/2 d'2 bes2 c'2*3/2 d'2*4/2 c'2 \divisioMaior
d'2 c'2 ~ c'2 ~ c'2 d'2*3/2 ~ d'4 ees'2*3/2 f'2 ~ f'4 r2 \divisioMaior
c'2*7/4 ~ c'2*4/2 d'2*4/2 ~ d'2 c'2 bes2*3/2 g2*4/2 ~ g4 \finalis
}

tenorMusic = {
r2 ees2*4/2 ~ ees2*4/2 ~ ees2*7/4 ~ ees2*3/2 d4 f2*4/2 ~ f2*5/2 g2 f2*3/4 bes2*3/2 ~ bes2 c'2 aes4 a2 ~ a2*4/2 ~ a2 g4 ~ \divisioMaxima
g2 ees2 d2 g2*5/4 a2 g2 ~ g2*3/2 ~ \divisioMinima
g2*4/2 bes2*3/2 a2 g2*7/4 f2*4/2 ~ \divisioMinima
f4 g2 bes2*3/2 ~ bes2 ~ bes2*3/2 c'2*6/2 bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 \divisioMinima
a4 g2*3/2 f2*3/2 g2*3/4 ~ g2 bes2*3/2 ~ bes4 ~ bes2*3/2 g2 c'2 ~ c'2*5/2 bes2 ~ bes2*3/4 ~ bes2*3/2 ~ bes2 c'2*3/2 ~ c'2 aes2 ~ aes2*6/2 a2 g4 \divisioMaxima
r4 bes2*4/2 a2 g2 ~ g2*3/2 f2*4/2 bes2*3/2 c'2*3/2 bes4 ~ \divisioMaior
bes4 ~ bes2*7/4 g2*4/2 f2*3/2 g4 ~ g2*4/2 ~ g4 ~ \divisioMaxima
g2 ~ g2 a2 bes4 ~ \divisioMinima
bes4 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 c'2*4/2 ~ c'2 \divisioMaior
bes4 ~ bes2*3/2 a2 f2 g2*3/2 ~ g2*4/2 ~ g2 ~ \divisioMaior
g2 ~ g2 f2 d2 ~ d4 g2 a4 bes2*3/2 ~ bes2 ~ bes2*3/2 ~ \divisioMaior
bes2*7/4 a2*4/2 g2*4/2 ~ g2 ~ g2 f2*3/2 ees2*4/2 ~ ees4 \finalis
}

bassMusic = {
r2 r2*4/2 c2*4/2 g,2*7/4 c2*3/2 bes,4 f,2*4/2 aes,2*5/2 c2 d2*3/4 ~ d2*3/2 ees2 ~ ees2 ~ ees4 f2 c2*4/2 ees2 ~ ees4 \divisioMaxima
c2 ~ c2 g,2 ~ g,2*5/4 ~ g,2 bes,2 c2*3/2 \divisioMinima
bes,2*4/2 ~ bes,2*3/2 ~ bes,2 ~ bes,2*7/4 d2*4/2 ~ \divisioMinima
d4 c2 ~ c2*3/2 d2 g2*3/2 r2*9/2 a2*4/2 g2*3/2 ees2*3/2 d2*3/2 ~ \divisioMinima
d4 ~ d2*3/2 ~ d2*3/2 c2*3/4 bes,2 ~ bes,2*3/2 ~ bes,4 ees2*3/2 ~ ees2 ~ ees2 f2*5/2 g2 ~ g2*3/4 a2*3/2 bes2 r2*3/2 f2 ~ f2 c2*6/2 ees2 ~ ees4 \divisioMaxima
r4 bes,2*4/2 ~ bes,2 ~ bes,2 c2*3/2 d2*4/2 ~ d2*3/2 g2*3/2 ~ g4 ~ \divisioMaior
g4 d2*7/4 ~ d2*4/2 ~ d2*3/2 ~ d4 c2*4/2 bes,4 \divisioMaxima
ees2 g2 ~ g2 ~ g4 ~ \divisioMinima
g4 ees2*3/2 d2*3/2 c2*4/2 d2*4/2 g2 ~ \divisioMaior
g4 c2*3/2 d2 ~ d2 c2*3/2 bes,2*4/2 a,2 \divisioMaior
g,2 a,2 ~ a,2 ~ a,2 bes,2*3/2 ~ bes,4 c2*3/2 d2 g2*3/2 ~ \divisioMaior
g2*7/4 ~ g2*4/2 ~ g2*4/2 f2 ees2 d2*3/2 ees2*4/2 ees,4 \finalis
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
        "5"
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
