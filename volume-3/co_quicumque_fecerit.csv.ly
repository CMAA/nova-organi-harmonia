\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.107
%(volume.page)

global = {
 \key f \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Quicumque fecerit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Quicumque fecerit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Quicumque fecerit" }
    \line {}
  }
}

chantText = \lyricmode {
Qui -- cúm -- que fé -- ce -- rit 
\set stanza = " * " vo -- lun -- tá -- tem Pa -- tris me -- i, _ qui in cœ -- lís est: 
i -- pse me -- us fra -- ter, so -- ror, et ma -- _ ter _ est, 
di -- _ cit _ Dó -- mi -- nus. }

chantMusic = {
\tieDown   f'4 aes'4 aes'4 ( g'4) aes'4 ( bes'4) g'4 ( aes'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 aes'4 c''4 ( \once \tweak #'font-size #-4 bes' )  c''4 ( des''4) c''4 ( \once \tweak #'font-size #-4 bes' )  bes'4 ( des''4) c''4 ( des''4) bes'4 bes'4 ( c''4 bes'4 bes'4) g'4 ( aes'4 g'4) \divisioMinima
 bes'4 bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4) bes'4 ( c''4) bes'4 \divisioMaxima
 c''4 bes'4 ( c''4 bes'4) c''4 aes'4 ( bes'4 aes'4) bes'4 bes'4 ( \once \tweak #'font-size #-4 f' ) aes'4 aes'4 \divisioMinima
 aes'4 aes'4 ( g'4) aes'4 ( bes'4) f'4 ( g'\prall aes'4) g'4 ( f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaior
 aes'4 ( g'4) bes'4 ( bes'4 c''4) aes'4 ( g'4 aes'\prall bes'4 aes'4) ~ aes'4 ( g'4) f'4 f'4 ( g'4 aes'4 g'4 f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
r4 c'4 des'2 ees'2 des'2*5/2 c'2 \divisioMinima
f'4 ~ f'2 ~ f'2 ~ f'2 ~ f'2*4/2 ~ f'4 ees'2*4/2 ~ ees'2*3/2 ~ \divisioMinima
ees'4 ~ ees'2 ~ ees'2*4/2 ~ ees'4 \divisioMaxima
c'4 ~ c'2*3/2 ~ c'4 ~ c'2*3/2 bes4 ~ bes2 ees'2 ~ \divisioMinima
ees'4 des'2*4/2 d'2*3/2 c'2*4/2 ~ c'2 \divisioMaior
ees'2 ~ ees'2*3/2 f'2*4/2 des'2*3/2 ~ des'4 c'2*6/2 ~ c'2 \finalis
}

tenorMusic = {
r4 aes4 bes2 c'2 bes2*5/2 aes2 \divisioMinima
c'4 bes2 aes2 ~ aes2 ~ aes2*4/2 bes4 ~ bes2*4/2 c'2*3/2 ~ \divisioMinima
c'4 bes2 aes2*4/2 g4 \divisioMaxima
aes4 ~ aes2*3/2 ~ aes4 f2*3/2 ~ f4 ~ f2 ~ f2 ~ \divisioMinima
f4 ~ f2*4/2 aes2*3/2 bes2*4/2 c'2 \divisioMaior
bes2 aes2*3/2 ~ aes2*4/2 ~ aes2*3/2 bes4 ~ bes2*6/2 aes2 \finalis
}

bassMusic = {
r2*13/2 \divisioMinima
f4 ~ f2 ~ f2 ees2 des2*4/2 ~ des4 c2*4/2 ~ c2*3/2 ~ \divisioMinima
c4 ~ c2 ~ c2*4/2 ees4 \divisioMaxima
r4 g2*3/2 f4 ees2*3/2 ~ ees4 des2 c2 ~ \divisioMinima
c4 bes,2*4/2 ~ bes,2*3/2 c2*4/2 ~ c2 ~ \divisioMaior
c2 ~ c2*3/2 des2*4/2 bes,2*3/2 ~ bes,4 f2*6/2 ~ f2 \finalis
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
        "I"
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
