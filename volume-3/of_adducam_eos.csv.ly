\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.93
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Adducam eos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Adducam eos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Adducam eos" }
    \line {}
  }
}

chantText = \lyricmode {
Ad -- dú -- _ cam e -- os _ _ 
\set stanza = " * " in mon -- tem san -- ctum _ me -- _ um, _ _ _ _ 
et læ -- ti -- fi -- cá -- _ _ _ bo e -- os 
in do -- _ mo o -- ra -- _ ti -- ó -- _ nis me -- _ _ æ: _ 
ho -- lo -- cáu -- sta e -- ó -- rum 
et ví -- cti -- mæ _ e -- ó -- _ rum _ 
pla -- cé -- bunt mi -- _ _ hi _ _ 
su -- per al -- tá -- _ re _ _ me -- _ um. }

chantMusic = {
\tieDown   c'4 ( ees'4) ees'4 ( f'4) g'4 ( f'4) f'4 ( g'4) f'4 f'4. ees'4 ( ees'4) ~ ees'4 ( ees'4 f'4) \divisioMinima
 c'4 ees'4 ( g'4 f'4) g'4 f'4 ( \once \tweak #'font-size #-4 ees' ) ees'4 ( f'4 g'4) ~ g'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4) ees'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 g'4 ees'4 ( f'4) f'4 ( g'4) f'4 f'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) c''4 ( d''4 bes'4) ~ bes'4 ( g'4 a'\prall bes'4 c''4 bes'4) bes'4 ( f'4) g'4 ( bes'4 g'4 ees'4 f'4) f'4 \divisioMaior
 c'4 ( \once \tweak #'font-size #-4 ees' ) ees'4 ( f'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 g'4 ( bes'4 f'4) g'4 ( f'4) ees'4 ( f'4) f'4 ( g'4) bes'4 ( a'4) bes'4 bes'4 ( c''4 bes'4) c''4 ( a'4) bes'4 ( g'4 f'4 ees'4 f'\prall g'4 f'4 g'4) g'4 ( bes'4 g'4) ~ g'4 ( ees'4) \divisioMaxima
 c'4 ees'4 c'4 ( d'\prall ees'4) ees'4 ( f'4) f'4 ( g'4) g'4 ( bes'4 g'4) f'4 ( g'4 f'4 ees'4) \divisioMaior
 f'4 ( g'4) g'4 ( a'4) g'4 ( f'4) f'4 ( a'4 g'4) a'4 ( f'4) f'4 ( ees'4) ees'4 ( f'4) g'4 ( f'4 g'4) g'4 bes'4 ( bes'4 g'4 f'4) \divisioMaior
 f'4 ( ees'4) ees'4 ( g'4 f'4 g'4) f'4 ( ees'4) ees'4. ~ ees'4 ( ees'4 ees'4) f'4 ( ees'4 f'4) c'4 ees'4 ( f'4 d'4) ees'4 ( f'4 c'4 bes4 c'4) \divisioMaior
 bes4 c'4 c'4 ( \once \tweak #'font-size #-4 bes ) ees'4 ( f'\prall g'4 f'4) g'4 ( f'4 ees'4) f'4 bes'4 ( bes'4 a'4) g'4 ( a'\prall bes'4 a'4 g'4) f'4 ( g'4) bes'4 ( g'4 a'4) g'4 ( f'4) \finalis

}

altoMusic = {
c'2 ~ c'2*4/2 d'2*3/2 c'2*3/4 bes2 ~ bes2 a4 \divisioMinima
c'4 ~ c'2*4/2 bes2 ~ bes2 ~ bes2*4/2 ~ bes2*3/2 ees'2 ~ ees'2 f'2*3/2 d'2*3/2 \divisioMaxima
ees'4 ~ ees'2 d'2*3/2 ~ d'2 ~ d'2*5/2 ees'2*5/2 ~ ees'2 f'2 ees'2*3/2 c'2 ~ c'4 ~ \divisioMaior
c'2 ~ c'2*4/2 ~ c'4 ~ \divisioMinima
c'4 bes2*3/2 ~ bes2 c'2 bes2 ~ bes2*3/2 f'2*5/2 ~ f'2*3/2 ees'2 d'2*3/2 ees'2 ~ ees'2*3/2 \divisioMaxima
c'2 ~ c'2*3/2 ~ c'2 bes2 ~ bes2*3/2 ~ bes2*4/2 ~ \divisioMaior
bes2 c'2 ~ c'2 ~ c'2*5/2 bes2 ~ bes2 ~ bes2*3/2 ~ bes4 ~ bes2*4/2 \divisioMaior
c'2 bes2*4/2 ~ bes2 ~ bes2*3/4 c'2*3/2 g2*4/2 ~ g2*5/2 ~ g2 ~ g4 \divisioMaior
r2*3/2 \tiny bes \normalsize4 bes2*4/2 ~ bes2*3/2 r4 ees'2*3/2 d'2*5/2 ees'2 ~ ees'2*3/2 c'2 \finalis
}

tenorMusic = {
c'2 bes2*4/2 ~ bes2*3/2 a2*3/4 g2 r2*3/2 \divisioMinima
g4 ~ g2*4/2 ~ g2 f2 ees2*4/2 ~ ees2*3/2 ~ ees2 bes2 ~ bes2*3/2 a2*3/2 \divisioMaxima
c'4 bes2 ~ bes2*3/2 a2 g2*5/2 ~ g2*5/2 bes2 ~ bes2 ~ bes2*3/2 ~ bes2 a4 \divisioMaior
g2 bes2*4/2 a4 ~ \divisioMinima
a4 g2*3/2 ~ g2 ~ g2 f2 ~ f2*3/2 ~ f2*5/2 bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 c'2*3/2 \divisioMaxima
g2 ~ g2*3/2 ~ g2 f2 ees2*3/2 ~ ees2*4/2 \divisioMaior
d2 c2 ~ c2 f2*5/2 g2 f2 ees2*3/2 d4 g2*4/2 ~ \divisioMaior
g2 ~ g2*4/2 ~ g2 ~ g2*3/4 ~ g2*3/2 f2*4/2 ees2*5/2 d2 ees4 \divisioMaior
f2 g2 ~ g2*4/2 bes2*3/2 ~ bes4 ~ bes2*3/2 ~ bes2*5/2 ~ bes2 c'2*3/2 bes4 a4 \finalis
}

bassMusic = {
r2*25/4 f2*3/2 ~ \divisioMinima
f4 ees2*4/2 ~ ees2 ~ ees2 ~ ees2*4/2 d2*3/2 c2 ~ c2 d2*3/2 ~ d2*3/2 \divisioMaxima
c4 ~ c2 bes,2*3/2 ~ bes,2 ~ bes,2*5/2 c2*5/2 ~ c2 d2 ees2*3/2 g2 f4 \divisioMaior
ees2 ~ ees2*4/2 f4 ~ \divisioMinima
f4 ~ f2*3/2 ees2 ~ ees2 ~ ees2 d2*3/2 ~ d2*5/2 ~ d2*3/2 c2 bes,2*3/2 c2 ~ c2*3/2 \divisioMaxima
ees2 d2*3/2 c2 d2 ees2*3/2 g,2*4/2 \divisioMaior
bes,2 bes2 a,2 ~ a,2*5/2 g,2 ~ g,2 ~ g,2*3/2 ~ g,4 ~ g,2*4/2 \divisioMaior
c2 ~ c2*4/2 d2 ees2*3/4 c2*3/2 ~ c2*4/2 ~ c2*5/2 ~ c2 ~ c4 \divisioMaior
d2 ees2 ~ ees2*4/2 ~ ees2*3/2 d4 c2*3/2 bes,2*5/2 c2 ~ c2*3/2 f2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
        "VIII."
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
