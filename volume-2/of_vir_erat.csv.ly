\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.247
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Vir erat" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Vir erat"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Vir erat" }
    \line {}
  }
}

chantText = \lyricmode {
Vir e -- rat 
\set stanza = " * " in ter -- _ _ ra 
nó -- mi -- ne Job, 
sim -- _ plex et re -- _ ctus, 
ac ti -- mens _ _ De -- um: _ 
quem Sa -- tan pé -- ti -- _ it, 
ut ten -- tá -- ret: 
et da -- ta est e -- i po -- té -- _ stas a Dó -- mi -- _ no 
in fa -- cul -- tá -- te et in car -- ne e -- jus: _ 
per -- di -- dít -- que o -- mnem sub -- stán -- ti -- _ _ am i -- psí -- _ us, 
et fí -- li -- os: 
car -- nem quo -- que e -- jus 
gra -- vi úl -- ce -- re vul -- ne -- rá -- vit. }

chantMusic = {
\tieDown   d'4 f'4 ( g'4 a'4) g'4 \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 bes'4 ( bes'4 g'4) a'4 ( \tiny g' f' 4) g'4 ( f'4) \divisioMaior
 bes'4 bes'4 ( c''4 bes'4 a'4 g'4 \forceBreak
) g'4 ( f'4 g'\prall a'4 g'4 f'4 g'4) g'4 ( a'\prall bes'4 g'4) \divisioMaxima
 bes'4 c''4 ( a'4 bes'4) g'4 a'4 ( bes'4 \once \tweak #'font-size #-4 c'' ) c''4 ( a'4) bes'4 ( c''4 bes'4 c''4) g'4 \divisioMaior \forceBreak

 g'4 g'4 ( f'4) g'4 ( a'\prall bes'4) c''4 ( a'4) bes'4 ( a'4) g'4 ( bes'4 g'4) g'4 ( f'4) g'4 ( a'4 g'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 d' ) f'4 ( g'4 a'4) g'4 ( \once \tweak #'font-size #-4 f' ) bes'4 ( c''4 d''4) d''4 ( c''4) ~ c''4 ( bes'4 c''4 \forceBreak
) c''4 ( bes'4) \divisioMaior
 bes'4 ( bes'4 a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 bes'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima
 g'4 bes'4 bes'4 ( c''4) c''4 c''4 ( d''4) c''4 c''4 \forceBreak
 c''4 d''4 ( c''4 d''4) bes'4 ( c''4 bes'4) \divisioMinima
 g'4 bes'4 ( c''4) c''4 ( bes'4 a'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 g'4 \divisioMinima \forceBreak

 g'4 bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 g'4 g'4 ( a'4 \tiny g' f' 4) g'4 ( f'4) g'4 ( a'4 g'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 d' ) f'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 \divisioMinima
 g'4 ( a'4 \tiny g' f' 4 \forceBreak
) g'4 ( f'4) bes'4 ( a'4) bes'4 ( c''4) c''4. bes'4 ( bes'4) c''4 ( bes'4) bes'4 bes'4 bes'4 ( c''4 a'4) bes'4 ( a'4) g'4 ( f'4) \divisioMaior
 g'4 ( bes'4 g'4 a'\prall bes'4 a'4 \once \tweak #'font-size #-4 bes' ) g'4 \forceBreak
 g'4 ( a'4 bes'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima
 bes'4 ( bes'4 \once \tweak #'font-size #-4 a' ) c''4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 ( a'4 \tiny g' f' 4) g'4 ( f'4) \divisioMaior
 g'4 bes'4 \forceBreak
 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 \divisioMinima
 g'4 bes'4 ( g'4 a'\prall bes'4 a'4) g'4 ( a'4 bes'4 a'4 g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*3/2 ~ d'2*6/2 c'2 \divisioMaior
