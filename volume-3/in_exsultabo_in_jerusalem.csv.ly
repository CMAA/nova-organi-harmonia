\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.194
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exsultabo in Jerusalem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exsultabo in Jerusalem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exsultabo in Jerusalem" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- sul -- tá -- bo 
\set stanza = " * " in Je -- rú -- sa -- lem, _ 
et gau -- dé -- bo in pó -- pu -- lo me -- _ o: 
et non au -- di -- é -- tur in e -- o ul -- tra vox fle -- tus et vox cla -- mó -- ris. 
E -- léc -- ti me -- _ i non la -- bo -- rá -- bunt fru -- stra, _ _ _ 
ne -- que ge -- ne -- rá -- bunt in con -- tur -- ba -- ti -- ó -- _ ne: 
qui -- a se -- men be -- ne -- di -- ctó -- rum Dó -- mi -- ni est, 
et ne -- pó -- tes e -- ó -- rum cum e -- _ is. T.P. 
Al -- le -- lú -- _ ia, al -- le -- lú -- _ ia. Ps. 
De -- us áu -- ri -- bus no -- stris au -- dí -- vi -- mus: 
\set stanza = " * " 
pa -- tres no -- stri nar -- ra -- vé -- runt o -- pus, quod o -- pe -- rá -- tus es in di -- é -- bus e -- ó -- rum. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 f'4 g'4 ( bes'4) bes'4  bes'4 bes'4 ( g'4) a'4 f'4 bes'4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 a'4 ( bes'4) c''4 ( bes'4) c''4 bes'4 ( bes'4 bes'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4) bes'4 a'4 ( a'4 bes'4) g'4 ( f'4) g'4 ( f'4 ees'4) ees'4 \divisioMaxima
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4) g'4 f'4 ees'4 ( f'4 g'4) g'4 g'4 ( bes'4) bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) g'4 ( f'4) \divisioMinima
 f'4 ( g'4)  g'4 ( f'4 ees'4 f'\prall g'4 aes'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 bes' ) a'4 ( a'4 bes'4) g'4 ( c''4) bes'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaxima
 f'4 f'4 ( g'4) f'4 ( ees'4 g'4) g'4 ( bes'4 f'4) ~ f'4 ( ees'4 f'4) f'4 ( ees'4) \divisioMinima
 ees'4 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 ( c''4 bes'4 bes'4) g'4 bes'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 ( g'4) g'4 ees'4 g'4 ( bes'4) bes'4 ( g'4 a'4) f'4 \divisioMinima
 f'4 d'4 ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( g'4) f'4 d'4 ( ees'4) f'4 ( ees'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 f'4 ( g'4) ees'4 ( f'4) f'4 f'4 f'4 ( g'4) g'4 g'4 ( a'4) f'4 g'4 f'4 g'4 g'4 ( a'\prall bes'4) \divisioMaior
 g'4 f'4 ( ees'4) f'4 ( g'4) g'4 g'4 ( c''4 bes'4) bes'4 ( bes'4 g'4 a'\prall bes'4 a'4 f'4 g'4) f'4 \divisioMinima
 f'4 ees'4 ( g'4 f'4 ees'4) f'4 ( ees'4 d'4) d'4 \finalis
 f'4 g'4 ( f'4) f'4 bes'4 ( bes'4 bes'4) bes'4 ( c''4 bes'4 f'4) \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'\prall bes'4 a'4 f'4) f'4 ( d'4) ees'4 ( f'4 \tiny ees' d' 4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 c''4 bes'4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 ( f'4) g'4 \finalis

}

altoMusic = {
r2 d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2 c'4 \divisioMaior
f'2 ~ f'2 d'4 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 f'2*3/2 ees'2*5/2 bes4 \divisioMaxima
r2 d'2*4/2 ees'2*4/2 d'2*3/2 ~ d'2 ~ d'2*3/2 c'2 \divisioMinima
d'2 ~ d'4 ees'2*4/2 ~ ees'2*4/2 d'2 ~ \divisioMinima
d'2 ~ d'2*3/2 g'2 ~ g'2*4/2 f'2 \divisioMaxima
r4 bes2*5/2 ~ bes2 ~ bes2*4/2 ~ bes2 \divisioMinima
ees'2*4/2 ~ ees'2*3/2 f'2*5/2 g'2*3/2 c'2 ~ c'4 \divisioMaior
d'2 ees'2*4/2 c'2*3/2 ~ c'4 ~ \divisioMinima
c'4 bes2*3/2 ~ bes2*3/2 ~ bes2 c'4 ~ c'2*5/2 ~ c'2 bes2*0/2 ~ \divisioMaxima
bes4 c'2 ~ c'2*4/2 ~ c'2*3/2 d'2*3/2 c'2*3/2 bes2*3/2 ~ \divisioMaior
bes4 ~ bes2 ~ bes2*3/2 ees'2*3/2 f'2 bes2*7/2 ~ \divisioMinima
bes4 ~ bes2*7/2 ~ bes4 \finalis
d'4 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 \divisioMinima
c'2 bes2*5/2 ~ bes2 a2*4/2 bes4 \finalis
r4 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 ~ d'2 ~ d'2*3/2 ~ \divisioMaxima
d'2*4/2 ~ d'2*6/2 a'2 ~ \divisioMinima
a'2*3/2 g'2*5/2 f'2*6/2 ~ f'2 d'4 r4 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ \divisioMaxima
d'2*4/2 ~ d'2*4/2 a'2*3/2 \divisioMinima
a4 g'2 ees'2 f'2*3/2 ~ \divisioMaxima
f'2*4/2 d'2*4/2 ees'2*3/2 ~ ees'2*3/2 d'2 ~ d'4 \finalis
}

