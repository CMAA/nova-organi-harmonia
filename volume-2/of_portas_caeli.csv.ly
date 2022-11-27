\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.20
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Portas caeli" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Portas caeli"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Portas caeli" }
    \line {}
  }
}

chantText = \lyricmode {
Por -- tas cœ -- _ li 
\set stanza = " * " a -- pé -- _ ru -- it Dó -- _ _ mi -- nus: 
et plu -- it il -- lis _ man -- na, _ ut _ é -- de -- rent: 
pa -- nem cœ -- _ _ li de -- _ _ dit il -- lis: 
pa -- nem _ An -- ge -- ló -- _ _ rum 
man -- du -- cá -- vit ho -- _ _ _ _ mo, 
al -- le -- _ lú -- _ ia. _ }

chantMusic = {
\tieDown   ees'4 f'4 g'4 bes'4 ( bes'4 g'4) f'4 ( a'4 g'4 f'4 g'4) \divisioMinima
 ees'4 ( f'4) f'4 g'4 ( bes'4 a'4) bes'4 ( a'4) a'4 a'4 ( c''4) d''4 ( bes'4) ~ bes'4 ( g'4 \forceBreak
) g'4 ( bes'4 g'4) f'4 ( g'4 f'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 g'4 bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 a'4) a'4 ( a'4 bes'4) f'4 ( g'4 f'4) ~ f'4 ( ees'4) \divisioMinima
 f'4 g'4 ( bes'4 a'4) bes'4 ( bes'4 a'4 g'4 \forceBreak
) a'4 ( g'4) g'4 \divisioMaxima
 ees'4 ( g'4) bes'4 ( d''4 c''4 bes'4) bes'4 ( bes'4 bes'4) c''4 ( bes'4) c''4 ( bes'4 bes'4) f'4 ( g'4) \divisioMinima
 g'4 bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( f'4) f'4 ( ees'4 f'4 \forceBreak
) f'4 ( g'4 a'\prall bes'4 a'4 g'4) \divisioMaxima
 bes'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) bes'4 g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) f'4 ( g'4 f'4) \divisioMaior
 g'4 f'4 ( ees'4 \forceBreak
) f'4 ( g'4 f'4) g'4 ( a'4 g'4) a'4 ( c''4 bes'4) c''4 ( bes'4) ~ bes'4 ( f'4) bes'4 ( a'4 g'4) a'4 ( g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 g'4 g'4 ( f'4) g'4 ( d'4) g'4 ( f'4) g'4 ( a'4 \tiny g' f' 4) f'4 g'4 ( g'4 a'4 f'4) \finalis

}

altoMusic = {
ees'2*3/2 d'2*3/2 c'2*4/2 d'4 \divisioMinima
ees'2 d'2*6/2 ~ d'4 f'2*3/2 ~ f'2*3/2 ees'2*3/2 c'2*3/2 \divisioMaior
d'2 ~ d'2*3/2 ~ d'2 f'2*4/2 ~ f'2*3/2 ~ f'4 r2*4/2 \divisioMinima
d'2*4/2 ~ d'2*4/2 ~ d'2 ~ d'4 \divisioMaxima
ees'2 f'2*4/2 ~ f'2*5/2 d'2*3/2 ~ d'2 ~ \divisioMinima
d'4 ees'2 d'2 c'2 r2*3/2 d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMaxima
d'4 ~ d'2 ees'2*3/2 f'2*3/2 ees'2 d'2*3/2 c'2*3/2 \divisioMaior
d'4 c'2 ~ c'2*3/2 d'2*3/2 f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 d'2*4/2 ~ d'2 ~ \divisioMaior
d'4 ~ d'2*3/2 ~ d'4 ees'2*6/2 ~ ees'4 c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
r2*6/2 a2*4/2 bes4 ~ \divisioMinima
bes2 ~ bes2*6/2 c'4 ~ c'2*3/2 bes2*3/2 ~ bes2*3/2 a2*3/2 \divisioMaior
g2 bes2*3/2 ~ bes2 ~ bes2*4/2 c'2*3/2 bes2 ~ bes2*3/2 ~ \divisioMinima
bes2*4/2 ~ bes2*4/2 c'2 bes4 \divisioMaxima
g2 f2*4/2 bes2*5/2 a2*3/2 bes2*3/2 ~ bes2 ~ bes2 a2 bes2*3/2 ~ bes2*3/2 c'2 bes4 \divisioMaxima
g4 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g2*3/2 a2*3/2 \divisioMaior
bes4 ~ bes2 a2*3/2 bes2*3/2 c'2*4/2 d'2*3/2 c'2*3/2 bes2*4/2 a2 ~ \divisioMaior
a4 bes2*4/2 ~ bes2*6/2 ~ bes2*4/2 a4 \finalis
}

bassMusic = {
c'2*3/2 g2*3/2 ~ g2*4/2 ~ g4 ~ \divisioMinima
g2 ~ g2*6/2 ~ g4 f2*3/2 g2*3/2 ~ g2*3/2 a2*3/2 \divisioMaior
r2 a2*3/2 g2 d2*4/2 ~ d2*3/2 ~ d2 g2*3/2 \divisioMinima
r2*4/2 g2*4/2 ~ g2 ~ g4 \divisioMaxima
c2 d2*4/2 ~ d2*5/2 g2*3/2 ~ g2*3/2 ~ g2 ~ g2 a2 g2*3/2 ~ g2*3/2 ~ g2 ~ g4 \divisioMaxima
r4 f2 ees2*3/2 d2*3/2 c2 g2*3/2 r2*3/2 \divisioMaior
r2*6/2 g2*3/2 f2*4/2 d2*3/2 ~ d2*3/2 ~ d2*4/2 ~ d2 ~ \divisioMaior
d4 bes,2*4/2 c2*6/2 f2*4/2 ~ f4 \finalis
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
        "8"
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
