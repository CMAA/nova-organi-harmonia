\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.232
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Deus vitam meam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Deus vitam meam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Deus vitam meam" }
    \line {}
  }
}

chantText = \lyricmode {
De -- us, 
\set stanza = " * " vi -- tam me -- _ _ _ _ am _ _ _ 
nun -- ti -- á -- vi _ ti -- _ bi: _ _ _ _ 
pó -- _ _ su -- i lá -- _ _ _ cri -- mas me -- _ _ _ as _ _ _ 
in con -- spé -- _ _ _ ctu _ tu -- _ _ o. _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
Mi -- se -- ré -- re mi -- hi Dó -- _ _ mi -- ne, _ _ _ _ _ _ 
quó -- _ _ _ ni -- am con -- cul -- cá -- vit me ho -- _ _ _ mo: 
to -- ta _ di -- _ e bel -- _ _ _ _ _ lans _ _ _ _ 
\set stanza = " * " 
tri -- bu -- lá -- _ _ _ vit _ _ _ _ me. _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( g'4 f'4) f'4 \divisioMinima
 f'4 f'4 ( g'4 f'4 g'4) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( f'4)  f'4 ( g'4.) d'4 ( ees'4 f'\prall g'4 aes'4 f'4 \forceBreak
) ees'4 ( ees'4) c'4 ( d'4 c'4) \divisioMaior
 ees'4 ( g'4 f'4) f'4 f'4 ( g'4 f'4 g'4)  g'4 ( f'4) aes'4 ( g'4 f'4) f'4 ( ees'4) g'4 ( f'4 g'4) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4 g'4 f'4 \forceBreak
) g'4 ( a'\prall bes'4 c''4 bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima
 g'4 ( c''4 bes'4) c''4 ( a'4) bes'4 ( c''4) g'4 ( a'\prall bes'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 g'4 ( bes'4 g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( f'4 \forceBreak
) f'4 ( g'4 bes'4) bes'4 bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( f'4)  f'4 ( g'4.) d'4 ( ees'4 f'\prall g'4 aes'4 f'4) ees'4 ( ees'4) c'4 ( d'4 c'4) \divisioMaior
 ees'4 ( f'4 g'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4. f'4 \forceBreak
 bes'4 ( bes'4 g'4) bes'4 ( bes'4) ~ bes'4 ( f'4) g'4 ( f'4) ees'4 ( ees'4 c'4 d'\prall ees'4 f'4)  g'4 ( f'4) g'4 ( aes'4 f'4 ees'4) \divisioMinima
  g'4 bes'4 ( bes'4 g'4 a'\prall bes'4 c''4) bes'4. a'4 ( c''4 bes'4 a'4) bes'4 ( bes'4 \forceBreak
) c''4 ( d''4 bes'4 bes'4) ~ bes'4 ( g'4 f'4 ees'4) f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4) \divisioMinima
 g'4 ( a'4 g'4 f'4) bes'4 ( bes'4) f'4 ( bes'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis \forceBreak

 f'4 bes'4 ( bes'4) bes'4 ( c''4 bes'4) bes'4 bes'4 bes'4 \divisioMinima
 bes'4 ( a'4) bes'4 ( c''4 d''4 c''4 bes'4) c''4 ( d''4 c''4 d''4) c''4 c''4 ( d''4 bes'4) \divisioMinima
 bes'4 ( c''4 bes'4) c''4 ( bes'4 \forceBreak
) c''4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4 f'4) g'4 ( f'4) \divisioMaior
 a'4 ( f'4 a'4 g'4 f'4.) a'4 ( f'4) g'4 ( a'\prall bes'4) ~ bes'4 ( c''4) bes'4 bes'4 \divisioMinima
 g'4 bes'4 bes'4 \forceBreak
 a'4 ( \once \tweak #'font-size #-4 bes' ) g'4 ( f'4) f'4 ( g'4 a'\prall bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( g'4.) a'4 ( g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( g'4) ~ g'4 ( f'4) f'4 \divisioMinima \forceBreak

 g'4 ( f'4) bes'4 ( bes'4 f'4) g'4 ( f'4) bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( g'4 f'4) g'4 ( f'4) g'4 ( f'4) a'4 ( g'4 f'4 f'4) d'4 ( ees'4 d'4) \divisioMaior
 d'4 ( f'4 g'4 \forceBreak
) g'4 ( f'4) g'4. f'4 bes'4 ( bes'4 g'4) bes'4 ( bes'4) ~ bes'4 ( f'4) g'4 ( f'4 ees'4) ~ ees'4 (  c'4 d'\prall ees'4) f'4. g'4 ( f'4) g'4 ( aes'4 f'4 ees'4) \divisioMinima
  g'4 \forceBreak
 bes'4 ( bes'4 g'4 a'\prall bes'4 c''4) bes'4. a'4 ( c''4 bes'4 a'4) bes'4 ( bes'4) c''4 ( d''4 bes'4) ~ bes'4 ( bes'4 g'4 f'4 ees'4) f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4) \divisioMinima \forceBreak

 g'4 ( a'4 g'4 f'4) bes'4 ( bes'4) f'4 ( bes'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
ees'2*3/2 ~ ees'4 \divisioMinima
d'4 ~ d'2*4/2 ees'2*4/2 d'2*3/2 c'2*3/2 bes2*5/4 c'2*4/2 ~ c'2 ~ c'2 ~ c'4 r2 \divisioMaior
bes2*4/2 ~ bes2*4/2 c'2*5/2 r4 ees'4 ~ ees'2*3/2 ~ ees'2 ~ ees'2 f'2*4/2 ees'2*3/2 f'2*3/2 d'2*3/2 \divisioMaxima
g'2*3/2 f'2*4/2 ees'2*7/2 d'2 \divisioMinima
f'2*3/2 ees'2*3/2 d'2*3/2 ~ d'2*4/2 ~ d'2 ees'2*3/2 d'2*3/2 c'2*5/4 ~ c'2*6/2 ~ c'2 ~ c'4 r2 \divisioMaior
ees'2*3/2 f'2 ees'2*5/4 f'2*3/2 ees'2 d'2*4/2 c'2*6/2 ~ c'2 ees'2*4/2 ~ ees'4 d'2*6/2 f'2*11/4 ~ f'2 ~ f'2*4/2 ees'2*4/2 ~ ees'2 f'2 ees'2*3/2 ~ ees'4 \divisioMinima
d'2*4/2 ees'2 f'2*4/2 c'2 ~ c'4 \finalis
f'4 ~ f'2 g'2*4/2 ~ g'2 \divisioMinima
f'2*7/2 ~ f'2*5/2 ~ f'2*3/2 ~ \divisioMinima
f'2*5/2 ~ f'2 g'2*3/2 ~ g'4 r2*4/2 f'4 ~ \divisioMaior
f'2*4/2 ~ f'2*7/4 ~ f'2 ees'2*4/2 d'4 ~ \divisioMinima
d'2 f'4 ~ f'2 d'2 ~ d'2*5/2 ~ d'2 ees'2*5/4 f'2*4/2 c'2 \divisioMaxima
d'4 ees'2 d'2*3/2 ~ d'2*3/2 c'4 \divisioMinima
d'2*5/2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*5/2 ~ d'2*6/2 ~ d'4 r4 d'4 ~ \divisioMaior
d'4 ~ d'2 ~ d'2 ~ d'2*5/4 ees'2*3/2 d'2 f'2 ees'2 c'2*5/2 ~ c'2*3/4 bes2 ~ bes2*4/2 ~ bes4 ees'2 ~ ees'2*4/2 f'2*3/4 ~ f'2*4/2 ~ f'2 ~ f'2*3/2 ees'2*4/2 ~ ees'4 f'2 ~ f'2 ees'2*4/2 ~ \divisioMinima
ees'2*4/2 f'2 ~ f'2*4/2 c'2 ~ c'4 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes4 ~ \divisioMinima
bes4 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*3/2 a2*3/2 g2*5/4 aes2*4/2 ~ aes2 g2 ~ g2*3/2 ~ \divisioMaior
g2*4/2 ~ g2*4/2 aes2*5/2 bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMaxima
bes2*3/2 ~ bes2*4/2 ~ bes2*7/2 a2 \divisioMinima
bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 a2*4/2 g2 ~ g2*3/2 ~ g2*3/2 ees2*5/4 f2*6/2 g2 f2 ees4 \divisioMaior
bes2*3/2 ~ bes2 ~ bes2*5/4 ~ bes2*3/2 ~ bes2 ~ bes2*4/2 g2*6/2 aes2 bes2*5/2 ~ bes2*6/2 c'2*11/4 ~ c'2 bes2*4/2 ~ bes2*4/2 ~ bes2 ~ bes2 ~ bes2*4/2 ~ \divisioMinima
bes2*4/2 ~ bes2 ~ bes2*4/2 ~ bes2 a4 \finalis
f'4 ~ f'2 ~ f'2*4/2 ees'2 \divisioMinima
d'2*7/2 ~ d'2*5/2 ~ d'2*3/2 ~ \divisioMinima
d'2*5/2 ~ d'2 bes2*3/2 ~ bes2*4/2 ~ bes2 \divisioMaior
d'2*4/2 c'2*7/4 bes2 ~ bes2*4/2 ~ bes4 ~ \divisioMinima
bes2 c'4 ~ c'2 bes2 ~ bes2*5/2 ~ bes2 ~ bes2*5/4 c'2*4/2 a2 \divisioMaxima
bes4 ~ bes2 ~ bes2*3/2 a2*3/2 ~ a4 \divisioMinima
bes2*5/2 c'2 bes2*3/2 a2*3/2 bes2*5/2 a2*6/2 bes2*3/2 ~ \divisioMaior
bes2*3/2 ~ bes2 ~ bes2*5/4 ~ bes2*3/2 ~ bes2 ~ bes2 ~ bes2 g2*5/2 f2*3/4 ~ f2 ees2*4/2 ~ ees4 g2 bes2*4/2 ~ bes2*3/4 c'2*4/2 bes2 a2*3/2 bes2*5/2 ~ bes2 ~ bes2 ~ bes2*4/2 ~ \divisioMinima
bes2*4/2 ~ bes2 c'2*4/2 bes2 a4 \finalis
}

bassMusic = {
g2*3/2 bes4 \divisioMinima
r4 a2*4/2 g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g2*5/4 ~ g2*4/2 f2 ~ f2 ees2*3/2 \divisioMaior
d2*4/2 c2*4/2 f2*5/2 g2 f2*3/2 ees2*4/2 d2*4/2 c2*3/2 d2*3/2 g2*3/2 \divisioMaxima
ees2*3/2 d2*4/2 c2*7/2 d2 ~ \divisioMinima
d2*3/2 c2*3/2 bes,2*3/2 ~ bes,2*4/2 ~ bes,2 c2*3/2 bes,2*3/2 ~ bes,2*5/4 aes,2*6/2 c2 ~ c2 ~ c4 ~ \divisioMaior
c2*3/2 d2 ees2*5/4 d2*3/2 c2 bes,2*4/2 ees2*6/2 aes2 g2*5/2 ~ g2*6/2 f2*11/4 d2 ~ d2*4/2 g2*4/2 ees2 d2 c2*4/2 \divisioMinima
bes,2*4/2 c2 d2*4/2 f2 ~ f4 \finalis
r2*9/2 \divisioMinima
r2*7/2 c'2*5/2 bes2*3/2 \divisioMinima
a2*5/2 g2 f2*3/2 ees2*4/2 d2 ~ \divisioMaior
d2*4/2 ~ d2*7/4 g2 ~ g2*4/2 ~ g4 ~ \divisioMinima
g2 f4 ~ f2 bes2 a2*5/2 g2 ~ g2*5/4 f2*4/2 ~ f2 \divisioMaxima
g4 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g2*5/2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g2*5/2 d2*6/2 g2*3/2 \divisioMaior
r2*3/2 a2 g2*5/4 ~ g2*3/2 ~ g2 d2 ees2 ~ ees2*5/2 d2*3/4 ~ d2 c2*4/2 ~ c4 ~ c2 ~ c2*4/2 d2*3/4 ~ d2*4/2 ~ d2 ~ d2*3/2 c2*5/2 d2 g2 ~ g2*4/2 \divisioMinima
c2*4/2 d2 ~ d2*4/2 f2 ~ f4 \finalis
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
