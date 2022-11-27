\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.61
%(volume.page)

global = {
 \key d \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Viderunt omnes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Viderunt omnes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Viderunt omnes" }
    \line {}
  }
}

chantText = \lyricmode {
Vi -- dé -- runt o -- _ _ mnes 
\set stanza = " * " fi -- nes ter -- _ rae _ _ _ 
sa -- lu -- tá -- re _ De -- _ _ i _ no -- stri: _ 
ju -- bi -- lá -- te De -- _ o _ 
o -- _ mnis _ ter -- ra. _ _ _ _ _ ℣. 
No -- tum fe -- cit Dó -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ mi -- nus 
sa -- lu -- tá -- _ re su -- _ um: 
an -- te con -- spé -- ctum gén -- ti -- um 
re -- _ ve -- lá -- _ _ vit 
\set stanza = " * " ju -- stí -- _ ti -- am _ su -- am. _ _ _ _ _ _ }

chantMusic = {
\tieDown  d'4 d'4 fis'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4 a'4 fis'4) a'4 ( a'4 a'4) cis''4 ( b'4 a'4) a'4 \divisioMinima
 a'4 ( b'4) a'4 ( fis'4) a'4 ( fis'4 a'4) ~ a'4 ( fis'4) fis'4 \forceBreak
 a'4 ( a'4 fis'4) a'4 ( gis'4) a'4 ( fis'4) \divisioMaior
 fis'4 a'4 ( gis'4) a'4 ( gis'4 b'4) b'4 ( a'4 gis'4) a'4 ( fis'4) \divisioMinima
 fis'4 ( e'4) fis'4 ( gis'\prall a'4) b'4 ( a'4) a'4 ( gis'4) b'4 ( cis''4 d''4) b'4 ( a'4 \forceBreak
) a'4 ( gis'4) a'4 ( fis'4) \divisioMaxima
 fis'4 a'4 ( gis'4) a'4 a'4 ( a'4 a'4) fis'4 ( a'4 e'4) ~ e'4 ( d'4) d'4 ( e'4) fis'4 ( a'4 fis'4) d'4 \divisioMaior
 d'4 ( fis'4 gis'4) b'4 ( cis''4 a'4 \forceBreak
)  a'4 ( fis'4 g'\prall a'4 g'4 e'4 ( fis'\prall g'4 fis'4 e'4) d'4 ( e'4 d'4) d'4 ( fis'4 a'4.) d'4 ( fis'4 a'4) ~ a'4 ( gis'4 e'4.) d'4 ( fis'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis \forceBreak

 d'4 fis'4 ( \once \tweak #'font-size #-4 e' ) e'4 ( a'4) a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( a'4) ~ a'4 ( fis'4) a'4 ( b'4 a'4 gis'4.) a'4 ( b'4 fis'4 d'4) \divisioMinima
 fis'4 a'4 ( a'4 b'4) a'4 ( a'4 fis'4) a'4 ( b'4 a'4 gis'4. \forceBreak
) a'4 ( b'4 fis'4 d'4) \divisioMinima
  fis'4 ( g'4.) e'4 ( g'4 a'4) g'4 ( a'4 g'4) a'4 ( fis'4 d'4) \divisioMinima
 fis'4 ( d'4 fis'4 e'4 d'4.) fis'4 ( d'4) e'4 ( fis'4) a'4 ( a'4) b'4 ( cis''\prall d''4) b'4 ( a'4) a'4 ( b'4 a'4 fis'4) \divisioMaior \forceBreak

 fis'4 a'4 ( gis'4) a'4 ( a'4 fis'4) a'4 ( a'4 fis'4) fis'4 fis'4 ( a'4 fis'4) a'4 ( a'4 fis'4) fis'4 \divisioMaxima
 fis'4 fis'4 fis'4 ( \once \tweak #'font-size #-4 b' ) b'4 a'4 ( b'4 a'4 fis'4 \forceBreak
) a'4 ( b'4 cis''\prall d''4) b'4 ( a'4) a'4 ( b'4 a'4 d'4) \divisioMaior
 fis'4 ( a'4 b'4) a'4 ( a'4 fis'4) fis'4 a'4 ( fis'4 a'4) ~ a'4 ( e'4) fis'4 ( d'4) d'4 \divisioMinima
 fis'4 fis'4 a'4 ( a'4 fis'4 gis'4 \forceBreak
) e'4 ( fis'4)  a'4 ( fis'4) g'4 ( e'4) d'4 cis'4 ( d'4) e'4 ( fis'4 e'4) \divisioMinima
 d'4 ( e'4) fis'4 ( a'4 fis'4 e'4.)  d'4 ( e'4 fis'4) a'4 ( a'4 e'4) g'4 ( fis'4 d'4) \finalis

}

