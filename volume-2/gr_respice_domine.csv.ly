\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.196
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Respice Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Respice Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Respice Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- spí -- ce, 
\set stanza = " * " Dó -- mi -- ne, _ _ _ 
in tes -- ta -- mén -- tum tu -- _ um: _ _ _ _ 
et á -- ni -- mas _ páu -- pe -- rum _ tu -- ó -- rum _ _ _ _ _ _ _ _ 
ne o -- bli -- vi -- scá -- _ _ _ ris 
in _ fi -- nem. _ _ _ _ ℣. 
Ex -- súr -- ge Dó -- mi -- ne, _ _ _ _ _ _ _ _ _ _ _ _ _ 
et jú -- _ _ _ di -- ca _ _ 
cau -- _ _ _ _ _ _ _ sam tu -- _ _ _ _ _ _ _ am: 
me -- mor e -- _ _ sto op -- pró -- bri -- _ i _ _ _ _ _ _ 
ser -- vo -- rum 
\set stanza = " * " tu -- ó -- _ rum. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( ees'4) ees'4 f'4 ( g'4) \divisioMinima
 g'4 ees'4 ( f'4)  f'4 ( c'4) ees'4 ( d'4 f'4) g'4 ( aes'4 f'4) ~ f'4 ( ees'4) \divisioMaior \forceBreak

 ees'4 f'4 g'4 bes'4 ( bes'4) bes'4 ( g'4) g'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( c''4 bes'4) ~ bes'4 ( bes'4) g'4 ( a'4 g'4) \divisioMaxima \forceBreak

 bes'4 ( bes'4 c''4) bes'4 bes'4 ( a'4 c''4) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) \divisioMinima
  g'4 ( \once \tweak #'font-size #-4 aes' ) g'4 ( f'4) f'4 ( aes'4 f'4) aes'4 ( aes'4 aes'4) ees'4 ( f'4) ees'4 ( f'4 \forceBreak
)  ees'4 aes'4 ( aes'4) ~ aes'4 ( f'4) bes'4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 ees'4 f'4 g'4 g'4 bes'4 ( bes'4 g'4 \forceBreak
) bes'4 ( g'4) bes'4 ( ees'4) ees'4 \divisioMaior
 f'4. ees'4 ( g'4 f'4) ees'4 ( f'4 ees'4)  ees'4 ( g'4 bes'4) c''4 ( d''4 c''4 bes'4) ~ bes'4 ( f'4) g'4 ( ees'4) g'4 ( aes'4 f'4 ees'4) \finalis \forceBreak

  ees'4 ees'4 g'4 ( f'4) f'4 ( bes'4) bes'4 c''4 ( bes'4) \divisioMinima
 bes'4 ( bes'4 bes'4) c''4 ( bes'4) ~ bes'4 ( a'4) c''4 d''4 ( c''4) ~ c''4 ( bes'4) d''4 ees''4 ( d''4) ~ d''4 ( bes'4) c''4 d''4 ( c''4) ~ c''4 ( a'4) bes'4 \forceBreak
 c''4 ( bes'4 bes'4) g'4 ( bes'4) a'4 ( bes'4 g'4 f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 g'4 ( ees'4 g'4 f'4 ees'4) g'4 ( ees'4) f'4 ( g'4 a'\prall bes'4) ~ bes'4 ( c''4) bes'4 \forceBreak
 bes'4 ( bes'4 c''4) ees''4 ( ees''4) bes'4 ( c''4 bes'4) \divisioMaior
 bes'4 ( bes'4) c''4 ( bes'4) a'4 ( bes'4 g'4 f'4) ~ f'4 ( ees'4) \divisioMinima
 g'4 ( ees'4 g'4 f'4 ees'4) g'4 ( ees'4) f'4 ( g'4 a'\prall bes'4 \forceBreak
) c''4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( c''4) bes'4 c''4 ( bes'4) ~ bes'4 ( a'4) bes'4 c''4 ( bes'4) ~ bes'4 ( a'4) bes'4 c''4 ( bes'4) ~ bes'4 ( a'4) ~ a'4 ( g'4 a'4) a'4 ( g'4) \divisioMaxima
 ees'4 f'4 ( g'4 \forceBreak
) g'4 ( f'4) g'4 ( a'\prall bes'4) ~ bes'4 ( c''4) bes'4 \divisioMinima
 bes'4 bes'4 c''4 ( bes'4 g'4) ~ g'4 ( f'4) g'4 bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior \forceBreak

 ees'4 ees'4 ( g'4 f'4 ees'4) f'4 ( g'4)  bes'4 bes'4 ( c''4 bes'4 g'4) bes'4 ( bes'4 bes'4) bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4.) g'4 ( aes'4 f'4 ees'4. \forceBreak
) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
bes2*3/2 ~ bes2*3/2 ~ bes2 c'2 bes2*3/2 ~ bes2 ~ bes2 ~ bes4 \divisioMaior
ees'2*3/2 d'2 ees'2*3/2 f'2*3/2 d'2 g'2 f'2*3/2 ees'2 d'2 ~ d'4 \divisioMaxima
f'2*4/2 ~ f'2*4/2 d'2*3/2 ~ d'4 ees'2 ~ ees'2 c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 ~ c'2 ~ c'2 f'2 ~ f'2 \divisioMinima
ees'2 d'2*4/2 c'2*3/2 \divisioMaxima
r4 ees'2*4/2 d'2*3/2 f'2 ~ f'4 ees'4 ~ ees'4 \divisioMaior
d'2*3/4 ees'2*3/2 ~ ees'4 r2 ees'4 ~ ees'2 ~ ees'2*3/2 f'2 ~ f'4 ees'2 c'2*3/2 bes4 r2*4/2 f'2*3/2 g'2 \divisioMinima
f'2*4/2 ~ f'2*3/2 ~ f'2 d'2*3/2 f'2 g'2*3/2 ~ g'2 f'2*4/2 ~ f'2*3/2 ees'2 d'2*3/2 bes2 ~ bes4 \divisioMaxima
ees'4 ~ ees'2 ~ ees'2*3/2 ~ ees'2 f'2*3/2 d'2*3/2 g'4 ~ g'2*3/2 ~ g'2 <f' f'>2 f'4 ~ \divisioMaior
f'2 ees'2 d'2*3/2 c'2*3/2 ~ \divisioMinima
c'2 bes2*3/2 ees'2 f'2*4/2 ~ f'2 ~ f'2 ees'2 ~ ees'2*3/2 f'2 ~ f'2*3/2 d'2 f'2 ~ f'2*4/2 d'2 \divisioMaxima
r4 d'2 ~ d'2 ~ d'2 f'2*3/2 ~ f'4 ~ \divisioMinima
f'4 ees'4 ~ ees'2 d'2 ~ d'2 ~ d'2 ees'2 d'2 ~ d'2*4/2 c'2 ~ c'4 ~ \divisioMaior
c'4 bes2*4/2 ~ bes2*3/2 ees'2*4/2 f'2*3/2 ees'2*3/2 c'2 ~ c'2 ~ c'2*3/4 ~ c'2*3/2 ~ c'2*3/4 d'2 ees'2*3/4 f'2 d'2*3/2 c'2 ~ c'2 bes2 ~ bes4 \finalis
}

