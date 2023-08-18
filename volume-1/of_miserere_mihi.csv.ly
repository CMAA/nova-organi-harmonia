\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.214
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Miserere mihi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Miserere mihi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Miserere mihi" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- se -- ré -- re mi -- hi 
\set stanza = " * " Dó -- mi -- ne, _ _ 
se -- cún -- _ dum ma -- _ gnam mi -- se -- ri -- cór -- _ di -- am _ tu -- am: 
de -- _ le Dó -- _ mi -- ne _ 
in -- i -- qui -- tá -- tem me -- am. }

chantMusic = {
\tieDown   f'4 g'4 ( a'\prall bes'4) bes'4 a'4 ( bes'4 g'4 f'4) g'4 ( bes'4) bes'4 ( a'4) \divisioMinima
 bes'4 ( bes'4 bes'4) g'4 ( f'4) f'4 ( f'4 f'4) bes'4 ( a'4 g'4) a'4 ( f'4) \divisioMaior \forceBreak

 f'4 f'4 bes'4 ( bes'4 bes'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4. ees'4 ( f'4 g'4) f'4 ( g'4) \divisioMinima
 f'4 ( ees'4) f'4 g'4 ( bes'4) bes'4 ( bes'4) ~ bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 a'4 ( bes'4 c''4 bes'4 \forceBreak
) c''4 ( d''4 c''4) a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaxima
 f'4 bes'4 ( bes'4 bes'4) f'4 f'4 ( g'4) a'4 ( g'4 a'4) f'4 d'4 ( f'4 ees'4 ees'4) c'4 ( d'4 c'4) \divisioMaior
 g'4 g'4 g'4 \forceBreak
 g'4 ( f'4) g'4 ( a'4 \once \tweak #'font-size #-4 g' ) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 ~ d'4 ~ d'2*4/2 ~ d'2 f'2 ~ \divisioMinima
f'2*3/2 ees'2 c'2*3/2 d'2*3/2 ~ d'2 ~ \divisioMaior
d'4 f'4 ~ f'2*3/2 d'2 bes2*9/4 d'2 \divisioMinima
c'2*3/2 d'2 ees'2 ~ ees'2*3/2 f'2*4/2 ~ f'2*3/2 ~ f'2*4/2 ~ f'2 ~ \divisioMaxima
f'4 ~ f'2*3/2 ~ f'4 d'2 c'2*4/2 bes2*4/2 g2 ~ g4 \divisioMaior
c'2*3/2 d'2*5/2 c'2*6/2 ~ c'2 \finalis
}

tenorMusic = {
bes4 ~ bes2*3/2 ~ bes4 c'2*4/2 bes2 c'2 \divisioMinima
bes2*3/2 ~ bes2 a2*3/2 g2*3/2 r2*3/2 c'4 bes2*3/2 a2 g2*9/4 bes2 \divisioMinima
g2*3/2 ~ g2 ~ g2 c'2*3/2 ~ c'2*4/2 bes2*3/2 c'2*4/2 d'2 \divisioMaxima
r4 f2*4/2 ~ f2 ~ f2*4/2 ~ f2*4/2 ~ f2 ees4 ~ \divisioMaior
ees2*3/2 bes2*5/2 ~ bes2*6/2 a2 \finalis
}

bassMusic = {
r4 a2*3/2 g4 ~ g2*4/2 ~ g2 f2 \divisioMinima
g2*3/2 ~ g2 ~ g2*3/2 ~ g2*3/2 d2 ~ \divisioMaior
d2 ~ d2*3/2 ~ d2 ees2*9/4 bes,2 ~ \divisioMinima
bes,2*3/2 ~ bes,2 c2 ~ c2*3/2 d2*4/2 ~ d2*3/2 ~ d2*4/2 ~ d2 ~ \divisioMaxima
d4 ~ d2*4/2 bes,2 a,2*4/2 g,2*4/2 c2 ~ c4 ~ \divisioMaior
c2*3/2 bes,2*5/2 f2*6/2 ~ f2 \finalis
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
        "VIII"
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
