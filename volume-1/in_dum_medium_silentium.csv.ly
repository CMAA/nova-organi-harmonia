\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.78
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dum medium silentium" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dum medium silentium"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dum medium silentium" }
    \line {}
  }
}

chantText = \lyricmode {
Dum mé -- _ di -- um 
\set stanza = " * " si -- lén -- ti -- _ um 
te -- né -- _ rent ó -- mni -- a, 
et nox in su -- o cur -- su mé -- di -- um i -- ter ha -- bé -- _ ret, 
o -- mní -- po -- tens ser -- mo tu -- us, Dó -- mi -- _ ne, 
de cœ -- lis _ a re -- gá -- li -- bus sé -- di -- bus ve -- _ nit. Ps. 
Dó -- mi -- nus re -- gná -- vit, de -- có -- rem in -- dú -- tus est: 
\set stanza = " * " 
in -- dú -- tus est Dó -- mi -- nus for -- ti -- tú -- di -- nem, et præ -- cín -- xit se. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   c'4 ( d'4) d'4 ( g'4 f'4) g'4 ( a'4) g'4 g'4  g'4  g'4 ( bes'4 a'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 ( g'4) g'4 a'4 ( c''4 b'4 \forceBreak
) b'4 ( a'4) c''4 ( c''4 c''4) a'4 ( g'4) g'4 ( a'4 g'4 a'4) \divisioMaxima
 f'4 ( g'4) g'4 ( c''4) c''4 c''4 a'4 c''4 ( c''4) g'4 \divisioMinima
 a'4 a'4 ( f'4 a'4 g'4) g'4 c''4 ( c''4 \forceBreak
) c''4 ( d''4 c''4) a'4 a'4 c''4 ( c''4 a'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 f'4 ( g'4 a'4) a'4 a'4 a'4 f'4 f'4 ( g'4 a'4) a'4 \divisioMinima \forceBreak

  a'4 ( bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) f'4 ( g'4) \divisioMaxima
 c'4 ( d'4) f'4 ( g'4)  g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMinima
 g'4 a'4 ( c''4) b'4 ( b'4 c''4) g'4 a'4 ( g'4 \forceBreak
) c''4 ( c''4) a'4 ( c''4 b'4) c''4 ( c''4 b'4 a'4 b'\prall c''4 b'4 a'4) g'4 ( a'4) b'4 ( a'4 g'4 a'4) a'4 ( g'4) \finalis
 g'4 a'4 ( g'4) g'4 ( c''4) c''4 c''4 c''4 \forceBreak
 c''4 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 c''4 \divisioMaxima
 c''4 ( \once \tweak #'font-size #-4 a' ) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 \forceBreak
 c''4 ( c''4 b'4) g'4 ( a'4) c''4 ( b'4) a'4 a'4 g'4 \finalis
 g'4 a'4 ( g'4) g'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima \forceBreak

 c''4 c''4 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima
 c''4 ( \once \tweak #'font-size #-4 a' ) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima \forceBreak

 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima
 c''4 ( \once \tweak #'font-size #-4 a' ) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 ( c''4 b'4) g'4 ( a'4) c''4 ( b'4) a'4 g'4 ( a'4 d'4) f'4 ( f'4 g'4) \finalis

}

altoMusic = {
r2*4/2 f'4 ~ f'2*3/2 e'2 d'2*3/2 ~ d'4 c'2*4/2 d'2 ~ \divisioMaior
d'2 ~ d'4 e'2*3/2 f'2 g'2*4/2 ~ g'4 e'2*4/2 \divisioMaxima
f'4 g'4 ~ g'2*3/2 f'2 g'2*3/2 ~ \divisioMinima
g'4 f'2 e'2*3/2 ~ e'2 ~ e'2*4/2 d'4 e'2*4/2 c'2 \divisioMaxima
d'4 ~ d'2*3/2 ~ d'2 ~ d'2 c'2*4/2 bes2*5/2 c'2*4/2 ~ c'2 \divisioMaxima
a2*4/2 d'2 c'2*3/2 ~ \divisioMinima
c'4 ~ c'2 e'2*4/2 ~ e'2 ~ e'2 f'2*3/2 g'2*3/2 ~ g'2 e'2*3/2 ~ e'2 ~ e'2*4/2 d'2 \finalis
e'2*6/2 ~ e'2 ~ e'4 g'2 ~ g'2*3/2 e'2*4/2 ~ \divisioMaxima
e'2 f'2*4/2 g'2*5/2 ~ g'2 ~ g'2*3/2 ~ g'2 e'2 ~ e'2 d'4 \finalis
r4 e'2 ~ e'2 ~ e'2*6/2 ~ \divisioMinima
e'2 g'2 ~ g'2*3/2 e'2*3/2 ~ \divisioMaxima
e'2 f'2*6/2 g'2*3/2 ~ \divisioMinima
g'2 ~ g'2*3/2 e'2*3/2 \divisioMaxima
f'2 ~ f'2 g'2*4/2 ~ g'2*3/2 ~ g'2 f'2 e'4 d'2*3/2 c'2 d'4 \finalis
}

tenorMusic = {
r2 d'2*3/2 c'2*3/2 ~ c'2 ~ c'2*3/2 bes4 a2*4/2 ~ a2 ~ \divisioMaior
a2 b4 c'2*3/2 ~ c'2 ~ c'2*3/2 b2 c'2*4/2 ~ \divisioMaxima
c'2 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 ~ \divisioMinima
c'4 ~ c'2 ~ c'2*3/2 ~ c'2 ~ c'2*4/2 b4 a2*4/2 ~ a2 ~ \divisioMaxima
a4 ~ a2*3/2 f2 ~ f2 ~ f2*4/2 ~ f2*5/2 e2*4/2 d4 e4 \divisioMaxima
f2*4/2 ~ f2 ~ f2*3/2 ~ \divisioMinima
f4 e2 a2*4/2 b2 c'2 ~ c'2*3/2 ~ c'2*3/2 d'2 ~ d'2*3/2 b2 c'2*4/2 ~ c'4 b4 \finalis
c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'4 d'2 b2*3/2 c'2*4/2 ~ \divisioMaxima
c'2 ~ c'2*4/2 ~ c'2*5/2 e'2 d'2*3/2 b2 a2 c'2 b4 \finalis
r4 c'2 ~ c'2 ~ c'2*6/2 ~ \divisioMinima
c'2 d'2 b2*3/2 a2*3/2 \divisioMaxima
c'2 ~ c'2*6/2 ~ c'2*3/2 \divisioMinima
d'2 b2*3/2 a2*3/2 ~ \divisioMaxima
a2 d'2 c'2*4/2 d'2*3/2 c'2 ~ c'2 ~ c'4 ~ c'2*3/2 a2 b4 \finalis
}

bassMusic = {
r2*10/2 g2*3/2 ~ g4 a2*4/2 d2 \divisioMaior
c2 ~ c4 ~ c2*3/2 d2 e2*3/2 ~ e2 a2*4/2 ~ \divisioMaxima
a2 e2*3/2 d2 e2*3/2 ~ \divisioMinima
e4 f'2*5/2 b2 a2*4/2 ~ a4 ~ a2*4/2 ~ a2 \divisioMaxima
d4 c2*3/2 ~ c2 bes,2 a,2*4/2 g,2*5/2 c2*4/2 ~ c2 \divisioMaxima
d2*4/2 bes,2 a,2*3/2 \divisioMinima
c4 ~ c2 ~ c2*4/2 ~ c2 ~ c2 d2*3/2 e2*3/2 ~ e2 a2*3/2 ~ a2 f2*4/2 g2 \finalis
r2*3/2 b2*3/2 a2 ~ a4 g2 ~ g2*3/2 a2*4/2 \divisioMaxima
c2 d2*4/2 e2*5/2 ~ e2 g2*3/2 ~ g2 a2 f2 g4 \finalis
r2*3/2 b2 a2*6/2 ~ \divisioMinima
a2 g2 ~ g2*3/2 a2*3/2 \divisioMaxima
c2 d2*6/2 e2*3/2 \divisioMinima
g2 ~ g2*3/2 a2*3/2 \divisioMaxima
d2 ~ d2 e2*4/2 g2*3/2 e2 d2 f4 g2*3/2 ~ g2 ~ g4 \finalis
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
        "VIII"
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
