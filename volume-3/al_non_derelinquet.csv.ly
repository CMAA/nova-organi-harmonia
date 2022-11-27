\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.92
%(volume.page)

global = {
 \key ees \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Non derelinquet" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Non derelinquet"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Non derelinquet" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- _ _ ia. 
\set stanza = " * " 
_ _ _ _ _ _ _ _ ℣. 
Non de -- re -- lín -- quet _ _ Dó -- mi -- nus san -- ctos su -- os: 
in æ -- tér -- _ _ _ _ num 
\set stanza = " * " con -- ser -- va -- bún -- _ _ _ tur. _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( f'4) g'4 ( aes'4 bes'4 c''4) ~ c''4 ( bes'4) bes'4 ( d''4) ees''4 ( c''4) d''4 ( \tiny c'' bes' 4) bes'4 \divisioMaior
 bes'4 ( c''4) d''4 ( ees''4 c''4.) ees''4 ( d''4 c''4 bes'4.) aes'4 ( c''4 aes'4 bes'4.) g'4 ( bes'4 aes'4 g'4 f'4 ees'4) \divisioMinima
 ees'4 ( f'4 g'4 aes'4 bes'4 c''4) ~ c''4 ( bes'4 aes'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis
 ees'4 f'4 aes'4 ( g'4) aes'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( aes'4 g'4 f'4) aes'4 ( bes'4 c''4) ~ c''4 ( bes'4) \divisioMinima
 bes'4 bes'4 ( c''4) c''4 ( bes'4) aes'4 ( \tiny g' f' 4) f'4 ( bes'4 aes'4 g'4) ees'4 ( f'4 ees'4) ees'4 \divisioMaxima
 ees'4 bes'4 bes'4 c''4 ( bes'4) ees''4. d''4 ( ees''4 c''4) ~ c''4 ( bes'4 g'4) aes'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 \divisioMinima
 ees'4 ( f'4) aes'4 ( g'4) aes'4 ( bes'4) bes'4 ( c''4) d''4 ( ees''4 c''4.) ees''4 ( d''4 c''4 bes'4.) aes'4 ( c''4 aes'4 bes'4) g'4 ( bes'4 aes'4 g'4 f'4 ees'4) \divisioMinima
 ees'4 ( f'4 g'4 aes'4 bes'4 c''4) ~ c''4 ( bes'4 aes'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
ees'2 ~ ees'2*3/2 f'2*3/2 g'2 ~ g'2 ~ g'2*3/2 f'4 \divisioMaior
g'2*4/2 ~ g'2*3/4 aes'2*3/2 g'2*3/4 ees'2*3/2 ~ ees'2*3/4 ~ ees'2*5/2 ~ ees'4 ~ \divisioMinima
ees'2*3/2 ~ ees'2 c'2*3/2 ~ c'2 ~ c'4 bes2 ~ bes4 \finalis
c'2 ~ c'2 ~ c'2 ~ c'2*4/2 ~ c'2 ees'2*3/2 \divisioMinima
f'4 ~ f'2 ees'2 ~ ees'2*3/2 c'2*4/2 bes2*3/2 ~ bes4 \divisioMaxima
ees'4 ~ ees'2 ~ ees'2 ~ ees'2*7/4 ~ ees'2*4/2 ~ ees'2 f'4 \divisioMinima
ees'2 ~ ees'2 ~ ees'2 ~ ees'2*4/2 g'2*3/4 aes'2*3/2 g'2*3/4 f'2 ees'2 ~ ees'2*5/2 ~ ees'4 ~ \divisioMinima
ees'2*3/2 ~ ees'2 c'2*3/2 ~ c'2 ~ c'4 bes2 ~ bes4 \finalis
}

tenorMusic = {
r2 c'2*3/2 d'2*3/2 ees'2 ~ ees'2 f'2*3/2 ~ f'4 \divisioMaior
bes2*4/2 c'2*3/4 ~ c'2*3/2 d'2*3/4 c'2*3/2 bes2*3/4 c'2*5/2 ~ c'4 ~ \divisioMinima
c'2*3/2 ~ c'2 aes2*3/2 ~ aes2 ~ aes4 ~ aes2 g4 \finalis
aes2 ~ aes2 ~ aes2 g2*4/2 f2 g2*3/2 \divisioMinima
aes4 f2 g2 bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes4 \divisioMaxima
g4 ~ g4 d4 g2 aes2*7/4 bes2*4/2 c'2 d'4 \divisioMinima
c'2 bes2 aes2 g2*4/2 ~ g2*3/4 c'2*3/2 d'2*3/4 c'2*4/2 ~ c'2*4/2 ~ c'2 ~ \divisioMinima
c'2*3/2 ~ c'2 aes2*3/2 ~ aes2 ~ aes4 ~ aes2 g4 \finalis
}

bassMusic = {
r2*10/2 c'2 ~ c'2*3/2 d'4 \divisioMaior
ees2*4/2 ~ ees2*3/4 f2*3/2 g2*3/4 aes2*3/2 ~ aes2*3/4 bes2*5/2 c'4 \divisioMinima
bes2*3/2 aes2 g2*3/2 f2 ees4 ~ ees2 ~ ees4 \finalis
r2 g2 f2 ~ f2*4/2 ~ f2 ees2*3/2 \divisioMinima
des4 d2 c2 ~ c2*3/2 f2*4/2 g2*3/2 ees4 ~ \divisioMaxima
ees4 ~ ees2 c2 ~ c2*7/4 ~ c2*4/2 ~ c2 bes,4 \divisioMinima
c2 ~ c2 ~ c2 ~ c2*4/2 ees2*3/4 f2*3/2 g2*3/4 aes2*4/2 bes2*4/2 c'2 \divisioMinima
bes2*3/2 aes2 g2*3/2 f2 ees4 ~ ees2 ~ ees4 \finalis
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
