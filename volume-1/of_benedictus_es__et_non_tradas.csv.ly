\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.297
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedictus es... et non tradas" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedictus es... et non tradas"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedictus es... et non tradas" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- ne -- dí -- ctus es, 
\set stanza = " * " Dó -- mi -- ne, 
do -- ce me ju -- sti -- _ fi -- ca -- ti -- ó -- _ _ _ nes tu -- _ as: 
et non tra -- das ca -- lu -- mni -- án -- ti -- bus me su -- _ pér -- bis: 
et re -- spon -- dé -- bo ex -- pro -- brán -- ti -- bus _ mi -- _ hi _ ver -- _ bum. }

chantMusic = {
\tieDown   f'4 f'4 a'4 ( c''4 bes'4) g'4 ( a'\prall bes'4) bes'4 ( a'4)  a'4 a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaior
 bes'4 bes'4 ( a'4) bes'4 ( a'4 \forceBreak
) g'4 g'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 f'4 f'4 bes'4 ( bes'4) ~ bes'4 ( g'4) c''4 ( bes'4 a'4 bes'4) a'4 ( g'4) ees'4 ( g'4 a'\prall bes'4 a'4 g'4) a'4 ( g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima \forceBreak

 f'4 ( g'4) f'4 ( a'\prall bes'4 bes'4) a'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( a'4 g'4) a'4 ( bes'4 \once \tweak #'font-size #-4 g' ) bes'4 \divisioMinima
 g'4 ( a'4 bes'4 a'4) c''4 ( d''4 c''4 \forceBreak
) a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaxima
 a'4 f'4 g'4 bes'4 ( c''4) c''4 ( bes'4) \divisioMinima
 bes'4 bes'4 ( g'4 a'\prall bes'4) bes'4 ( c''4 bes'4 bes'4) g'4 \forceBreak
 g'4 ( f'4) g'4 ( a'\prall bes'4 a'4) bes'4 ( g'4) c''4 ( bes'4 a'4) bes'4 ( bes'4 a'4 g'4 a'\prall bes'4 a'4.) g'4 ( a'4 g'4 f'4) f'4 ( g'4) bes'4 ( g'4 a'4) g'4 ( f'4) \finalis

}

altoMusic = {
r4 f'4 ~ f'2*3/2 ~ f'2*3/2 ~ f'2 ees'4 f'2*4/2 ~ f'2 \divisioMaior
d'4 ~ d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 ~ d'4 f'2 ~ f'2 ees'2*4/2 ~ ees'2 ~ ees'2*3/2 f'2*3/2 d'2*4/2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 ees'2 f'2 ~ f'2 ~ f'4 d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMinima
f'2*4/2 ~ f'2*3/2 ~ f'2*4/2 ~ f'2 ~ \divisioMaxima
f'2*3/2 ~ f'2 g'2 ~ \divisioMinima
g'4 f'2*4/2 ees'2*5/2 d'2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 c'2*5/4 f'2*4/2 ~ f'2 ees'2*3/2 c'2 \finalis
}

tenorMusic = {
f2 c'2*3/2 bes2*3/2 c'2 bes4 c'2*4/2 d'2 ~ \divisioMaior
d'4 c'2 bes2 ~ bes2 g2*3/2 a2*4/2 bes4 f2 g2 ~ g2*4/2 c'2 bes2*3/2 ~ bes2*3/2 f2*4/2 a2 \divisioMaxima
bes2 a2 g2 ~ g2 ~ g2 bes2 c'4 ~ c'2*3/2 bes2*3/2 ~ bes4 ~ \divisioMinima
bes2*4/2 a2*3/2 c'2*4/2 d'2 \divisioMaxima
c'2*3/2 bes2 ~ bes2 ~ \divisioMinima
bes4 ~ bes2*4/2 ~ bes2*5/2 a2 c'2*4/2 bes2 a2*3/2 g2*3/2 ~ g2 ~ g2*5/4 bes2*4/2 ~ bes2 ~ bes2*3/2 ~ bes4 a4 \finalis
}

bassMusic = {
r2 d2*3/2 ~ d2*3/2 ~ d2 ~ d4 ~ d2*4/2 ~ d2 \divisioMaior
g4 ~ g2 ~ g2 ~ g2 ~ g2*3/2 d2*4/2 ~ d4 ~ d2 ~ d2 c2*4/2 ~ c2 ~ c2*3/2 d2*3/2 ~ d2*4/2 ~ d2 \divisioMaxima
bes,2 ~ bes,2 ~ bes,2 c2 d2 ~ d2 ~ d4 g2*3/2 ~ g2*3/2 ~ g4 \divisioMinima
d2*4/2 ~ d2*3/2 ~ d2*4/2 ~ d2 ~ \divisioMaxima
d2*3/2 ~ d2 ees2 ~ \divisioMinima
ees4 d2*4/2 c2*5/2 d2 g2*4/2 ~ g2 ~ g2*3/2 ~ g2*3/2 f2 ees2*5/4 d2*4/2 c2 ~ c2*3/2 f2 \finalis
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
