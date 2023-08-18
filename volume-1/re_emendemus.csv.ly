\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.155
%(volume.page)

global = {
 \key bes \locrian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Emendemus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Emendemus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Emendemus" }
    \line {}
  }
}

chantText = \lyricmode {
E -- men -- dé -- mus 
\set stanza = " * " in mé -- li -- us, 
quæ i -- gno -- rán -- _ ter pec -- _ _ cá -- vi -- mus: 
ne sú -- bi -- to præ -- oc -- cu -- pá -- ti di -- e mor -- tis, 
quæ -- rá -- mus spá -- ti -- um pæ -- ni -- tén -- ti -- æ, 
et in -- ve -- ní -- re non _ _ pos -- sí -- mus. 
\set stanza = " * " 
At -- tén -- de Dó -- mi -- ne, et mi -- se -- ré -- re: _ _ _ 
qui -- a pec -- cá -- vi -- mus _ ti -- bi. ℣. 
Ad -- _ ju -- va nos, De -- us sa -- lu -- tá -- ris no -- ster: 
et pro -- pter ho -- nó -- rem nó -- mi -- nis tu -- i, Dó -- mi -- ne, lí -- be -- _ ra nos. 
\set stanza = " * " 
At -- tén -- de. 
Gló -- _ ri -- a Pa -- tri, et Fí -- li -- o, 
et Spi -- rí -- tu -- i _ San -- cto. 
\set stanza = " * " 
At -- tén -- de. }