tenorMusic = {
r2 bes2*4/2 ~ bes2 c'2*3/2 bes2 a4 \divisioMaior
c'2 a2 ~ a4 g2*3/2 \divisioMinima
a2 bes2*3/2 ~ bes2*3/2 ~ bes2*5/2 g4 \divisioMaxima
r2 bes2*4/2 ~ bes2*4/2 ~ bes2 d'4 c'2 bes2*3/2 a2 ~ \divisioMinima
a2 bes4 ~ bes2*4/2 c'2*4/2 bes2 ~ \divisioMinima
bes2 ~ bes2*3/2 ~ bes2 c'2*4/2 ~ c'2 \divisioMaxima
r4 g2*5/2 ees2 f2*4/2 g2 ~ \divisioMinima
g2*4/2 bes2*3/2 ~ bes2*5/2 ~ bes2*3/2 ~ bes2 a4 ~ \divisioMaior
a2 bes2*4/2 ~ bes2*3/2 a4 ~ \divisioMinima
a4 g2*3/2 f2*3/2 g2 ~ g4 bes2*5/2 a2 bes2*0/2 \divisioMaxima
f4 g2 ~ g2*4/2 ees2*3/2 d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMaior
d4 f2 ees2*3/2 bes2*3/2 ~ bes2 f2*7/2 ~ \divisioMinima
f4 g2*7/2 f4 \finalis
r4 bes2*3/2 g2*3/2 f2*4/2 \divisioMinima
d2 ~ d2*5/2 c2 ees2*4/2 f4 \finalis
bes4 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 d'4 c'2 bes2*3/2 \divisioMaxima
c'2*4/2 bes2*6/2 ~ bes2 ~ \divisioMinima
bes2*3/2 ~ bes2*5/2 ~ bes2*6/2 c'2 bes4 ~ bes4 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2 a2*3/2 c'2 bes2*3/2 \divisioMaxima
c'2*4/2 bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2 ~ bes2 ~ bes2*3/2 \divisioMaxima
c'2*4/2 bes2*4/2 c'2*3/2 bes2*3/2 a2 bes4 \finalis
}

bassMusic = {
r2*6/2 g2 ~ g2*3/2 ~ g2 a4 \divisioMaior
f2 ~ f2 g4 ~ g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 d2*3/2 ees2*5/2 ~ ees4 \divisioMaxima
r2*6/2 g2*4/2 ~ g2 ~ g4 ~ g2 ~ g2*3/2 ~ g2 ~ \divisioMinima
g2 ~ g4 ~ g2*4/2 f2*4/2 bes2 \divisioMinima
r2 g2*3/2 ees2 ~ ees2*4/2 f2 \divisioMaxima
r4 c2*5/2 ~ c2 d2*4/2 ees2 \divisioMinima
c2*4/2 ~ c2*3/2 d2*5/2 ees2*3/2 f2 ~ f4 ~ \divisioMaior
f2 ~ f2*4/2 ~ f2*3/2 ~ f4 ~ \divisioMinima
f4 g2*3/2 d2*3/2 c2 ~ c4 ~ c2*5/2 <f f,>2 d2*0/2 ~ \divisioMaxima
d4 c2 ~ c2*4/2 ~ c2*3/2 bes,2*3/2 a,2*3/2 g,2*3/2 ~ \divisioMaior
g,4 ~ g,2 c2*3/2 ~ c2*3/2 d2 ~ d2*7/2 ~ \divisioMinima
d4 ees2*7/2 bes,4 ~ \finalis
bes,4 ~ bes,2*3/2 ~ bes,2*3/2 ~ bes,2*4/2 \divisioMinima
a,2 g,2*5/2 c2 ~ c2*4/2 bes,4 \finalis
r2*3/2 a2*3/2 g2*3/2 ~ g4 ~ g2 ~ g2*3/2 \divisioMaxima
d2*4/2 g2*6/2 f2 ~ \divisioMinima
f2*3/2 ees2*5/2 d2*6/2 ~ d2 g4 r2*4/2 a2*3/2 g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 ~ g2 ~ g2*3/2 \divisioMaxima
d2*4/2 g2*4/2 f2*3/2 ~ \divisioMinima
f4 ees2 c2 d2*3/2 ~ \divisioMaxima
d2*4/2 g2*4/2 c2*3/2 ~ c2*3/2 d2 g4 \finalis
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