altoMusic = {
r4 d'2*3/2 cis'2*4/2 ~ cis'2*6/2 ~ cis'4 \divisioMinima
e'2*4/2 ~ e'2 d'2*4/2 cis'2*3/2 ~ cis'2 ~ cis'2 ~ \divisioMaior
cis'4 d'2 e'2*3/2 ~ e'2*3/2 cis'2 ~ \divisioMinima
cis'2 ~ cis'2*3/2 e'2 ~ e'2 fis'2*3/2 ~ fis'2 e'2 cis'2 \divisioMaxima
a4 ~ a2*3/2 cis'2*3/2 ~ cis'2 b2*3/2 a2 ~ a2*3/2 ~ a4 \divisioMaior
r4 d'2 cis'2*3/2 d'2*5/2 ~ d'2*5/2 ~ d'2*3/2 a2*7/4 ~ a2*3/2 b2 ~ b2*3/4 a2*4/2 ~ a2 ~ a4 \finalis
r2*3/2 cis'2 ~ cis'2*3/2 ~ cis'2*3/2 ~ cis'2*9/4 b2*4/2 ~ \divisioMinima
b4 d'2*3/2 e'2*3/2 cis'2*9/4 d'2*4/2 ~ d'2*7/4 ~ d'2*5/2 ~ d'2*3/2 ~ \divisioMinima
d'2*11/4 ~ d'2*4/2 e'2 ~ e'2*3/2 d'2 cis'2*3/2 ~ cis'4 ~ \divisioMaior
cis'4 e'2 ~ e'2*3/2 ~ e'2*3/2 d,4 cis'2*3/2 b2*3/2 a4 \divisioMaxima
r2 b2*3/2 e'2*4/2 d'2*4/2 fis'2 cis'2*4/2 ~ \divisioMaior
cis'4 ~ cis'2 d'2*4/2 ~ d'2 e'2*3/2 a2 a'4 \divisioMinima
d'2 cis'2*4/2 b2 ~ b2*4/2 a2*3/2 ~ a2*3/2 \divisioMinima
a'2 a2*3/2 b2*3/4 a2*3/2 b2*3/2 a2 fis4 \finalis
}

tenorMusic = {
r4 a2*3/2 fis'2*4/2 gis2*6/2 a4 ~ \divisioMinima
a2*4/2 fis2 ~ fis2*4/2 ~ fis2*3/2 ~ fis2 ~ fis2 ~ \divisioMaior
fis4 ~ fis2 e2*3/2 gis2*3/2 fis2 \divisioMinima
gis2 a2*3/2 ~ a2 b2 ~ b2*3/2 d'2 b2 ~ b4 a4 \divisioMaxima
r2*3/2 fis4 ~ fis2*3/2 ~ fis2 ~ fis2*3/2 ~ fis2 e2*3/2 fis4 ~ \divisioMaior
fis4 ~ fis2 ~ fis2*3/2 b2*5/2 gis2*5/2 fis2*3/2 ~ fis4 d2*5/4 ~ d4 b,2 ~ b,2 cis2*3/4 d2*4/2 e2 fis4 \finalis
r2*3/2 a2 ~ a2*3/2 ~ a2*3/2 fis2*9/4 ~ fis2*4/2 ~ \divisioMinima
fis4 ~ fis2*3/2 a2*3/2 ~ a2*9/4 ~ a2*4/2 b2*7/4 ~ b2*5/2 a2*3/2 ~ \divisioMinima
a2*11/4 ~ a2*4/2 fis2 ~ fis2*5/2 ~ fis2*3/2 ~ fis4 \divisioMaior
r4 e2 fis2*3/2 ~ fis2*4/2 ~ fis2*3/2 ~ fis2*3/2 ~ fis4 ~ \divisioMaxima
fis2 ~ fis2*3/2 ~ fis2*4/2 ~ fis2*4/2 ~ fis2 ~ fis2*4/2 ~ \divisioMaior
fis4 ~ fis2 ~ fis2*4/2 b2 a2*3/2 gis2 fis4 ~ \divisioMinima
fis2 ~ fis2*4/2 cis2 d2*4/2 ~ d4 fis2 d2 cis4 \divisioMinima
r2 d2*3/2 ~ d2*3/4 ~ d2*3/2 ~ d2*3/2 ~ d2 ~ d4 \finalis
}

bassMusic = {
r4 fis2*3/2 fis'2*4/2 fis2*6/2 ~ fis4 \divisioMinima
cis2*4/2 ~ cis2 b,2*4/2 a,2*3/2 gis,2 fis,2 ~ \divisioMaior
fis,4 b,2 cis2*3/2 ~ cis2*3/2 fis2 ~ \divisioMinima
fis2 ~ fis2*3/2 cis2 ~ cis2 d2*3/2 ~ d2 e2 fis2 \divisioMaxima
fis,2*4/2 ~ fis,2*3/2 a2 b,2*3/2 d2 ~ d2*3/2 ~ d4 ~ \divisioMaior
d4 cis2 b,2*3/2 ~ b,2*5/2 ~ b,2*5/2 ~ b,2*3/2 fis,2*7/4 ~ fis,2*3/2 e,2 ~ e,2*3/4 fis,2*4/2 a,2 d4 \finalis
r2*5/2 gis2*3/2 fis2*3/2 e2*9/4 d2*4/2 ~ \divisioMinima
d4 b,2*3/2 cis2*3/2 fis2*9/4 ~ fis2*15/4 e2*5/2 fis2*3/2 \divisioMinima
e2*11/4 d2*4/2 cis2 b,2*5/2 fis2*3/2 ~ fis4 ~ \divisioMaior
fis4 cis2 ~ cis2*3/2 b,2*4/2 a,2*3/2 fis,2*3/2 ~ fis,4 \divisioMaxima
r2 d2*3/2 cis2*4/2 b,2*4/2 d2 fis2*4/2 \divisioMaior
r4 a,2 b,2*4/2 ~ b,2 cis2*3/2 d2 ~ d4 \divisioMinima
b,2 fis,2*4/2 ~ fis,2 e,2*4/2 fis,4 ~ fis,2 a,2 ~ a,4 \divisioMinima
b,2 ~ b,2*3/2 gis,2*3/4 fis,2*3/2 e,2*3/2 d,2 ~ d,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
        "V"
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
