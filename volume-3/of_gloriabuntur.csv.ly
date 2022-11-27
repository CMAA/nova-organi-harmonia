\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.228
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Gloriabuntur" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Gloriabuntur"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Gloriabuntur" }
    \line {}
  }
}

chantText = \lyricmode {
Glo -- _ ri -- a -- _ _ bún -- _ _ _ _ tur 
\set stanza = " * " in te o -- _ _ _ mnes 
qui dí -- li -- gunt no -- men _ tu -- um, 
quó -- ni -- am tu, Dó -- _ _ mi -- _ ne, 
be -- ne -- dí -- ces _ _ ju -- sto: 
Dó -- mi -- ne, _ 
ut scu -- to bo -- næ vo -- lun -- tá -- tis _ tu -- æ 
co -- ro -- _ ná -- sti nos. }

chantMusic = {
\tieDown   d'4 f'4 ( f'4 f'4) f'4 ( g'4 f'4 d'4) d'4 f'4 ( f'4 f'4) ~ f'4 ( g'4 f'4) c'4 ( d'4) f'4 ( f'4) g'4 ( f'4) ~ f'4 ( f'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 f'4 ( g'4 a'4)  a'4 c''4 ( c''4 a'4.) g'4 ( bes'4 a'4 g'4 f'4) ~ f'4 ( g'4 f'4) f'4 \divisioMaior
 d'4 ( f'4) f'4 ( f'4 f'4) d'4 ( e'\prall f'4 e'4 d'4 c'4 d'4) d'4 ( c'4) \divisioMinima
 f'4 ( f'4 e'4) g'4 c''4 ( c''4 a'4 b'\prall c''4) f'4 ( g'4 f'4) f'4 \divisioMaxima
  f'4 ( g'\prall a'4 bes'4) a'4 a'4 a'4  a'4 c''4 ( c''4 a'4) bes'4 ( c''4) g'4 ( f'4) ~ f'4 ( g'4 f'4) f'4 \divisioMaior
 f'4 d'4 ( f'4) f'4 f'4 ( g'4) a'4 ( g'4) a'4 ( g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 a'4 ( c''4 a'4) a'4 a'4 ( c''4 a'4) c''4 ( g'4 f'4 g'4) \divisioMaior
 f'4 ( g'\prall a'4 \once \tweak #'font-size #-4 g' ) a'4 f'4 g'4 f'4 f'4 d'4 ( f'4) d'4 ( f'4) f'4 ( f'4) g'4 ( f'4) d'4 ( e'\prall f'4 e'4 d'4 c'4 d'4) d'4 ( c'4) \divisioMaior
 f'4 ( f'4 e'4) g'4 c''4 ( c''4 a'4 b'\prall c''4) f'4 f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
r4 a2*3/2 d'2*5/2 c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2*4/2 bes2*4/2 a4 ~ \divisioMinima
a4 c'2*4/2 ~ c'2*7/4 d'2*4/2 ~ d'2*4/2 ~ d'4 \divisioMaior
a2 c'2*3/2 bes2*7/2 g2 \divisioMinima
c'2*4/2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 d'2*8/2 c'2*6/2 ~ c'2*4/2 bes4 ~ \divisioMaior
bes4 ~ bes2 ~ bes4 c'2*4/2 ~ c'2 d'2 c'2*4/2 a2 \divisioMaxima
c'2*4/2 ~ c'2*3/2 ~ c'2*4/2 ~ \divisioMaior
c'2*4/2 ~ c'2*4/2 ~ c'4 bes2 a2 d'2*4/2 c'2*7/2 bes2 \divisioMaior
c'2*4/2 ~ c'2 ~ c'2*3/2 ~ c'4 bes2*3/2 a4 \finalis
}

tenorMusic = {
f4 ~ f2*3/2 ~ f2*5/2 ~ f2*3/2 e2*3/2 d2 c2*4/2 f2*4/2 ~ f4 ~ \divisioMinima
f4 ~ f2*4/2 e2*7/4 d2*4/2 g2*4/2 a4 \divisioMaior
f2 ~ f2*3/2 ~ f2*7/2 e2 \divisioMinima
g2*4/2 ~ g2 ~ g2*3/2 ~ g2*3/2 a4 f2*8/2 ~ f2*6/2 d2*4/2 ~ d4 ~ \divisioMaior
d4 g2 f4 ~ f2*4/2 e2 d2 e2*4/2 c2 \divisioMaxima
f2*4/2 ~ f2*3/2 g2*4/2 \divisioMaior
a2*4/2 f2*4/2 ~ f4 ~ f2 ~ f2 ~ f2*4/2 ~ f2*7/2 ~ f2 ~ \divisioMaior
f2*4/2 e2 d2*3/2 c4 d2*3/2 c4 \finalis
}

bassMusic = {
d4 ~ d2*3/2 bes,2*5/2 a,2*3/2 ~ a,2*3/2 ~ a,2 ~ a,2*4/2 g,2*4/2 f,4 ~ \divisioMinima
f,4 a,2*4/2 ~ a,2*7/4 bes,2*4/2 ~ bes,2*4/2 d4 ~ \divisioMaior
d2 a,2*3/2 bes,2*7/2 c2 ~ \divisioMinima
c2*4/2 d2 e2*3/2 f2*3/2 ~ f4 bes,2*8/2 a,2*6/2 ~ a,2*4/2 g,4 ~ \divisioMaior
g,4 ~ g,2 ~ g,4 a,2*4/2 ~ a,2 bes,2 c2*4/2 f,2 \divisioMaxima
r2*4/2 d2*3/2 e2*4/2 \divisioMaior
f2*4/2 e2*4/2 d4 ~ d2 c2 bes,2*4/2 a,2*7/2 g,2 \divisioMaior
a,2*4/2 ~ a,2 ~ a,2*3/2 ~ a,4 bes,2*3/2 f,4 \finalis
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
        "VI"
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
