\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.344
%(volume.page)

global = {
 \key g \lydian
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
Nos au -- _ tem 
\set stanza = " * " glo -- ri -- á -- ri o -- pór -- _ tet, 
in cru -- ce Dó -- _ mi -- ni no -- stri Je -- su Chri -- _ sti: 
in quo est sa -- lus, vi -- ta, et re -- sur -- ré -- cti -- o no -- _ stra: 
per _ quem sal -- vá -- ti, et li -- be -- rá -- ti su -- _ _ mus. Ps. 
De -- us mi -- se -- re -- á -- tur no -- stri, et be -- ne -- dí -- cat no -- bis: 
\set stanza = " * " 
il -- lú -- mi -- net vul -- tum su -- um su -- per nos, et mi -- se -- re -- á -- tur no -- stri. 
Nos au -- _ tem. }

chantMusic = {
\tieDown   e'4 ( g'4 fis'4) fis'4 ( g'4 a'4 g'4 e'4) g'4 ( fis'4) g'4 ( g'4 g'4) \divisioMinima
 g'4 ( e'4) g'4 fis'4 ( g'4 a'4) a'4 ( e'4) g'4 ( b'4) a'4. g'4 ( b'4 a'4 \forceBreak
) fis'4 ( fis'4 g'4) \divisioMaior
 e'4 a'4 a'4  b'4 ( a'4) b'4 ( c''4) b'4 b'4 d''4 ( d''4) b'4 ( b'4 a'4) \divisioMinima
 b'4 ( b'4 a'4) g'4  fis'4 ( g'4) b'4 ( c''4 a'4) a'4 \divisioMaxima \forceBreak

 a'4 ( \once \tweak #'font-size #-4 fis' ) a'4 b'4  b'4 ( c''4) b'4 \divisioMinima
 d''4 ( d''4) b'4 ( b'4 a'4) \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( b'4 a'4) g'4 fis'4 ( g'4 a'4) a'4  a'4 ( c''4 b'4 \forceBreak
) a'4 ( g'4) a'4 ( g'4 a'4) e'4 \divisioMaxima
 e'4 g'4 ( g'4 g'4) g'4 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( b'4) a'4 \divisioMinima
 b'4 g'4 a'4 ( g'4) fis'4 ( g'4 a'4)  a'4 ( c''4 b'4 a'4 \forceBreak
) a'4 ( g'4) b'4 ( a'4 g'4) a'4 ( g'4 fis'4) fis'4 \finalis
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 ( a'4 g'4 g'4) \finalis
 e'4 ( g'4 fis'4) fis'4 ( g'4 a'4 g'4 e'4) g'4 ( fis'4) g'4 ( g'4 g'4) \finalis

}

altoMusic = {
e'2*3/2 ~ e'2 d'2*3/2 ~ d'2 e'2*3/2 \divisioMinima
d'2*3/2 ~ d'2*3/2 b2 ~ b2 e'2*3/4 d'2*3/2 ~ d'2*3/2 ~ \divisioMaior
d'4 ~ d'2 fis'2 e'2 ~ e'2 d'2 ~ d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'2 ~ d'2*3/2 c'4 \divisioMaxima
d'2*3/2 ~ d'4 e'2*3/2 \divisioMinima
fis'2 ~ fis'2*3/2 \divisioMinima
d'2 ~ d'2*4/2 b2*4/2 e'2*3/2 d'2 c'2*3/2 ~ c'4 \divisioMaxima
b4 ~ b2*4/2 ~ b2 d'2 ~ d'4 \divisioMinima
b2 ~ b2 ~ b2*3/2 e'2*4/2 d'2*5/2 cis'2*3/2 b4 \finalis
fis'2 ~ fis'2*7/2 ~ fis'2 ~ \divisioMinima
fis'2 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2*6/2 ~ e'2*4/2 d'4 ~ \divisioMinima
d'2*4/2 ~ d'2 cis'2 ~ cis'4 d'2 e'2 ~ \finalis
e'2*3/2 ~ e'2 d'2*3/2 ~ d'2 e'2*3/2 \finalis
}

tenorMusic = {
b2*3/2 ~ b2 ~ b2*3/2 ~ b2 ~ b2*3/2 ~ \divisioMinima
b2*3/2 a2*3/2 g2 e2 ~ e2*3/4 g2*3/2 e2*3/2 \divisioMaior
g4 ~ g2 fis2 g2 ~ g2 ~ g2 fis2*3/2 ~ \divisioMinima
fis2*4/2 e2 ~ e2*3/2 ~ e4 \divisioMaxima
a2*3/2 g4 ~ g2*3/2 \divisioMinima
b2 d'2*3/2 ~ \divisioMinima
d'2 g2*4/2 ~ g2*4/2 ~ g2*3/2 ~ g2 ~ g2*3/2 a4 \divisioMaxima
b4 a2*4/2 g2 e2 fis4 ~ \divisioMinima
fis2 e2 g2*3/2 ~ g2*4/2 ~ g2*5/2 e2*3/2 fis4 \finalis
d'2 ~ d'2*7/2 ~ d'2 ~ \divisioMinima
d'2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2*6/2 ~ fis2*4/2 ~ fis4 ~ \divisioMinima
fis2*4/2 g2 ~ g2 fis4 a2 b2 ~ \finalis
b2*3/2 ~ b2 d'2*3/2 b2 ~ b2*3/2 \finalis
}

bassMusic = {
g2*3/2 b2 r2*5/2 e2*3/2 \divisioMinima
b,2*3/2 ~ b,2*3/2 e2 d2 c2*3/4 b,2*3/2 ~ b,2*3/2 ~ \divisioMaior
b,4 d2 ~ d2 c2 e2 b,2 ~ b,2*3/2 \divisioMinima
d2*4/2 e2 a,2*3/2 ~ a,4 \divisioMaxima
fis2*3/2 ~ fis4 e2*3/2 \divisioMinima
d2 ~ d2*3/2 \divisioMinima
fis2 e2*4/2 d2*4/2 c2*3/2 b,2 a,2*3/2 ~ a,4 \divisioMaxima
e4 ~ e2*4/2 ~ e2 d2 ~ d4 ~ \divisioMinima
d2 e2 ~ e2*3/2 c2*4/2 b,2*5/2 ~ b,2*3/2 ~ b,2*3/2 cis'2*7/2 b2 ~ \divisioMinima
b2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 cis2*6/2 b,2*4/2 ~ b,4 ~ \divisioMinima
b,2*4/2 ~ b,2 e2 fis4 ~ fis2 e2 \finalis
g2*3/2 b2 r2*5/2 e2*3/2 \finalis
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
