\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.402
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Miseratio" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Miseratio"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Miseratio" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- se -- rá -- ti -- o 
\set stanza = " * " hó -- mi -- nis cir -- ca pró -- xi -- mum: _ 
mi -- se -- ri -- cór -- di -- a au -- tem De -- _ i su -- per o -- mnem car -- _ nem. 
Qui mi -- se -- ri -- cór -- di -- am ha -- _ bet, 
do -- _ cet et é -- ru -- dit qua -- si pa -- stor gre -- gem su -- _ um. Ps. 
Be -- á -- tus vir qui non áb -- i -- it in con -- sí -- li -- o im -- pi -- ó -- rum, et in vi -- a pec -- ca -- tó -- rum non ste -- tit: 
\set stanza = " * " 
et in cá -- the -- dra pe -- sti -- lén -- ti -- æ non se -- dit. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( f'4 e'4) f'4 e'4 ( f'4 g'4) g'4 g'4  a'4 ( g'4 a'4) f'4 f'4 ( d'4 f'4) \divisioMinima
 g'4 e'4 f'4 ( g'4) f'4 e'4 ( g'4 f'4 f'4) d'4 ( e'4 d'4) \divisioMaior
 d'4 g'4 a'4  a'4 ( bes'4) a'4 a'4 c''4 ( c''4) a'4 ( a'4 g'4) g'4 ( a'4 f'4) ~ f'4 ( e'4 f'4) f'4 ( e'4) \divisioMinima
 f'4 f'4 e'4 ( f'4 g'\prall a'4) a'4 ( g'4) g'4 ( e'4) f'4 ( e'4 d'4) e'4 ( d'4) \divisioMaxima
 d'4 d'4 f'4 ( e'4) f'4 d'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 g'4 ( e'4) g'4 ( f'4 e'4) f'4 \divisioMaior
 f'4 ( f'4) ~ f'4 ( d'4) f'4 ( e'4) f'4 ( g'4) g'4 ( a'4 g'4 a'4) f'4 ( g'4) g'4 ( e'4) \divisioMinima
 g'4 g'4 b'4 ( b'4 c''4) a'4 ( g'4) e'4 ( f'4 g'4) g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( a'4 g'4 f'4) g'4 ( f'4 e'4) e'4 \finalis
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 g'4 ( f'4) g'4 ( a'4) g'4 e'4 \finalis
  a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 g'4 ( f'4) g'4 ( a'4) g'4 e'4 \finalis

}

altoMusic = {
d'2*4/2 ~ d'2*5/2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 a2*4/2 ~ a2*3/2 \divisioMaior
d'2*3/2 ~ d'2*4/2 c'2 ~ c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'2 ~ \divisioMinima
c'2 ~ c'2*4/2 ~ c'2 a2*5/2 ~ a2 \divisioMaxima
r2*5/2 d'2*4/2 c'2*6/2 ~ \divisioMaior
c'2 ~ c'2*6/2 ~ c'2*6/2 ~ c'2 \divisioMinima
d'2 e'2*3/2 ~ e'2 ~ e'2*3/2 d'2 c'2*4/2 b2*3/2 c'4 \finalis
e'2 d'2*3/2 e'2*3/2 ~ e'2*10/2 ~ e'2 ~ \divisioMinima
e'2*6/2 ~ e'2*5/2 ~ e'2 ~ e'4 ~ \divisioMaxima
e'2 ~ e'2 ~ e'2*5/2 ~ e'2 d'2 b2 c'2 e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*5/2 ~ e'2 ~ e'4 ~ \divisioMaxima
e'2 d'2 ~ d'2*4/2 c'2*3/2 \divisioMinima
b2 d'2*3/2 ~ d'2 c'4 ~ \divisioMaxima
c'2 d'2 e'2*5/2 b2*4/2 c'2 \finalis
}

tenorMusic = {
a2*4/2 g2*5/2 f2*4/2 a2*3/2 ~ \divisioMinima
a2 ~ a2*3/2 g2*4/2 f2*3/2 ~ \divisioMaior
f2*3/2 ~ f2*4/2 ~ f2 e2*3/2 f2 g2*4/2 a2 ~ \divisioMinima
a2 g2*4/2 e2 ~ e2 g2*3/2 f2 \divisioMaxima
r2 c'2*3/2 b2*4/2 a2*6/2 ~ \divisioMaior
a2 g2*6/2 f2*6/2 e2 ~ \divisioMinima
e2 a2*3/2 ~ a2 ~ a2*3/2 ~ a2 ~ a2*7/2 ~ a4 \finalis
c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*10/2 ~ c'2 ~ \divisioMinima
c'2*6/2 b2 d'2*3/2 ~ d'2 c'4 ~ \divisioMaxima
c'2 b2 a2*5/2 ~ a2*4/2 ~ a2 ~ a2 c'2 d'2*3/2 ~ d'2*3/2 c'2*3/2 ~ \divisioMinima
c'2 b2 d'2*3/2 ~ d'2 c'4 \divisioMaxima
e2 ~ e2 ~ e2*4/2 ~ e2*3/2 ~ \divisioMinima
e2 ~ e2*3/2 ~ e2 ~ e4 \divisioMaxima
a2 ~ a2 ~ a2*5/2 ~ a2*4/2 ~ a2 \finalis
}

bassMusic = {
d2*4/2 ~ d2*5/2 ~ d2*4/2 ~ d2*3/2 \divisioMinima
e2 d2*3/2 ~ d2*4/2 ~ d2*3/2 \divisioMaior
c2*3/2 bes,2*4/2 a,2 ~ a,2*3/2 ~ a,2 ~ a,2*4/2 ~ a,2 ~ \divisioMinima
a,2 c2*4/2 ~ c2 d2 ~ d2*3/2 ~ d2 \divisioMaxima
r2 a2*3/2 ~ a2*4/2 ~ a2*6/2 \divisioMaior
a,2 ~ a,2*6/2 ~ a,2*6/2 ~ a,2 ~ \divisioMinima
a,2 ~ a,2*3/2 c2 d2*3/2 ~ d2 a,2*7/2 ~ a,4 \finalis
a2*8/2 b2*10/2 a2 ~ \divisioMinima
a2*6/2 e2 ~ e2*3/2 a2 ~ a4 \divisioMaxima
c2 ~ c2 ~ c2*5/2 d2*4/2 ~ d2 a,2 r2 b2*3/2 a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2 e2 ~ e2*3/2 a2 ~ a4 \divisioMaxima
c2 b,2 a,2*4/2 ~ a,2*3/2 \divisioMinima
e,2 ~ e,2*3/2 a,2 ~ a,4 ~ \divisioMaxima
a,2 b,2 c2*5/2 d2*4/2 a,2 \finalis
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
        "IV"
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