d'4 ~ d'2*5/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 \divisioMaxima
r4 f'2*3/2 ees'4 ~ ees'2*3/2 ~ ees'2*6/2 d'4 ~ \divisioMaior
d'4 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2 c'2*3/2 ~ c'2 bes2*3/2 \divisioMaxima
d'2 ~ d'2*5/2 f'2*4/2 g'2*4/2 f'2 ~ \divisioMaior
f'2*3/2 d'2 ~ d'2*6/2 ~ d'2 ~ \divisioMaxima
d'2 ees'2*3/2 f'2*4/2 ~ f'2*4/2 ~ f'2*3/2 \divisioMinima
g'4 ~ g'2 f'2*3/2 ees'2*4/2 d'2 ~ \divisioMaior
d'2*3/2 ~ d'2 ~ d'2 \divisioMinima
g'4 ~ g'2 f'2 ees'2*4/2 d'2 ~ d'2*3/2 \divisioMaxima
c'2*3/2 ~ c'2 bes4 \divisioMinima
c'2*4/2 ~ c'2 f'2 ~ f'2 ees'2*3/4 d'2 g'2 f'2 d'2*5/2 ~ d'2 ~ \divisioMaior
d'2 g'2 f'2*3/2 ~ f'4 ees'2 f'2*4/2 d'2 \divisioMaxima
f'2*5/2 ees'2*3/2 d'2 ~ d'2*4/2 ~ d'2 \divisioMaior
ees'2 f'2*3/2 ~ f'2 ~ f'4 ~ \divisioMinima
f'4 ees'2*3/2 ~ ees'2 d'2 c'2*4/2 bes2 \finalis
}

tenorMusic = {
r4 c'2*3/2 bes4 ~ \divisioMinima
bes2*3/2 ~ bes2*6/2 a2 \divisioMaior
bes4 ~ bes2*5/2 a2*3/2 c'2*4/2 ~ c'2*3/2 bes4 ~ \divisioMaxima
bes4 ~ bes2*3/2 ~ bes4 g2*3/2 ~ g2*6/2 ~ g4 ~ \divisioMaior
g4 a2 g2*3/2 ~ g2 ~ g2 ees2*3/2 d2 ~ d2*3/2 \divisioMaxima
g2 a2*5/2 bes2*4/2 ~ bes2*4/2 ~ bes2 \divisioMaior
c'2*3/2 ~ c'2 ~ c'2*6/2 bes2 ~ \divisioMaxima
bes2 ~ bes2*3/2 ~ bes2*4/2 a2*4/2 d'2*3/2 ~ \divisioMinima
d'4 ees'2 d'2*3/2 c'2*4/2 bes2 \divisioMaior
c'2*3/2 bes2 g2 ~ \divisioMinima
g4 ~ g2 ~ g2 ~ g2*4/2 ~ g2 ~ g2*3/2 \divisioMaxima
d2*3/2 ~ d2 ~ d4 \divisioMinima
c2*4/2 f2 ~ f2 g2 ~ g2*3/4 ~ g2 ~ g2 bes2 ~ bes2*5/2 a2 \divisioMaior
g2 ~ g2 ~ g2*3/2 bes4 ~ bes2 c'2*4/2 bes2 \divisioMaxima
r2*14/2 c'2 \divisioMaior
bes2 c'2*3/2 bes2 ~ bes4 ~ \divisioMinima
bes4 g2*3/2 ~ g2 ~ g2 ees2*4/2 d2 \finalis
}

bassMusic = {
r2*5/2 \divisioMinima
a2*3/2 g2*6/2 a2 ~ \divisioMaior
a4 g2*5/2 d2*3/2 ~ d2*4/2 g2*3/2 ~ g4 \divisioMaxima
r4 d2*3/2 ~ d4 ~ d2*3/2 c2*6/2 bes,4 ~ \divisioMaior
bes,4 ~ bes,2 ~ bes,2*3/2 a,2 g,2 ~ g,2*3/2 ~ g,2 ~ g,2*3/2 \divisioMaxima
bes,2 d2*5/2 g2*4/2 ees2*4/2 d2 \divisioMaior
f2*3/2 a2 g2*6/2 ~ g2 \divisioMaxima
r2 g2*3/2 f2*4/2 ~ f2*4/2 bes2*3/2 ~ \divisioMinima
bes4 ees'2 r2*9/2 \divisioMaior
a2*3/2 g2 f2 ~ \divisioMinima
f4 ees2 d2 c2*4/2 ~ c2 bes,2*3/2 \divisioMaxima
a,2*3/2 g,2 ~ g,4 \divisioMinima
a,2*4/2 ~ a,2 d2 ~ d2 c2*3/4 f2 ees2 d2 g2*5/2 d2 \divisioMaior
f2 ees2 d2*3/2 ~ d4 c2 d2*4/2 g2 \divisioMaxima
d'2*5/2 c'2*3/2 ~ c'2 bes2*4/2 a2 \divisioMaior
g2 f2*3/2 ees2 d4 ~ \divisioMinima
d4 ~ d2*3/2 c2 bes,2 c2*4/2 g,2 \finalis
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