chantMusic = {
\tieDown   e'4 e'4 g'4 ( a'4 b'4) a'4  c''4 c''4 ( b'4 c''4) a'4 ( b'4) a'4 ( g'4) \divisioMaior
 g'4 a'4 c''4 b'4 ( c''4 b'4 a'4 g'4) a'4 ( b'4) a'4 \forceBreak
 a'4 ( b'\prall c''4) d''4 ( b'4) c''4 ( b'4) a'4 a'4 ( b'4 c''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMaxima
 a'4 c''4 c''4 ( d''4) d''4 d''4 d''4 d''4 ( c''4 \forceBreak
) d''4 ( d''4 c''4 d''4) a'4 a'4 ( d''4) c''4 ( b'4) c''4 ( d''4) a'4 \divisioMaior
 a'4 a'4 ( d''4) c''4 ( b'4) c''4 ( d''4) c''4 ( b'4 a'4) a'4 g'4 a'4 ( b'4 \forceBreak
) a'4 ( b'4) g'4 g'4 ( e'4) \divisioMaior
 e'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 a'4 ( g'4) a'4 ( b'\prall c''4) d''4 ( b'4) c''4 ( b'4) a'4 a'4 ( b'4 c''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMaxima \forceBreak

 g'4 a'4 c''4 ( b'4) c''4 ( d''4) c''4 ( b'4 a'4) a'4 \divisioMinima
 g'4 a'4 ( b'4) b'4 a'4 ( g'4 a'4)  e'4 ( ges'4.) e'4 ( g'4 ges'4 e'4) ges'4 ( e'4 d'4) e'4 ( d'4) \divisioMaior \forceBreak

 a'4 a'4 a'4 a'4 ( c''4 b'4 g'4) c''4 ( c''4) d''4 ( b'4) c''4 ( b'4) a'4 ( b'4 c''4 b'4 a'4 b'4) b'4 ( a'4) \finalis
 g'4 ( a'4) c''4 ( c''4 d''4) c''4 c''4 c''4 \forceBreak
 d''4 ( e''4) d''4 \divisioMinima
 c''4 c''4 ( b'4) c''4 ( d''4) b'4 ( c''4) a'4 ( b'\prall c''4 b'4) b'4 ( a'4) \divisioMaxima
 a'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 a'4 a'4 \forceBreak
 a'4 a'4 a'4 a'4 ( b'4) a'4 \divisioMinima
 a'4 a'4 a'4 ( b'\prall c''4 b'4 a'4 g'4) a'4 c''4 ( b'4) c''4 ( d''4 c''4) c''4 ( b'4 a'4 b'4) a'4 ( g'4) \finalis \forceBreak

 g'4 a'4 c''4 ( b'4) \finalis
 g'4 ( a'4) c''4 ( c''4 d''4) c''4 c''4 c''4 ( b'4) c''4 ( d''4) b'4 ( c''4) a'4 a'4 ( b'\prall c''4 b'4) b'4 ( a'4) \divisioMaxima \forceBreak

 a'4 g'4 ( a'4) a'4 ( b'\prall c''4 b'4 a'4 g'4) a'4 c''4 ( b'4) c''4 ( d''4 c''4) c''4 ( b'4 a'4 b'4) a'4 ( g'4) \finalis
 g'4 a'4 c''4 ( b'4) \finalis

}

altoMusic = {
r4 e'4 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 ~ e'2 d'2 \divisioMaior
e'2*3/2 ~ e'2*8/2 f'2*7/2 ~ f'4 e'2*6/2 ~ e'2 \divisioMaxima
r4 e'4 d'2*3/2 ~ d'2 g'2 f'2*5/2 e'2*4/2 ~ e'2 ~ e'4 ~ \divisioMaior
e'4 ~ e'2 a'2 ~ a'2 g'2*5/2 ~ g'2 e'2*3/2 ~ e'2 \divisioMaior
b2*4/2 e'4 ~ e'2 d'2*3/2 e'2*5/2 f'2 ~ f'2*4/2 e'2 ~ \divisioMaxima
e'4 d'2*3/2 e'2*5/2 ~ e'4 ~ \divisioMinima
e'4 ~ e'2 ~ e'4 d'2*3/2 c'2*13/4 d'2*4/2 ~ d'4 ~ \divisioMaior
d'2*3/2 e'2*4/2 g'2 f'2 ~ f'2 e'2*6/2 ~ e'2 ~ \finalis
e'2 ~ e'2*3/2 ~ e'2*3/2 a'2*3/2 ~ \divisioMinima
a'4 g'2 ~ g'2*4/2 e'2*4/2 ~ e'2 \divisioMaxima
r4 e'2*4/2 ~ e'2 g'2*3/2 f'2*3/2 \divisioMinima
d'2 e'2*6/2 d'4 e'2*5/2 ~ e'2*4/2 ~ e'2 ~ \finalis
e'4 d'2*3/2 \finalis
e'2 ~ e'2*5/2 ~ e'2*4/2 g'2 ~ g'4 e'2*4/2 ~ e'2 ~ \divisioMaxima
e'2*3/2 f'2*6/2 ~ f'4 e'2*5/2 ~ e'2*4/2 ~ e'2 ~ \finalis
e'4 d'2*3/2 \finalis
}

tenorMusic = {
e'2 d'2*3/2 c'2 r2*3/2 c'2 b2 \divisioMaior
c'2*3/2 ~ c'2*8/2 a2*7/2 b4 c'2*6/2 d'4 c'4 \divisioMaxima
a4 ~ a4 ~ a2*3/2 ~ a2 ~ a2 ~ a2*5/2 ~ a2*4/2 b2 c'4 ~ \divisioMaior
c'4 ~ c'2*4/2 ~ c'2 ~ c'2*4/2 ~ c'4 b2 ~ b2*3/2 g2 ~ \divisioMaior
g2*4/2 ~ g4 a2 ~ a2*3/2 ~ a2*5/2 ~ a2 d'2*4/2 ~ d'4 c'4 ~ \divisioMaxima
c'4 ~ c'2*3/2 ~ c'2*5/2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2 ~ c'4 b2*3/2 a2*13/4 ~ a2*3/2 g2 \divisioMaior
f2*3/2 a2*4/2 g2 a2 b2 d'2*6/2 c'2 ~ \finalis
c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'4 ~ c'2 g2*4/2 ~ g2*4/2 a2 ~ \divisioMaxima
a4 b2*4/2 a2 ~ a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2 c'2*6/2 b4 a2*5/2 g2*4/2 b2 \finalis
c'4 ~ c'2*3/2 ~ \finalis
c'2 ~ c'2*5/2 ~ c'2*4/2 d'2 c'4 ~ c'2*4/2 d'2 \divisioMaxima
a2*3/2 ~ a2*6/2 b4 c'2*5/2 g2*4/2 b2 \finalis
c'4 ~ c'2*3/2 \finalis
}

bassMusic = {
r2*7/2 a2*3/2 ~ a2 b2 ~ \divisioMaior
b2*3/2 a2*8/2 d2*7/2 ~ d4 a2*6/2 ~ a2 \divisioMaxima
r4 g4 ~ g2*3/2 f2 e2 d2*5/2 a2*4/2 ~ a2 ~ a4 ~ \divisioMaior
a4 g2*4/2 f2 e2*4/2 ~ e4 ~ e2 ~ e2*3/2 ~ e2 \divisioMaior
d2*4/2 c4 ~ c2 b,2*3/2 a,2*5/2 d2 ~ d2*4/2 a2 \divisioMaxima
r2*9/2 b4 ~ \divisioMinima
b4 ~ b2 a4 ~ a2*3/2 ~ a2*13/4 d2*3/2 ~ d2 ~ \divisioMaior
d2*3/2 c2*4/2 e2 d2 ~ d2 a2*6/2 ~ a2 \finalis
r2 b2*3/2 a2*3/2 f2*3/2 ~ \divisioMinima
f4 e2 ~ e2*4/2 c2*4/2 ~ c2 \divisioMaxima
r4 e2*4/2 c2 d2*3/2 ~ d2*3/2 \divisioMinima
f2 a2*6/2 ~ a4 ~ a2*5/2 e2*4/2 ~ e2 \finalis
r2*4/2 \finalis
r2 b2*5/2 a2*4/2 e2 ~ e4 a2*4/2 ~ a2 \divisioMaxima
c2*3/2 d2*6/2 ~ d4 a2*5/2 e2*4/2 ~ e2 \finalis
r2*4/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        ""
        ""
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
