\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.105
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Unam petii. V/. Beati" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Unam petii. V/. Beati"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Unam petii. V/. Beati" }
    \line {}
  }
}

chantText = \lyricmode {
U -- nam pé -- ti -- i 
\set stanza = " * " a Dó -- _ mi -- no, _ _ _ 
hanc re -- quí -- _ ram: 
ut in -- há -- bi -- tem in do -- mo Dó -- _ _ mi -- ni 
óm -- ni -- bus di -- é -- bus vi -- tæ me -- æ. _ _ _ _ ℣ 
Be -- á -- _ _ ti qui há -- bi -- tant in do -- mo tu -- a, Dó -- mi -- ne: _ _ _ 
in sǽ -- cu -- la sæ -- cu -- ló -- _ _ _ _ _ rum _ _ _ 
\set stanza = " * " 
lau -- dá -- bunt te. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( ees'4 f'4) ees'4 f'4 ( g'4 f'4 g'4) f'4 ees'4 ( f'4 ees'4 c'4) \divisioMinima
 c'4 c'4 ( f'4 ees'4) f'4 ( g'4) f'4  f'4. g'4 ( aes'4 f'4 \forceBreak
 ees'4) ~ ees'4 ( c'4) ees'4 ( f'4 ees'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( g'4) bes'4 ( g'4 bes'4) ~ bes'4 ( g'4) g'4 \divisioMaxima
 g'4 g'4 ( bes'4) bes'4  aes'4 ( bes'4 c''4 bes'4 aes'4 g'4 aes'4 \forceBreak
) aes'4 ( g'4) \divisioMinima
  aes'4 g'4 ( g'4 f'4) f'4 ( g'4) g'4 ( f'4) g'4 ( ees'4) f'4 ( ees'4) d'4 ( ees'4) ees'4 \divisioMaior
 g'4 f'4 g'4  aes'4 f'4 ( ees'4) f'4 \divisioMinima \forceBreak

 f'4 ( g'4) ees'4 ees'4 ( f'4 ees'4)  ees'4. g'4 ( aes'4 g'4 ees'4.) g'4 ( f'4) g'4 ( bes'4 g'4 g'4) ees'4 ( f'4 ees'4) \finalis
 c'4 c'4 ( ees'4) g'4 ( g'4) a'4 ( bes'4 g'4) g'4 \divisioMinima \forceBreak

 g'4 g'4 ( a'4) g'4 g'4 g'4 g'4 g'4 g'4 g'4 ( f'4) \divisioMinima
 a'4 ( bes'\prall c''4) a'4 ( g'4) g'4 ( f'4) a'4 ( g'4.) bes'4 ( a'4 g'4 f'4 \forceBreak
) g'4 ( ees'4) \divisioMaxima
 g'4 ( g'4) g'4 g'4 g'4 g'4 g'4 a'4 ( g'4) a'4 ( bes'4 g'4) \divisioMinima
 a'4 ( g'4) a'4 ( bes'4 a'4 bes'4.) g'4 ( a'4) bes'4 ( a'4 bes'4 \forceBreak
) bes'4 ( g'4) bes'4 ( c''4 a'4) g'4 ( g'4) ees'4 ( f'4 ees'4) \divisioMaxima
 c'4 ( d'4 ees'4) ees'4 ( g'4 f'4 ees'4) a'4 g'4 ( g'4 ees'4) \divisioMinima
  e'4 ( ees'4) e'4 ( d'4 c'4.) ees'4 ( e'4 d'4 c'4.) ees'4 ( d'4 \forceBreak
) g'4. ~ g'4 ( g'4) ~ g'4 ( ees'4 ees'4.) c'4 ( ees'4 d'4) ees'4 ( d'4) ~ d'4 ( c'4) \finalis

}

altoMusic = {
bes2*4/2 ~ bes2*5/2 c'2*4/2 ~ \divisioMinima
c'4 ~ c'2*3/2 bes2*3/2 ~ bes2*3/4 c'2*3/2 bes2*3/2 ~ bes2*3/2 \divisioMaior
ees'2 f'2 ~ f'2 d'2*3/2 ~ d'4 \divisioMaxima
r4 ees'2*3/2 ~ ees'2 ~ ees'2*5/2 ~ ees'2 ~ ees'4 c'2*3/2 bes2*4/2 ~ bes2*4/2 ~ bes2 c'4 ~ \divisioMaior
c'2*4/2 ~ c'2*3/2 \divisioMinima
bes2*3/2 aes2*3/2 bes2*9/4 ~ bes2*3/4 ees'2 d'2*4/2 bes2 ~ bes4 \finalis
ees'4 ~ ees'2 ~ ees'2 f'2*3/2 ~ f'4 ~ \divisioMinima
f'4 ~ f'2*5/2 ~ f'2*3/2 ~ f'2 \divisioMinima
g'2*3/2 ~ g'2 f'2*9/4 ~ f'2*4/2 d'2 ~ \divisioMaxima
d'2*7/2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*9/4 f'2 ~ f'2*3/2 g'2 ~ g'2*3/2 d'2 ~ d'2*3/2 \divisioMaxima
bes2*3/2 c'2*5/2 d'2*3/2 ees'2*4/2 ~ ees'2*3/4 c'2*3/2 ~ c'2*3/4 ~ c'2 bes2*3/4 d'2 ees'2*7/4 c'2*4/2 bes2 ~ bes4 \finalis
}

tenorMusic = {
g2*4/2 ~ g2*5/2 ~ g2*4/2 \divisioMinima
ees4 ~ ees2*3/2 ~ ees2*3/2 d2*3/4 ees2*3/2 ~ ees2*3/2 g2*3/2 ~ \divisioMaior
g2 ~ g2 c'2 ~ c'2*3/2 bes4 \divisioMaxima
r4 bes2*3/2 c'2 aes2*5/2 bes2 ~ bes4 aes2*3/2 ~ aes2 g2 ~ g2*4/2 ~ g2*3/2 \divisioMaior
ees2*4/2 ~ ees2*3/2 ~ \divisioMinima
ees2*3/2 ~ ees2*3/2 ~ ees2*3/4 ~ ees2*3/2 g2*3/4 bes2 ~ bes2*4/2 aes2 g4 \finalis
r4 ees'2 ~ ees'2 ~ ees'2*3/2 d'4 ~ \divisioMinima
d'4 ~ d'2*5/2 ~ d'2 bes4 c'2 \divisioMinima
g2*3/2 bes2 ~ bes2*9/4 c'2*4/2 bes2 \divisioMaxima
r2 g2*5/2 ~ g2 ~ g2*3/2 \divisioMinima
a2 g2*9/4 f2 bes2*3/2 ~ bes2 c'2*3/2 ~ c'2 bes2*3/2 \divisioMaxima
g2*3/2 ~ g2*5/2 ~ g2*3/2 f2*4/2 g2*3/4 ees2*3/2 ~ ees2*3/4 d2 ~ d2*3/4 f2 g2*7/4 ~ g2 aes2 a2 g4 \finalis
}

bassMusic = {
ees2*4/2 d2*5/2 c2*4/2 ~ \divisioMinima
c4 bes,2*3/2 ~ bes,2*3/2 ~ bes,2*3/4 aes,2*3/2 g,2*3/2 ~ g,2*3/2 \divisioMaior
c2 d2 ~ d2 g2*3/2 ~ g4 ~ \divisioMaxima
g4 ~ g2*3/2 f2 ~ f2*5/2 ees2 ~ ees4 ~ ees2*3/2 ~ ees2 ~ ees2 d2*4/2 c2*3/2 \divisioMaior
bes,2*4/2 aes,2*3/2 \divisioMinima
g,2*3/2 f,2*3/2 g,2*3/4 c2*3/2 ~ c2*3/4 ~ c2 bes,2*4/2 ees2 ~ ees4 \finalis
r2*3/2 c'2 bes2*3/2 ~ bes4 ~ \divisioMinima
bes4 a2*5/2 g2 ~ g4 f2 \divisioMinima
ees2*3/2 ~ ees2 d2*9/4 ~ d2*4/2 g2 \divisioMaxima
g,2 ~ g,2*5/2 a,2 bes,2*3/2 ~ \divisioMinima
bes,2 ~ bes,2*9/4 d2 ~ d2*3/2 ees2 ~ ees2*3/2 g2 ~ g2*3/2 \divisioMaxima
g,2*3/2 a,2*5/2 bes,2*3/2 c2*4/2 ~ c2*3/4 bes,2*3/2 c2*3/4 a,2 g,2*3/4 ~ g,2 ~ g,2*7/4 aes,2 ~ aes,2 ees2 ~ ees4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
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
