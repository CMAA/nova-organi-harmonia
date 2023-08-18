\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.66
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sederunt principes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sederunt principes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sederunt principes" }
    \line {}
  }
}

chantText = \lyricmode {
Se -- dé -- _ runt 
\set stanza = " * " prín -- ci -- pes, _ _ 
et ad -- vér -- sum me _ _ lo -- que -- bán -- _ tur: 
et in -- í -- qui per -- se -- cú -- ti sunt me. _ _ _ _ ℣. 
Ad -- ju -- va me, Dó -- mi -- ne _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
De -- us _ _ me -- _ us: _ _ _ 
sal -- vum me fac prop -- ter mi -- se -- ri -- cór -- di -- am 
\set stanza = " * " tu -- _ am. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown  c'4 ees'4 ( ees'4) g'4 ( f'4 g'4) ees'4 ( f'4 ees'4) \divisioMinima
 ees'4 ( f'4 g'4) g'4 g'4 ( f'4 g'4 f'4 ees'4 ees'4) g'4 ( f'4 ees'4) f'4 ( ees'4) \divisioMaior
 ees'4 ees'4 f'4 g'4 \forceBreak
 bes'4 ( c''4 bes'4) c''4 ( bes'4 bes'4) g'4 ( a'4 g'4) \divisioMinima
 g'4 bes'4 ( bes'4) bes'4 ( bes'4) ~ bes'4 ( bes'4) g'4 \divisioMaxima
 g'4 bes'4 c''4 ( d''\prall ees''4) c''4 bes'4 bes'4 bes'4 a'4 ( bes'4 \forceBreak
) g'4 ( \once \tweak #'font-size #-4 f' ) ees'4 ( g'4 f'4.) bes'4 ( c''4 a'4 bes'4 g'4.) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis
 ees'4 ees'4 g'4  aes'4 bes'4 bes'4 c''4 ( bes'4 \forceBreak
) ~ bes'4 ( bes'4 g'4) bes'4. c''4 ( d''4 bes'4) \divisioMinima
 bes'4. c''4 ( d''4 c''4 bes'4.) c''4 ( d''4 bes'4 g'4.) a'4 ( bes'4 g'4 ees'4) \divisioMinima
 g'4 ( ees'4 g'4 f'4 ees'4.) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) c''4 ( a'4) bes'4 ( g'4 \forceBreak
) bes'4 ( c''4) ees''4 ( ees''4) ~ ees''4 ( bes'4) \divisioMaior
 g'4 ( bes'4 c''4) c''4 ( bes'4) d''4 ( ees''4 c''4) bes'4 ( bes'4 g'4) bes'4 ( g'4) bes'4 ( bes'4 bes'4) bes'4 ( g'4 a'\prall bes'4 c''4.) bes'4 ( c''4) d''4 ( bes'4 bes'4) c''4 ( c''4 bes'4) \divisioMaxima \forceBreak

 ees'4 ees'4 ees'4 ees'4 \divisioMinima
 ees'4 ees'4 ees'4 ees'4 ees'4 ees'4 ( g'4 f'4 ees'4) f'4 ( g'4) g'4  g'4 ( bes'4 a'4 g'4) bes'4 ( bes'4 bes'4) bes'4 ( bes'4 g'4) \divisioMinima \forceBreak

  aes'4 ( g'4) aes'4 ( f'4 ees'4.) g'4 ( aes'4 f'4 ees'4.) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
r4 bes2*8/2 \divisioMinima
c'2*4/2 bes2*9/2 ~ bes2 ~ \divisioMaior
bes2 d'2 f'2*3/2 ees'2*3/2 d'2 ~ d'4 ~ \divisioMinima
d'4 ees'2 f'2*4/2 d'4 \divisioMaxima
g'2 ~ g'2*4/2 ~ g'2 f'2*3/2 d'2 c'2 d'2*3/4 f'2*4/2 ees'2*3/4 bes2*6/2 ~ bes4 \finalis
r2 g'2 f'2 ~ f'2 g'2*9/4 ~ g'2*3/2 \divisioMinima
f'2*3/4 ees'2*9/4 d'2*9/4 ~ d'2 ees'2 \divisioMinima
c'2*4/2 ~ c'2*3/4 ~ c'2*4/2 f'2 ees'2 d'2 g'2 ~ g'2 f'4 ees'4 \divisioMaior
d'2*3/2 ~ d'2 g'2*3/2 f'2*3/2 ees'2 ~ ees'2*3/2 f'2*4/2 ~ f'2*3/4 g'2*5/2 f'2*3/2 \divisioMaxima
bes2*4/2 ~ \divisioMinima
bes2*5/2 c'2*7/2 d'2*4/2 ees'2*3/2 c'2*3/2 ~ c'2*4/2 ~ c'2*3/4 ~ c'2*3/2 ~ c'2*3/4 ~ c'2 f'2*3/4 g'2 ees'2*3/2 c'2*4/2 bes2 ~ bes4 \finalis
}

tenorMusic = {
ees4 ~ ees2*8/2 ~ \divisioMinima
ees2*4/2 ~ ees2*9/2 g2 ~ \divisioMaior
g2 ~ g2 ~ g2*3/2 ~ g2*3/2 a2 bes4 ~ \divisioMinima
bes2*3/2 ~ bes2*4/2 ~ bes4 \divisioMaxima
ees'2 d'2*4/2 c'2 ~ c'4 bes2 ~ bes2 ~ bes2 ~ bes2*3/4 ~ bes2*4/2 ~ bes2*3/4 g2*4/2 aes2 g4 \finalis
ees'2 ~ ees'2 ~ ees'2 d'2 ees'2*9/4 d'2*3/2 ~ \divisioMinima
d'2*3/4 g2*9/4 bes2*9/4 c'2 bes2 ~ \divisioMinima
bes2*4/2 g2*3/4 ~ g2*4/2 ~ g2 ~ g2 ~ g2 d'2 bes2 ~ bes2 ~ \divisioMaior
bes2*3/2 g2 ~ g2*3/2 ~ g2*3/2 ~ g2 c'2*3/2 ~ c'2*4/2 bes2*3/4 ~ bes2*5/2 ~ bes2*3/2 \divisioMaxima
g2*4/2 ~ \divisioMinima
g2*5/2 ~ g2*7/2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 f2*4/2 g2*3/4 f2*3/2 g2*3/4 aes2 ~ aes2*3/4 bes2 ~ bes2*3/2 aes2*4/2 ~ aes2 g4 \finalis
}

bassMusic = {
r4 a,2*8/2 \divisioMinima
aes2*4/2 g,2*9/2 ~ g,2 ~ \divisioMaior
g,2 bes,2 d2*3/2 c2*3/2 g2 ~ g4 ~ \divisioMinima
g2*3/2 ~ g2*4/2 ~ g4 \divisioMaxima
ees2 ~ ees2*4/2 ~ ees2 d2*3/2 bes,2 ~ bes,2 ~ bes,2*3/4 d2*4/2 ees2*3/4 ~ ees2*4/2 ~ ees2 ~ ees4 \finalis
r2*8/2 c'2*9/4 bes2*3/2 \divisioMinima
g2*3/4 f2*9/4 g2*9/4 ~ g2 ~ g2 \divisioMinima
ees2*4/2 ~ ees2*3/4 d2*4/2 ~ d2 c2 g2 ~ g2 ~ g2 ~ g2 ~ \divisioMaior
g2*3/2 f2 ees2*3/2 d2*3/2 c2 ~ c2*3/2 d2*4/2 ~ d2*3/4 ees2*5/2 d2*3/2 \divisioMaxima
r2*4/2 \divisioMinima
c2*5/2 ~ c2*7/2 bes,2*4/2 c2*3/2 ees2*3/2 ~ ees2*4/2 ~ ees2*3/4 ~ ees2*3/2 ~ ees2*3/4 ~ ees2 ~ ees2*3/4 ~ ees2 g2*3/2 aes2*4/2 ees2 ~ ees4 \finalis
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
