\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.143
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Perfice gressus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Perfice gressus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Perfice gressus" }
    \line {}
  }
}

chantText = \lyricmode {
Per -- fi -- ce 
\set stanza = " * " gres -- _ _ sus me -- os in sé -- _ mi -- tis tu -- _ is, 
ut non mo -- ve -- _ án -- tur _ ve -- stí -- _ gi -- a _ me -- a: 
in -- clí -- _ na _ au -- _ rem tu -- am, 
et _ ex -- áu -- di ver -- ba me -- _ a: 
mi -- rí -- _ fi -- ca mi -- se -- ri -- cór -- di -- as tu -- as, 
qui sal -- vos fa -- cis _ spe -- rán -- tes _ _ in te, Dó -- mi -- ne. }

chantMusic = {
\tieDown   d'4 e'4 ( g'4 fis'4) g'4  g'4 ( g'4) ~ g'4 ( g'4) ~ g'4 ( e'4) d'4 ( e'4 g'4) g'4 ( fis'4) fis'4 ( a'4 g'4 g'4) \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 a' ) a'4. g'4 ( b'4 d''4) a'4 ( fis'4) a'4 ( b'4 \forceBreak
) g'4 ( e'4) a'4 ( g'4 fis'4) fis'4 \divisioMaior
 e'4 ( a'4) a'4 ( g'4 a'4) g'4 ( fis'4) e'4 g'4 ( g'4) g'4 ( g'4 g'4) e'4 g'4 ( g'4) \divisioMinima
 e'4 g'4. ~ g'4 ( g'4 e'4) g'4 \forceBreak
 g'4 ( b'4 a'4 g'4) a'4 ( b'4 a'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \divisioMaxima
 g'4  fis'4 ( g'4) b'4 ( c''4 a'4) a'4 ( b'4 g'4) ~ g'4 ( fis'4) g'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 e' ) g'4 a'4 ( g'4) g'4 \divisioMaior \forceBreak

 g'4 ( g'4) ~ g'4 ( e'4) g'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) a'4 g'4 ( a'4 g'4 g'4) e'4 g'4 ( g'4 e'4) e'4 ( fis'\prall g'4) \divisioMaxima
 d'4 d'4 ( e'4) g'4 ( fis'4 g'4) g'4 g'4 g'4 ( a'4 g'4 \forceBreak
) g'4 fis'4 ( g'4) a'4 ( b'4) a'4 fis'4 ( g'4) a'4 ( g'4 a'\prall b'4 a'4 b'4) b'4 ( a'4) \divisioMaior
 g'4 fis'4 ( g'4 a'\prall b'4) a'4 ( b'4 g'4 fis'4) a'4 g'4 ( g'4) ~ g'4 ( a'4) \divisioMinima \forceBreak

 e'4 ( d'4) e'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( g'4) ~ g'4 ( e'4) ~ e'4 ( d'4) e'4 ( g'4) fis'4 ( g'4 a'4) fis'4 fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \finalis

}

altoMusic = {
r4 b2*4/2 ~ b2 ~ b2 ~ b2*5/2 ~ b2 e'2 d'2 \divisioMinima
e'2 ~ e'2*5/4 fis'2*3/2 ~ fis'4 b2 ~ b2 cis'2*3/2 b4 \divisioMaior
e'2 ~ e'2*3/2 ~ e'2 ~ e'4 d'2 c'2*4/2 b2 ~ \divisioMinima
b4 ~ b2*3/4 ~ b2*4/2 d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'2 \divisioMaxima
r4 d'2 e'2*3/2 ~ e'2 d'2*3/2 b2 ~ b2*3/2 ~ b2 ~ b4 \divisioMaior
c'2 d'2*3/2 ~ d'2 ~ d'2 ~ d'4 b2*5/2 c'2*3/2 b2*3/2 \divisioMaxima
a4 b2 ~ b2*5/2 c'2*3/2 d'4 ~ d'2 ~ d'2*3/2 ~ d'2 e'2*3/2 fis'2*3/2 d'2 ~ \divisioMaior
d'4 e'2*4/2 ~ e'2*4/2 d'4 ~ d'2 ~ d'2 \divisioMinima
a2 b2 ~ b2*3/2 a2*3/2 b2 ~ b2*3/2 ~ b4 d'2 ~ d'2 cis'2 \finalis
}

tenorMusic = {
r4 r2*4/2 fis2 g2 a2*5/2 b2 ~ b2*4/2 ~ \divisioMinima
b2 ~ b2*5/4 ~ b2*4/2 fis2 e2 ~ e2*3/2 fis4 \divisioMaior
b2 ~ b2*3/2 ~ b2*3/2 ~ b2 a2*4/2 g2 \divisioMinima
e4 ~ e2*3/4 ~ e2*4/2 g2*4/2 fis2*3/2 d2 e2 b2 \divisioMaxima
r4 b2 a2*3/2 ~ a2 b2*3/2 a2 g2*3/2 fis2 g4 ~ \divisioMaior
g2 ~ g2*3/2 e2 d2 fis4 e2*5/2 ~ e2*3/2 ~ e2*3/2 \divisioMaxima
r2*3/2 e2*5/2 ~ e2*3/2 d4 e2 fis2*3/2 b2 ~ b2*3/2 ~ b2*3/2 a2 \divisioMaior
b4 ~ b2*4/2 ~ b2*4/2 ~ b4 ~ b2 e4 fis4 ~ \divisioMinima
fis2 e2 ~ e2*3/2 ~ e2*3/2 ~ e2 ~ e4 d2 a4 ~ a2 e2 b4 d'4 \finalis
}

bassMusic = {
r4 e2*4/2 ~ e2 ~ e2 ~ e2*5/2 ~ e2 b2*4/2 \divisioMinima
fis2 e2*5/4 d2*4/2 ~ d2 ~ d2 b,2*3/2 ~ b,4 \divisioMaior
g2 fis2*3/2 e2*3/2 ~ e2 ~ e2*4/2 ~ e2 ~ \divisioMinima
e4 d2*3/4 c2*4/2 b,2*4/2 ~ b,2*3/2 ~ b,2 ~ b,2 ~ b,2 \divisioMaxima
r4 e2 cis2*3/2 b,2 ~ b,2*3/2 e2 ~ e2*3/2 ~ e2 ~ e4 \divisioMaior
a,2 b,2*3/2 ~ b,2 ~ b,2 ~ b,4 e2*5/2 a,2*3/2 e,2*3/2 \divisioMaxima
fis,4 g,2 ~ g,2*5/2 a,2*3/2 b,4 ~ b,2 ~ b,2*3/2 ~ b,2 e2*3/2 d2*3/2 fis2 ~ \divisioMaior
fis4 g2*4/2 fis2*4/2 ~ fis4 e2 d2 \divisioMinima
r2*4/2 e,2*3/2 fis,2*3/2 g,2 b,2*4/2 ~ b,2 ~ b,2 ~ b,2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
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
