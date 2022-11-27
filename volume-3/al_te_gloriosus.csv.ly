\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.338
%(volume.page)

global = {
 \key ees \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Te gloriosus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Te gloriosus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Te gloriosus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- _ ia, 
\set stanza = " * " 
al -- le -- _ lú -- _ ia. 
_ _ _ _ _ _ _ _ _ ℣. 
Te glo -- ri -- ó -- sus _ _ A -- po -- sto -- ló -- rum cho -- rus 
lau -- _ _ _ _ dat, 
\set stanza = " * " Dó -- _ _ mi -- ne. _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( f'4) g'4 ( aes'4 bes'4 c''4) ~ c''4 ( bes'4) bes'4 ( d''4 ees''4 c''4) d''4 ( \tiny c'' bes' 4) bes'4 \divisioMaior
  ees'4 ( f'4) g'4 ( aes'4 bes'4 c''4) ~ c''4 ( bes'4) bes'4 ( d''4 ees''4 c''4) d''4 ( \tiny c'' bes' \normal) bes'4 \divisioMaior
 bes'4 ( c''4) d''4 ( ees''4 c''4.) ees''4 ( d''4 c''4 bes'4.) aes'4 ( c''4 aes'4 bes'4.) g'4 ( bes'4 aes'4 g'4 f'4 ees'4) \divisioMinima
 ees'4 ( f'4 g'4 aes'4 bes'4 c''4) ~ c''4 ( bes'4 aes'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis
 ees'4 ( f'4) aes'4 g'4 aes'4 ( bes'4) bes'4 ( aes'4 g'4 f'4) aes'4 ( bes'4 c''4) ~ c''4 ( bes'4) \divisioMinima
 bes'4 bes'4 ( c''4) c''4 ( bes'4) aes'4 ( g'4 f'4) f'4 ( bes'4 aes'4 g'4) ees'4 ( f'4 ees'4) ees'4 \divisioMaxima
 bes'4 c''4 ( bes'4) ees''4. d''4 ( ees''4 c''4) ~ c''4 ( bes'4 g'4) aes'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 \divisioMinima
 bes'4 ( c''4) d''4 ( ees''4 c''4.) ees''4 ( d''4 c''4 bes'4) aes'4 ( c''4 aes'4 bes'4) g'4 ( bes'4 aes'4 g'4 f'4 ees'4) \divisioMinima
 ees'4 ( f'4 g'4 aes'4 bes'4 c''4) ~ c''4 ( bes'4 aes'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
r2 g'2*3/2 f'2*3/2 g'2*4/2 f'2*3/2 ~ f'4 r2 g'2*3/2 f'2*3/2 ees'2*4/2 ~ ees'2*3/2 d'4 \divisioMaior
g'2 f'2*7/4 ees'2*9/4 ~ ees'2*9/4 d'2*5/2 ees'4 ~ \divisioMinima
ees'2*5/2 ~ ees'2*6/2 bes2 ~ bes4 \finalis
ees'2*4/2 ~ ees'2 ~ ees'2*4/2 ~ ees'2 ~ ees'2*3/2 ~ \divisioMinima
ees'4 d'2 c'2 ~ c'2*3/2 bes2*4/2 ~ bes2*3/2 ~ bes4 \divisioMaxima
r4 g'2 ~ g'2*7/4 ~ g'2*4/2 ees'2 f'4 \divisioMinima
g'2 ~ g'2*7/4 ees'2*4/2 ~ ees'2*4/2 d'2*5/2 ees'4 \divisioMinima
c'2*5/2 ~ c'2*6/2 ~ c'2 bes4 \finalis
}

tenorMusic = {
ees'2 ~ ees'2*3/2 ~ ees'2*3/2 ~ ees'2*4/2 ~ ees'2*3/2 d'4 r2 bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes4 ~ \divisioMaior
bes2 ~ bes2*7/4 ~ bes2*9/4 c'2*9/4 bes2*5/2 c'4 ~ \divisioMinima
c'2*5/2 ~ c'2*6/2 aes2 g4 \finalis
c'2*4/2 ~ c'2 ~ c'2*4/2 ~ c'2 bes2*3/2 ~ \divisioMinima
bes4 ~ bes2 aes2 f2*3/2 fd2*4/2 aes2*3/2 g4 \divisioMaxima
f'2*3/2 ~ f'2*7/4 ees'2*4/2 ~ ees'2 d'4 ~ \divisioMinima
d'2 c'2*7/4 bes2*4/2 c'2*4/2 bes2*5/2 g4 ~ \divisioMinima
g2*5/2 ees2*6/2 f2 g4 \finalis
}

bassMusic = {
r2*12/2 bes2*3/2 ~ bes4 ees2 ~ ees2*3/2 d2*3/2 c2*4/2 bes,2*3/2 ~ bes,4 \divisioMaior
ees2 ~ ees2*7/4 g2*9/4 aes2*9/4 bes2*6/2 ~ \divisioMinima
bes2*5/2 aes2*6/2 ees2 ~ ees4 \finalis
r2*4/2 bes2 aes2*4/2 f2 g2*3/2 ~ \divisioMinima
g4 ~ g2 aes2 r2*7/2 ees2*3/2 ~ ees4 \divisioMaxima
d'2*3/2 c'2*7/4 ~ c'2*4/2 ~ c'2 bes4 \divisioMinima
g2 ~ g2*7/4 ~ g2*4/2 f2*4/2 bes,2*5/2 c4 \divisioMinima
bes,2*5/2 aes,2*6/2 ~ aes,2 ees,4 \finalis
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
