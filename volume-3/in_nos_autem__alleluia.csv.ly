\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.170
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Nos autem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Nos autem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Nos autem" }
    \line {}
  }
}

chantText = \lyricmode {
Nos au -- _ _ tem 
\set stanza = " * " glo -- ri -- á -- ri o -- pór -- _ tet 
in cru -- ce Dó -- _ mi -- ni no -- stri Je -- su Chri -- _ sti: 
in quo est sa -- lus, vi -- ta, et re -- sur -- ré -- cti -- o no -- _ stra: 
per _ quem sal -- vá -- ti, et li -- be -- rá -- ti su -- _ _ mus. T.P. 
Al -- le -- lú -- ia, al -- le -- _ lú -- ia. Ps. 
De -- us mi -- se -- re -- á -- tur no -- stri, et be -- ne -- dí -- cat no -- bis: 
\set stanza = " * " 
il -- lú -- mi -- net vul -- tum su -- um su -- per nos, et mi -- se -- re -- á -- tur no -- stri. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( f'4 e'4) e'4 ( f'4) g'4 ( f'4 d'4) f'4 ( e'4) f'4 ( f'4 f'4) \divisioMinima
 f'4 ( d'4) f'4 e'4 ( f'4 g'4) g'4 ( d'4) f'4 ( a'4) g'4. f'4 ( a'4 g'4) e'4 ( e'4 f'4) \divisioMaior
 d'4 g'4 g'4  a'4 ( g'4) a'4 ( bes'4) a'4 a'4 c''4 ( c''4) a'4 ( a'4 g'4) \divisioMinima
 a'4 ( a'4 g'4) f'4  e'4 ( f'4) a'4 ( bes'4 g'4) g'4 \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 a'4  a'4 ( bes'4) a'4 \divisioMinima
 c''4 ( c''4) a'4 ( a'4 g'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( a'4 g'4) f'4 e'4 ( f'4 g'4) g'4  g'4 ( bes'4 a'4) g'4 ( f'4) g'4 ( f'4 g'4) d'4 \divisioMaxima
 d'4 f'4 ( f'4 f'4) f'4 f'4 ( \once \tweak #'font-size #-4 d' ) f'4 ( a'4) g'4 \divisioMinima
 a'4 f'4 g'4 ( f'4) e'4 ( f'4 g'4)  g'4 ( bes'4 a'4 g'4) g'4 ( f'4) a'4 ( g'4 f'4) g'4 ( f'4 e'4) e'4 \finalis
 f'4 ( d'4) f'4 e'4 ( f'4 g'4) g'4 ( d'4) \divisioMinima
 f'4 ( a'4) g'4. f'4 ( a'4 g'4 f'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 a'4 g'4 ( f'4) g'4 ( a'4) g'4 e'4 \finalis
  a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 g'4 ( f'4) g'4 a'4 g'4 e'4 ( g'4 f'4 f'4) \finalis

}

altoMusic = {
a2*3/2 ~ a2 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ \divisioMinima
a2*3/2 c'2*3/2 d'2 c'2 ~ c'2*3/4 a2*3/2 ~ a2*3/2 \divisioMaior
d'4 ~ d'2 ~ d'2*6/2 c'2 ~ c'2*3/2 ~ \divisioMinima
c'2*4/2 ~ c'2 d'2*3/2 ~ d'4 \divisioMaxima
c'2*4/2 d'2*3/2 \divisioMinima
c'2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*4/2 ~ c'2*4/2 d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'4 \divisioMaxima
r4 a2*4/2 ~ a2 d'2*3/2 \divisioMinima
c'2*4/2 ~ c'2*3/2 d'2*4/2 a2 ~ a2*3/2 ~ a2*3/2 ~ a4 \finalis
c'2*3/2 ~ c'2*3/2 d'2 ~ \divisioMinima
d'2 ~ d'2*3/4 ~ d'2*5/2 c'2*4/2 ~ c'2 \finalis
f'2 e'2 ~ e'2*3/2 ~ e'2 ~ e'2 \divisioMinima
f'2 e'2 ~ e'2*3/2 ~ e'2 ~ e'4 \divisioMaxima
c'2 d'2 c'2 ~ c'2*4/2 ~ c'2 ~ c'4 ~ \divisioMinima
c'2*4/2 ~ c'2 ~ c'2 ~ c'2 e'2 d'2*3/2 e'2*3/2 f'2*3/2 \divisioMinima
e'2 d'2 e'2*3/2 ~ e'2*3/2 \divisioMaxima
c'2 d'2 c'2*4/2 ~ c'2*3/2 ~ \divisioMinima
c'2 d'2*3/2 e'2 ~ e'4 \divisioMaxima
c'2 d'2 c'2*5/2 ~ c'2*4/2 ~ c'4 ~ c'2*4/2 \finalis
}

