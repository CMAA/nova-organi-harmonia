\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.224
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"De ventre matris" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "De ventre matris"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "De ventre matris" }
    \line {}
  }
}

chantText = \lyricmode {
De ven -- _ _ tre 
\set stanza = " * " ma -- tris me -- _ æ 
vo -- cá -- vit me Dó -- mi -- nus nó -- _ mi -- ne me -- o: 
et pó -- su -- it _ os me -- um 
ut glá -- di -- _ um a -- _ cú -- tum: 
sub te -- gu -- mén -- to ma -- nus su -- æ pro -- té -- xit me, 
pó -- su -- it _ me qua -- si sa -- gít -- tam _ e -- _ lé -- ctam. Ps. 
Bo -- num est con -- fi -- té -- ri Dó -- mi -- no: 
\set stanza = " * " 
et psál -- le -- re nó -- mi -- ni tu -- o, Al -- tís -- si -- me. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 e'4 g'4 ( g'4) e'4 ( \once \tweak #'font-size #-4 fis' ) d'4  g'4 a'4 ( b'4)  b'4 ( a'4 g'4 a'\prall b'4 a'4) b'4 ( c''4) b'4 \divisioMaior
 g'4 g'4 ( b'4 a'4) a'4 ( \once \tweak #'font-size #-4 g' ) a'4 g'4 g'4 ( g'4 g'4) e'4 ( g'4 fis'4) \divisioMinima
 fis'4 g'4 ( a'4 g'4) g'4 g'4 ( a'4 g'4 fis'4 g'4) e'4 ( fis'4 e'4) e'4 \divisioMaxima
 e'4 e'4 ( g'4 a'4) a'4 ( g'4 a'4) a'4. g'4 ( g'4 g'4) g'4 g'4 ( a'4 g'4 e'4) e'4 \divisioMaior
 e'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( g'4) ~ g'4 ( e'4) e'4 e'4 g'4 ( g'4) e'4 ( fis'4 e'4 d'4) d'4 \divisioMaxima
 e'4 d'4 e'4 g'4 ( g'4) e'4 g'4 ( g'4) e'4 e'4 ( fis'4 e'4 d'4) d'4 \divisioMinima
 e'4 ( d'4 e'4) g'4 ( e'4 g'4) g'4 ( a'4 g'4 fis'4 g'4) e'4 \divisioMaxima
 e'4 ( d'4 e'4) g'4 ( e'4 g'4) g'4 ( g'4) a'4 ( g'4 fis'4 g'4) e'4 \divisioMinima
 e'4 ( b4) d'4 ( e'4) d'4 g'4 ( g'4) a'4 ( g'4) ~ g'4 ( e'4) e'4 ( d'4) fis'4 ( e'4) e'4 ( fis'4 e'4) e'4 \finalis
 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 \finalis
  g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 ( d''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 \finalis

}

