\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.225
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Priusquam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Priusquam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Priusquam" }
    \line {}
  }
}

chantText = \lyricmode {
Pri -- ús -- quam 
\set stanza = " * " te for -- má -- rem _ in ú -- _ te -- ro, no -- vi -- te: 
et án -- te -- quam ex -- í -- res de ven -- _ tre, 
san -- cti -- fi -- cá -- vi _ te. _ _ _ ℣. 
Mi -- sit Dó -- _ _ _ mi -- nus ma -- num su -- am, _ _ _ 
et té -- ti -- git os _ me -- um, 
et di -- xit 
\set stanza = " * " mi -- hi. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( ees'4 f'4) ees'4 ees'4 ( f'4 \once \tweak #'font-size #-4 c' )  ees'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4) f'4. ees'4 ( f'4 ees'4 c'4) \divisioMinima
 c'4 c'4 ( f'4 ees'4) f'4 ( g'4) f'4 f'4 \divisioMinima
  g'4 ( aes'4 f'4 ees'4) ees'4 ( d'4 ees'\prall f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaxima
 g'4 bes'4 ( bes'4 \once \tweak #'font-size #-4 c'' ) bes'4 bes'4 bes'4 bes'4 ( c''4 g'4) g'4 ( f'4 g'4) g'4  g'4. ees'4 ( f'4 g'4 \once \tweak #'font-size #-4 aes' ) g'4 ( f'4 g'4) \divisioMaior
 bes'4 ( bes'4 \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4) g'4 g'4 g'4 ( f'4) ~ f'4 ( ees'4 f'4) ees'4 ( f'\prall g'4 f'4 g'4) bes'4 ( bes'4 g'4 ees'4 f'\prall g'4 f'4) g'4 ( bes'4 g'4 g'4) ees'4 ( f'4 ees'4) \finalis
  bes'4 ( bes'4) bes'4 c''4 ( a'4) bes'4 ( g'4 f'4.) g'4 ( a'\prall bes'4) ~ bes'4 ( c''4) bes'4 bes'4 \divisioMinima
 c''4 ( d''4 c''4 bes'4) bes'4 bes'4 ( c''4 bes'4 g'4) g'4 ( bes'4 c''4.) bes'4 ( c''4) d''4 ( bes'4 bes'4) c''4 ( c''4 bes'4) \divisioMaxima
 bes'4 ( g'4) bes'4 ( c''4 bes'4) a'4 ( bes'4) g'4 \divisioMinima
  ees'4 ( g'4.) f'4 ( g'4 bes'4 g'4 f'4 g'\prall aes'4 g'4 f'4) ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaxima
 ees'4 f'4 ( g'4) g'4 ( bes'4 a'4 g'4)  c''4 bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4.) g'4 ( aes'4 f'4 ees'4.) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
bes2*4/2 c'2*6/2 d'2 c'2*3/4 g2*3/2 bes4 \divisioMinima
g4 c'2*3/2 bes2*4/2 ~ bes2*4/2 ~ bes2*6/2 ~ bes2 \divisioMaxima
r4 f'2*6/2 ees'2*3/2 d'2*4/2 c'2*3/4 ees'2*4/2 d'2*3/2 ~ \divisioMaior
d'2*3/2 ees'2*3/2 d'2 c'2*4/2 bes2 ~ bes2*3/2 ~ bes2*3/2 c'2*4/2 d'2*4/2 bes2*3/2 d'2*3/2 ~ d'2*11/4 ~ d'2 f'2*5/2 \divisioMinima
g'2*5/2 f'2*4/2 ~ f'4 ees'2*9/4 f'2*3/2 ees'2 d'4 ~ \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2*3/2 bes2*5/4 ~ bes2*4/2 c'2*5/2 ~ c'2*6/2 ~ c'2 \divisioMaxima
ees'4 ~ ees'2 d'2*5/2 ees'2*3/2 ~ ees'2*11/4 ~ ees'2*9/4 ~ ees'2 f'2*3/4 ~ f'2 ees'2*3/2 bes2*4/2 ~ bes2 ~ bes4 \finalis
}

tenorMusic = {
g2*4/2 ~ g2*6/2 ~ g2 ~ g2*3/4 f2*3/2 ees4 ~ \divisioMinima
ees4 g2*3/2 f2*4/2 ees2*4/2 aes2*6/2 g2 \divisioMaxima
r4 bes2*6/2 ~ bes2*3/2 ~ bes2*4/2 c'2*3/4 ~ c'2*4/2 bes2*3/2 ~ \divisioMaior
bes2*3/2 ~ bes2*3/2 ~ bes2 aes2*4/2 g2 ~ g2*3/2 f2*3/2 g2*4/2 bes2*4/2 g2*3/2 r2*3/2 a2*11/4 bes2 ~ bes2*5/2 ~ \divisioMinima
bes2*5/2 ~ bes2*4/2 ~ bes4 ~ bes2*9/4 ~ bes2*3/2 f2 ~ f4 \divisioMaxima
r2 g2*3/2 f2*3/2 ees2*5/4 d2*4/2 c2*5/2 f2*6/2 g2 \divisioMaxima
r4 bes2 ~ bes2*5/2 g2*3/2 f2*11/4 g2*9/4 bes2 ~ bes2*3/4 f2 g2*3/2 ~ g2*4/2 aes2 g4 \finalis
}

bassMusic = {
ees2*4/2 ~ ees2*6/2 bes,2 c2*3/4 ~ c2*3/2 ~ c4 ~ \divisioMinima
c4 ~ c2*3/2 d2*4/2 ees2*4/2 ~ ees2*6/2 ~ ees2 \divisioMaxima
r4 g2*6/2 ~ g2*3/2 ~ g2*4/2 aes2*3/4 a2*4/2 bes2*3/2 \divisioMaior
g2*3/2 ~ g2*3/2 ~ g2 aes2*4/2 r2 ees2*3/2 d2*3/2 c2*4/2 bes,2*4/2 ees2*3/2 g2*3/2 ~ g2*11/4 ~ g2 d2*5/2 \divisioMinima
ees2*5/2 d2*4/2 c4 ~ c2*9/4 bes,2*3/2 ~ bes,2 ~ bes,4 \divisioMaxima
g,2 ~ g,2*3/2 ~ g,2*3/2 ~ g,2*5/4 ~ g,2*4/2 aes,2*5/2 ~ aes,2*6/2 c2 \divisioMaxima
r4 g2 ~ g2*5/2 c2*3/2 ~ c2*11/4 ~ c2*9/4 ~ c2 d2*3/4 ~ d2 ees2*3/2 ~ ees2*4/2 ~ ees2 ~ ees4 \finalis
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
