\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.257
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sermo meus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sermo meus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sermo meus" }
    \line {}
  }
}

chantText = \lyricmode {
Ser -- mo me -- us, 
\set stanza = " * " et præ -- di -- cá -- ti -- o _ me -- a _ 
non in per -- su -- a -- si -- bí -- li -- bus hu -- má -- næ sa -- pi -- én -- _ _ ti -- æ ver -- bis, _ _ 
sed in _ o -- sten -- si -- ó -- ne spí -- _ ri -- tus et vir -- tú -- tis. Ps. 
Con -- fi -- té -- bor ti -- bi, Dó -- mi -- ne, in to -- to cor -- de me -- o, 
\set stanza = " * " 
in con -- sí -- li -- o ju -- stó -- rum et con -- gre -- ga -- ti -- ó -- ne. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( d'4 ees'4) c'4 ( f'4) f'4 ( bes'4) bes'4 \divisioMinima
 bes'4 bes'4 bes'4 g'4 ( bes'4) bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( f'4) f'4 ( g'4 f'4 f'4) d'4 ( ees'4 d'4) \divisioMaior
 ees'4 ( ees'4) c'4 c'4 ( f'4 d'4) d'4 d'4 ( f'4) f'4 f'4 ( g'4) g'4 g'4 \divisioMinima
 g'4 g'4 ( c''4 bes'4 a'4 bes'4) bes'4 bes'4 bes'4 bes'4 ( a'4) bes'4 ( a'4) bes'4 ( d''4 c''4) c''4 ( a'4) a'4 a'4 ( c''4 bes'4) a'4 ( c''4 a'4) bes'4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 ( g'4 a'\prall bes'4) a'4 ( c''4 bes'4) ~ bes'4 ( f'4) f'4 f'4 ( g'4) f'4 d'4 ( ees'\prall f'4 g'4) f'4 \divisioMinima
 ees'4 ( ees'4) ~ ees'4 ( c'4) c'4 ( f'4) f'4 ees'4 ( g'4 f'4) f'4 ( d'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 c''4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
r2*3/2 c'2 d'2 ~ d'4 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2 ees'2 d'2 c'2*4/2 bes2*3/2 ~ \divisioMaior
bes2*3/2 a2*4/2 ~ a2*3/2 bes2*4/2 ~ \divisioMinima
bes4 ees'2*6/2 f'2 ~ f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*4/2 d'2*3/2 ~ \divisioMaxima
d'2*6/2 ~ d'2*4/2 c'2*3/2 bes2*5/2 ~ \divisioMinima
bes2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 c'2*4/2 bes2 \finalis
f'4 ~ f'2*6/2 ~ f'2*3/2 ~ \divisioMinima
f'2*3/2 g'2 ees'2 g'2*3/2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 g'2*4/2 f'2*3/2 d'2*3/2 ~ d'2 ~ d'4 f'4 ~ f'2*6/2 ~ f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 g'2*3/2 \divisioMaxima
f'2 ~ f'2 ~ f'2*4/2 ~ f'2*3/2 ~ \divisioMinima
f'4 ees'2 ~ ees'2 f'2*3/2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 ees'2*3/2 ~ ees'2*3/2 d'2 ~ d'4 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2 ~ bes2 ~ bes4 \divisioMinima
d'2*3/2 c'2*3/2 bes2*4/2 ~ bes2 a2*4/2 g2*3/2 ~ \divisioMaior
g2*3/2 f2*4/2 ~ f2*3/2 ~ f2*4/2 ~ \divisioMinima
f4 bes2*6/2 ~ bes2 f2*4/2 g2*3/2 a2*3/2 bes2*3/2 c'2*4/2 a2*3/2 \divisioMaxima
bes2*6/2 f2*4/2 d2*3/2 ~ d2*5/2 \divisioMinima
g2 f2 ees2*3/2 c2*3/2 d2 ~ d2*4/2 g2 \finalis
r4 ees'2*6/2 d'2*3/2 ~ \divisioMinima
d'2*3/2 ees'2 ~ ees'2 d'2*3/2 ~ \divisioMaxima
d'2 c'2 bes2*4/2 d'2*4/2 bes2*3/2 a2*3/2 c'2 bes4 r4 ees'2*6/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 ~ ees'2 d'2*3/2 ~ \divisioMaxima
d'2 c'2 bes2*4/2 f2*3/2 ~ \divisioMinima
f4 g2 bes2 ~ bes2*3/2 \divisioMaxima
c'2 a2 bes2*4/2 c'2*3/2 bes2*3/2 a2 bes4 \finalis
}

bassMusic = {
r2*5/2 a2 g4 ~ \divisioMinima
g2*3/2 ~ g2*3/2 ~ g2*4/2 ~ g2 ~ g2*4/2 ~ g2*3/2 \divisioMaior
f2*3/2 ~ f2*4/2 d2*3/2 ~ d2*4/2 ~ \divisioMinima
d4 c2*6/2 d2 ~ d2*4/2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d2*4/2 ~ d2*3/2 \divisioMaxima
bes,2*6/2 ~ bes,2*4/2 a,2*3/2 g,2*5/2 ~ \divisioMinima
g,2 ~ g,2 ~ g,2*3/2 ~ g,2*3/2 ~ g,2 ~ g,2*4/2 ~ g,2 \finalis
r2*10/2 \divisioMinima
r2*3/2 c'2 ~ c'2 g2*3/2 \divisioMaxima
d2 ~ d2 g2*4/2 ees2*4/2 d2*3/2 ~ d2*3/2 g2 ~ g4 r2*12/2 c'2*3/2 ~ c'2 g2*3/2 \divisioMaxima
d2 ~ d2 ~ d2*4/2 ~ d2*3/2 ~ \divisioMinima
d4 c2 ~ c2 d2*3/2 \divisioMaxima
g2 ~ g2 ~ g2*4/2 c2*3/2 ~ c2*3/2 d2 g4 \finalis
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
