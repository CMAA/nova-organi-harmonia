\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.28
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine Deus virtutum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine Deus virtutum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine Deus virtutum" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne 
\set stanza = " * " De -- us vir -- tú -- _ _ _ tum, 
con -- vér -- _ te _ _ nos: _ _ _ _ _ _ _ 
et os -- tén -- de _ fá -- ci -- em tu -- _ am, _ 
et sal -- _ vi é -- ri -- _ mus. _ _ _ _ _ _ _ ℣. 
Ex -- ci -- ta Dó -- _ _ _ _ _ _ _ _ _ mi -- ne, 
po -- tén -- ti -- am tu -- am, 
et ve -- _ _ _ _ _ _ _ _ ni, 
ut sal -- vos 
\set stanza = " * " fá -- ci -- as _ nos. _ _ _ }

chantMusic = {
\tieDown   f'4 ( a'4 g'4) g'4 g'4 \divisioMinima
 g'4 g'4 g'4 bes'4 ( g'4 a'4) bes'4 ( g'4 f'4) a'4 ( f'4) g'4 ( a'4) g'4 \divisioMaior
 g'4 bes'4 ( g'4) bes'4 ( c''4 d''4 \forceBreak
)  bes'4 ( g'4) ~ g'4 ( f'4) aes'4 ( g'4 f'4) f'4 ( ees'4) g'4 ( f'4 g'4) ~ g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4 g'4 f'4.) g'4 ( a'\prall bes'4) c''4 ( bes'4) bes'4 g'4 ( a'4 g'4) \divisioMaxima
 bes'4 ( bes'4) bes'4 \forceBreak
 bes'4 ( d''4 c''4) c''4 ( bes'4) ~ bes'4 ( g'4) g'4 g'4 g'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( g'4) c''4 ( d''4) bes'4 ( g'4) bes'4. a'4 ( bes'4 g'4 f'4 g'4) \divisioMaior
 ees'4 ees'4 ( f'4 g'4) bes'4 ( a'4 g'4 a'4) f'4 \forceBreak
 g'4 bes'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4) c''4 ( d''4 c''4 bes'4) \divisioMinima
 d''4 ( bes'4) d''4 ( ees''4 c''4 a'4) bes'4 ( g'4 f'4.) g'4 ( a'\prall bes'4 c''4.) bes'4 ( c''4 d''4) \divisioMinima
 c''4 ( d''4 c''4 d''4 bes'4 g'4 a'\prall bes'4 g'4) \finalis \forceBreak

 g'4 bes'4 c''4 ( d''4) d''4 ( c''4 bes'4 a'4) bes'4 ( g'4 f'4) \divisioMinima
 a'4 ( f'4 g'4) bes'4 ( bes'4) c''4 ( d''4 c''4 d''4) \divisioMinima
 bes'4 ( d''4 ees''4 c''4 a'4) bes'4 ( g'4 f'4. \forceBreak
) bes'4 ( c''4 bes'4 a'4 bes'4) \divisioMinima
 c''4 ( d''\prall ees''4 d''4) ees''4 ( d''4 c''4) d''4 ( c''4) c''4 \divisioMaxima
 c''4 ees''4 ( c''4 d''\prall ees''4 d''4 c''4) c''4 c''4 c''4 c''4 \divisioMaior \forceBreak

 c''4 ( \once \tweak #'font-size #-4 d'' ) d''4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 g'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima
 bes'4 ( c''4 d''4 c''4 bes'4) d''4 ( c''4 bes'4) c''4 ( g'4) g'4 \divisioMaxima \forceBreak

 ees'4 ees'4 ( f'4 g'4) g'4  g'4 ( bes'4 a'4 g'4 a'4) f'4 ( g'4) bes'4 ( g'4) bes'4 ( c''4) c''4 ( d''4 bes'4 a'4) bes'4 ( c''4) \divisioMinima
 f'4 ( g'4 bes'4) ~ bes'4 ( d''4 c''4 bes'4 a'4 g'4 a'\prall bes'4 g'4) \finalis

}

