\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.35
%(volume.page)

global = {
 \key ges \locrian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laudate pueri" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laudate pueri"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laudate pueri" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- _ le -- lú -- _ ia. 
\set stanza = " * " _ _ _ _ _ _ ℣. 
Lau -- dá -- te _ _ _ pú -- _ _ e -- ri Dó -- mi -- num, 
lau -- dá -- _ _ _ te no -- men 
\set stanza = " * " Dó -- mi -- ni. _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 aes'4 ( aes'4) g'4 ( aes'4) bes'4 ( c''4 bes'4 aes'4) bes'4 ( c''4) c''4 ( ees''4 c''4 bes'4) \divisioMinima
 c''4 ( f'4) g'4. aes'4 ( bes'4) c''4 ( bes'4.) c''4 ( f'4) g'4. \forceBreak
 aes'4 ( bes'4 c''4 bes'4 aes'4) c''4 ( bes'4) ~ bes'4 ( g'4) \finalis
 c''4 c''4  bes'4. d''4 ( c''4 bes'4) c''4 ( aes'4) ~ aes'4 ( ges'4) \divisioMinima
 aes'4 ( f'4) g'4 ( aes'4 bes'4 c''4) ~ c''4 ( bes'4 \forceBreak
) aes'4 ( bes'4) bes'4 \divisioMinima
 bes'4 ( c''4) bes'4 bes'4 ( c''4 bes'4 c''4 aes'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4 g'4 aes'4) c''4 ( bes'4 aes'4) c''4 ( bes'4 aes'4) bes'4 ( aes'4) g'4 \divisioMinima
 g'4 ( aes'4 bes'4) bes'4 ( f'4 aes'4)  \forceBreak
 g'4 ( aes'4 bes'4) aes'4 ( c''4 bes'4 c''4) c''4 ( ees''4 c''4 bes'4) \divisioMinima
 c''4 ( f'4) g'4. aes'4 ( bes'4 c''4 bes'4.) c''4 ( f'4) g'4. aes'4 ( bes'4 c''4 bes'4 aes'4) c''4 ( bes'4) ~ bes'4 ( g'4) \finalis

}

altoMusic = {
c'2*5/2 ees'2*4/2 ~ ees'2 ~ ees'2*4/2 ~ \divisioMinima
ees'2 ~ ees'2*3/4 f'2 ees'2*5/4 f'2 ees'2*3/4 ~ ees'2 ~ ees'2*4/2 d'2 ees'4 ~ \finalis
ees'4 f'4 ~ f'2*3/4 ~ f'2*4/2 ees'2*3/2 ~ \divisioMinima
ees'2 ~ ees'2*3/2 ~ ees'2*3/2 ~ ees'2 ~ ees'4 \divisioMinima
f'2*3/2 ees'2*3/2 ~ ees'2 ~ \divisioMaxima
ees'2 c'2*4/2 ~ c'2*3/2 ees'2*3/2 ~ ees'2*3/2 ~ \divisioMinima
ees'2*3/2 des'2*3/2 ees'2*3/2 f'2*4/2 ~ f'2*3/2 ~ f'4 ~ \divisioMinima
f'2 ees'2*3/4 f'2 ~ f'2*5/4 ~ f'2 ees'2*3/4 ~ ees'2 ~ ees'2*4/2 d'2 ees'4 \finalis
}

tenorMusic = {
aes2*5/2 ~ aes2*4/2 g2 ~ g2*4/2 \divisioMinima
aes2 bes2*3/4 c'2 g2*5/4 aes2 bes2*3/4 ~ bes2 aes2*4/2 f2 g4 \finalis
aes2 ~ aes2*3/4 bes2*4/2 c'2*3/2 \divisioMinima
aes2 bes2*3/2 g2*3/2 f2 g4 \divisioMinima
f2*3/2 g2*3/2 aes2 \divisioMaxima
bes2 ~ bes2*4/2 ga2*3/2 aes2*3/2 c'2*3/2 \divisioMinima
bes2*3/2 aes2*3/2 bes2*3/2 c'2*4/2 ~ c'2*3/2 des'4 \divisioMinima
aes2 bes2*3/4 c'2 g2*5/4 aes2 bes2*3/4 ~ bes2 aes2*4/2 f2 g4 \finalis
}

bassMusic = {
f2*5/2 c2*4/2 ~ c2 ees2*4/2 \divisioMinima
r2 g2*3/4 f2 ~ f2*5/4 ~ f2 ~ f2*3/4 c2 ~ c2*4/2 ~ c2 ~ c4 \finalis
r2 des2*3/4 ~ des2*4/2 c2*3/2 ~ \divisioMinima
c2 ~ c2*3/2 ~ c2*3/2 ees2 ~ ees4 \divisioMinima
des2*3/2 c2*3/2 ~ c2 \divisioMaxima
ees2 f2*4/2 ~ f2*3/2 c2*3/2 ~ c2*3/2 ~ \divisioMinima
c2*3/2 f2*3/2 ees2*3/2 ~ ees2*4/2 des2*3/2 ~ des4 \divisioMinima
f2 ~ f2*3/4 ~ f2 ~ f2*5/4 ~ f2 ~ f2*3/4 c2 ~ c2*4/2 ~ c2 ~ c4 \finalis
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
        "IV"
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
