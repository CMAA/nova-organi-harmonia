\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.343
%(volume.page)

global = {
 \key fis \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Potum meum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Potum meum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Potum meum" }
    \line {}
  }
}

chantText = \lyricmode {
Po -- tum me -- um 
\set stanza = " * " cum fle -- _ tu tem -- pe -- rá -- bam: 
qui -- a é -- le -- vans al -- li -- sí -- sti me: _ 
et e -- _ go sic -- ut fœ -- num á -- _ ru -- i: 
tu au -- tem, Dó -- mi -- ne, 
in æ -- tér -- _ num pér -- ma -- nes: 
tu ex -- súr -- gens _ mi -- se -- ré -- be -- ris Si -- on, 
qui -- a ve -- nit tem -- pus _ mi -- se -- rén -- di e -- _ _ _ jus. }

chantMusic = {
\tieDown   fis'4 e'4 ( fis'4) fis'4 ( gis'4 a'4 gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMinima
 e'4 fis'4 ( gis'4 fis'4) gis'4 ( a'4 gis'4) fis'4 e'4 ( e'4 \once \tweak #'font-size #-4 dis' ) fis'4 \forceBreak
 fis'4 ( gis'4 a'4 gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMaxima
 a'4 ( gis'4) a'4 b'4 ( cis''4) a'4 ( gis'4) a'4 b'4 ( cis''4) a'4 ( gis'4) e'4 e'4 ( fis'4 gis'\prall a'4 gis'4 fis'4) fis'4 ( e'4) fis'4 ( gis'4 fis'4) \divisioMaior \forceBreak

 e'4 fis'4 ( gis'4 fis'4) gis'4 ( a'4 gis'4) fis'4 e'4 e'4 ( \once \tweak #'font-size #-4 dis' ) fis'4 a'4 gis'4 ( a'4) b'4 ( a'4) gis'4 ( a'4 gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMaxima
 cis''4 ( a'4) b'4 ( \once \tweak #'font-size #-4 cis''  \forceBreak
) cis''4 ( b'4 cis''4) a'4 ( b'4 cis''4) a'4 ( gis'4 fis'4) fis'4 ( gis'\prall a'4) \divisioMaior
 fis'4 a'4 a'4 ( gis'4) b'4 ( b'4 cis''4) a'4 ( gis'4) e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 ( gis'4 a'4 gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMaxima \forceBreak

 cis''4 cis''4 ( a'4) b'4 ( \once \tweak #'font-size #-4 cis'' )  cis''4 ( b'4) cis''4 ( d''4 cis''4) \divisioMinima
 cis''4 a'4 b'4 ( cis''4) a'4 ( gis'4) fis'4 fis'4 ( gis'\prall a'4 gis'4 fis'4) fis'4 ( gis'\prall a'4) \divisioMaior
 e'4 fis'4 \forceBreak
 a'4 a'4 ( \once \tweak #'font-size #-4 gis' ) b'4 ( cis''4)  cis''4 ( b'4) cis''4 ( d''4 cis''4) \divisioMinima
 cis''4 a'4 b'4 ( cis''4) a'4 ( gis'4) fis'4 ( e'4) fis'4 ( e'4 dis'4.) e'4 ( fis'4 e'4) fis'4 ( gis'\prall a'4 gis'4 fis'4 gis'4) gis'4 ( fis'4) \finalis

}

altoMusic = {
cis'4 ~ cis'2 ~ cis'2*6/2 ~ cis'2 \divisioMinima
e'4 ~ e'2*3/2 ~ e'2*4/2 cis'2*3/2 ~ cis'4 ~ cis'2*6/2 ~ cis'2 \divisioMaxima
e'2*3/2 ~ e'2*5/2 ~ e'2*4/2 ~ e'4 cis'2*6/2 ~ cis'2 ~ cis'2*3/2 \divisioMaior
e'4 ~ e'2*3/2 cis'2*4/2 ~ cis'4 ~ cis'2 ~ cis'2 ~ cis'2 d'2 e'2*5/2 cis'2 \divisioMaxima
fis'2 ~ fis'2 ~ fis'2*3/2 e'2*3/2 ~ e'2*3/2 cis'2 ~ cis'4 ~ \divisioMaior
cis'2 b2 fis'2*3/2 e'2 ~ e'2 cis'2*6/2 ~ cis'2 \divisioMaxima
fis'4 ~ fis'2 ~ fis'2 ~ fis'2 ~ fis'2*3/2 ~ \divisioMinima
fis'2 ~ fis'2 e'2*3/2 cis'2*5/2 ~ cis'2*3/2 \divisioMaior
e'2 ~ e'4 ~ e'2 fis'2 ~ fis'2 ~ fis'2*3/2 ~ \divisioMinima
fis'2 ~ fis'2 e'2 cis'2 ~ cis'2 ~ cis'2*3/4 ~ cis'2*3/2 ~ cis'2*6/2 ~ cis'2 \finalis
}

tenorMusic = {
a4 gis2 a2*6/2 b4 a4 ~ \divisioMinima
a4 ~ a2*3/2 b2*3/2 a4 gis2*3/2 b4 ~ b2*6/2 a2 \divisioMaxima
b2*3/2 a2*5/2 gis2*4/2 b4 ~ b2*6/2 gis2 a2*3/2 ~ \divisioMaior
a4 ~ a2*3/2 ~ a2*4/2 gis4 fis2 d2 e2 fis2 gis2*5/2 a2 ~ \divisioMaxima
a2 ~ a2 ~ a2*3/2 ~ a2*3/2 b2*3/2 ~ b2 a4 \divisioMaior
fis2 ~ fis2 gis2*3/2 a2 b2 ~ b2*6/2 a2 ~ \divisioMaxima
a4 ~ a2 ~ a2 gis2 a2*3/2 ~ \divisioMinima
a2 ~ a2 ~ a2*3/2 b2*5/2 a2*3/2 ~ \divisioMaior
a2 b4 a2 ~ a2 gis2 a2*3/2 ~ \divisioMinima
a2 ~ a2 ~ a2 ~ a2 gis2 fis2*3/4 gis2*3/2 b2*6/2 a2 \finalis
}

bassMusic = {
fis4 ~ fis2 ~ fis2*6/2 ~ fis2 ~ \divisioMinima
fis4 cis2*3/2 ~ cis2*4/2 ~ cis2*3/2 ~ cis4 fis2*6/2 ~ fis2 \divisioMaxima
cis2*3/2 ~ cis2*5/2 ~ cis2*4/2 ~ cis4 fis2*6/2 ~ fis2 ~ fis2*3/2 ~ \divisioMaior
fis4 cis2*3/2 a,2*4/2 ~ a,4 ~ a,2 ~ a,2 cis2 ~ cis2 ~ cis2*5/2 fis2 ~ \divisioMaxima
fis2 e2 d2*3/2 cis2*3/2 ~ cis2*3/2 fis2 ~ fis4 \divisioMaior
e2 d2 ~ d2*3/2 cis2 ~ cis2 fis2*6/2 ~ fis2 ~ \divisioMaxima
fis4 e2 d2 ~ d2 fis2*3/2 \divisioMinima
e2 d2 cis2*3/2 fis2*5/2 ~ fis2*3/2 \divisioMaior
d2 ~ d4 cis2 d2 ~ d2 fis2*3/2 \divisioMinima
e2 d2 cis2 a,2 ~ a,2 ~ a,2*3/4 cis2*3/2 fis2*6/2 ~ fis2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
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
