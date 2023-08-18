\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.88
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Justi decantaverunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Justi decantaverunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Justi decantaverunt" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- sti 
\set stanza = " * " de -- can -- ta -- vé -- runt, Dó -- mi -- ne, no -- men san -- ctum tu -- um, 
et vi -- ctrí -- cem ma -- _ _ num tu -- am lau -- da -- vé -- runt pá -- ri -- ter: 
quó -- ni -- am sa -- pi -- én -- ti -- a a -- pé -- ru -- it os mu -- _ tum, 
et lin -- guas in -- fán -- ti -- um fe -- cit di -- sér -- _ tas. Ps. 
Dó -- mi -- ne Dó -- mi -- nus no -- ster: 
\set stanza = " * " 
quam ad -- mi -- rá -- bi -- le est no -- men tu -- um in u -- ni -- vér -- sa ter -- ra! 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   ees'4 ( ees'4 f'4) ees'4  ees'4 ( g'4) g'4 g'4 f'4 ( g'4) ees'4 g'4 ( bes'4) g'4 bes'4 ( bes'4) \divisioMinima
 bes'4 ( c''4 bes'4 bes'4) g'4 ( f'4) g'4 ( a'\prall bes'4) g'4 ( ees'4) ees'4 ( f'4 ees'4) ees'4 \divisioMaxima
 g'4 ees'4 f'4 ( g'4) g'4 ( f'4 g'4) bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( c''4) bes'4 bes'4 ( d''4 c''4 bes'4) bes'4 ( g'4) \divisioMinima
 g'4 bes'4 ( c''4) c''4 ( bes'4 bes'4) f'4 ( g'4) g'4 ( f'4) bes'4 bes'4 ( c''4 g'4) \divisioMaxima
 bes'4 g'4 bes'4 ( bes'4) bes'4 ( a'4) g'4 ( f'4) g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 a'4 ( bes'4) \divisioMinima
 c''4 ( bes'4) bes'4 ( d''4 c''4) bes'4 ( a'4) bes'4 ( bes'4) g'4 ( bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( g'4 a'4) g'4 ( f'4) \divisioMaior
 g'4 ees'4 f'4 g'4 bes'4 ( bes'4) bes'4 bes'4 ( c''4 bes'4 bes'4) \divisioMinima
 g'4 ( f'4) f'4 ( ees'4)  g'4 ( bes'4 g'4 f'4 g'\prall aes'4 g'4 f'4) ees'4 ( f'4) g'4 ( f'4 ees'4 f'4) f'4 ( ees'4) \finalis
 ees'4 g'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 \finalis
  ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 ( f'4) g'4 ( f'4 ees'4 f'4) \finalis

}

altoMusic = {
c'2*3/2 bes4 ees'2 ~ ees'2 c'2*3/2 d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*4/2 c'2 d'2*3/2 c'2 bes2*3/2 ~ bes4 \divisioMaxima
ees'4 ~ ees'4 d'2 ~ d'2*3/2 ~ d'2 ~ d'2 g'2*3/2 f'2*4/2 d'2 ~ \divisioMinima
d'4 ~ d'2 ~ d'2*3/2 c'2 ~ c'2 d'4 ~ d'2*3/2 \divisioMaxima
g'2 f'2 ees'2 d'2 ~ d'2 ~ d'4 ees'2 \divisioMinima
f'2 ~ f'2*3/2 ~ f'2 d'2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 c'2 \divisioMaior
d'4 c'2*3/2 d'2*4/2 ~ d'2*3/2 \divisioMinima
c'2 bes2 ees'2*3/2 c'2 ~ c'2*3/2 bes2 ~ bes2*4/2 ~ bes2 \finalis
ees'4 ~ ees'2 ~ ees'2*3/2 f'2 \divisioMaxima
ees'4 ~ ees'2 f'2*4/2 ~ f'2 g'2 \divisioMinima
d'2*3/2 ~ d'2 ~ d'4 ~ d'4 r4 g'2*5/2 f'2*5/2 ~ f'2*3/2 g'2 ~ \divisioMaxima
g'2 f'2*4/2 ees'2*3/2 ~ \divisioMinima
ees'4 d'2 ~ d'2 \divisioMaxima
ees'2 f'2*5/2 ees'2 d'4 ~ d'2 c'2*3/2 bes4 \finalis
}

tenorMusic = {
aes2*3/2 g4 c'2 ~ c'2 bes2*3/2 ~ bes2*3/2 ~ bes2 ~ \divisioMinima
bes2*4/2 a2 bes2*3/2 ~ bes2 aes2*3/2 g4 \divisioMaxima
c'2 ~ c'2 bes2*3/2 ~ bes2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 ~ \divisioMinima
bes4 a2 g2*3/2 a2 ~ a2 ~ a4 bes2*3/2 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 ~ bes2 a2 g4 ~ g2 \divisioMinima
f2 bes2*3/2 c'2 d'2 c'2*3/2 bes2 a2*3/2 ~ a2 \divisioMaior
r4 bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 \divisioMinima
aes2*4/2 bes2*3/2 aes2 a2*3/2 g2 ~ g2*4/2 aes4 g4 \finalis
r2*3/2 c'2*3/2 d'2 \divisioMaxima
c'4 ~ c'2 d'2*4/2 ~ d'2 ~ d'2 ~ \divisioMinima
d'2*3/2 a2 g4 bes4 ees'2*6/2 ~ ees'2*5/2 d'2*3/2 ~ d'2 \divisioMaxima
bes2 ~ bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2 g2 ~ \divisioMaxima
g2 f2*5/2 g2 ~ g4 a2 bes2*3/2 ~ bes4 \finalis
}

bassMusic = {
2*6/2 bes2 ~ bes2*3/2 ~ bes2*3/2 a2 \divisioMinima
g2*4/2 ~ g2 ~ g2*3/2 ees2 ~ ees2*3/2 ~ ees4 \divisioMaxima
r2*7/2 a2 g2 ees2*3/2 d2*4/2 g2 ~ \divisioMinima
g4 ~ g2 ~ g2*3/2 ~ g2 a2 g4 ~ g2*3/2 \divisioMaxima
ees2 d2 c2 bes,2 ~ bes,2 ~ bes,4 c2 \divisioMinima
d2 ~ d2*3/2 ~ d2 g2 ~ g2*3/2 ~ g2 ~ g2*3/2 a2 \divisioMaior
bes4 ~ bes2*3/2 a2*4/2 g2*3/2 \divisioMinima
r2 g2 ~ g2*3/2 aes2 f2*3/2 g2 ees2*4/2 ~ ees2 \finalis
r2*8/2 \divisioMaxima
r4 bes2 ~ bes2*4/2 a2 g2 ~ \divisioMinima
g2*3/2 ~ g2 ~ g4 ~ g4 r2*14/2 g2 \divisioMaxima
ees2 d2*4/2 c2*3/2 ~ \divisioMinima
c4 g2 ~ g2 \divisioMaxima
c2 d2*5/2 c2 g4 ~ g2 ~ g2*3/2 bes4 \finalis
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
