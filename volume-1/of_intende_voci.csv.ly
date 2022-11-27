\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.245
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Intende voci" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Intende voci"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Intende voci" }
    \line {}
  }
}

chantText = \lyricmode {
In -- tén -- _ _ de 
\set stanza = " * " vo -- _ _ ci o -- ra -- ti -- ó -- nis _ me -- æ, 
Rex me -- us, et De -- us me -- _ _ _ _ _ _ _ _ _ us: 
quó -- _ _ ni -- am ad te _ o -- rá -- _ bo, _ 
Dó -- _ _ _ _ _ mi -- ne. }

chantMusic = {
\tieDown   g'4  g'4 ( f'4) aes'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 ees' ) f'4 ( ees'4)  ees'4 ( f'4 ees'4) ~ ees'4 ( ees'4) f'4 ( ees'4) ees'4 \divisioMinima
 ees'4 f'4 g'4 ( a'\prall bes'4) bes'4 ( c''4 bes'4 bes'4) g'4 ( f'4 \forceBreak
) bes'4 ( bes'4 g'4 a'\prall bes'4) ees'4 ( f'4 ees'4) ees'4 \divisioMaxima
 ees'4 ( f'4) f'4 ( g'4 a'\prall bes'4 a'4 g'4) g'4 ( a'4) \divisioMinima
 f'4 ( g'4) g'4 ( a'4 bes'4 a'4 g'4) f'4 ( g'4) g'4 \forceBreak
 bes'4 ( bes'4 bes'4) c''4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( f'4) \divisioMinima
 bes'4 ( bes'4 bes'4) c''4 ( bes'4) c''4 ( a'4) bes'4 ( g'4 f'4) g'4 ( a'\prall bes'4 g'4) g'4 \divisioMaxima
 ees'4 ( g'4 bes'4) ~ bes'4 ( bes'4 c''\prall d''4 c''4 \forceBreak
) d''4 ( c''4 bes'4) bes'4 ( c''4 d''4 c''4 bes'4 c''4) c''4 ( bes'4) \divisioMinima
 bes'4 ( c''4) bes'4 ( c''4 d''4 c''4 bes'4) ~ bes'4 ( a'4 g'4) g'4 ( bes'4) ees'4 ( g'4 bes'4) c''4 ( bes'4 c''4) a'4 ( bes'4) c''4 ( g'4) \divisioMaior \forceBreak

 ees'4 ( f'\prall g'4 f'4 g'4) bes'4 ( bes'4 bes'4) c''4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( f'4.) ~ f'4 ( bes'4 a'4 g'4 bes'4) ees'4 ( f'4 ees'4) ees'4 \finalis

}

altoMusic = {
g'4 c'2*3/2 ~ c'2*5/2 bes2*3/2 c'2 bes2 ~ bes4 \divisioMinima
ees'2 d'2*3/2 f'2*6/2 ees'2*5/2 bes2*3/2 ~ bes4 \divisioMaxima
ees'2 d'2*6/2 f'2 ~ \divisioMinima
f'2 d'2*5/2 ~ d'2 ~ d'4 ~ d'2*3/2 ~ d'2*3/2 f'2*3/2 ~ \divisioMinima
f'2*3/2 ees'2 d'2 ~ d'2*3/2 ~ d'2*4/2 ~ d'4 \divisioMaxima
ees'2*3/2 d'2*5/2 f'2*3/2 g'2*6/2 f'2 \divisioMinima
ees'2 f'2*4/2 ~ f'2*4/2 ees'2 ~ ees'2*3/2 g'2*3/2 f'2 d'2 \divisioMaior
ees'2*5/2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/4 f'2*5/2 bes2*3/2 ~ bes4 \finalis
}

tenorMusic = {
g4 aes2*3/2 ~ aes2*5/2 ~ aes2*3/2 ~ aes2 ~ aes2 r4 \divisioMinima
bes2 ~ bes2*3/2 ~ bes2*6/2 ~ bes2*5/2 aes2*3/2 g4 \divisioMaxima
bes2 ~ bes2*6/2 c'2 ~ \divisioMinima
c'2 ~ c'2*5/2 bes2 a4 g2*3/2 a2*3/2 bes2*3/2 ~ \divisioMinima
bes2*3/2 ~ bes2 a2 g2*3/2 a2*4/2 bes4 ~ \divisioMaxima
bes2*3/2 ~ bes2*5/2 ~ bes2*3/2 ~ bes2*6/2 ~ bes2 ~ \divisioMinima
bes2 ~ bes2*4/2 ~ bes2*4/2 ~ bes2 c'2*3/2 ~ c'2*3/2 ~ c'2 bes2 ~ \divisioMaior
bes2*5/2 ~ bes2*3/2 a2*3/2 g2 a2*3/4 bes2*5/2 f2*3/2 g4 \finalis
}

bassMusic = {
r2*16/2 g4 ~ \divisioMinima
g2 ~ g2*3/2 d2*6/2 c2*5/2 ees2*3/2 ~ ees4 \divisioMaxima
g2 ~ g2*6/2 f2 ~ \divisioMinima
f2 g2*5/2 ~ g2 ~ g4 ~ g2*3/2 ~ g2*3/2 d2*3/2 \divisioMinima
g2*3/2 ~ g2 ~ g2 ~ g2*3/2 ~ g2*4/2 ~ g4 ~ \divisioMaxima
g2*3/2 ~ g2*5/2 d2*3/2 ees2*6/2 d2 \divisioMinima
c2 d2*4/2 g2*4/2 ~ g2 c2*3/2 ees2*3/2 d2 g2 ~ \divisioMaior
g2*5/2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g2*3/4 d2*5/2 ees2*3/2 ~ ees4 \finalis
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