altoMusic = {
c'2*4/2 d'4 \divisioMinima
ees'2*3/2 d'2*6/2 ~ d'2 ~ d'2*3/2 ~ \divisioMaior
d'4 f'2*6/2 c'2*3/2 ~ c'2*3/2 r2 ees'2 ~ ees'2*5/2 f'2*9/4 ees'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \divisioMaxima
g'2*3/2 f'2*4/2 d'2*3/2 ~ d'2 g'2*6/2 ~ g'2 d'2*3/4 ~ d'2*4/2 ~ d'4 \divisioMaior
ees'4 c'2*3/2 d'2*5/2 ~ d'2*3/2 g'2 f'2*6/2 ~ \divisioMinima
f'2 ees'2*4/2 f'2*7/4 d'2*3/2 ~ d'2*7/4 ~ d'4 \divisioMinima
g'2 ~ g'2 d'2*3/2 ~ d'2 \finalis
g'2*4/2 ~ g'2*5/2 ~ g'4 f'4 ~ \divisioMinima
f'2*3/2 g'2*6/2 ~ \divisioMinima
g'2*6/2 ~ g'2*5/4 d'2*5/2 \divisioMinima
g'2*4/2 ~ g'2*3/2 f'2 ~ f'4 \divisioMaxima
r4 g'2*8/2 ~ g'2 ~ \divisioMaior
g'2 ~ g'2*4/2 ~ g'2*3/2 ~ g'2*3/2 ~ g'2*3/4 d'2 ~ d'2 \divisioMinima
f'2*5/2 ~ f'2*3/2 g'2 ~ g'4 \divisioMaxima
r4 c'2*4/2 d'2*5/2 c'2 d'2*4/2 f'2*4/2 ~ f'2 ~ \divisioMinima
f'2 d'2*4/2 ~ d'2 ~ d'2 ~ d'2 \finalis
}

tenorMusic = {
a2*4/2 bes4 ~ \divisioMinima
bes2*3/2 ~ bes2*6/2 c'2 bes2*3/2 ~ \divisioMaior
bes4 ~ bes2*6/2 ~ bes2*3/2 aes2*3/2 bes2*4/2 ~ bes2*5/2 ~ bes2*9/4 ~ bes2*3/2 ~ bes2*3/2 c'2 bes4 ~ \divisioMaxima
bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2 ~ bes2 c'2*4/2 d'2 bes2*3/4 c'2*4/2 bes4 ~ \divisioMaior
bes2*4/2 ~ bes2*5/2 ~ bes2*3/2 ~ bes2 ~ bes2*6/2 ~ \divisioMinima
bes2 ~ bes2*4/2 ~ bes2*7/4 ~ bes2*3/2 a2*7/4 bes4 \divisioMinima
g2 a2 c'2*3/2 bes2 \finalis
ees'2*4/2 d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*6/2 \divisioMinima
ees'2*5/2 d'2 a2*3/4 bes2*5/2 ~ \divisioMinima
bes2*4/2 ~ bes2*3/2 g2 a4 \divisioMaxima
r4 c'2*8/2 g2 \divisioMaior
a2 bes2*4/2 d'2*3/2 bes2*3/2 c'2*3/4 ~ c'2 bes2 ~ \divisioMinima
bes2*5/2 ~ bes2*3/2 ~ bes2 c'4 \divisioMaxima
bes2*5/2 ~ bes2*5/2 a2 bes2*4/2 ~ bes2*4/2 g4 a4 ~ \divisioMinima
a2 g2*4/2 a2 c'2 bes2 \finalis
}

bassMusic = {
r2*5/2 \divisioMinima
g2*3/2 ~ g2*6/2 ~ g2 ~ g2*3/2 ~ \divisioMaior
g4 d2*6/2 ees2*3/2 f2*3/2 g2*4/2 ees2*5/2 d2*9/4 c2*3/2 g2*3/2 ~ g2 ~ g4 \divisioMaxima
ees2*3/2 d2*4/2 g2*3/2 f2 ees2 ~ ees2*4/2 g2 ~ g2*3/4 ~ g2*4/2 ~ g4 ~ \divisioMaior
g2*4/2 ~ g2*5/2 f2*3/2 ees2 d2*6/2 ~ \divisioMinima
d2 c2*4/2 d2*7/4 g2*3/2 ~ g2*7/4 ~ g4 \divisioMinima
ees2 ~ ees2 g2*3/2 ~ g2 \finalis
c'2*4/2 bes2*4/2 ~ bes2*3/2 \divisioMinima
c'2*3/2 bes2*6/2 \divisioMinima
c'2*5/2 g2 ~ g2*3/4 ~ g2*5/2 \divisioMinima
ees2*4/2 c2*3/2 f2 ~ f4 \divisioMaxima
ees4 ~ ees2*8/2 ~ ees2 ~ \divisioMaior
ees2 g2*4/2 ~ g2*3/2 ees2*3/2 ~ ees2*3/4 g2 ~ g2 ~ \divisioMinima
g2*5/2 d2*3/2 ees2 ~ ees4 \divisioMaxima
g2*5/2 ~ g2*5/2 ~ g2 ~ g2*4/2 d2*4/2 f2 ~ \divisioMinima
f2 g2*4/2 ~ g2 ~ g2 ~ g2 \finalis
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
