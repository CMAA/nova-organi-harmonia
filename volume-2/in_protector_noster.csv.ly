\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.200
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Protector noster" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Protector noster"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Protector noster" }
    \line {}
  }
}

chantText = \lyricmode {
Pro -- té -- _ ctor no -- _ ster 
\set stanza = " * " á -- spi -- ce, De -- _ _ _ us, 
et ré -- spi -- ce in fá -- ci -- em Chri -- sti _ tu -- i: 
qui -- a mé -- li -- or est di -- es u -- na in á -- tri -- is tu -- is 
su -- per míl -- _ _ _ _ li -- a. Ps. 
Quam di -- lé -- cta ta -- ber -- ná -- cu -- la tu -- a, Dó -- mi -- ne vir -- tú -- tum! 
\set stanza = " * " 
con -- cu -- pí -- scit, et dé -- fi -- cit á -- ni -- ma me -- a in á -- tri -- a Dó -- mi -- ni. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 g'4 ( g'4) ~ g'4 ( e'4) fis'4 ( g'4) a'4 ( b'4) ~ b'4 ( a'4) a'4 \divisioMinima
 a'4 ( d''4 d''4) b'4 a'4 b'4 ( g'4) b'4 ( a'4 \forceBreak
) b'4 ( g'4) ~ g'4 ( fis'4 g'4) g'4 ( fis'4) \divisioMaior
 fis'4 ( g'4) a'4 ( b'4) a'4 a'4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( b'4 a'4) g'4 g'4 ( a'4 b'4) d''4 ( d''4) e''4 ( d''4) ~ d''4 ( b'4 \forceBreak
) b'4 ( a'4 b'\prall cis''4 b'4 cis''4) cis''4 ( b'4) \divisioMaxima
  b'4 ( a'4 b'\prall c''4 b'4) b'4  b'4 ( a'4 b'\prall c''4) b'4 ( a'4) a'4 ( b'4 a'4 g'4) g'4 \divisioMinima \forceBreak

 g'4 b'4 b'4 ( cis''\prall d''4 cis''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMinima
 b'4 b'4 a'4 ( fis'4) g'4 ( a'4) fis'4 ( g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaior \forceBreak

 e'4 ( fis'4 g'4 a'4) a'4 ( b'4) b'4 d''4 ( d''4 a'4 g'4) ~ g'4 ( e'4) g'4 ( b'4 a'4) b'4 ( g'4 a'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \finalis
 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4 \forceBreak
) b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima \forceBreak

 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 a'4 ( g'4 \forceBreak
) a'4 ( b'4) a'4 fis'4 \finalis
  b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima \forceBreak

 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4 \forceBreak
) b'4 b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 \finalis

}

altoMusic = {
r4 b2 ~ b2 ~ b2*3/2 d'2*5/2 ~ d'2*4/2 ~ d'2*5/2 b2*4/2 d'2 ~ \divisioMaior
d'2 e'2*3/2 ~ e'4 \divisioMinima
d'2 ~ d'2*4/2 ~ d'2*3/2 fis'2*3/2 g'2*3/2 fis'2*3/2 ~ fis'2*3/2 ~ fis'2 g'2*3/2 ~ g'2*3/2 e'2*4/2 ~ e'2 d'2*5/2 \divisioMinima
e'2 fis'2*4/2 ~ fis'2*3/2 e'2 ~ \divisioMinima
e'4 d'4 ~ d'2*4/2 b2*5/2 ~ b2 ~ \divisioMaior
b2*4/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*6/2 ~ d'2 c'2 d'2 \finalis
fis'2 e'2 <fis' e'>2*4/2 <fis; d;>2*6/2 fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2 ~ e'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ \divisioMinima
d'4 fis'2 e'2 ~ e'2*3/2 c'4 fis'2 e'2*3/2 <fis' e'>2*3/2 fis'2*5/2 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2 ~ e'2*4/2 d'2*3/2 \divisioMinima
cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis'2 e'2 d'2*3/2 fis'2 e'2 d'2 cis'2 \finalis
}

tenorMusic = {
r4 g2 a2 g2*3/2 fis2*5/2 ~ fis2*4/2 g2*5/2 ~ g2*4/2 a2 ~ \divisioMaior
a2 ~ a2*3/2 fis4 ~ \divisioMinima
fis2 g2*4/2 ~ g2*3/2 b2*3/2 ~ b2*3/2 c'2*3/2 e'2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 c'2 b2*5/2 ~ \divisioMinima
b2 ~ b2*4/2 fis2*3/2 a2 \divisioMinima
fis2 b2*4/2 a2*5/2 g2 ~ \divisioMaior
g2*4/2 fis2*3/2 ~ fis2*3/2 g2*3/2 ~ g2*6/2 b2*4/2 ~ b2 \finalis
r2*14/2 c'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2 ~ fis2*3/2 ~ fis2*3/2 g2*3/2 fis2 ~ \divisioMinima
fis4 b2 ~ b2 a2*3/2 ~ a4 d'2 cis'2*3/2 r2*3/2 d'2*3/2 ~ \divisioMinima
d'2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2 ~ fis2*4/2 ~ fis2*3/2 ~ \divisioMinima
fis2 ~ fis2*3/2 ~ fis2 ~ fis4 ~ \divisioMaxima
fis2 ~ fis2 ~ fis2*3/2 b2 ~ b2 ~ b2 ~ b4 a4 \finalis
}

bassMusic = {
e4 ~ e2 ~ e2 ~ e2*3/2 d2*4/2 \divisioMinima
c4 b,2*4/2 ~ b,2*5/2 e2*4/2 d2 \divisioMaior
b,2 c2*3/2 ~ c4 \divisioMinima
b,2 ~ b,2*4/2 e2*3/2 d2*3/2 e2*3/2 fis2*3/2 ~ fis2*3/2 b2 g2*3/2 e2*3/2 a2*4/2 ~ a2 b2*5/2 \divisioMinima
e2 d2*4/2 ~ d2*3/2 c2 \divisioMinima
b,2 ~ b,2*4/2 e2*5/2 ~ e2 ~ \divisioMaior
e2*4/2 d2*3/2 b,2*3/2 ~ b,2*3/2 e2*6/2 ~ e2*4/2 b,2 \finalis
d'2 c'2 b2*4/2 ~ b2*6/2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 c2 b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2 ~ \divisioMinima
b,4 d2 e2 c2*3/2 fis4 r2*5/2 b2*3/2 ~ b2*3/2 ~ \divisioMinima
b2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 cis2 b,2*4/2 ~ b,2*3/2 \divisioMinima
fis,2 ~ fis,2*3/2 b,2 ~ b,4 \divisioMaxima
d2 cis2 b,2*3/2 d2 e2 ~ e2 fis2 \finalis
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
