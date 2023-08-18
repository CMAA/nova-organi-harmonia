\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.250
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laetare Jerusalem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laetare Jerusalem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laetare Jerusalem" }
    \line {}
  }
}

chantText = \lyricmode {
Læ -- tá -- re 
\set stanza = " * " Je -- rú -- sa -- lem: 
et con -- vén -- tum fá -- ci -- te _ 
o -- mnes _ qui di -- lí -- gi -- tis e -- _ am: 
gau -- dé -- te cum læ -- tí -- ti -- a, 
qui in tri -- stí -- _ ti -- a fu -- _ _ í -- stis: 
ut ex -- sul -- té -- tis, et sa -- ti -- é -- _ mi -- ni 
ab u -- bé -- ri -- bus con -- so -- la -- ti -- ó -- nis ve -- _ stræ. Ps. 
Læ -- tá -- tus sum in his quæ di -- cta sunt mi -- hi: 
\set stanza = " * " 
in do -- mum Dó -- mi -- ni í -- bi -- mus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   ees'4  ees'4 ( aes'4 f'4 g'4) f'4 ( ees'4)  ees'4 f'4 g'4 bes'4 ( bes'4) \divisioMaior
 bes'4 bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( d''4 c''4) bes'4 ( a'4) bes'4 ( d''4 c''4 \forceBreak
) bes'4 ( a'4) bes'4 ( bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaior
 g'4 bes'4 ( c''4 bes'4 g'4) ~ g'4 ( ees'4)  aes'4  aes'4 aes'4 f'4 ( aes'4 g'4) aes'4 ( aes'4 g'4 f'4 g'\prall aes'4 g'4 f'4 \forceBreak
) ees'4 ( f'4) g'4 ( f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 g'4 bes'4 ( a'4 bes'4) f'4  g'4 ( aes'4 g'4) ees'4 ( f'4 ees'4) ees'4 \divisioMaior
 ees'4 f'4  aes'4 \forceBreak
 g'4 aes'4 ( bes'4 g'4) g'4 ( f'4 g'\prall aes'4 g'4 aes'4) aes'4 ( g'4) \divisioMinima
 g'4 bes'4 ( bes'4) c''4 ( bes'4 a'4 g'4)  g'4 ( f'4 g'\prall aes'4 g'4 aes'4) aes'4 ( g'4) \divisioMaxima \forceBreak

 g'4 g'4 ( f'4) bes'4 bes'4 ( d''4 c''4) c''4 ( bes'4) \divisioMinima
 bes'4 ( bes'4 bes'4) f'4 a'4 a'4 ( c''4) d''4 ( c''4 d''4) bes'4 ( c''4 bes'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaior \forceBreak

 ees'4  f'4 ( aes'4) g'4 ( g'4 aes'4) f'4 bes'4 ( bes'4) \divisioMinima
 ees'4 f'4 ( g'4) g'4 bes'4 bes'4 ( c''4 bes'4 f'4 g'4)  g'4 ( bes'4 g'4 f'4 g'\prall aes'4 g'4 f'4 \forceBreak
) ees'4 ( f'4) g'4 ( f'4 ees'4 f'4) f'4 ( ees'4) \finalis
 ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima \forceBreak

 g'4 bes'4 bes'4 c''4 a'4 a'4 bes'4 g'4 g'4 \finalis
  ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4  bes'4 \forceBreak
 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4  bes'4 bes'4 c''4 \forceBreak
 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 ( f'4) g'4 ( f'4 ees'4 f'4) \finalis

}

altoMusic = {
r4 ees'2*4/2 ~ ees'2 ~ ees'4 ~ ees'2 d'2 ~ \divisioMaior
d'4 ees'2 f'2*3/2 ~ f'2 g'2*3/2 ~ g'2 d'2*3/2 ~ d'2*3/2 ~ \divisioMaior
d'4 f'2*3/2 ees'2*3/2 ~ ees'2*3/2 ~ ees'2*3/2 c'2*3/2 ~ c'2 ees'2*3/2 ~ ees'2 bes2*4/2 ~ bes2 \divisioMaxima
d'2 ~ d'2 f'2*3/2 ~ f'4 ees'2*3/2 bes2*3/2 ~ bes4 \divisioMaior
ees'4 ~ ees'2 ~ ees'4 bes2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'2 \divisioMinima
ees'4 d'2 ~ d'2*4/2 c'2*3/2 ~ c'2*3/2 ees'2 \divisioMaxima
d'4 ~ d'2*3/2 ees'2*3/2 f'2 ~ \divisioMinima
f'2*3/2 ~ f'2 g'2 a'2*3/2 d'2*6/2 ~ d'2 \divisioMaior
r4 c'2 ~ c'2*4/2 bes2 \divisioMinima
ees'4 ~ ees'2 ~ ees'2 f'2*3/2 ~ f'2 ees'2*3/2 ~ ees'2 ~ ees'2*3/2 ~ ees'2 d'2 ~ d'2 bes2 \finalis
r4 g'2*6/2 ~ g'2*3/2 ~ g'2 \divisioMaxima
r4 ees'2 ~ ees'2*3/2 d'2 ~ d'4 ees'4 ~ ees'2*5/2 f'2*4/2 ~ f'2*4/2 g'2 \divisioMaxima
ees'2*6/2 f'2*6/2 d'2 \divisioMaxima
ees'2 f'2*3/2 ~ f'2 ~ f'2 ~ f'4 d'2 c'2*3/2 bes4 \finalis
}

tenorMusic = {
r4 c'2*4/2 bes2*3/2 ~ bes2 ~ bes2 ~ \divisioMaior
bes4 ~ bes2 ~ bes2*3/2 d'2 ~ d'2*3/2 c'2 ~ c'2*3/2 ~ c'2*3/2 \divisioMaior
bes4 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 aes4 ees2*3/2 f2*3/2 a2 ~ a2*3/2 bes2 ~ bes2*4/2 g2 \divisioMaxima
c'2 bes2 ~ bes2*4/2 ~ bes2*3/2 aes2*3/2 g4 ~ \divisioMaior
g4 aes2 ees4 ~ ees2*3/2 ~ ees2*3/2 f2*3/2 ees2 \divisioMinima
c'4 ~ c'2 bes2*4/2 aes2*3/2 ~ aes2*3/2 bes2 \divisioMaxima
r4 bes2*3/2 ~ bes2*3/2 ~ bes2 \divisioMinima
d'2*3/2 c'2 ~ c'2 ~ c'2*3/2 ~ c'2*6/2 bes2 ~ \divisioMaior
bes4 aes2 ~ aes2*4/2 f2 \divisioMinima
g4 ~ g2 c'2 ~ c'2*3/2 bes2 ~ bes2*3/2 aes2 f2*3/2 g2 ~ g2 bes2 aes4 g4 \finalis
ees'2*7/2 ~ ees'2*3/2 d'2 \divisioMaxima
g4 ~ g2 bes2*3/2 c'2 bes4 ees'2*6/2 ~ ees'2*4/2 ~ ees'2*4/2 d'2 \divisioMaxima
bes2*6/2 ~ bes2*6/2 ~ bes2 ~ \divisioMaxima
bes2 ~ bes2*3/2 ~ bes2 a2 g4 ~ g2 ees2*3/2 d4 \finalis
}

bassMusic = {
r4 f2*4/2 g2*3/2 bes2 r2 \divisioMaior
r4 c2 d2*3/2 ~ d2 ees2*3/2 ~ ees2 g2*3/2 ~ g2*3/2 ~ \divisioMaior
g4 d2*3/2 ees2*3/2 c2*3/2 ~ c2*3/2 aes,2*3/2 a2 c2*3/2 ~ c2 d2*4/2 ees2 \divisioMaxima
g2 ~ g2 d2*4/2 ees2*3/2 ~ ees2*3/2 ~ ees4 \divisioMaior
d4 c2 ~ c4 g,2*3/2 aes,2*3/2 a,2*3/2 c2 ~ \divisioMinima
c4 g2 ~ g2*4/2 ~ g2*3/2 f2*3/2 ees2 \divisioMaxima
bes,4 ~ bes,2*3/2 c2*3/2 d2 ~ \divisioMinima
d2*3/2 ~ d2 ees2 f2*3/2 g2*6/2 ~ g2 ~ \divisioMaior
g4 ~ g2 f2*4/2 d2 ~ \divisioMinima
d4 c2 ~ c2 d2*3/2 ~ d2 ees2*3/2 c2 ~ c2*3/2 ~ c2 bes2 bes,2 ees2 \finalis
r2*7/2 c'2*3/2 g2 \divisioMaxima
r4 c2 ~ c2*3/2 g2 ~ g4 r2*9/2 r2*5/2 g2 \divisioMaxima
c2*6/2 d2*6/2 g2 \divisioMaxima
ees2 ~ ees2*3/2 d2 ~ d2 ~ d4 bes,2 ~ bes,2*3/2 ~ bes,4 \finalis
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
