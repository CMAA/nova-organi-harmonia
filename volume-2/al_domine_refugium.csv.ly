\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.198
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine refugium" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine refugium"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine refugium" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, 
\set stanza = " * " al -- le -- lú -- _ ia. _ _ 
_ _ _ _ _ _ _ _ _ ℣. 
Dó -- _ _ _ _ mi -- ne, 
re -- fú -- _ _ _ gi -- _ um 
fa -- ctus _ es no -- _ _ _ _ _ bis _ _ 
a _ ge -- ne -- ra -- ti -- ó -- _ _ _ 
_ _ _ _ _ _ _ _ ne 
\set stanza = " * " 
et _ pro -- gé -- ni -- e. _ _ 
_ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 ( g'4) f'4 f'4 ( bes'4 a'4) c''4 ( d''4) c''4 ( d''4 c''4 a'4) \divisioMinima
 f'4 ( g'4) f'4 f'4 ( bes'4 a'4) c''4 ( d''4) c''4 ( d''4 c''4 a'4) \divisioMinima \forceBreak

 bes'4 ( c''\prall d''4 c''4 d''4.) bes'4 ( c''4 bes'4 a'4 bes'4) \divisioMaior
 g'4 ( bes'4) d''4. bes'4 ( d''4 c''4) d''4 ( bes'4) ~ bes'4 ( a'4 f'4) g'4 ( a'\prall bes'4 a'4) \divisioMinima
 c''4 ( d''4 bes'4. \forceBreak
) a'4 ( bes'4 g'4 f'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \finalis
 f'4 ( g'4 a'\prall bes'4 a'4) bes'4 ( a'4 g'4) ~ g'4 ( f'4.) g'4 ( a'\prall bes'4 a'4) bes'4 ( c''4 bes'4 c''4) d''4 ( c''4) c''4 \divisioMaior \forceBreak

 c''4 c''4 ( d''4 bes'4) c''4 ( d''4 c''4 a'4) bes'4 ( c''4 bes'4 a'4) bes'4 ( c''4 bes'4 g'4) g'4 ( a'\prall bes'4 a'4 g'4 f'4) g'4 ( a'4) g'4 ( f'4) \divisioMaior
 bes'4 ( c''\prall d''4 c''4 \forceBreak
) c''4 ( bes'4) ~ bes'4 ( a'4) g'4 ( bes'4 a'4 g'4 a'4) f'4 bes'4 ( bes'4 g'4) c''4 ( d''4 bes'4 a'4 bes'4) \divisioMinima
 g'4 ( a'\prall bes'4 c''4) a'4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4 \forceBreak
) g'4 ( a'\prall bes'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \divisioMaxima
 f'4 ( a'4) c''4 ( bes'4) a'4 ( bes'4) a'4 ( g'4) a'4 ( bes'4) a'4 c''4. d''4 ( ees''4 c''4) bes'4 ( d''4 c''4) bes'4 ( bes'4 f'4) \divisioMaior \forceBreak

 a'4 ( c''4) d''4 ( ees''4 c''4) bes'4 ( d''4 c''4) bes'4 ( bes'4 f'4) \divisioMinima
 g'4 ( bes'4 a'4) bes'4 ( c''4 g'4) ~ g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4 a'4) g'4 ( f'4) \divisioMaior \forceBreak

 f'4 ( a'4 c''4) a'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 ( a'4 c''4) d''4 ( c''4) c''4 ( d''4 c''4 a'4) \divisioMinima
 bes'4 ( c''\prall d''4 c''4 d''4.) bes'4 ( c''4 bes'4 a'4 bes'4) \divisioMaior
 g'4 ( bes'4) d''4. \forceBreak
 bes'4 ( d''4 c''4) d''4 ( bes'4) ~ bes'4 ( a'4 f'4) g'4 ( a'\prall bes'4 a'4) \divisioMinima
 c''4 ( d''4 bes'4.) a'4 ( bes'4 g'4 f'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
r2*3/2 f'2*3/2 ~ f'2 ~ f'2*3/2 ~ f'4 \divisioMinima
d'2*3/2 f'2*3/2 ~ f'2 ~ f'2*3/2 ~ f'4 \divisioMinima
d'2*11/4 f'2*5/2 \divisioMaior
d'2 ~ d'2*3/4 ees'2*4/2 f'2 ~ f'2 d'2 bes2 \divisioMinima
d'2*7/4 ~ d'2*4/2 ~ d'2 c'2 ~ c'4 \finalis
r2*37/4 g'2 ~ g'2 ~ g'2*3/2 f'2*4/2 ~ f'2*4/2 ~ f'2*4/2 ees'2 d'2 ~ d'2 ees'2 g'4 f'4 ~ \divisioMaior
f'2*5/2 ~ f'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 g'2 f'2*3/2 \divisioMinima
ees'2 ~ ees'2 d'2 ~ d'2*4/2 ~ d'2*4/2 ees'2*3/2 c'2 \divisioMaxima
f'2 ~ f'2 d'2 ~ d'2 f'2*3/2 ~ f'2*3/4 ~ f'2*3/2 ees'2*3/2 f'2*3/2 ~ \divisioMaior
f'2 ~ f'2*3/2 ees'2*3/2 f'2 ~ f'4 \divisioMinima
d'2*3/2 ~ d'2 c'2*3/2 d'2*4/2 ~ d'2 ~ d'2 \divisioMaior
f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2 ~ f'2*3/2 ~ f'4 \divisioMinima
d'2*11/4 f'2*5/2 \divisioMaior
ees'2 f'2*3/4 ees'2*4/2 f'2*3/2 ~ f'4 d'2*4/2 ~ \divisioMinima
d'2*7/4 ~ d'2*4/2 ~ d'2 c'2 ~ c'4 \finalis
}

tenorMusic = {
r2*3/2 d'2*3/2 c'2 ~ c'2*3/2 ~ c'4 \divisioMinima
bes2*3/2 ~ bes2*3/2 ~ bes2 a2*3/2 c'4 \divisioMinima
bes2*11/4 ~ bes2*5/2 ~ \divisioMaior
bes2 g2*3/4 ~ g2*4/2 f2 c'2 ~ c'2 g2 \divisioMinima
a2*7/4 g2 bes2 ~ bes2 ~ bes2 a4 \finalis
d'2*5/2 ~ d'2 c'2*7/4 d'2*4/2 f'2*4/2 ~ f'2 ees'2 ~ ees'2*3/2 c'2*4/2 d'2*4/2 ~ d'2*4/2 c'2 bes2 ~ bes2 c'2 ~ c'2 \divisioMaior
d'2*5/2 ~ d'2*3/2 r2*3/2 bes2 ~ bes4 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ \divisioMinima
bes2 ~ bes2 ~ bes2 g2 ~ g2 bes2*4/2 ~ bes2*3/2 ~ bes4 a4 ~ \divisioMaxima
a2 d'2 c'2 bes2 c'2*3/2 a2*3/4 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 \divisioMaior
c'2 bes2*3/2 c2*3/2 d'2*3/2 \divisioMinima
bes2*3/2 g2 a2*3/2 c'2*4/2 bes2 a2 \divisioMaior
c'2*3/2 d'2*3/2 c'2*3/2 bes2 a2*3/2 c'4 \divisioMinima
bes2*11/4 ~ bes2*5/2 ~ \divisioMaior
bes2 ~ bes2*3/4 g2*4/2 c'2*4/2 ~ c'2 bes2 \divisioMinima
a2*7/4 g2 bes2 ~ bes2 ~ bes2 a4 \finalis
}

bassMusic = {
bes2*3/2 ~ bes2*3/2 ~ bes2 a2*3/2 f4 \divisioMinima
bes,2*3/2 d2*3/2 f2 ~ f2*3/2 ~ f4 \divisioMinima
g2*11/4 d2*5/2 \divisioMaior
bes,2 ~ bes,2*3/4 c2*4/2 d2 ~ d2 g2*4/2 ~ \divisioMinima
g2*7/4 ~ g2 ~ g2 ees2 f2 ~ f4 \finalis
bes2*5/2 g2 a2*7/4 bes2*4/2 d'2*4/2 c'2 ~ c'4 ~ \divisioMaior
c'4 bes2*3/2 a2*4/2 ~ a2*4/2 g2*4/2 ~ g2 ~ g2 bes2 ~ bes2 a2 \divisioMaior
r2*5/2 c'2*3/2 ~ c'2*3/2 r2*3/2 g2*3/2 ees2 d2*3/2 ~ \divisioMinima
d2 c2 g2 ~ g2 f2 ees2*4/2 c2*3/2 f2 \divisioMaxima
d2 ~ d2 g2 ~ g2 f2*3/2 ~ f2*3/4 bes,2*3/2 c2*3/2 d2*3/2 \divisioMaior
f2 bes2*3/2 r2*6/2 \divisioMinima
r2*8/2 g2*4/2 ~ g2 d2 \divisioMaior
a,2*3/2 d2*3/2 ~ d2*3/2 ~ d2 f2*3/2 ~ f4 \divisioMinima
g2*11/4 d2*5/2 \divisioMaior
c2 bes,2*3/4 c2*4/2 d2*4/2 g2 ~ g2 ~ \divisioMinima
g2*7/4 ~ g2 ~ g2 ees2 f2 ~ f4 \finalis
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
        "VII"
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
