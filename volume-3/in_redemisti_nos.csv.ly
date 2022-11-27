\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.244
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Redemisti nos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Redemisti nos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Redemisti nos" }
    \line {}
  }
}

chantText = \lyricmode {
Red -- e -- mi -- sti nos, 
\set stanza = " * " Dó -- _ mi -- ne, in sán -- _ gui -- ne tu -- _ o, 
ex o -- mni tri -- _ bu, et lin -- gua, et pó -- pu -- lo, _ et na -- ti -- ó -- _ ne: 
et fe -- _ cí -- sti nos, De -- _ o no -- _ _ stro _ re -- gnum. Ps. 
Mi -- se -- ri -- cór -- di -- as Dó -- mi -- ni in æ -- tér -- num can -- tá -- bo: 
\set stanza = " * " 
in ge -- ne -- ra -- ti -- ó -- nem et ge -- ne -- rá -- ti -- ó -- nem an -- nun -- ti -- á -- bo ve -- ri -- tá -- tem tu -- am in o -- re me -- o. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( d'4 ees'4) c'4 ( f'4 d'4) d'4 ( f'4) f'4 ( g'4) g'4 \divisioMinima
 g'4 ( c''4 bes'4) ~ bes'4 ( a'4) bes'4 ( a'4) bes'4 \divisioMinima
 g'4 g'4 bes'4 ( bes'4) g'4 ( f'4 g'4) g'4  g'4 ( aes'4 f'4) ~ f'4 ( d'4 ees'4) ees'4 ( d'4) \divisioMaxima
 ees'4 d'4 ( ees'4 f'\prall g'4) f'4 f'4 ( g'4) bes'4 ( a'4) bes'4 ( bes'4) g'4 g'4 ( \once \tweak #'font-size #-4 a' ) f'4 \divisioMinima
 g'4 g'4 ( c''4) bes'4 ( a'4) a'4 ( c''4 bes'4) ~ bes'4 ( bes'4) \divisioMinima
 f'4 ( g'4) g'4 ( a'\prall bes'4) f'4 f'4 ( ees'4) f'4 ( ees'4 c'4) c'4 \divisioMaxima
 f'4 ( \once \tweak #'font-size #-4 bes' ) bes'4. ~ bes'4 ( bes'4 bes'4) g'4 ( a'4 g'4) g'4 ( f'4) f'4 ( g'4 f'4 g'4) \divisioMinima
 ees'4 ( ees'4) ~ ees'4 ( c'4 f'4) f'4 ( g'4) g'4 ( a'\prall bes'4) c''4 ( bes'4) ~ bes'4 ( a'4 f'4) f'4 ( g'4 a'\prall bes'4 a'4 g'4) a'4 ( f'4 g'\prall a'4 g'4 f'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
r2*3/2 c'2*3/2 d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2*5/2 ~ d'4 ~ \divisioMinima
d'2 ees'2 ~ ees'2*4/2 c'2 ~ c'2*4/2 bes2 \divisioMaxima
r2 ees'2*4/2 f'2*4/2 ~ f'2*3/2 d'2*3/2 ~ \divisioMinima
d'4 c'2*4/2 ~ c'2*3/2 f'2 ~ \divisioMinima
f'4 g'4 bes2*4/2 c'2*5/2 g4 \divisioMaxima
f'2 ~ f'2*3/4 ~ f'2*3/2 ees'2*3/2 d'2 c'2*4/2 \divisioMinima
bes2 c'2*3/2 ~ c'2 d'2*4/2 f'2*4/2 ~ f'2*6/2 bes2*6/2 ~ bes2*4/2 ~ bes2 \finalis
r4 g'2*3/2 ~ g'2*3/2 f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 g'2*3/2 \divisioMaxima
d'2 ~ d'2*5/2 ~ d'2*7/2 g'2 ~ \divisioMinima
g'2*3/2 f'2*4/2 ~ f'2*4/2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 r4 ees'2*3/2 f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 d'2 ~ d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 g'2*3/2 ~ \divisioMinima
g'4 f'2 ~ f'2 ~ f'2*3/2 ~ \divisioMaxima
f'2 ~ f'2 ~ f'2*4/2 ees'2*3/2 ~ ees'2*3/2 d'2 ~ d'4 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2*3/2 ~ bes2 ~ bes2 ~ bes4 \divisioMinima
d'2 c'2*5/2 bes4 ~ \divisioMinima
bes2 ~ bes2 ~ bes2*4/2 ~ bes2 aes2*4/2 f2 \divisioMaxima
r4 bes2*5/2 ~ bes2*4/2 c'2*3/2 a2*3/2 ~ \divisioMinima
a4 g2*4/2 f2*3/2 ~ f2 ~ \divisioMinima
f2 ~ f2*4/2 g2*5/2 ees4 \divisioMaxima
c'2 f2*3/4 bes2*3/2 ~ bes2*3/2 ~ bes2 a2*4/2 \divisioMinima
bes2 ~ bes2*3/2 a2 bes2*4/2 c'2*4/2 bes2*6/2 f2*6/2 g2*4/2 f2 ~ \finalis
f4 f'2*3/2 ees'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 ~ ees'2 d'2*3/2 \divisioMaxima
a2 c'2*5/2 bes2*7/2 ~ bes2 ~ \divisioMinima
bes2*3/2 ~ bes2*4/2 c'2*4/2 ~ c'2*3/2 bes2*3/2 a2 bes4 d'4 c'2*3/2 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 c'2 bes2*3/2 \divisioMaxima
a2 c'2 bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2 c'2 bes2*3/2 \divisioMaxima
d'2 c'2 bes2*4/2 g2*3/2 c'2*3/2 ~ c'2 bes4 \finalis
}

bassMusic = {
r2*8/2 a2 g4 ~ \divisioMinima
g2 ~ g2*5/2 ~ g4 ~ \divisioMinima
g2 ~ g2 ees2*4/2 f2 ~ f2*4/2 bes,2 \divisioMaxima
c4 ~ c2*5/2 d2*4/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMinima
d4 ees2*4/2 f2*3/2 d2 ~ \divisioMinima
d2 ~ d2*4/2 c2*5/2 ~ c4 \divisioMaxima
d2 ~ d2*3/4 ~ d2*3/2 ees2*3/2 ~ ees2 f2*4/2 \divisioMinima
g2 ~ g2*3/2 ~ g2 ~ g2*4/2 f2*4/2 d2*6/2 ~ d2*6/2 ees2*4/2 bes,2 \finalis
r2*10/2 \divisioMinima
r2 c'2*3/2 ~ c'2 g2*3/2 \divisioMaxima
d2 ~ d2*5/2 g2*7/2 ees2 ~ \divisioMinima
ees2*3/2 d2*4/2 ~ d2*4/2 g2*3/2 ~ g2*3/2 ~ g2 ~ g4 r2*4/2 bes2*3/2 a2*3/2 ~ \divisioMinima
a2 g2*3/2 ~ g2 ~ g2*3/2 \divisioMaxima
d2 ~ d2 g2*4/2 ees2*3/2 ~ \divisioMinima
ees4 d2 ~ d2 ~ d2*3/2 ~ \divisioMaxima
d2 ~ d2 ~ d2*4/2 c2*3/2 ~ c2*3/2 g2 ~ g4 \finalis
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
