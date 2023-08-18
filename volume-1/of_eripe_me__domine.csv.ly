\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.329
%(volume.page)

global = {
 \key aes \locrian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Eripe me... Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Eripe me... Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Eripe me... Domine" }
    \line {}
  }
}

chantText = \lyricmode {
E -- ri -- pe me 
\set stanza = " * " de in -- i -- mí -- cis me -- is, _ Dó -- _ _ mi -- ne: 
ad _ te _ con -- fú -- gi, _ _ 
do -- ce me _ _ fá -- ce -- re vo -- lun -- tá -- tem _ tu -- _ _ am: 
qui -- a De -- us _ me -- _ _ us es _ _ tu. }

chantMusic = {
\tieDown   d'4 ( ees'4 f'4) g'4 ( f'4 g'4) f'4 ( ees'4 f'4) d'4 ( ees'4 c'4) \divisioMinima
 f'4 ( bes'4) bes'4 ( bes'4 bes'4) bes'4 ( g'4) a'4 ( c''4) bes'4 ( c''4 bes'4 g'4) bes'4 ( g'4 \forceBreak
) bes'4 ( g'4) bes'4 ( a'4 f'4) \divisioMinima
 f'4 ( a'4 g'4 f'4) g'4 ( ees'4) ~ ees'4 ( d'4) d'4 ( f'4 ees'4 d'4) d'4 \divisioMaxima
 ees'4 ( ees'4) ~ ees'4 ( ees'4) ees'4 ( ees'4) ~ ees'4 ( ees'4) ees'4 ( \once \tweak #'font-size #-4 c' ) ees'4 ( g'4 \forceBreak
)  f'4 ( aes'4 g'4) aes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 f'4 g'4 ( bes'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( a'\prall bes'4 c''4 bes'4 a'4) bes'4 ( a'4) a'4 \divisioMinima
 a'4 ( bes'4) bes'4 \forceBreak
 bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4 c''4) c''4 ( bes'4) d''4 ( c''4 bes'4) c''4 ( bes'4 a'4) a'4 \divisioMaxima
 a'4 ( bes'4) bes'4 bes'4 ( a'4) bes'4. a'4 ( bes'4 g'4 a'4 \forceBreak
) g'4. f'4 ( g'4) bes'4 ( d''4 c''4) c''4 \divisioMinima
 c''4 ( bes'4) d''4 ( c''4 bes'4) c''4 ( bes'4 a'4) a'4 \finalis

}

altoMusic = {
bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 \divisioMinima
f'2 ~ f'2*3/2 ees'2 ~ ees'2 f'2*4/2 ~ f'2 ~ f'2 ~ f'2 ~ f'4 \divisioMinima
d'2*5/2 c'2*3/2 bes2*4/2 ~ bes4 \divisioMaxima
g2 c'2 bes2 ~ bes2 aes2 bes2 c'2*4/2 bes2*3/2 ~ \divisioMaxima
bes4 c'2 d'2*3/4 f'2 ~ f'2 ees'2*6/2 ~ ees'2 f'4 ~ \divisioMinima
f'2*3/2 ~ f'4 ees'2 g'2*3/2 f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'4 ~ \divisioMaxima
f'2*3/2 ~ f'2 ~ f'2*3/4 ees'2*4/2 d'2*3/4 f'2 ~ f'2*3/2 ~ f'4 ~ \divisioMinima
f'2 ~ f'2*3/2 ees2*3/2 f'4 \finalis
}

tenorMusic = {
g2*3/2 ees2*3/2 f2*3/2 g2*3/2 \divisioMinima
f2 g2*3/2 ~ g2 c'2 ~ c'2*4/2 bes2 g2 f2 a4 ~ \divisioMinima
a2*5/2 g2*3/2 ~ g2*4/2 f4 \divisioMaxima
ees2 ~ ees2 ~ ees2 ~ ees2 ~ ees2 ~ ees2 ~ ees2*4/2 ~ ees2*3/2 \divisioMaxima
d4 ees2 f2*3/4 ~ f2 g2 ~ g2*6/2 c'2 ~ c'4 \divisioMinima
bes2*3/2 ~ bes4 ~ bes2 c'2*3/2 ~ c'2 bes2*3/2 a2*3/2 c'4 \divisioMaxima
d'2*3/2 c'2 bes2*3/4 ~ bes2*4/2 a2*3/4 bes2 g2*3/2 a4 \divisioMinima
bes2 a2*3/2 g2*3/2 d'4 \finalis
}

bassMusic = {
r2*6/2 d2*3/2 c2*3/2 \divisioMinima
d2 ~ d2*3/2 c2 ~ c2 d2*4/2 ~ d2 ~ d2 ~ d2 ~ d4 \divisioMinima
bes,2*5/2 ~ bes,2*3/2 ~ bes,2*4/2 ~ bes,4 \divisioMaxima
c2 aes,2 ~ aes,2 g,2 f,2 g,2 aes,2*4/2 g,2*3/2 \divisioMaxima
bes,4 ~ bes,2 ~ bes,2*3/4 d2 ~ d2 c2*6/2 ~ c2 d4 ~ \divisioMinima
d2*3/2 g4 ~ g2 ees2*3/2 d2 ~ d2*3/2 f2*3/2 ~ f4 \divisioMaxima
d2*3/2 ~ d2 ~ d2*3/4 c2*4/2 d2*3/4 ~ d2 f2*3/2 ~ f4 \divisioMinima
d2 ~ d2*3/2 ~ d2*3/2 ~ d4 \finalis
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
