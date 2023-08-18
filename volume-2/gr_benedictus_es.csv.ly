\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.106
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedictus es" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedictus es"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedictus es" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- ne -- dí -- ctus es, 
\set stanza = " * " Dó -- mi -- ne, _ _ _ _ _ _ 
qui in -- tu -- é -- ris _ _ _ _ _ a -- _ býs -- sos, 
et se -- des su -- per Ché -- ru -- bim. _ _ _ ℣. 
Be -- ne -- dí -- _ _ _ _ _ _ _ _ ctus es Dó -- _ _ _ mi -- _ ne, 
in fir -- ma -- mén -- _ to cœ -- _ _ _ li, 
et lau -- dá -- bi -- lis 
\set stanza = " * " in sǽ -- cu -- la. _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( ees'4) ees'4 ( g'4 f'4 g'4) g'4 f'4 ( f'4 ees'4) \divisioMinima
 g'4  aes'4 g'4 ( f'4.) g'4 ( aes'4 g'4 ees'4.) f'4 ( g'4 ees'4 c'4. \forceBreak
) d'4. c'4 ( d'4 bes4) ees'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior
 bes'4 bes'4 ( c''4 bes'4 g'4) bes'4 ( c''4) bes'4  bes'4 ( g'4 aes'4 g'4 f'4) aes'4 ( g'4 f'4) c''4. bes'4 ( c''4 bes'4 ees'4. \forceBreak
) f'4 ( g'4) bes'4 ( aes'4) ~ aes'4 ( g'4) \divisioMinima
  bes'4 ( g'4) aes'4 ( bes'\prall c''4) bes'4 ( c''4 bes'4 aes'4 g'4 aes'4) aes'4 ( g'4) \divisioMaxima
 f'4  g'4 ( aes'4 bes'4) aes'4 ( g'4)  bes'4 ( g'4 aes'4) f'4 ( ees'4) ees'4 \forceBreak
 g'4 ( f'4) bes'4 ( c''4 a'4 bes'4 g'4.) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis
  ees'4 g'4 bes'4 ( bes'4 a'4 g'4) bes'4 ( a'4 f'4) g'4 ( g'4)  ees'4 ( f'4 g'4 aes'4 g'4 f'4) g'4 ( f'4 ees'4 f'4) \divisioMinima \forceBreak

 g'4 ( bes'4) c''4 ( bes'4) c''4 ( bes'4) c''4 ( d''4 bes'4) aes'4 ( bes'4) bes'4 \divisioMinima
 c''4 ( bes'4) ees''4 ( ees''4 bes'4) c''4 ( bes'4) ees''4 ( ees''4 c''4 bes'4) bes'4 ( a'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaior \forceBreak

 bes'4 ( c''4 d''\prall ees''4) c''4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( g'4) g'4 bes'4 ( bes'4 f'4) g'4 \divisioMinima
  g'4 ( aes'4 g'4 f'4.) g'4 ( aes'4 g'4 ees'4.) g'4 ( f'4 ees'4) f'4 ( ees'4) ees'4 \divisioMaxima \forceBreak

 ees'4 f'4 ( g'4) g'4 g'4 bes'4 ( g'4 a'4)  f'4 f'4 ( g'4 a'\prall bes'4) bes'4 bes'4 ( f'4) \divisioMinima
  bes'4 ( g'4 aes'4 f'4 ees'4.) f'4 ( g'4) bes'4 ( g'4 g'4) ees'4 ( f'4 ees'4) \finalis

}

altoMusic = {
ees'4 ~ ees'2 ~ ees'2*5/2 bes2*3/2 \divisioMinima
c'2 ~ c'2*5/4 ~ c'2*9/4 ~ c'2*3/2 ~ c'2*3/4 bes2*7/4 ~ bes4 ees'2*3/2 bes2 ~ bes4 ~ \divisioMaior
bes4 ees'2*4/2 ~ ees'2 f'4 ees'2 ~ ees'2*3/2 c'2 f'4 ~ f'2*3/4 ~ f'2*9/4 d'2*3/2 ees'2*3/2 ~ ees'2 ~ ees'2*3/2 ~ ees'2*6/2 ~ ees'2 \divisioMaxima
r4 ees'2*3/2 ~ ees'2 c'2*3/2 ~ c'2 r4 d'2 f'2 ~ f'2 d'2*3/4 ees'2 bes2 ~ bes2 ~ bes4 r2 d'2*4/2 ~ d'2*3/2 ~ d'2 ees'2 ~ ees'2*4/2 ~ ees'2*3/2 d'4 ~ \divisioMinima
d'2 g'2*4/2 ~ g'2*3/2 f'2 ~ f'4 ~ \divisioMinima
f'2 ees'2*3/2 g'2 ~ g'2*4/2 f'2 d'2*4/2 ~ d'2 \divisioMaior
g'2*4/2 ~ g'2*4/2 ~ g'4 f'2 ~ f'4 ees'4 bes2*3/2 ~ bes2*3/4 ees'2*3/2 ~ ees'2*3/4 c'2*3/2 ~ c'2*3/2 \divisioMaxima
r4 d'2 ees'2 c'2*4/2 d'2*5/2 f'2 ees'2*4/2 ~ ees'2*3/4 d'2*5/2 bes2 ~ bes4 \finalis
}

tenorMusic = {
r2*3/2 aes2*5/2 g2*3/2 \divisioMinima
bes2 aes2*5/4 ees2*3/2 g2*3/4 aes2*3/2 g2*3/4 f2*9/4 bes2*3/2 ~ bes2 g4 ~ \divisioMaior
g4 ~ g2*4/2 ~ g2 ~ g4 ~ g2 f2*3/2 ~ f2*3/2 aes2*3/4 g2*3/2 ~ g2*3/4 bes2*3/2 ~ bes2*3/2 ~ bes2 c'2*3/2 ~ c'2*6/2 ~ c'2 \divisioMaxima
r4 bes2*3/2 ~ bes2 ~ bes2*3/2 aes2 a4 bes2 ~ bes2 c'2 bes2*3/4 ~ bes2 ~ bes2 aes2 g4 r2*6/2 c'2*3/2 bes2 ~ bes2 ~ bes2*4/2 c'2*3/2 d'4 \divisioMinima
bes2 d'2 ~ d'2 ees'2*3/2 c'2 bes4 \divisioMinima
f2 bes2*3/2 d'2 c'2*4/2 ~ c'2 ~ c'2*4/2 bes2 \divisioMaior
d'2*4/2 g2*4/2 bes4 ~ bes2*3/2 ~ bes4 ees2*3/2 d2*3/4 ees2*3/2 g2*3/4 aes2*3/2 g2*3/2 \divisioMaxima
r4 bes2 ~ bes2 f2*4/2 ~ f2*5/2 ~ f2 g2 f2 g2*3/4 bes2*5/2 aes2 g4 \finalis
}

bassMusic = {
r2*11/2 \divisioMinima
f2 ~ f2*5/4 c2*3/2 ~ c2*3/4 aes,2*3/2 ~ aes,2*3/4 bes,2*9/4 c2*3/2 d2 ees4 ~ \divisioMaior
ees4 ~ ees2*4/2 d2 ~ d4 c2 ~ c2*3/2 ees2*3/2 ~ ees2*3/4 d2*3/2 c2*3/4 bes,2*3/2 ees2*3/2 g2 ~ g2*3/2 f2*6/2 c2 \divisioMaxima
r4 ees2*3/2 c2 f2*3/2 ~ f2 c4 bes,2 d2 ~ d2 g2*3/4 c2 d2 ees2 ~ ees4 r2 g2*4/2 ~ g2*3/2 ~ g2 ~ g2 c2*4/2 bes2*3/2 ~ bes4 ~ \divisioMinima
bes2 g2 f2 ees2*3/2 f2 d4 ~ \divisioMinima
d2 g2*3/2 f2 ees2*4/2 d2 g2*4/2 ~ g2 ~ \divisioMaior
g2*4/2 ees2*4/2 ~ ees4 d2*3/2 ees4 ~ ees2*3/2 d2*3/4 c2*3/2 ~ c2*3/4 aes,2*3/2 c2*3/2 \divisioMaxima
r4 bes,2 ees2 f2*4/2 bes,2*5/2 d2 ees2*4/2 ~ ees2*3/4 ~ ees2*5/2 ~ ees2 ~ ees4 \finalis
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