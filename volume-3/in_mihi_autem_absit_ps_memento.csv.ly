\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.59
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Mihi autem absit. Ps. Memento" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Mihi autem absit. Ps. Memento"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Mihi autem absit. Ps. Memento" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- hi au -- tem 
\set stanza = " * " ab -- sit glo -- ri -- á -- ri, 
ni -- si in cru -- ce Dó -- mi -- ni _ no -- stri Je -- su Chri -- sti, 
per quem mi -- hi mun -- dus cru -- ci -- fí -- xus est, 
et e -- _ go mun -- do. _ Ps. 
Me -- mén -- to Dó -- mi -- ne Da -- vid 
\set stanza = " * " 
et o -- mnis man -- su -- e -- tú -- di -- nis e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 fis'4 fis'4 a'4 ( a'4) \divisioMinima
 b'4 ( a'4 b'4) b'4 ( a'4 b'4 fis'4) a'4 ( cis''4) b'4 ( a'4) a'4 ( gis'4) e'4 ( fis'4) \divisioMaior
 fis'4 ( b'4) b'4 b'4  b'4 ( cis''\prall dis''4 cis''4) cis''4 ( b'4) \divisioMinima
 b'4 ( cis''4) b'4 ( a'4) a'4. gis'4 ( b'4 a'4) fis'4 ( gis'4 e'4) fis'4 \divisioMinima
 fis'4 a'4 ( a'4 b'4) fis'4 ( gis'4 fis'4 e'4) e'4 \divisioMaxima
 a'4 a'4 ( a'4 a'4) fis'4 fis'4 ( b'4) b'4 a'4 a'4 a'4 ( b'4) b'4 a'4 a'4 ( cis''4 b'4) \divisioMaior
 a'4 ( b'4 a'4 a'4) e'4 ( fis'4) a'4 ( a'4 b'4) a'4 a'4 ( cis''4 \tiny b' a' 4) a'4 ( a'4 a'4) fis'4 ( gis'4 fis'4) \finalis
 e'4 fis'4 ( e'4) e'4 ( a'4) a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 a'4 a'4 a'4 b'4 a'4 ( fis'4) a'4 gis'4 ( e'4) fis'4 ( gis'4 fis'4) \finalis
  e'4 fis'4 ( e'4) e'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 a'4 a'4 a'4 b'4 a'4 ( fis'4) a'4 gis'4 ( e'4) fis'4 ( gis'4 fis'4) \finalis

}

altoMusic = {
c'2 b4 c'2 \divisioMinima
e'2*3/2 f'2*3/2 ~ f'4 e'2*4/2 ~ e'2 ~ e'2 \divisioMaior
d'2*4/2 ~ d'2*4/2 e'2 \divisioMinima
f'2*4/2 e'2*3/4 ~ e'2*3/2 d'2*3/2 c'4 ~ \divisioMinima
c'4 d'2*3/2 c'2*4/2 ~ c'4 ~ \divisioMaxima
c'4 ~ c'2*3/2 b4 ~ b2 e'2*3/2 d'2 e'2 f'2*3/2 \divisioMaior
e'2*4/2 ~ e'2 d'2*4/2 c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 ~ \finalis
c'4 b2 c'2 d'2*5/2 e'2*3/2 \divisioMaxima
c'2 ~ c'2 ~ c'2*4/2 ~ c'4 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 cis'4 b2 cis'2 d'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 fis'2*5/2 e'2*3/2 \divisioMaxima
cis'2 ~ cis'2 ~ cis'2*4/2 ~ cis'2*3/2 \divisioMinima
d'2 ~ d'2 ~ d'4 e'2*3/2 \divisioMaxima
d'2 ~ d'2 ~ d'2*5/2 cis'2*3/2 ~ cis'2 ~ cis'2*3/2 \finalis
}

tenorMusic = {
a2 g4 f2 \divisioMinima
g2*3/2 a2*4/2 ~ a2*4/2 c'2 b2 ~ \divisioMaior
b2*4/2 a2*4/2 g2 \divisioMinima
a2*4/2 ~ a2*3/4 b2*3/2 ~ b2*3/2 c'4 \divisioMinima
f4 ~ f2*3/2 ~ f2*4/2 g4 \divisioMaxima
f4 ~ f2*3/2 ~ f4 ~ f2 e2*3/2 f2 a2 ~ a2*3/2 ~ \divisioMaior
a2*4/2 f2 ~ f2*4/2 ~ f2*4/2 ~ f2*3/2 a2*3/2 ~ \finalis
a4 ~ a2 ~ a2 b2*5/2 c'2*3/2 ~ \divisioMaxima
c'2 b2 a2*4/2 g4 f2*3/2 g2 a2*3/2 ~ a4 ~ a2 ~ a2 b2*3/2 cis'2*3/2 ~ \divisioMinima
cis'2 d'2*5/2 cis'2*3/2 ~ \divisioMaxima
cis'2 b2 a2*4/2 fis2*3/2 ~ \divisioMinima
fis2 ~ fis2 ~ fis4 e2*3/2 \divisioMaxima
fis2 ~ fis2 ~ fis2*5/2 ~ fis2*3/2 b2 a2*3/2 \finalis
}

bassMusic = {
r2*5/2 \divisioMinima
e2*3/2 d2*4/2 c2*4/2 ~ c2 ~ c2 \divisioMaior
b,2*4/2 ~ b,2*4/2 e2 \divisioMinima
d2*4/2 c2*3/4 ~ c2*3/2 b,2*3/2 a,4 ~ \divisioMinima
a,4 b,2*3/2 c2*4/2 ~ c4 \divisioMaxima
r4 e2*3/2 ~ e4 d2 c2*3/2 b,2 c2 d2*3/2 \divisioMaior
c2*4/2 ~ c2 d2*4/2 e2*4/2 f2*3/2 ~ f2*3/2 \finalis
r2*13/2 \divisioMaxima
f2 ~ f2 ~ f2*4/2 ~ f4 ~ f2*3/2 c2 f2*3/2 r2*11/2 \divisioMinima
r2*10/2 \divisioMaxima
fis2 ~ fis2 ~ fis2*4/2 e2*3/2 \divisioMinima
d2 cis2 b,4 cis2*3/2 \divisioMaxima
d2 cis2 b,2*5/2 fis2*3/2 ~ fis2 ~ fis2*3/2 \finalis
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
        "II"
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
