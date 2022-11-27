\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.54
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Vocem jucunditatis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Vocem jucunditatis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Vocem jucunditatis" }
    \line {}
  }
}

chantText = \lyricmode {
Vo -- cem ju -- cun -- di -- tá -- tis 
\set stanza = " * " an -- nun -- ti -- _ á -- te. _ 
et au -- di -- á -- tur, _ al -- le -- lú -- ia: 
nun -- ti -- á -- te us -- que ad ex -- tré -- _ _ mum ter -- ræ: _ _ 
li -- be -- rá -- vit Dó -- mi -- nus pó -- pu -- lum su -- um, 
al -- le -- lú -- _ ia, al -- le -- _ _ _ _ lú -- ia. Ps. 
Ju -- bi -- lá -- te De -- o om -- nis ter -- ra: 
\set stanza = " * " 
psal -- mum dí -- ci -- te nó -- mi -- ni e -- jus, da -- te gló -- ri -- am lau -- di e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 ( e'4 f'4) d'4 ( g'4 e'4) e'4 ( g'4) g'4 ( a'4) a'4 ( c''4 b'4) c''4 c''4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 c''4 ( c''4) ~ c''4 ( a'4) a'4 ( g'4) g'4 ( a'4 g'4 g'4) e'4 ( f'4 e'4) \divisioMaior \forceBreak

 e'4 e'4 ( f'4 a'4) a'4 ( b'\prall c''4 g'4) g'4 ( f'4) f'4 ( g'4 f'4 f'4) d'4 ( e'4 d'4) \divisioMinima
 e'4 ( f'4) d'4 ( f'4 e'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima \forceBreak

 e'4 ( f'4) d'4 ( g'4 e'4) e'4 ( g'4) g'4 ( a'4) \divisioMinima
 a'4 ( d''4 c''4 b'4 c''4) b'4 c''4 c''4 c''4 ( b'4) c''4 ( b'4) c''4 ( e''4 d''4) d''4 ( b'4) b'4 ( d''4 c''4 \forceBreak
) b'4 ( d''4 b'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMaxima
 g'4 a'4 ( b'\prall c''4) c''4 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( c''4 c''4) a'4 ( g'4) g'4 \divisioMinima
 g'4 ( b'4 a'4) g'4 g'4 e'4 ( f'4 a'4) a'4 \divisioMaior \forceBreak

 a'4 ( b'\prall c''4 \once \tweak #'font-size #-4 g' ) a'4 ( g'4) g'4 ( e'4) f'4 ( \tiny e' d' 4) e'4 ( d'4) \divisioMinima
 d'4 ( e'4) g'4 ( a'4.) g'4 ( a'4 b'\prall c''4 b'4) c''4 ( b'4 g'4.) a'4 ( b'\prall c''4 b'4 a'4 \forceBreak
) b'4 ( g'4 a'\prall b'4 a'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis
 g'4 a'4 ( c''4) c''4 c''4 c''4 c''4 d''4 c''4 \forceBreak
 b'4 ( a'4) c''4 ( c''4 c''4) \divisioMaxima
 b'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 c''4 c''4 c''4 ( c''4 b'4 \forceBreak
) a'4 ( \once \tweak #'font-size #-4 g' ) a'4 b'4 g'4 ( a'4) \finalis
  g'4 a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 \forceBreak
 d''4 c''4 c''4 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( c''4 c''4) \divisioMaxima
 b'4 ( g'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 d''4 c''4 \forceBreak
 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( c''4 c''4) \divisioMaxima
 b'4 ( g'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 ( c''4 b'4) a'4 ( g'4) a'4 b'4 g'4 ( a'4) \finalis

}

altoMusic = {
c'2*3/2 b2*3/2 c'2 d'2 f'2*3/2 g'2 \divisioMinima
a'2*3/2 g'2 ~ g'2 e'2 c'2*4/2 ~ c'2*3/2 ~ \divisioMaior
c'4 ~ c'2*3/2 e'2*4/2 ~ e'2 d'2*4/2 ~ d'4 r2 \divisioMinima
c'2 b2*3/2 c'2*4/2 ~ c'2 ~ \divisioMaxima
c'2 b2*3/2 c'2 d'2 \divisioMinima
e'2 f'2*4/2 g'2 ~ g'2 ~ g'2 a'2*3/2 b'2 ~ b'2*3/2 e'2 ~ e'2 d'2*3/2 \divisioMaxima
e'4 ~ e'2*3/2 ~ e'4 f'2 g'2*3/2 e'2*3/2 \divisioMinima
d'2*3/2 c'2 ~ c'2*3/2 ~ c'4 \divisioMaior
e'2*4/2 ~ e'2 ~ e'2 r2*5/2 \divisioMinima
a2 d'2*5/4 c'2*5/2 d'2 ~ d'2*3/4 e'2 ~ e'2*3/2 d'2*3/2 c'2*3/2 ~ c'2*4/2 ~ c'2 \finalis
r4 e'2*4/2 ~ e'2 ~ e'2 ~ e'2 ~ e'2*3/2 \divisioMaxima
g'2 ~ g'2*8/2 f'2 \divisioMinima
e'2*4/2 g'2*3/2 e'2*3/2 d'4 c'2 r4 e'2*6/2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 \divisioMaxima
g'2 e'2*6/2 ~ e'2*3/2 ~ \divisioMinima
e'4 f'2 ~ f'2 e'2*3/2 \divisioMaxima
g'2 ~ g'2*6/2 f'2*3/2 e'2*3/2 d'4 c'2 \finalis
}

tenorMusic = {
g2*3/2 ~ g2*3/2 a2 b2 c'2*3/2 ~ c'2 ~ \divisioMinima
c'2*3/2 ~ c'2 ~ c'2 b2 g2*4/2 a2*3/2 \divisioMaior
r4 a2*3/2 ~ a2*4/2 ~ a2 ~ a2*4/2 ~ a2*3/2 ~ \divisioMinima
a2 ~ a2*3/2 ~ a2*4/2 ~ a2 ~ \divisioMaxima
a2 ~ a2*3/2 ~ a2 b2 \divisioMinima
c'2 ~ c'2*4/2 ~ c'2 d'2 e'2 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 d'2 c'2 b2*3/2 \divisioMaxima
c'4 b2*3/2 a4 ~ a2 g2*3/2 b2*3/2 ~ \divisioMinima
b2*3/2 a2 ~ a2*3/2 f4 \divisioMaior
e2*4/2 c'2 b2 a2*3/2 f2 \divisioMinima
r2 e2*5/4 ~ e2*5/2 g2 ~ g2*3/4 ~ g2 a2*3/2 g2*3/2 ~ g2*3/2 ~ g2 d2 a2 \finalis
r4 c'2*4/2 ~ c'2 ~ c'2 d'2 c'2*3/2 \divisioMaxima
d'2 c'2*8/2 ~ c'2 ~ \divisioMinima
c'2*4/2 ~ c'2*3/2 b2*3/2 e4 ~ e2 r4 c'2*6/2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*3/2 d'2 c'2*3/2 \divisioMaxima
d'2 ~ d'2*6/2 c'2*3/2 \divisioMinima
c4 c'2 d'2 c'2*3/2 \divisioMaxima
d'2 c'2*6/2 ~ c'2*3/2 b2*3/2 e4 ~ e2 \finalis
}

bassMusic = {
c2*3/2 ~ c2*3/2 ~ c2 ~ c2 d2*3/2 e2 \divisioMinima
f2*3/2 ~ f2 e2 ~ e2 ~ e2*4/2 a2*3/2 \divisioMaior
a,4 ~ a,2*3/2 c2*4/2 d2 ~ d2*4/2 f2*3/2 \divisioMinima
r2*9/2 a,2 \divisioMaxima
c2 ~ c2*3/2 ~ c2 ~ c2 ~ \divisioMinima
c2 d2*4/2 e2 ~ e2 ~ e2 f2*3/2 g2 a2*3/2 ~ a2 ~ a2 b2*3/2 \divisioMaxima
c4 ~ c2*3/2 ~ c4 d2 e2*3/2 ~ e2*3/2 ~ \divisioMinima
e2*3/2 ~ e2 d2*3/2 ~ d4 \divisioMaior
c2*4/2 ~ c2 ~ c2 d2*3/2 ~ d2 \divisioMinima
c2 b,2*5/4 a,2*5/2 g,2 b,2*3/4 c2 ~ c2*3/2 e2*3/2 ~ e2*3/2 a,2*4/2 ~ a,2 \finalis
r2*5/2 b2 a2 ~ a2 ~ a2*3/2 \divisioMaxima
e2 ~ e2*8/2 d2 \divisioMinima
c2*4/2 e2*3/2 ~ e2*3/2 ~ e4 a,2 r2*7/2 b2*3/2 ~ \divisioMinima
b2 a2*3/2 ~ a2 ~ a2*3/2 \divisioMaxima
e2 a2*6/2 ~ a2*3/2 \divisioMinima
'a4 d2 ~ d2 a2*3/2 \divisioMaxima
e2 ~ e2*6/2 d2*3/2 e2*3/2 ~ e4 a,2 \finalis
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
