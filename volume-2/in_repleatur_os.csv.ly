\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.94
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Repleatur os" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Repleatur os"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Repleatur os" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- ple -- á -- tur 
\set stanza = " * " os me -- um lau -- de tu -- _ a, al -- le -- lú -- ia: 
ut pos -- sim can -- tá -- _ re, al -- le -- lú -- ia: 
gau -- de -- _ bunt lá -- _ bi -- _ a _ me -- _ a, 
dum can -- tá -- ve -- ro ti -- bi, al -- le -- lú -- ia, 
al -- le -- _ _ _ lú -- ia. Ps. 
In te Dó -- mi -- ne spe -- rá -- vi, non con -- fún -- dar in æ -- tér -- num: 
\set stanza = " * " 
in ju -- stí -- ti -- a tu -- a lí -- be -- ra me, et é -- ri -- pe me. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 ( e'4 f'4) d'4 ( g'4) g'4 ( c''4) c''4 \divisioMinima
 c''4 c''4 c''4 c''4 ( c''4 c''4) a'4 a'4 ( c''4 a'4) ~ a'4 ( g'4) g'4 \divisioMinima \forceBreak

 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( c''4 a'4 b'\prall c''4) b'4 ( d''4 c''4 c''4) c''4 ( b'4) \divisioMaior
 g'4 g'4 ( a'4) a'4 a'4 a'4 ( g'4) a'4 ( g'4 f'4 g'4) g'4 ( f'4) \divisioMinima \forceBreak

 g'4 g'4 ( a'4 c''4) b'4 ( a'4 c''4 \tiny b' a' 4) a'4 \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 c'' ) c''4. ~ c''4 ( c''4 c''4) a'4 \divisioMinima
 a'4 c''4 ( c''4) c''4 ( c''4) ~ c''4 ( g'4) g'4 c''4 ( c''4 \forceBreak
) a'4. g'4 ( a'4 g'4 f'4) f'4 \divisioMaior
 e'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 g'4 g'4 ( a'4 g'4 f'4 a'4) a'4 \divisioMinima
 a'4 a'4 a'4 ( b'4 a'4) g'4 \divisioMaior \forceBreak

 g'4 g'4 ( a'4 c''4 c''4) ~ c''4 ( g'4.) a'4 ( b'\prall c''4 b'4 a'4) b'4 ( g'4 a'\prall b'4 a'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis
 g'4 a'4 ( c''4 \forceBreak
) c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 c''4 c''4 d''4 c''4 b'4 ( a'4) c''4 ( c''4 c''4) \divisioMaxima
 b'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( c''4 \forceBreak
) c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 ( c''4 b'4) a'4 ( g'4) a'4 b'4 g'4 ( a'4) \finalis
 g'4 a'4 ( c''4) c''4 \forceBreak
 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 d''4 c''4 c''4 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( c''4 c''4) \divisioMaxima
 b'4 ( g'4) a'4 ( c''4) c''4 c''4 c''4 \forceBreak
 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 d''4 c''4 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( c''4 c''4) \divisioMaxima
 b'4 ( g'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 ( c''4 b'4) a'4 ( g'4) a'4 b'4 g'4 ( a'4) \finalis

}

altoMusic = {
r2*3/2 d'2 e'2 ~ e'4 ~ \divisioMinima
e'4 a'2 g'2*4/2 f'2 d'2*3/2 ~ d'4 \divisioMinima
g'2 ~ g'2 e'2*3/2 ~ e'2*4/2 g'2 ~ \divisioMaior
g'4 f'2*4/2 e'2 ~ e'2*4/2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 c'4 \divisioMaxima
e'2 ~ e'2*3/4 f'2*3/2 e'4 ~ \divisioMinima
e'4 a'2 g'2 f'2*3/2 e'2 ~ e'2*3/4 d'2*6/2 ~ d'2 ~ d'2*3/2 c'2*5/2 ~ c'4 \divisioMinima
e'2 d'2*4/2 ~ \divisioMaior
d'4 e'2*4/2 g'2*5/4 f'2 ~ f'2*3/2 d'2*3/2 ~ d'2*3/2 b2*4/2 c'2 \finalis
e'4 ~ e'2 ~ e'2*6/2 \divisioMinima
f'2 g'2 ~ g'2 ~ g'2 e'2*3/2 \divisioMaxima
d'2 c'2 e'2*5/2 ~ e'2*4/2 \divisioMinima
f'2*3/2 d'2 ~ d'2 ~ d'4 c'4 \finalis
e'4 ~ e'2*3/2 ~ e'2 f'4 g'2*3/2 ~ \divisioMinima
g'2 e'2*3/2 ~ e'2 ~ e'2*3/2 ~ \divisioMaxima
e'2 ~ e'2 ~ e'2 f'2 g'2*3/2 \divisioMinima
e'4 d'2 f'2 e'2*3/2 \divisioMaxima
d'2 c'2 e'2*3/2 g'4 f'2*3/2 e'2 d'2 ~ d'4 c'4 \finalis
}

tenorMusic = {
r2*5/2 c'2 ~ c'2 ~ c'2 ~ c'2*4/2 ~ c'2 ~ c'2*3/2 b4 \divisioMinima
c'2 d'2 ~ d'2*3/2 c'2*4/2 e'2 ~ \divisioMaior
e'4 c'2*4/2 ~ c'2 a2*4/2 ~ a2 ~ \divisioMinima
a4 g2*3/2 ~ g2 e2*3/2 ~ e4 \divisioMaxima
c'2 ~ c'2*3/4 ~ c'2*3/2 ~ c'2 ~ c'2 ~ c'2 ~ c'2*3/2 g2 a2*3/4 ~ a2*6/2 ~ a2 e2*3/2 f2*5/2 e4 ~ \divisioMinima
e2 g2*5/2 ~ g2*4/2 ~ g2*5/4 c'2 a2*3/2 g2*3/2 ~ g2*3/2 a2*4/2 ~ a2 \finalis
r4 c'2 ~ c'2*6/2 ~ \divisioMinima
c'2 ~ c'2 e'2 d'2 c'2*3/2 \divisioMaxima
e2 ~ e2 a2*5/2 ~ a2*4/2 ~ \divisioMinima
a2*3/2 b2 g2 e2 \finalis
c'4 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*3/2 d'2 c'2*3/2 \divisioMaxima
g2 e2 a2 ~ a2 g2*3/2 ~ \divisioMinima
g4 a2 ~ a2 ~ a2*3/2 \divisioMaxima
e2 ~ e2 a2*4/2 ~ a2*3/2 b2 g4 e4 ~ e2 \finalis
}

bassMusic = {
c'2*3/2 b2 ~ b2 a4 ~ \divisioMinima
a4 f2 e2*4/2 d2 g2*3/2 ~ g4 ~ \divisioMinima
g2 ~ g2 a2*3/2 ~ a2*4/2 e2 ~ \divisioMaior
e4 f2*4/2 c2 ~ c2*4/2 d2 ~ \divisioMinima
d4 b,2*3/2 g,2 a,2*3/2 ~ a,4 \divisioMaxima
r2 b2*3/4 a2*3/2 g4 ~ \divisioMinima
g4 f2 e2 d2*3/2 c2 ~ c2*3/4 d2*5/2 ~ \divisioMaior
d4 c2 b,2*3/2 a,2*5/2 c4 ~ \divisioMinima
c2 b,2*4/2 ~ \divisioMaior
b,4 c2*4/2 e2*5/4 ~ e2 d2*3/2 g2*3/2 e2*3/2 d2*4/2 a,2 \finalis
r2*3/2 a2*6/2 ~ \divisioMinima
a2 e2 ~ e2 g2 a2*3/2 \divisioMaxima
a,2 ~ a,2 ~ a,2*5/2 c2*4/2 \divisioMinima
d2*3/2 e2 ~ e2 a,2 \finalis
r4 b2*3/2 a2*3/2 e2*3/2 ~ \divisioMinima
e2 a2*3/2 ~ a2 ~ a2*3/2 \divisioMaxima
e2 c2 ~ c2 d2 e2*3/2 ~ \divisioMinima
e4 f2 d2 a,2*3/2 ~ \divisioMaxima
a,2 ~ a,2 ~ a,2*3/2 ~ a,4 d2*3/2 e2 ~ e4 ~ e4 a,2 \finalis
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
