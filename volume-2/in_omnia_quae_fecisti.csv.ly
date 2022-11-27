\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.238
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Omnia quae fecisti" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Omnia quae fecisti"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Omnia quae fecisti" }
    \line {}
  }
}

chantText = \lyricmode {
O -- mni -- a 
\set stanza = " * " quæ fe -- cí -- sti no -- bis, Dó -- mi -- ne, 
in ve -- ro ju -- dí -- ci -- o fe -- _ _ cí -- sti, 
qui -- a pec -- cá -- vi -- mus ti -- bi, 
et man -- dá -- tis tu -- is non o -- be -- dí -- vi -- mus: 
sed da _ _ gló -- ri -- am nó -- mi -- ni tu -- _ o, 
et fac _ no -- bís -- cum se -- cún -- dum mul -- ti -- tú -- _ di -- nem mi -- se -- ri -- cór -- _ di -- æ _ tu -- æ. Ps. 
Be -- á -- ti im -- ma -- cu -- lá -- ti in vi -- a: 
\set stanza = " * " 
qui ám -- bu -- lant in le -- ge Dó -- mi -- ni. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 ( bes'4) bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 g'4 bes'4 ( bes'4) f'4 bes'4 ( bes'4) g'4 ( c''4 bes'4 a'4 bes'4) bes'4 ( a'4) \divisioMaior \forceBreak

 bes'4 ( c''4) bes'4 ( c''4 bes'4 bes'4) a'4 ( g'4) g'4 bes'4 ( bes'4) f'4 f'4 \divisioMinima
 g'4 ( f'4) ~ f'4 ( ees'4) f'4 ( g'4 f'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \divisioMaxima \forceBreak

 ees'4 d'4 ( ees'\prall f'4 g'4) f'4 g'4 ( g'4 f'4) f'4 f'4 ( ees'4 g'4) g'4 ( a'\prall bes'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 \forceBreak
 bes'4 g'4 g'4 g'4 g'4 g'4 g'4 ( ees'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 f'4 ( g'4 a'\prall bes'4) c''4 ( bes'4) ~ bes'4 ( a'4 f'4 \forceBreak
) f'4 ( g'4 a'\prall bes'4) f'4 f'4 \divisioMinima
 d'4 ( ees'4 g'4) g'4 g'4 ( a'\prall bes'4) f'4 ( ees'4) f'4 ( ees'4 c'4) c'4 \divisioMaxima
 f'4 ( \once \tweak #'font-size #-4 bes' ) bes'4. ~ bes'4 ( bes'4 bes'4) g'4 \forceBreak
 g'4 ( a'4 g'4) g'4 \divisioMinima
 f'4 f'4 ( g'4 f'4 g'4) ees'4 ( d'4) ees'4 ( \once \tweak #'font-size #-4 f' ) ees'4 d'4 ( ees'4) f'4 ( ees'4 f'4) d'4 ( f'4 ees'4 ees'4) d'4 ( d'4 ees'4) \divisioMinima \forceBreak

 ees'4 ( c'4) ees'4 ( d'4) ees'4 ( f'4) f'4 bes'4 ( bes'4 g'4 \once \tweak #'font-size #-4 a' ) f'4 ( ees'4 f'4) f'4 ( g'4 f'4 ees'4) f'4 ( g'4 f'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 \forceBreak
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis \forceBreak

  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima \forceBreak

 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4 \forceBreak
) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
f'2*4/2 ~ \divisioMinima
f'2 g'2 f'2*3/2 d'2 g'2*5/2 f'2 \divisioMaior
d'2 ees'2*4/2 d'2*3/2 ~ d'2*3/2 f'4 \divisioMinima
r4 bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 \divisioMaxima
r4 bes2*5/2 d'2*4/2 c'2*3/2 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'2*5/2 ~ d'4 ees'2*6/2 c'2 \divisioMaxima
f'4 ~ f'2*5/2 ~ f'2*3/2 ~ f'4 d'2*3/2 ~ d'2 r4 \divisioMinima
d'4 ees'4 ~ ees'2 ~ ees'2*3/2 bes2 c'2*3/2 ~ c'4 ~ \divisioMaxima
c'2 d'2*3/4 c'2*4/2 ~ c'2*3/2 bes4 ~ \divisioMinima
bes4 ~ bes2*6/2 ~ bes2*5/2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 \divisioMinima
c'2*6/2 ~ c'4 bes2*4/2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 a2*4/2 bes2 \finalis
r4 d'2 ~ d'2 ~ d'2 f'2*3/2 ~ f'2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2 ees'2*3/2 d'2 c'2 ~ c'4 bes4 r4 d'2*3/2 ~ d'2*6/2 ~ \divisioMinima
d'2 f'2*3/2 ~ f'2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 c'2 bes2*3/2 \divisioMaxima
c'2 bes2 d'2*4/2 ees'2*3/2 d'2 c'2 ~ c'4 bes4 \finalis
}

tenorMusic = {
d'2*4/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 bes2 c'2*5/2 ~ c'2 \divisioMaior
bes2 c'2*4/2 bes2*3/2 ~ bes2*3/2 a4 ~ \divisioMinima
a4 g2*3/2 ~ g2*3/2 ~ g2*4/2 ~ g2 \divisioMaxima
r4 f2*5/2 bes2*4/2 g2*3/2 ~ g2*4/2 bes2*3/2 a2 ~ \divisioMaior
a4 f2 ~ f2 g2*5/2 bes4 ~ bes2*6/2 a2*3/2 bes2*5/2 c'2*4/2 bes2*3/2 ~ bes2 c'4 \divisioMinima
bes2*4/2 ~ bes2*3/2 g2 ~ g2*3/2 ees4 \divisioMaxima
f2 ~ f2*3/4 ees2*4/2 d2*3/2 ~ d4 ~ \divisioMinima
d4 g2*6/2 ~ g2*5/2 f2*3/2 ~ f2*4/2 g2*3/2 ~ \divisioMinima
g2*6/2 f4 ~ f2*4/2 d2*3/2 ees2*4/2 d2*3/2 c2*4/2 g2 \finalis
bes4 ~ bes2 ~ bes2 ~ bes2 ~ bes2*3/2 c'2 bes2*3/2 \divisioMaxima
f2 d2*3/2 g2 ~ g2*3/2 a2 f2 d2 r4 bes2*3/2 ~ bes2*6/2 ~ \divisioMinima
bes2 ~ bes2*3/2 c'2 bes2*3/2 \divisioMaxima
f2 d2 g2*4/2 ~ g2*3/2 ~ \divisioMinima
g4 f2 ~ f2 d2*3/2 ~ \divisioMaxima
d2 ~ d2 g2*4/2 ~ g2*3/2 a2 f2 d2 \finalis
}

bassMusic = {
bes2*4/2 \divisioMinima
a2 g2 d2*3/2 g2 ees2*5/2 f2 \divisioMaior
g2 ~ g2*4/2 ~ g2*3/2 d2*3/2 ~ d4 ~ \divisioMinima
d4 ees2*3/2 d2*3/2 c2*4/2 g,2 \divisioMaxima
r4 bes,2*5/2 ~ bes,2*4/2 c2*3/2 bes,2*4/2 bes,'2*3/2 d2*3/2 ~ d2 c2 bes,2*5/2 ~ bes,4 c2*6/2 f2*3/2 d2*5/2 f2*4/2 bes2*3/2 g2 a4 \divisioMinima
g2*4/2 ees2*3/2 d2 c2*3/2 ~ c4 \divisioMaxima
a,2 g,2*3/4 ~ g,2*4/2 a,2*3/2 g,4 ~ \divisioMinima
g,4 ~ g,2*6/2 c2*5/2 d2*3/2 bes,2*4/2 ees2*3/2 \divisioMinima
c2*6/2 d4 ~ d2*4/2 bes,2*3/2 g,2*4/2 ~ g,2*3/2 ~ g,2*4/2 ~ g,2 \finalis
r2*3/2 g2 ~ g2 d2*3/2 ~ d2 g2*3/2 \divisioMaxima
d2 bes,2*3/2 ~ bes,2 c2*3/2 d2 ~ d2 g,2 bes4 ~ bes2*3/2 g2*6/2 ~ \divisioMinima
g2 d2*3/2 ~ d2 g2*3/2 \divisioMaxima
d2 bes,2 ~ bes,2*4/2 g,2*3/2 ~ \divisioMinima
g,4 d2 ~ d2 g,2*3/2 ~ \divisioMaxima
g,2 ~ g,2 ~ g,2*4/2 c2*3/2 d2 ~ d2 g,2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
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