altoMusic = {
r2 b2 ~ b2*4/2 ~ b2 ~ b2 d'2*4/2 c'2 e'4 ~ \divisioMaior
e'4 ~ e'2*3/2 ~ e'2*3/2 d'4 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'4 e'2*4/2 d'2*5/2 b2*3/2 ~ b4 \divisioMaxima
r2 c'2 d'2*3/2 e'2*3/4 ~ e'2*4/2 b2*4/2 ~ b4 \divisioMaior
e'2 d'4 c'2 b2*4/2 ~ b2 ~ b2*4/2 ~ b4 ~ \divisioMaxima
b2*3/2 ~ b2*3/2 ~ b2*3/2 d'2*3/2 ~ d'4 ~ d'4 \divisioMinima
b2*3/2 ~ b2*3/2 ~ b2*5/2 ~ b4 \divisioMaxima
c'2*3/2 d'2*3/2 c'2 ~ c'2*4/2 b4 \divisioMinima
d'2*5/2 c'2*3/2 d'2*3/2 b2 ~ b2 ~ b2*3/2 ~ b4 \finalis
r4 g'2*5/2 ~ g'2*3/2 fis'4 e'2 fis'2 \divisioMaxima
r2 d'2*4/2 ~ d'2*4/2 ~ d'2*4/2 b4 ~ b2*3/2 ~ b4 r4 g'2*6/2 fis'2*3/2 ~ \divisioMinima
fis'2 e'2*4/2 fis'2 ~ fis'2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 a'2*3/2 ~ \divisioMinima
a'4 g'2*3/2 ~ g'2 ~ g'2 \divisioMaxima
e'2*4/2 d'2*4/2 ~ d'2*3/2 ~ d'2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
r2 b2 a2*4/2 fis2 g2 ~ g2*4/2 ~ g2 ~ g4 ~ \divisioMaior
g4 ~ g2*3/2 ~ g2*3/2 ~ g4 a2*3/2 b2*3/2 ~ \divisioMinima
b4 ~ b2*4/2 a2*5/2 ~ a2*3/2 g4 \divisioMaxima
r4 g2*3/2 ~ g2*3/2 ~ g2*3/4 a2*4/2 ~ a2*4/2 g4 ~ \divisioMaior
g2*3/2 ~ g2 ~ g2*4/2 e2 fis2*4/2 b4 \divisioMaxima
a2*3/2 ~ a2*3/2 g2*3/2 a2*4/2 ~ a4 ~ \divisioMinima
a2*3/2 ~ a2*3/2 fis2*5/2 g4 ~ \divisioMaxima
g2*3/2 ~ g2*3/2 ~ g2 e2*4/2 ~ e4 \divisioMinima
g2*5/2 ~ g2*3/2 ~ g2*3/2 fis2 a2 ~ a2*3/2 g4 \finalis
r4 fis'2*5/2 e'2*3/2 d'4 c'2 d'2 \divisioMaxima
r2 a2*4/2 g2*4/2 a2*4/2 ~ a4 ~ a2*3/2 g4 r4 e'2*6/2 d'2*3/2 ~ \divisioMinima
d'2 c'2*4/2 d'2 ~ d'2 \divisioMaxima
c'2*4/2 b2*4/2 ~ b2*3/2 ~ \divisioMinima
b4 ~ b2*3/2 c'2 e'2 \divisioMaxima
g2*4/2 ~ g2*4/2 ~ g2*3/2 a2 ~ a2*3/2 g4 \finalis
}

bassMusic = {
e2 ~ e2 ~ e2*4/2 ~ e2 ~ e2 ~ e2*4/2 ~ e2 ~ e4 ~ \divisioMaior
e4 d2*3/2 c2*3/2 b,4 ~ b,2*3/2 ~ b,2*3/2 ~ \divisioMinima
b,4 e2*4/2 ~ e2*5/2 ~ e2*3/2 ~ e4 \divisioMaxima
r4 a,2*3/2 b,2*3/2 c2*3/4 ~ c2*4/2 e2*4/2 ~ e4 ~ \divisioMaior
e2*3/2 ~ e2 ~ e2*4/2 ~ e2 b,2*4/2 ~ b,4 ~ \divisioMaxima
b,2*3/2 e2*3/2 ~ e2*3/2 d2*4/2 fis4 ~ \divisioMinima
fis2*3/2 e2*3/2 ~ e2*5/2 ~ e4 \divisioMaxima
c2*3/2 b,2*3/2 a,2 ~ a,2*4/2 g,4 ~ \divisioMinima
g,2*5/2 a,2*3/2 b,2*3/2 ~ b,2 ~ b,2 e2*3/2 ~ e4 \finalis
r2*12/2 b2 \divisioMaxima
r2 fis2*4/2 g2*4/2 fis2*4/2 ~ fis4 e2*3/2 ~ e4 r2*18/2 b2 \divisioMaxima
g2*4/2 ~ g2*4/2 fis2*3/2 ~ \divisioMinima
fis4 e2*3/2 ~ e2 ~ e2 \divisioMaxima
c2*4/2 g,2*4/2 b,2*3/2 ~ b,2 e2*3/2 ~ e4 \finalis
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
        "I"
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
