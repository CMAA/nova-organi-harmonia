\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.284
%(volume.page)

global = {
 \key b \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exspecta Dominum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exspecta Dominum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exspecta Dominum" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- spé -- cta Dó -- mi -- num, 
\set stanza = " * " vi -- rí -- li -- ter a -- ge: 
et con -- for -- té -- tur cor tu -- um, 
et sús -- ti -- ne Dó -- mi -- num. Ps. 
Dó -- mi -- nus il -- lu -- mi -- ná -- ti -- o me -- a, 
\set stanza = " * " 
et sa -- lus me -- a: quem ti -- mé -- bo? 
Ex -- spe -- cta Dó -- mi -- num. }

chantMusic = {
\tieDown   e'4 a'4 ( gis'4) a'4 a'4 ( cis''4 b'4) b'4 b'4 \divisioMinima
 b'4 cis''4 b'4 a'4 b'4 a'4 ( b'4 a'4 a'4) \divisioMaior \forceBreak

 fis'4 ( \once \tweak #'font-size #-4 d' ) e'4 fis'4 fis'4 ( b'4) a'4 gis'4 ( a'4) fis'4 ( b'4 a'4) a'4 ( a'4) \divisioMaior
 fis'4 ( e'4 fis'4) e'4 ( d'4 e'4) fis'4 ( gis'\prall a'4) a'4 ( b'4 a'4 gis'4 fis'4 gis'\prall a'4 gis'4 fis'4 \forceBreak
) e'4 e'4 ( fis'4 gis'4 fis'4 e'4 fis'4) fis'4 ( e'4) \finalis
 e'4 ( a'4 gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( d''4) cis''4 cis''4 cis''4 ( b'4) b'4 ( cis''4) \divisioMaxima \forceBreak

 b'4 ( \once \tweak #'font-size #-4 gis' ) a'4 ( b'4) b'4 b'4 b'4 ( cis''\prall d''4) b'4 a'4 a'4 ( a'4 a'4) fis'4 ( e'4) \finalis
 e'4 a'4 ( gis'4) a'4 a'4 ( cis''4 b'4) b'4 b'4 \finalis

}

altoMusic = {
e'4 ~ e'2*3/2 d'2*3/2 e'2 ~ \divisioMinima
e'4 ~ e'2*4/2 ~ e'2*4/2 \divisioMaior
d'2*4/2 e'2*3/2 ~ e'2 fis'2*3/2 cis'2 ~ \divisioMaior
cis'2*3/2 r2*3/2 cis'2*3/2 b2*4/2 d'2*6/2 cis'2 b2*4/2 ~ b2 \finalis
r2*3/2 a'2*4/2 gis'2 fis'2*4/2 gis'2 ~ gis'2 \divisioMaxima
e'2 ~ e'2*3/2 ~ e'4 d'2*3/2 ~ d'2 e'2*3/2 b2 \finalis
e'4 ~ e'2*3/2 d'2*3/2 e'2 \finalis
}

tenorMusic = {
r4 a2*3/2 ~ a2*3/2 ~ a2 \divisioMinima
gis4 ~ gis2*4/2 a2*4/2 ~ \divisioMaior
a2*4/2 ~ a2*3/2 b2 a2*3/2 ~ a2 ~ \divisioMaior
a2*3/2 ~ a2*3/2 fis2*3/2 ~ fis2*4/2 a2*5/2 ~ a4 b2 a2*4/2 gis2 \finalis
e'2*3/2 ~ e'2*4/2 ~ e'2 d'2*4/2 e'2 ~ e'2 \divisioMaxima
gis2 fis2*3/2 gis4 fis2*3/2 a2 ~ a2*3/2 ~ a4 gis4 \finalis
r4 a2*3/2 ~ a2*3/2 ~ a2 \finalis
}

bassMusic = {
cis4 ~ cis2*3/2 b,2*3/2 e2 ~ \divisioMinima
e4 cis2*4/2 ~ cis2*4/2 \divisioMaior
b,2*4/2 cis2*3/2 ~ cis2 d2*3/2 fis2 \divisioMaior
r2*3/2 fis2*3/2 e2*3/2 d2*4/2 b,2*5/2 cis4 ~ cis2 e2*4/2 ~ e2 \finalis
cis'2*3/2 ~ cis'2*4/2 e'2 r2*6/2 cis'2 \divisioMaxima
e2 ~ e2*3/2 ~ e4 b,2*3/2 ~ b,2 cis2*3/2 e2 \finalis
cis4 ~ cis2*3/2 b,2*3/2 cis2 \finalis
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
        "VII"
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
