\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.309
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dispersit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dispersit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dispersit" }
    \line {}
  }
}

chantText = \lyricmode {
Dis -- pér -- sit, 
\set stanza = " * " de -- _ dit pau -- pé -- _ ri -- bus: 
ju -- stí -- _ ti -- a e -- _ _ _ jus 
ma -- _ net in sǽ -- _ cu -- lum sǽ -- cu -- li: 
cor -- _ nu e -- jus _ _ 
ex -- al -- tá -- bi -- tur in gló -- ri -- a. Ps. 
Be -- á -- tus vir qui ti -- met Dó -- mi -- num: 
\set stanza = " * " 
in man -- dá -- tis e -- jus vo -- let ni -- mis. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 f'4 ( bes'4 g'4 f'4 bes'4) bes'4 \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( f'4) g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4. ~ bes'4 ( bes'4 bes'4) f'4 ( g'4 f'4 ees'4 d'4 ees'4) ees'4 ( d'4) \divisioMaxima
 ees'4 d'4 ( ees'4 f'4 ees'4 d'4) ees'4 ( f'4 g'4) f'4 f'4  f'4 bes'4 ( bes'4 g'4.) ees'4 ( g'4) aes'4 ( f'4) f'4 \divisioMaior
  g'4 ( f'4) g'4 ( aes'4 f'4 ees'4) f'4 g'4 g'4 bes'4 ( bes'4 bes'4) g'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( ees'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 bes'4. ~ bes'4 ( bes'4 bes'4) g'4 ( f'4) g'4 ( a'4) f'4 ( g'4 a'\prall bes'4 a'4 g'4) a'4 ( bes'4 f'4 f'4) d'4 ( ees'4 d'4) \divisioMaior
 ees'4 ees'4 d'4 ( ees'4 g'4) g'4 g'4 ( a'\prall bes'4) f'4 f'4 ( g'4 f'4 d'4) ees'4 ( f'4 ees'4 d'4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
d'4 ~ d'2*6/2 ~ \divisioMinima
d'2 ees'2 ~ ees'2*4/2 f'2*3/4 bes2*3/2 ~ bes2*6/2 ~ bes2 \divisioMaxima
r4 d'2*5/2 c'2*6/2 d'2 ees'2*3/4 c'2 ~ c'2 ~ c'4 ees'2 ~ ees'2*4/2 c'2 d'4 ~ d'2*7/2 ees'2*6/2 d'2 \divisioMaxima
f'2*3/4 ees'2*3/2 d'2 ~ d'2 ~ d'2*6/2 ~ d'2*4/2 bes2*3/2 ~ \divisioMaior
bes2 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*4/2 ~ bes4 \finalis
f'4 ~ f'2*3/2 ~ f'2*4/2 ees'4 ~ ees'2 f'2*3/2 ~ \divisioMaxima
f'2 ~ f'2 ~ f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ d'2 ~ d'4 r4 g'2*3/2 f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 f'2*3/2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 g'2*3/2 ~ \divisioMinima
g'4 f'2 ~ f'2 ~ f'2*3/2 ~ \divisioMaxima
f'2 ~ f'2 ~ f'2*4/2 ~ f'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \finalis
}

tenorMusic = {
r4 bes2*5/2 f4 \divisioMinima
g2 ~ g2 bes2*4/2 ~ bes2*3/4 f2*3/2 g2*6/2 f2 \divisioMaxima
c'4 bes2*5/2 ~ bes2*6/2 ~ bes2*7/4 ~ bes2 ~ bes2 aes4 c'2 ~ c'2*4/2 ~ c'2 ~ c'4 bes2*7/2 ~ bes2*6/2 ~ bes2 ~ \divisioMaxima
bes2*3/4 ~ bes2*3/2 ~ bes2 a2 g2*6/2 f2*4/2 ~ f2*3/2 ~ \divisioMaior
f2 g2*4/2 ees2*4/2 f2*4/2 ~ f2*4/2 ~ f4 \finalis
r4 ees'2*3/2 d'2*4/2 ~ d'4 c'2 d'2*3/2 ~ \divisioMaxima
d'2 c'2 bes2*3/2 g2*3/2 a2*3/2 c'2 bes4 r4 ees'2*3/2 ~ ees'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 ~ ees'2 d'2*3/2 \divisioMaxima
a2 c'2 bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2 c'2 bes2*3/2 \divisioMaxima
d'2 c'2 bes2*4/2 g2*3/2 a2*3/2 c'2 bes4 \finalis
}

bassMusic = {
bes,4 ~ bes,2*5/2 ~ bes,4 ~ \divisioMinima
bes,2 c2 ~ c2*4/2 d2*3/4 ~ d2*3/2 ees2*6/2 bes,2 \divisioMaxima
r2*6/2 g2*6/2 ~ g2*7/4 ~ g2 f2 ~ f4 r2 bes2*4/2 aes2 g4 ~ g2*7/2 ~ g2*6/2 bes2 \divisioMaxima
d2*3/4 c2*3/2 bes,2 ~ bes,2 ~ bes,2*6/2 ~ bes,2*4/2 ~ bes,2*3/2 ~ \divisioMaior
bes,2 ees2*4/2 c2*4/2 d2*4/2 c2*4/2 bes,4 \finalis
r2*11/2 bes2*3/2 \divisioMaxima
d2 ~ d2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 g2 ~ g4 r2*10/2 \divisioMinima
d'2 ~ d'2*3/2 c'2 bes2*3/2 \divisioMaxima
d2 ~ d2 g2*4/2 ees2*3/2 ~ \divisioMinima
ees4 d2 ~ d2 ~ d2*3/2 ~ \divisioMaxima
d2 ~ d2 ~ d2*4/2 ~ d2*3/2 ~ d2*3/2 g,2 ~ g,4 \finalis
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
        "3"
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