tenorMusic = {
g2*3/2 ees2 \divisioMinima
g4 ~ g2 aes2 f2*3/2 ees2 aes2 g4 ~ \divisioMaior
g2*3/2 ~ g2 ~ g2 bes4 ~ bes2*3/2 ~ bes2 ees'2 d'2*3/2 c'2 ~ c'2 bes4 ~ \divisioMaxima
bes2*3/2 d'4 c'2*4/2 ~ c'2*3/2 bes4 ~ bes2 ~ bes2 ~ bes2*3/2 aes2*3/2 a2 ~ a2*3/2 ~ a2 f2 ~ f2 g2 ~ \divisioMinima
g2 ~ g2*4/2 ~ g2*3/2 \divisioMaxima
r4 c'2*4/2 bes2*3/2 ~ bes2 g2 bes4 ~ \divisioMaior
bes2*3/4 c'2*3/2 bes2*3/2 g4 ~ g2 ~ g2*3/2 f2*3/2 bes2 aes2*3/2 g4 r4 c'4 d'2 ~ d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*4/2 c'2*3/2 a2 bes2*3/2 ~ bes2 ~ bes2*3/2 g2 a2*4/2 g2*3/2 ~ g2 ~ g2*3/2 ~ g2 ~ g4 \divisioMaxima
r4 bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 d'4 ~ d'2*3/2 c'2 r2 bes4 \divisioMaior
g2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 ~ g2 bes2*4/2 a2 g2 ~ g2 c'2*3/2 bes2 c'2*3/2 bes2 d'2 c'2*4/2 bes2 \divisioMaxima
c'4 bes2 ~ bes2 ~ bes2 ~ bes2*3/2 g4 ~ \divisioMinima
g2 ~ g2 bes2 a2 g2 ~ g2 ~ g2 ~ g2*4/2 ~ g2 ~ g2 ~ g2*4/2 d2*3/2 g2*4/2 f2*3/2 bes2*3/2 ~ bes2 aes2 g2*3/4 f2*3/2 g2*3/4 bes2 ~ bes2*3/4 ~ bes2 ~ bes2*3/2 ~ bes2 a2 ~ a2 g4 \finalis
}

