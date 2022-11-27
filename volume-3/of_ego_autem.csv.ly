\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.352
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego autem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego autem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego autem" }
    \line {}
  }
}

chantText = \lyricmode {
E -- _ go au -- _ _ tem, 
\set stanza = " * " cum mi -- _ _ hi mo -- lé -- _ sti es -- _ sent, 
in -- du -- é -- bar ci -- lí -- ci -- o. _ 
Hu -- mi -- li -- á -- bam in je -- jú -- ni -- o _ 
á -- _ _ _ ni -- mam me -- am: 
et o -- rá -- ti -- o me -- a in si -- nu me -- o 
con -- ver -- _ té -- tur. }

chantMusic = {
\tieDown   g'4. f'4 ( a'4 g'4) g'4 f'4 ( g'4) bes'4 ( bes'4 bes'4) c''4 ( \once \tweak #'font-size #-4 bes' ) bes'4 \divisioMinima
 bes'4 ( a'4) bes'4 ( bes'4) ~ bes'4 ( g'4) a'4 ( bes'4 a'4) g'4 ( f'4) \divisioMinima
 f'4 f'4 ( g'4) a'4 ( g'4 a'4 f'4) d'4 ( f'4) d'4 ( f'4) g'4 ( f'4 g'4) g'4 ( f'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 ( c''\prall d''4 c''4 d''4) d''4 ( c''4) c''4 bes'4 ( c''4 d''4) bes'4 ( a'4) g'4. bes'4 ( g'4 f'4 g'4) \divisioMaxima
 g'4 ( c''4 bes'4) bes'4 ( a'4) g'4 ( a'4) a'4 ( g'4 f'4) f'4 \divisioMinima
 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 bes'4. d''4 ( c''4 bes'4 a'4 g'4 a'\prall bes'4) \divisioMaior
 g'4 bes'4 ( bes'4) ~ bes'4 ( g'4 f'4.) g'4 bes'4 ( bes'4 bes'4) g'4 g'4 ( a'4 f'4 g'4) g'4 ( a'4 g'4) g'4 \divisioMaxima
 g'4 ( f'4) g'4 ( bes'4) bes'4 ( a'4) f'4 ( g'4) g'4 g'4 ( c''4 bes'4) bes'4 ( c''4) \divisioMinima
 bes'4 bes'4 ( a'4) g'4 ( f'4) f'4 ( g'4 f'4) d'4 ( c'4 d'4) \divisioMaior
 f'4 ( g'4 f'4 \once \tweak #'font-size #-4 g' ) g'4 ( a'\prall bes'4 c''4 a'4) bes'4 ( a'4) g'4 ( a'4 bes'4 a'4 g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
d'2*3/4 ~ d'2*4/2 ~ d'2 ~ d'2*5/2 f'4 ~ \divisioMinima
f'2 ~ f'2 ~ f'2 ~ f'2*3/2 d'2 ~ \divisioMinima
d'4 ~ d'2 ~ d'2*6/2 ~ d'2*5/2 c'2 \divisioMaior
bes2*3/2 d'2*5/2 ~ d'2*3/2 ~ d'2*3/2 c'2*7/4 ~ c'2*3/2 bes4 \divisioMaxima
d'2*3/2 c'2*4/2 ~ c'2*3/2 ~ c'4 \divisioMinima
f'2*4/2 ees'2*7/4 d'2*4/2 ~ d'2*3/2 ~ \divisioMaior
d'4 ees'2 ~ ees'2*9/4 f'2*4/2 d'2*4/2 ~ d'2*3/2 ~ d'4 \divisioMaxima
ees'2*4/2 f'2*5/2 g'2*3/2 e'2 ~ \divisioMinima
e'4 f'2 d'2 ~ d'2*3/2 bes2*3/2 \divisioMaior
c'2*4/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2*6/2 bes2 \finalis
}

tenorMusic = {
bes2*3/4 a2*4/2 c'2 bes2*5/2 ~ bes4 \divisioMinima
c'2 d'2 c'2 bes2*3/2 a2 ~ \divisioMinima
a4 ~ a2 f2*6/2 ~ f2*5/2 ~ f2 \divisioMaior
d2*3/2 g2*5/2 a2*3/2 g2*3/2 ~ g2*7/4 d2*3/2 ~ d4 \divisioMaxima
g2*3/2 ~ g2*4/2 f2*3/2 a4 \divisioMinima
f2*4/2 ~ f2*7/4 ~ f2*4/2 g2*3/2 ~ \divisioMaior
g4 ~ g2 bes2*9/4 ~ bes2*4/2 a2*4/2 c'2*3/2 bes4 ~ \divisioMaxima
bes2*4/2 ~ bes2*5/2 ~ bes2*3/2 ~ bes2 ~ \divisioMinima
bes4 ~ bes2*4/2 ~ bes2*3/2 f2*3/2 ~ \divisioMaior
f2*4/2 ~ f2*3/2 ees2*4/2 d2*6/2 ~ d2 \finalis
}

bassMusic = {
g2*3/4 ~ g2*4/2 ~ g2 ~ g2*5/2 d4 ~ \divisioMinima
d2 ~ d2 ~ d2 ~ d2*3/2 ~ d2 ~ \divisioMinima
d4 c2 ~ c2*6/2 bes,2*5/2 a,2 \divisioMaior
g,2*3/2 ~ g,2*5/2 ~ g,2*3/2 ~ g,2*3/2 ~ g,2*7/4 ~ g,2*3/2 ~ g,4 \divisioMaxima
ees2*3/2 ~ ees2*4/2 f2*3/2 ~ f4 \divisioMinima
d2*4/2 c2*7/4 bes,2*4/2 ~ bes,2*3/2 ~ \divisioMaior
bes,4 c2 ~ c2*9/4 d2*4/2 ~ d2*4/2 g2*3/2 ~ g4 \divisioMaxima
c2*4/2 d2*5/2 ees2*3/2 c2 ~ \divisioMinima
c4 d2*4/2 bes,2*3/2 ~ bes,2*3/2 \divisioMaior
a,2*4/2 g,2*3/2 ~ g,2*4/2 ~ g,2*6/2 ~ g,2 \finalis
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
        "II"
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
