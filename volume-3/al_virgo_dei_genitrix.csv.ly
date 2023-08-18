\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.390
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Virgo Dei Genitrix" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Virgo Dei Genitrix"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Virgo Dei Genitrix" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, 
\set stanza = " * " al -- le -- lú -- _ ia. _ _ _ 
_ _ _ _ _ ℣. 
Vir -- _ _ _ go De -- i Gé -- _ _ _ ni -- trix, _ _ _ _ _ _ _ 
quem to -- _ _ tus _ non ca -- _ _ _ pit or -- bis, 
in tu -- a se clau -- _ _ _ _ sit ví -- _ _ _ sce -- ra 
\set stanza = " * " fa -- ctus ho -- _ mo. _ _ _ 
_ _ _ _ _ }

chantMusic = {
\tieDown   c'4 d'4  e'4 ( d'4) a'4 ( bes'4) a'4 \divisioMinima
 c'4 d'4  e'4 ( d'4) a'4 ( bes'4) a'4 \divisioMinima
 g'4 ( a'4 g'4 f'4) a'4. f'4 ( g'4 f'4 e'4) g'4 ( f'4 e'4 d'4) \divisioMaior
 c'4 ( e'4) g'4 ( g'4 e'4 f'4.) d'4 ( e'4 d'4 c'4) \divisioMinima
 c'4 f'4 ( f'4) e'4 ( g'4 a'4 f'4 e'4 c'4 e'\prall f'4 d'4) \finalis
 d'4 ( f'4) ~ f'4 ( e'4 g'4) ~ g'4 ( f'4 e'4) f'4 ( \once \tweak #'font-size #-4 d' ) d'4 \divisioMinima
 d'4 ( e'4) c'4 ( d'4)  d'4 ( a'4.) c''4 ( c''4 a'4) bes'4 ( g'4) ~ g'4 ( f'4) g'4 ( a'4) a'4. d'4 ( a'4) c''4 ( c''4 a'4) bes'4 ( g'4) ~ g'4 ( f'4) g'4 ( a'4 a'4) d'4 ( e'4 f'4 a'4 g'4 e'4) f'4 ( d'4) \divisioMaior
 d'4 ( \once \tweak #'font-size #-4 c' ) c'4 ( d'4) f'4 ( f'4 e'4 d'4) e'4 ( f'4 g'4) g'4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 f'4 f'4 ( a'4) ~ a'4 ( g'4) a'4 ( g'4 f'4.) g'4 ( f'4 e'4 d'4) c'4 ( d'4) d'4 ( e'\prall f'4 e'4 f'4) e'4 ( d'4) \divisioMaxima
 a'4 a'4 g'4 a'4 c''4 ( d''4) c''4 ( d''4 c''4) a'4 ( b'4 a'4 g'4) c''4. g'4 ( c''4) ~ c''4 ( b'4 a'4 g'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( d'4) ~ d'4 ( c'4 f'4) g'4 ( a'4 a'4) f'4 ( a'4 g'4 a'4 f'4 e'4 d'4) c'4 ( d'4) d'4 \divisioMinima
 c'4 d'4  e'4 ( d'4) a'4 ( bes'4) a'4 \divisioMinima
 g'4 ( a'4 g'4 f'4) a'4. f'4 ( g'4 f'4 e'4) g'4 ( f'4 e'4 d'4) \divisioMaior
 c'4 ( e'4) g'4 ( g'4 e'4 f'4.) d'4 ( e'4 d'4 c'4) \divisioMinima
 c'4 f'4 ( f'4) e'4 ( g'4 a'4 f'4 e'4 c'4 e'\prall f'4 d'4) \finalis

}