bassMusic = {
ees2*3/2 ~ ees2 ~ \divisioMinima
ees4 c2 aes,2 bes,2*3/2 ees2 ~ ees2 ~ ees4 \divisioMaior
c2*3/2 bes,2 c2*3/2 d2*3/2 g2 ~ g2 ~ g2*3/2 ~ g2 ~ g2 ~ g4 \divisioMaxima
d2*3/2 ~ d4 f2*4/2 g2*3/2 ~ g4 ees2 c2 f2*3/2 ~ f2*3/2 a2 g2*3/2 f2 ees2 d2 ~ d2 \divisioMinima
c2 bes,2*4/2 c2*3/2 \divisioMaxima
r2*5/2 g2*3/2 d2 ees2 g4 \divisioMaior
r2*9/4 g2*3/2 ees4 d2 c2*3/2 d2*3/2 ees2 ~ ees2*3/2 ~ ees4 r2 bes2 a2*3/2 g2 \divisioMinima
d2*4/2 f2*3/2 ~ f2 g2*3/2 d2 ees2*3/2 ~ ees2 d2*4/2 ~ d2*3/2 c2 bes,2*3/2 ees2 ~ ees4 \divisioMaxima
r4 ees2 d2*3/2 c2 d2*3/2 g2*3/2 ~ g4 ees2*3/2 ~ ees2 ~ ees2 d4 ~ \divisioMaior
d2 c2 bes,2*3/2 c2*3/2 \divisioMinima
ees2 d2*3/2 c2 d2*4/2 ~ d2 ~ d2 c2 ~ c2*3/2 d2 f2*3/2 g2 d2 ~ d2*4/2 g2 \divisioMaxima
r2*3/2 a2 g2 d2*3/2 ~ d4 ~ \divisioMinima
d2 c2 bes,2 ~ bes,2 ~ bes,2 c2 g,2 bes,2*4/2 c2 ~ c4 ~ \divisioMaior
c4 g,2*4/2 bes,2*3/2 c2*4/2 d2*3/2 ees2*3/2 f2 ~ f2 c2*3/4 aes,2*3/2 c2*3/4 bes,2 c2*3/4 d2 g2*3/2 aes2 a2 ees2 ~ ees4 \finalis
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
