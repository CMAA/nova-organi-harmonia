\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.76
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ultimo festivitatis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ultimo festivitatis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ultimo festivitatis" }
    \line {}
  }
}

chantText = \lyricmode {
Ul -- ti -- mo 
\set stanza = " * " fe -- sti -- vi -- tá -- tis di -- e 
di -- cé -- bat Je -- sus: 
Qui in me cre -- dit, 
flú -- mi -- na de ven -- tre e -- jus flu -- ent a -- _ _ quæ vi -- væ. 
Hoc au -- tem di -- xit de Spí -- ri -- tu 
quem ac -- ce -- ptú -- ri e -- rant cre -- dén -- tes in e -- um, 
al -- le -- lú -- _ ia, 
al -- le -- _ lú -- ia. }

chantMusic = {
\tieDown   g'4 f'4 ( g'4 f'4 d'4) d'4  d'4 ( c'4) f'4 g'4 ( bes'4) bes'4 bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4 d''4 c''4 bes'4 c''4) c''4 ( bes'4) \divisioMaior \forceBreak

 bes'4 bes'4 bes'4 ( a'4) g'4 a'4 ( bes'4 c''4 g'4) \divisioMaior
 g'4 ( f'4) bes'4 d''4 ( c''4 d''4) bes'4 ( c''4 d''4 c''4 bes'4 c''4) c''4 ( bes'4) \divisioMaior \forceBreak

 d''4 c''4 bes'4 a'4 bes'4 g'4 bes'4 f'4 \divisioMinima
 g'4 ( a'4 g'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( g'4 f'4 g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) f'4 ( g'4) g'4 ( a'4 g'4) g'4 \divisioMaxima \forceBreak

 bes'4 ( g'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 c''4 ees''4 d''4 ( ees''4) c''4 \divisioMaior
 bes'4 bes'4 ( a'4) g'4 g'4 ( c''4) c''4 \forceBreak
 bes'4 ( c''4 bes'4 bes'4) f'4 ( \once \tweak #'font-size #-4 g' ) \divisioMinima
 g'4 f'4 ( g'4 \once \tweak #'font-size #-4 bes' ) bes'4  bes'4 ( g'4 f'4 g'\prall aes'4 g'4 f'4) ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaxima
 ees'4 ( g'4 \forceBreak
) bes'4 ( bes'4 c''\prall d''4) d''4 ( c''4) ~ c''4 ( bes'4 c''4) c''4 ( bes'4) \divisioMaior
 ees'4 ( g'4)  f'4 bes'4 ( bes'4 g'4 a'\prall bes'4 a'4 f'4 g'\prall a'4 g'4 f'4) ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \finalis

}

altoMusic = {
r2*7/2 c'4 ~ c'4 ~ c'2 f'4 ees'2 d'2*6/2 ~ d'2 ~ \divisioMaior
d'4 f'4 ~ f'2 ~ f'4 d'2*3/2 ~ d'4 \divisioMaior
g'4 f'4 ~ f'4 ~ f'2*3/2 ~ f'2*6/2 ~ f'2 ~ \divisioMaior
f'2*4/2 ees'2 f'2 \divisioMinima
d'2*5/2 c'2*4/2 d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaxima
d'2 f'2*3/2 g'2 f'2 ees'2*3/2 f'4 ~ \divisioMaior
f'4 ~ f'2*3/2 d'2 ~ d'4 ~ d'2*4/2 ~ d'2 ~ \divisioMinima
d'4 f'2*4/2 ees'2 ~ ees'2*5/2 bes2*6/2 ~ bes2 \divisioMaxima
ees'2 g'2*4/2 ~ g'4 ~ g'2*4/2 f'2 \divisioMaior
ees'2*3/2 ~ ees'2*6/2 ~ ees'2*5/2 bes2*6/2 ~ bes2 \finalis
}

tenorMusic = {
bes4 ~ bes2*4/2 a4 ~ a2 ~ a4 g2 ~ g4 ~ g2 ~ g2*6/2 ~ g2 ~ \divisioMaior
g4 ~ g4 f2 bes4 c'2*3/2 bes4 \divisioMaior
a2*3/2 bes2*3/2 c'2*6/2 d'2 \divisioMaior
bes2*4/2 ~ bes2 ~ bes2 ~ \divisioMinima
bes2*5/2 a2*4/2 g2 a2*4/2 c'2*3/2 bes4 ~ \divisioMaxima
bes2 ~ bes2*3/2 ~ bes2 ~ bes2 ~ bes2*3/2 ~ bes4 ~ \divisioMaior
bes4 c'2*3/2 bes2 a4 g2*4/2 a4 bes4 ~ \divisioMinima
bes4 ~ bes2*4/2 ~ bes2 aes2*5/2 a2*6/2 g2 \divisioMaxima
bes2 ~ bes2*4/2 g4 a2*4/2 bes2 ~ \divisioMaior
bes2*3/2 ~ bes2*6/2 aes2*5/2 a2*6/2 g2 \finalis
}

bassMusic = {
ees4 d2*4/2 ~ d4 f2 ~ f4 ees2 d4 c2 bes,2*6/2 g,2 ~ \divisioMaior
g,4 d4 ~ d2 ~ d4 g2*3/2 ~ g4 \divisioMaior
d2*3/2 ~ d2*3/2 ~ d2*6/2 ~ d2 ~ \divisioMaior
d2*4/2 c2 d2 \divisioMinima
g2*5/2 ~ g2*4/2 ~ g2 ~ g2*4/2 ~ g2*3/2 ~ g4 ~ \divisioMaxima
g2 d2*3/2 ees2 d2 c2*3/2 d4 ~ \divisioMaior
d4 ~ d2*3/2 g2 ~ g4 ~ g2*4/2 ~ g2 ~ \divisioMinima
g4 d2*4/2 c2 ~ c2*5/2 ees2*6/2 ~ ees2 \divisioMaxima
g2 ees2*4/2 ~ ees4 ~ ees2*4/2 d2 \divisioMaior
g2*3/2 c2*6/2 ~ c2*5/2 ees2*6/2 ~ ees2 \finalis
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
