\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.192
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Defecit caro" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Defecit caro"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Defecit caro" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, 
\set stanza = " * " al -- le -- lú -- _ ia. _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ ℣. 
De -- fé -- _ cit ca -- ro me -- a, et cor me -- um: 
De -- us cor -- _ dis me -- i, 
et pars me -- a De -- us 
\set stanza = " * " 
in æ -- tér -- _ num. _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4 g'4 ( a'4 g'4 f'4) g'4 ( a'\prall bes'4) a'4 \divisioMinima
 f'4 f'4 g'4 ( a'4 g'4 f'4) g'4 ( a'\prall bes'4) a'4 \divisioMinima
 bes'4 ( c''4 bes'4 a'4) bes'4 ( c''4 bes'4 a'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 ( g'4 a'\prall bes'4) ~ bes'4 ( a'4.) bes'4 ( c''4 bes'4 a'4) bes'4 ( c''4 bes'4 a'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMinima
 f'4 ( g'4 a'\prall bes'4 a'4 g'4 f'4) ~ f'4 ( ees'4.) f'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4) \finalis
 f'4 g'4 ( a'4 g'4 f'4) g'4 ( a'\prall bes'4) a'4 g'4 ( bes'4) bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 g'4 g'4 ( a'4) g'4 ( f'4) f'4 \divisioMaxima
 a'4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( bes'4) ~ bes'4 ( a'4) g'4 ( f'4) g'4 ( bes'4 g'4) a'4 ( bes'4 a'4) \divisioMaior
 f'4 a'4 ( bes'4 c''4) bes'4 ( bes'4 a'4) g'4 ( a'4 g'4) f'4 ( g'4 f'4) f'4 \divisioMaior
 f'4 f'4 g'4 ( a'4 g'4 f'4) g'4 ( a'\prall bes'4) a'4 \divisioMinima
 bes'4 ( c''4 bes'4 a'4) bes'4 ( c''4 bes'4 a'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 ( g'4 a'\prall bes'4) ~ bes'4 ( a'4.) bes'4 ( c''4 bes'4 a'4) bes'4 ( c''4 bes'4 a'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMinima
 f'4 ( g'4 a'\prall bes'4 a'4 g'4 f'4) ~ f'4 ( ees'4.) f'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4) \finalis

}

altoMusic = {
d'2 ~ d'2*4/2 ~ d'2*3/2 f'4 \divisioMinima
d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 \divisioMinima
f'2*4/2 ees'2*4/2 ~ ees'2 d'2*3/2 \divisioMaior
f'2*3/2 ~ f'2*7/4 ~ f'2*4/2 ~ f'2*4/2 ees'2 c'2 ~ c'4 \divisioMinima
bes2*6/2 ~ bes2*7/4 ~ bes2*4/2 ~ bes2 ~ bes4 \finalis
d'4 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 c'2 ~ c'2 ~ c'4 \divisioMaxima
f'2*6/2 d'2*3/2 ~ d'2 ~ d'2*3/2 f'2*3/2 ~ \divisioMaior
f'4 ~ f'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 c'4 ~ \divisioMaior
c'2 d'2*4/2 ~ d'2*3/2 f'4 \divisioMinima
d'2*4/2 ees'2*4/2 ~ ees'2 d'2*3/2 \divisioMaior
f'2*3/2 ~ f'2*7/4 ~ f'2*4/2 ~ f'2*4/2 ees'2 c'2 ~ c'4 \divisioMinima
bes2*6/2 ~ bes2*7/4 ~ bes2*4/2 ~ bes2 ~ bes4 \finalis
}

tenorMusic = {
bes2 ~ bes2*4/2 ~ bes2*3/2 c'4 \divisioMinima
bes2 a2*4/2 g2*3/2 f4 ~ \divisioMinima
f2*4/2 g2*4/2 bes2 a2*3/2 \divisioMaior
g2*3/2 f2*7/4 bes2*4/2 c'2*4/2 bes2 ~ bes2 a4 \divisioMinima
f2*6/2 g2*7/4 ees2*4/2 d2 f4 \finalis
bes4 ~ bes2*4/2 a2*4/2 bes2 c'2*3/2 bes2*4/2 ~ bes2 ~ bes2 a4 \divisioMaxima
c'2*6/2 ~ c'2*3/2 a2 bes2*3/2 c'2*3/2 ~ \divisioMaior
c'4 ~ c'2*3/2 ~ c'2*3/2 bes2*3/2 ~ bes2*3/2 a4 ~ \divisioMaior
a2 bes2*4/2 ~ bes2*3/2 c'4 \divisioMinima
bes2*4/2 ~ bes2*4/2 a2 ~ a2*3/2 \divisioMaior
g2*3/2 f2*7/4 bes2*4/2 c'2*4/2 bes2 ~ bes2 a4 \divisioMinima
f2*6/2 g2*7/4 ees2*4/2 d2 f4 \finalis
}

bassMusic = {
r2 a2*4/2 g2*3/2 f4 \divisioMinima
bes,2 ~ bes,2*4/2 ~ bes,2*3/2 d4 ~ \divisioMinima
d2*4/2 c2*4/2 ~ c2 d2*3/2 ~ \divisioMaior
d2*3/2 ~ d2*7/4 ~ d2*4/2 ~ d2*4/2 ees2 f2 ~ f4 \divisioMinima
d2*6/2 ees2*7/4 bes,2*4/2 ~ bes,2 ~ bes,4 \finalis
r4 g2*4/2 ~ g2*4/2 ~ g2 ~ g2*3/2 ~ g2*4/2 ees2 f2 ~ f4 ~ \divisioMaxima
f2*6/2 g2*3/2 ~ g2 ~ g2*3/2 f2*3/2 ~ \divisioMaior
f4 d2*3/2 g2*3/2 ~ g2*3/2 bes2*4/2 \divisioMaior
a2 ~ a2*4/2 g2*3/2 f4 \divisioMinima
bes,2*4/2 c2*4/2 ~ c2 d2*3/2 ~ \divisioMaior
d2*3/2 ~ d2*7/4 ~ d2*4/2 ~ d2*4/2 ees2 f2 ~ f4 \divisioMinima
d2*6/2 ees2*7/4 bes,2*4/2 ~ bes,2 ~ bes,4 \finalis
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
        "III"
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
