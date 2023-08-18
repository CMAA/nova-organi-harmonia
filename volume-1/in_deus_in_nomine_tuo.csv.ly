\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.256
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Deus in nomine tuo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Deus in nomine tuo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Deus in nomine tuo" }
    \line {}
  }
}

chantText = \lyricmode {
De -- us, 
\set stanza = " * " in nó -- mi -- ne tu -- _ o sal -- vum me fac, 
et in vir -- tú -- te tu -- _ a jú -- _ di -- ca me: 
De -- us ex -- áu -- di _ _ 
o -- ra -- ti -- ó -- _ nem _ _ me -- am. Ps. 
Quó -- ni -- am a -- li -- é -- ni in -- sur -- re -- xé -- runt ad -- vér -- sum me: 
\set stanza = " * " 
et for -- tes quæ -- si -- é -- runt á -- ni -- mam me -- am. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   fis'4 ( a'4 g'4) g'4 ( g'4) \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 a'4  b'4 ( a'4) b'4 ( c''4 a'4) a'4 ( a'4 g'4) \divisioMinima
 fis'4 ( g'4 a'\prall b'4) a'4 \forceBreak
 fis'4 ( a'4 g'4) fis'4 ( fis'4 g'4) \divisioMaior
 e'4 ( a'4 g'4) fis'4 ( g'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4  b'4 ( a'4) b'4 ( c''4 a'4) g'4 ( a'4 g'4) \divisioMinima
 a'4 ( b'4) d''4 ( cis''4 d''4) b'4 \forceBreak
 b'4 ( g'4 a'\prall b'4 a'4 b'4) b'4 ( a'4) \divisioMaxima
 a'4 ( b'4 cis''\prall d''4) b'4 ( d''4) a'4 ( b'4) fis'4 ( g'4 a'\prall b'4 \once \tweak #'font-size #-4 a' ) b'4 ( a'4) g'4 ( g'4) e'4 ( fis'4 e'4) \divisioMaior \forceBreak

 e'4 ( d'4) g'4 a'4 ( b'4 a'4)  b'4 c''4 ( g'4 a'4) a'4 ( b'4) c''4 ( a'4) b'4 ( a'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \finalis
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 \forceBreak
 b'4 b'4 b'4 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 b'4 \divisioMaxima
 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) b'4 b'4 b'4 \forceBreak
 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 \finalis
  b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 \forceBreak
 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 ( a'4) a'4 ( cis''4) cis''4 \forceBreak
 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 \finalis

}

altoMusic = {
d'2*3/2 ~ d'2 \divisioMinima
e'2 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 \divisioMinima
d'2*5/2 ~ d'2*3/2 ~ d'2*3/2 \divisioMaior
e'2*3/2 ~ e'2 ~ e'2 ~ e'2 ~ e'2 ~ e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*4/2 ~ d'2*6/2 ~ d'2 ~ \divisioMaxima
d'2*4/2 ~ d'2*4/2 ~ d'2*5/2 ~ d'2 ~ d'2 b2*3/2 ~ \divisioMaior
b2*3/2 e'2*3/2 ~ e'4 ~ e'2*3/2 d'2 cis'2*4/2 d'2*4/2 ~ d'2 \finalis
fis'2 ~ fis'2*5/2 ~ fis'2*5/2 ~ fis'2 ~ fis'2*3/2 ~ fis'2*3/2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2*5/2 d'2 ~ d'4 ~ d'2 ~ d'2 cis'4 d'4 f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'4 ~ \divisioMaxima
f'2 e'2 d'2*4/2 c'2 d'4 \divisioMinima
e'2 ~ e'2*3/2 f'2*3/2 \divisioMaxima
e'2 ~ e'2 d'2*5/2 ~ d'2 ~ d'2 c'4 d'4 \finalis
}

tenorMusic = {
fis2*3/2 b2 ~ \divisioMinima
b2 a2*3/2 ~ a2 g2*3/2 b2*3/2 ~ \divisioMinima
b2*5/2 a2*3/2 g2*3/2 ~ \divisioMaior
g2*3/2 a2 g2 fis2 g2 a2*3/2 ~ a2*3/2 \divisioMinima
g2 fis2*4/2 g2*6/2 fis2 ~ \divisioMaxima
fis2*4/2 g2*4/2 a2*5/2 fis2 g2 ~ g2*3/2 \divisioMaior
e2*3/2 ~ e2*3/2 fis4 g2*3/2 ~ g2 ~ g2*4/2 ~ g2*4/2 b2 \finalis
d'2 e'2*5/2 d'2*5/2 cis'2 e'2*3/2 ~ e'2*3/2 d'4 \divisioMaxima
fis2 ~ fis2*5/2 ~ fis2 g4 a2 fis2 e4 fis4 d'2 ~ d'2*3/2 ~ d'2*3/2 c'2*3/2 \divisioMinima
d'2 c'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
f2 ~ f2 ~ f2*4/2 e2 f4 ~ \divisioMinima
f2 a2*3/2 f2*3/2 ~ \divisioMaxima
f2 e2 f2*5/2 g2 f2 e4 f4 \finalis
}

bassMusic = {
b,2*3/2 ~ b,2 \divisioMinima
cis2 ~ cis2*3/2 e2 ~ e2*3/2 cis2*3/2 \divisioMinima
b,2*5/2 ~ b,2*3/2 ~ b,2*3/2 \divisioMaior
cis2*3/2 ~ cis2 ~ cis2 ~ cis2 ~ cis2 ~ cis2*3/2 b,2*3/2 ~ \divisioMinima
b,2 ~ b,2*4/2 ~ b,2*6/2 d2 \divisioMaxima
b,2*4/2 ~ b,2*4/2 ~ b,2*5/2 ~ b,2 ~ b,2 e2*3/2 \divisioMaior
d2*3/2 cis2*3/2 ~ cis4 ~ cis2*3/2 b,2 a,2*4/2 b,2*4/2 ~ b,2 \finalis
r2 cis'2*5/2 b2*5/2 fis2 ~ fis2*3/2 b2*3/2 ~ b4 \divisioMaxima
d2 cis2*5/2 b,2 ~ b,4 ~ b,2 ~ b,2 ~ b,4 ~ b,4 r2 c'2*3/2 b2*3/2 ~ b2*3/2 ~ \divisioMinima
b2 f2 ~ f2*3/2 b2 ~ b4 \divisioMaxima
d2 c2 b,2*4/2 ~ b,2 ~ b,4 \divisioMinima
c2 ~ c2*3/2 d2*3/2 \divisioMaxima
c2 ~ c2 b,2*5/2 ~ b,2 ~ b,2 ~ b,4 ~ b,4 \finalis
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
