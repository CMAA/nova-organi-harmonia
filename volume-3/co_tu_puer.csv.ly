\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.227
%(volume.page)

global = {
 \key f \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tu puer" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tu puer"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tu puer" }
    \line {}
  }
}

chantText = \lyricmode {
Tu, pu -- er, 
\set stanza = " * " pro -- phé -- ta Al -- tís -- si -- mi vo -- _ _ cá -- be -- ris: 
præ -- í -- bis e -- _ nim an -- _ te fá -- ci -- em Dó -- mi -- ni 
pa -- rá -- _ re vi -- _ _ as e -- jus. }

chantMusic = {
\tieDown   f'4 ( aes'4 bes'4) c''4 ( bes'4 c''4 aes'4) aes'4 ( aes'4 aes'4) \divisioMinima
 aes'4 ( f'4) aes'4 ( c''4) c''4 c''4 c''4 c''4 ( bes'4 c''4) aes'4 ( bes'4 c''4 aes'4) \divisioMinima
 aes'4 ( c''4 bes'4 c''4.) aes'4 ( bes'4 c''4 aes'4) ~ aes'4 ( g'4) f'4 f'4 ( g'4 aes'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 bes'4  c''4 ( bes'4 c''\prall des''4) c''4 bes'4 c''4 ( bes'4 bes'4) f'4 \divisioMinima
 f'4 aes'4 ( aes'4 aes'4) f'4 f'4 ( bes'4 aes'4 bes'4) bes'4 bes'4 ( c''4 bes'4 c''4) aes'4 ( bes'4 aes'4 bes'4) f'4 f'4 ( ees'4 f'4) \divisioMaior
 f'4 f'4 ( f'4 ees'4 f'4) ~ f'4 ( ees'4 f'4) f'4 ( c'4) \divisioMinima
 ees'4 ( f'4) aes'4 ( aes'4 f'4 ees'4) aes'4 ( aes'4 aes'4) bes'4 ( aes'4 g'4 aes'4) f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
f'2*3/2 ees'2*4/2 ~ ees'2*3/2 \divisioMinima
c'2 ~ c'2*4/2 f'4 ~ f'2*3/2 d'2*4/2 \divisioMinima
ees'2*9/4 ~ ees'2*3/2 ~ ees'2*3/2 f'4 c'2*6/2 ~ c'2 \divisioMaxima
r4 f'2*6/2 ~ f'2*3/2 ~ f'4 ~ \divisioMinima
f'4 c'2*4/2 f'2*5/2 ~ f'2*4/2 ees'2*5/2 des'2*3/2 ~ \divisioMaior
des'4 c'2*3/2 ~ c'2*4/2 ~ c'2 ~ \divisioMinima
c'2 des'2*4/2 ees'2*3/2 ~ ees'2*4/2 c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
des'2*3/2 d'2*4/2 c'2*3/2 \divisioMinima
aes2 ~ aes2*4/2 ~ aes4 ~ aes2*3/2 ~ aes2*4/2 ~ \divisioMinima
aes2*9/4 bes2*3/2 c'2*3/2 ~ c'4 bes2*6/2 aes2 \divisioMaxima
r4 aes2*6/2 bes2*4/2 ~ \divisioMinima
bes4 aes2*4/2 ~ aes2*5/2 ~ aes2*4/2 ~ aes2*5/2 ~ aes2*3/2 ~ \divisioMaior
aes4 ~ aes2*3/2 g2*4/2 f2 ~ \divisioMinima
f2 ~ f2*4/2 ees2*3/2 g2*4/2 bes2*3/2 aes4 \finalis
}

bassMusic = {
r2*3/2 aes2*4/2 ~ aes2*3/2 \divisioMinima
g2 f2*4/2 ~ f4 ees2*3/2 des2*4/2 \divisioMinima
c2*9/4 ~ c2*3/2 ~ c2*3/2 f4 ~ f2*6/2 ~ f2 \divisioMaxima
r4 des2*6/2 d2*4/2 ~ \divisioMinima
d4 f2*4/2 ees2*5/2 des2*4/2 c2*5/2 bes,2*3/2 ~ \divisioMaior
bes,4 aes,2*3/2 ~ aes,2*4/2 ~ aes,2 ~ \divisioMinima
aes,2 bes,2*4/2 c2*3/2 ~ c2*4/2 f2*3/2 ~ f4 \finalis
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