altoMusic = {
r2 a2 d'2*3/2 \divisioMinima
c'2 a2 d'2 c'4 \divisioMinima
d'2*4/2 c'2*3/4 ~ c'2*4/2 d'2*4/2 \divisioMaior
c'2 ~ c'2*3/2 ~ c'2*3/4 a2*4/2 ~ \divisioMinima
a4 c'2 ~ c'2*5/2 a2 ~ a2 \finalis
r4 a2*3/2 ~ a2*4/2 ~ a2 ~ a4 \divisioMinima
g2*4/2 d'2*5/4 c'2*4/2 d'2*5/2 ~ d'2*7/4 e'2*4/2 d'2*3/2 e'2*3/2 d'2*3/2 ~ d'2*3/2 a2 ~ \divisioMaior
a2 ~ a2 ~ a2*4/2 c'2*4/2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*3/2 ~ c'2*7/4 ~ c'2*4/2 ~ c'4 d'4 a2*5/2 ~ a2 \divisioMaxima
r4 f'2*3/2 a'2*5/2 e'2*4/2 ~ e'2*5/4 g'2*5/2 c'2*3/2 ~ c'2*4/2 ~ c'2*3/2 d'2*7/2 a2 ~ a4 ~ \divisioMinima
a2 ~ a2 d'2*3/2 ~ \divisioMinima
d'2*4/2 c'2*3/4 ~ c'2*4/2 d'2*4/2 \divisioMaior
c'2 ~ c'2*3/2 ~ c'2*3/4 a2*4/2 ~ \divisioMinima
a4 c'2 ~ c'2*5/2 a'2 a2 \finalis
}

tenorMusic = {
g2 f2 ~ f2*3/2 \divisioMinima
e2 g2 f2 ~ f4 ~ \divisioMinima
f2*4/2 ~ f2*3/4 ~ f2*4/2 ~ f2*4/2 ~ \divisioMaior
f2 e2*3/2 d2*3/4 e2*4/2 ~ \divisioMinima
e4 a2 g2*5/2 ~ g2 ~ g4 f4 \finalis
r2*4/2 e2*4/2 g2 f4 \divisioMinima
g2*4/2 f2*5/4 ~ f2*4/2 ~ f2*5/2 ~ f2*7/4 g2*4/2 a2*3/2 ~ a2*3/2 ~ a2*3/2 g2*3/2 ~ g4 f4 ~ \divisioMaior
f2 e2 d2*4/2 g2*4/2 e2*3/2 \divisioMinima
f2 e2*3/2 d2*7/4 e2*4/2 g2 ~ g2*5/2 f2 \divisioMaxima
r4 d'2*3/2 e'2*5/2 d'2*4/2 c'2*5/4 ~ c'2*5/2 g2*3/2 a2*4/2 ~ a2*3/2 ~ a2*7/2 g2 f4 \divisioMinima
e2 g2 f2*3/2 ~ \divisioMinima
f2*4/2 ~ f2*3/4 ~ f2*4/2 ~ f2*4/2 ~ \divisioMaior
f2 e2*3/2 d2*3/4 e2*4/2 ~ \divisioMinima
e4 a2 g2*5/2 ~ g2 ~ g4 f4 \finalis
}

bassMusic = {
e2 d2 ~ d2*3/2 \divisioMinima
a,2 ~ a,2 bes,2 f,4 ~ \divisioMinima
f,2*4/2 ~ f,2*3/4 a,2*4/2 bes,2*4/2 \divisioMaior
a,2 ~ a,2*3/2 ~ a,2*3/4 ~ a,2*4/2 ~ \divisioMinima
a,4 ~ a,2 ~ a,2*5/2 ~ a,2 d2 \finalis
r4 d2*3/2 ~ d2*4/2 ~ d2 ~ d4 \divisioMinima
e2*4/2 d2*5/4 a,2*4/2 bes,2*5/2 d2*7/4 ~ d2*4/2 ~ d2*3/2 c2*3/2 bes,2*3/2 ~ bes,2*3/2 d2 ~ \divisioMaior
d2 ~ d2 ~ d2*4/2 c2*4/2 ~ c2*3/2 \divisioMinima
a,2 ~ a,2*3/2 ~ a,2*7/4 ~ a,2*4/2 ~ a,2 d2*5/2 ~ d2 \divisioMaxima
r2*4/2 a2*5/2 ~ a2*4/2 ~ a2*5/4 e2*5/2 ~ e2*3/2 f2*4/2 e2*3/2 d2*7/2 ~ d2 ~ d4 ~ \divisioMinima
d2 ~ d2 ~ d2*3/2 \divisioMinima
bes,2*4/2 f,2*3/4 a,2*4/2 bes,2*4/2 \divisioMaior
a,2 ~ a,2*3/2 ~ a,2*3/4 ~ a,2*4/2 ~ \divisioMinima
a,4 ~ a,2 ~ a,2*5/2 ~ a,2 d2 \finalis
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
        "1"
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
