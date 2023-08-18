\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.382
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Contristatus sum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Contristatus sum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Contristatus sum" }
    \line {}
  }
}

chantText = \lyricmode {
Con -- tri -- stá -- tus _ sum _ _ _ _ 
\set stanza = " * " 
in ex -- er -- ci -- ta -- ti -- ó -- ne me -- _ _ a, _ _ _ _ 
et con -- tur -- bá -- tus sum a vo -- ce i -- ni -- mí -- _ ci, _ _ 
et a tri -- bu -- la -- ti -- ó -- ne pec -- ca -- tó -- _ _ _ _ ris. _ ℣. 
Quó -- ni -- am de -- cli -- na -- vé -- runt in me _ _ _ _ 
in -- i -- qui -- tá -- _ tes: _ _ 
et in i -- _ _ ra mo -- lé -- sti e -- rant _ mi -- hi. _ ℣. 
E -- go au -- _ _ _ _ _ _ _ _ tem 
ad De -- um cla -- má -- vi: _ _ _ _ 
et Dó -- _ mi -- nus _ _ 
\set stanza = " * " 
sal -- vá -- _ _ bit me. _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 f'4 ( g'4 f'4 d'4) f'4 ( g'4 f'4) f'4 ( g'4) bes'4 ( a'4 bes'4) a'4 ( bes'4 a'4 g'4) f'4 ( g'\prall a'4 g'4.) a'4 ( bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 f'4 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 g'4 ( bes'4) bes'4 ( a'4) bes'4 g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 f'4 f'4 a'4 ( bes'4) g'4 g'4 \divisioMinima
 g'4 g'4 ( a'4) g'4 g'4 g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior
 g'4 ( bes'4 a'4) bes'4 c''4 bes'4 c''4 bes'4 bes'4 ( bes'4 f'4) g'4 ( a'4 g'4) \divisioMinima
 bes'4 ( a'4) bes'4 ( c''4) c''4 ( bes'4) c''4 ( d''4 g'4) ~ g'4 ( f'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 a'4 ( a'4 g'4) \finalis
 g'4 f'4 g'4 bes'4 a'4 bes'4 ( c''4) c''4 ( a'4 c''4) bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 ( \tiny a' g' 4) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 a'4 ( bes'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaxima
 c''4 f'4 g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) a'4 ( g'4) \divisioMinima
 g'4 ( f'4) bes'4 bes'4 bes'4 a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 g'4 a'4 ( a'4 g'4) \finalis
 f'4 g'4 bes'4 c''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4) c''4 ( d''4 bes'4) ~ bes'4 ( a'4) c''4 ( bes'4) ~ bes'4 ( a'4) ~ a'4 ( g'4 a'\prall bes'4 a'4 bes'4) a'4 ( g'4) \divisioMaior
 bes'4 bes'4 ( a'4) c''4 bes'4 ( a'4) g'4 ( a'4) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( c''4)  bes'4 ( a'4 c''4.) d''4 ( ees''4 c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 ( c''4) bes'4. a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 g'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 c''4 a'4 bes'4) \divisioMinima
 a'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) a'4 ( a'4 g'4) \finalis

}

altoMusic = {
r4 c'2*4/2 d'2*3/2 ~ d'2 ~ d'2*3/2 f'2*4/2 ~ f'2*9/4 ~ f'2*3/2 d'2*3/2 ~ d'2 ~ \divisioMaior
d'2 c'2*3/2 d'2 ~ d'2 ~ d'2 ~ d'4 c'2 f'2*3/2 d'2 ~ d'2*6/2 ~ d'2*3/2 \divisioMaxima
r2 f'4 ~ f'2*3/2 d'4 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'2*4/2 ees'2*3/2 d'2*3/2 \divisioMaior
ees'2*4/2 e'2*4/2 f'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 g'2*3/2 ~ g'2*3/2 f'2 d'2*4/2 ~ d'2*3/2 \finalis
r2*3/2 f'2 ~ f'2 ~ f'2*3/2 ~ f'2 d'2*3/2 ~ d'2 ~ d'2*3/2 c'2*3/2 d'2*3/2 ~ \divisioMaior
d'4 ~ d'2*3/2 c'2 d'2*4/2 ees'2*3/2 d'2*3/2 \divisioMaxima
f'2*3/2 ~ f'2 ees'2*3/2 d'2 \divisioMinima
c'2 d'2*3/2 ~ d'2 c'2*3/2 ~ c'2 bes2*3/2 \finalis
d'2 ~ d'2 ees'2*3/2 f'2*4/2 ~ f'2*4/2 d'2 ~ d'2 ~ d'2*5/2 ~ d'2 ~ \divisioMaior
d'4 f'2*3/2 ~ f'2 ~ f'2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMaxima
d'4 c'2 d'2*4/2 f'2*4/2 ~ f'2*3/4 ees'2 f'2*3/2 ~ \divisioMaior
f'2 ~ f'2*7/4 g'2*4/2 ees'2*3/2 f'2 ~ f'2*4/2 ~ f'4 ~ \divisioMinima
f'2 ees'2 d'2*4/2 c'2 bes4 \finalis
}

tenorMusic = {
bes2*5/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 c'2*4/2 d'2*9/4 c'2*3/2 ~ c'2*3/2 bes2 ~ \divisioMaior
bes2 r2*3/2 bes2 ~ bes2 g2 ~ g2*3/2 f2*3/2 a2 c'2*3/2 bes2*3/2 a2*3/2 \divisioMaxima
d'2*3/2 c'2*3/2 bes4 ~ \divisioMinima
bes4 g2*3/2 bes2 a2 g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ \divisioMaior
g2*4/2 bes2*4/2 c'2*3/2 ~ c'2*3/2 \divisioMinima
bes2 g2*3/2 ~ g2*3/2 a2*3/2 d'2 c'2*4/2 ~ c'2 bes4 ~ \finalis
bes2*3/2 ~ bes2 g2 a2*3/2 c'2 ~ c'2*3/2 bes2 a2*3/2 g2*3/2 a2*3/2 ~ \divisioMaior
a4 g2*3/2 ~ g2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 \divisioMaxima
a2*3/2 g2 ~ g2*3/2 ~ g2 ~ \divisioMinima
g2 ~ g2*3/2 f2 ees2*3/2 d2 ~ d2*3/2 \finalis
r2 bes2 ~ bes2*3/2 ~ bes2*4/2 c'2*4/2 g2 a2 c'2*5/2 bes2 ~ \divisioMaior
bes4 ~ bes2*3/2 f2 g2 a2 c'2*3/2 bes2*3/2 a2*3/2 \divisioMaxima
bes4 a2 bes2*4/2 c'2*4/2 a2*3/4 g2 f2*3/2 \divisioMaior
d'2 c'2*7/4 bes2*4/2 ~ bes2*3/2 ~ bes2 a2*4/2 g4 ~ \divisioMinima
g2 ~ g2 ~ g2*4/2 d2*3/2 \finalis
}

bassMusic = {
r2*8/2 a2 g2*3/2 f2*4/2 d2*9/4 ~ d2*3/2 g2*3/2 ~ g2 \divisioMaior
bes2 a2*3/2 ~ a2 g2 f2 ees2*3/2 d2*3/2 ~ d2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 \divisioMaxima
bes2*3/2 f2*3/2 g4 ~ \divisioMinima
g4 bes,2*3/2 ~ bes,2 ~ bes,2 ~ bes,2*4/2 c2*3/2 g,2*3/2 \divisioMaior
c2*4/2 ~ c2*4/2 d2*3/2 g2*3/2 ~ \divisioMinima
g2 f2*3/2 ees2*3/2 d2*3/2 ~ d2 ~ d2*4/2 g2 ~ g4 \finalis
ees2*3/2 d2 ~ d2 ~ d2*3/2 ~ d2 g2*3/2 ~ g2 f2*3/2 ees2*3/2 d2*3/2 ~ \divisioMaior
d4 bes,2*3/2 a,2 bes,2*4/2 c2*3/2 g,2*3/2 \divisioMaxima
d2*3/2 ~ d2 c2*3/2 bes,2 \divisioMinima
a,2 g,2*3/2 ~ g,2 ~ g,2*3/2 ~ g,2 ~ g,2*3/2 \finalis
bes,2 ~ bes,2 c2*3/2 d2*4/2 f2*4/2 g2 ~ g2 ~ g2*5/2 ~ g2 ~ \divisioMaior
g4 d2*3/2 ~ d2 ~ d2 ~ d2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 \divisioMaxima
r2*3/2 g2*4/2 f2*4/2 ~ f2*3/4 c2 d2*3/2 ~ \divisioMaior
d2 ~ d2*7/4 ees'2*4/2 c2*3/2 d2 ~ d2*4/2 ~ d4 ~ \divisioMinima
d2 c2 g,2*4/2 ~ g,2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Tract"
        "2"
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
