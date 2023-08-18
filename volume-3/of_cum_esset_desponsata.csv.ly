\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.391
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Cum esset desponsata" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Cum esset desponsata"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Cum esset desponsata" }
    \line {}
  }
}

chantText = \lyricmode {
Cum es -- set _ 
\set stanza = " * " de -- spon -- sá -- ta ma -- ter e -- jus 
Ma -- rí -- _ _ _ a Jo -- _ _ _ seph, _ _ _ 
in -- vén -- ta est _ _ _ 
in ú -- te -- ro ha -- _ _ bens 
de Spí -- _ ri -- tu San -- _ _ _ cto. }

chantMusic = {
\tieDown   f'4 ( g'4) g'4 g'4 ( bes'4 g'4) ~ g'4 ( f'4)  f'4 a'4 ( c''4 bes'4) bes'4 ( g'4 a'\prall bes'4) bes'4 ( a'4) \divisioMinima
 bes'4 ( a'4) f'4 ( g'4) g'4 ( a'4 \tiny g' f' 4) g'4 ( f'4) \divisioMaior
 f'4 ( g'4) g'4 bes'4 ( bes'4) ~ bes'4 ( g'4) c''4 ( bes'4 a'4 bes'4) a'4 ( g'4) \divisioMinima
 f'4 ( g'4) bes'4 ( bes'4) c''4 ( d''4 bes'4) ~ bes'4 ( bes'4 g'4 a'\prall bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( g'4 g'4) ees'4 ( f'4 ees'4) \divisioMaxima
 d'4 ( ees'4) f'4 ( g'4 a'4) g'4 ( f'4 g'4) g'4 bes'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 g'4 ( bes'4 g'4 a'\prall bes'4) f'4 ees'4 ( g'4 f'4) bes'4. a'4 ( bes'4) c''4 ( bes'4 c''4) a'4 ( a'4 bes'4) \divisioMaior
 f'4 ( g'4) f'4 bes'4 ( bes'4 bes'4) bes'4 c''4 ( a'4 bes'4)  g'4 ( f'4) g'4 ( aes'4 f'4 ees'4) f'4 ( g'4 ees'4 d'4) ees'4 ( f'4 ees'4 d'4) d'4 \finalis

}

altoMusic = {
d'2*5/2 ~ d'2*4/2 f'2*3/2 ~ f'2*4/2 ~ f'2 ~ \divisioMinima
f'2*4/2 ~ f'2*4/2 d'2 ~ \divisioMaior
d'2*3/2 ~ d'2 ees'2 ~ ees'2*4/2 ~ ees'2 \divisioMinima
f'2 ~ f'2 ~ f'2*3/2 d'2 ~ d'2*4/2 f'2 ees'2*3/2 d'2*3/2 r2*3/2 \divisioMaxima
r2*8/2 d'4 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMaior
d'4 ees'2 ~ ees'2*4/2 ~ ees'2*3/2 f'2*7/4 ~ f'2*3/2 ~ f'2*3/2 ~ \divisioMaior
f'4 g'4 f'4 ~ f'2*4/2 ees'2*3/2 d'2 c'2*4/2 ~ c'2*4/2 ~ c'2*4/2 bes4 \finalis
}

tenorMusic = {
bes2*3/2 g2 a2*4/2 bes2*3/2 c'2*4/2 d'2 \divisioMinima
c'2*4/2 bes2*4/2 a2 ~ \divisioMaior
a2*3/2 g2 ~ g2 a2*4/2 bes2 ~ \divisioMinima
bes2 d'2 c'2*3/2 ~ c'2 bes2*4/2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 g2*3/2 \divisioMaxima
d'2 c'2*6/2 ~ c'4 bes2*3/2 a2*3/2 ~ \divisioMaior
a4 c'2 bes2*4/2 g2*3/2 f2*7/4 a2*3/2 c'2 bes4 \divisioMaior
a2 g4 f2*4/2 g2*3/2 ~ g2 aes2*4/2 g2*4/2 f2*4/2 ~ f4 \finalis
}

bassMusic = {
bes,2*3/2 ~ bes,2 d2*4/2 ~ d2*3/2 ~ d2*4/2 ~ d2 ~ \divisioMinima
d2*4/2 ~ d2*4/2 ~ d2 \divisioMaior
bes,2*3/2 ~ bes,2 c2 ~ c2*4/2 ~ c2 \divisioMinima
d2 ~ d2 ~ d2*3/2 g2 ~ g2*4/2 d2 c2*3/2 bes,2*3/2 c2*3/2 \divisioMaxima
bes2 a2*6/2 g4 ~ g2*3/2 d2*3/2 ~ \divisioMaior
d4 c2 ~ c2*4/2 ~ c2*3/2 d2*7/4 ~ d2*3/2 ~ d2 ~ d4 ~ \divisioMaior
d2*3/2 ~ d2*4/2 c2*3/2 bes,2 aes,2*4/2 ~ aes,2*4/2 bes,2*4/2 ~ bes,4 \finalis
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