tenorMusic = {
f2*3/2 g2 a2*3/2 g2 f2*3/2 \divisioMinima
a2*3/2 g2*3/2 ~ g2 d2 e2*3/4 ~ e2*3/2 d2*3/2 \divisioMaior
f4 e2 f2*6/2 ~ f2 g2*3/2 \divisioMinima
f2*4/2 g2 ~ g2*3/2 d4 \divisioMaxima
e2*4/2 f2*3/2 ~ \divisioMinima
f2 e2*3/2 ~ \divisioMinima
e2 f2*4/2 g2*4/2 ~ g2*3/2 a2 g2*3/2 f4 \divisioMaxima
r4 d2*4/2 f2 ~ f2*3/2 ~ \divisioMinima
f2*4/2 g2*3/2 ~ g2*4/2 ~ g2 f2*3/2 d2*3/2 e4 \finalis
a2*3/2 g2*3/2 ~ g2 \divisioMinima
a2 ~ a2*3/4 ~ a2*5/2 ~ a2*4/2 ~ a2 \finalis
d'2 ~ d'2 c'2*3/2 ~ c'2 ~ c'2 ~ \divisioMinima
c'2 b2 d'2*3/2 ~ d'2 c'4 \divisioMaxima
e2 ~ e2 ~ e2 g2*4/2 f2 e4 ~ \divisioMinima
e2*4/2 d2 e2 a2 c'2 ~ c'2*3/2 ~ c'2*3/2 d'2*3/2 \divisioMinima
c'2 b2 ~ b2*3/2 c'2*3/2 \divisioMaxima
e2 ~ e2 ~ e2*4/2 f2*3/2 \divisioMinima
g2 ~ g2*3/2 ~ g2 a4 \divisioMaxima
e2 ~ e2 ~ e2*5/2 f2*4/2 g4 a2*4/2 \finalis
}

bassMusic = {
d2*3/2 ~ d2 ~ d2*3/2 ~ d2 ~ d2*3/2 \divisioMinima
a,2*3/2 ~ a,2*3/2 bes,2 c2 ~ c2*3/4 d2*3/2 ~ d2*3/2 ~ \divisioMaior
d4 ~ d2 ~ d2*6/2 a,2 ~ a,2*3/2 ~ \divisioMinima
a,2*4/2 ~ a,2 bes,2*3/2 ~ bes,4 \divisioMaxima
c2*4/2 bes,2*3/2 \divisioMinima
a,2 c2*3/2 \divisioMinima
a,2 ~ a,2*4/2 ~ a,2*4/2 bes,2*3/2 d2 ~ d2*3/2 ~ d4 ~ \divisioMaxima
d4 ~ d2*4/2 ~ d2 bes,2*3/2 \divisioMinima
a,2*4/2 ~ a,2*3/2 bes,2*4/2 d2 ~ d2*3/2 ~ d2*3/2 a,4 ~ \finalis
a,2*3/2 ~ a,2*3/2 bes,2 \divisioMinima
d2 e2*3/4 f2*5/2 g2*4/2 a2 \finalis
r2*7/2 b2 a2 \divisioMinima
d2 e2 ~ e2*3/2 a2 ~ a4 \divisioMaxima
c2 b,2 a,2 ~ a,2*4/2 ~ a,2 ~ a,4 ~ \divisioMinima
a,2*4/2 ~ a,2 ~ a,2 ~ a,2 r2*11/2 \divisioMinima
r2*4/2 a2*3/2 ~ a2*3/2 \divisioMaxima
c2 b,2 a,2*4/2 ~ a,2*3/2 ~ \divisioMinima
a,2 b,2*3/2 c2 ~ c4 ~ \divisioMaxima
c2 b,2 a,2*5/2 ~ a,2*4/2 ~ a,4 ~ a,2*4/2 \finalis
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
