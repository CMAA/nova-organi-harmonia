\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.169
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Angelis suis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Angelis suis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Angelis suis" }
    \line {}
  }
}

chantText = \lyricmode {
An -- ge -- lis 
\set stanza = " * " su -- _ _ _ is 
man -- dá -- _ vit _ _ de te, _ _ _ _ _ _ _ 
ut cu -- stó -- di -- ant _ _ _ _ _ te _ _ _ _ _ 
in ó -- mni -- bus _ vi -- is tu -- _ is. _ _ _ _ _ _ _ ℣. 
In má -- ni -- bus por -- tá -- _ _ _ _ _ _ _ _ _ _ bunt te, 
ne un -- quam of -- fén -- _ _ _ _ _ _ _ _ das 
ad lá -- pi -- dem _ 
\set stanza = " * " pe -- dem tu -- _ um. _ _ _ }

chantMusic = {
\tieDown   e'4 ( gis'4 fis'4) fis'4 fis'4  a'4 ( fis'4 gis'4) a'4 ( fis'4 e'4) gis'4 ( e'4) fis'4 ( gis'4) fis'4 \divisioMaior
 fis'4 a'4 ( fis'4) a'4 ( b'4 cis''4)  a'4 ( fis'4) ~ fis'4 ( e'4 \forceBreak
) g'4 ( fis'4 e'4) e'4 fis'4 ( e'4) fis'4 ( e'4 fis'4) ~ fis'4 ( d'4) e'4 ( fis'4) a'4 ( a'4 gis'4 fis'4) ~ fis'4 ( gis'\prall a'4) b'4 ( a'4 a'4) fis'4 ( gis'4 fis'4) \divisioMaxima
 a'4 ( a'4) a'4 a'4 a'4 \forceBreak
 a'4 ( gis'4) a'4 ( b'4) cis''4 ( a'4 gis'4) a'4 ( a'4 gis'4) \divisioMinima
 b'4 ( a'4) b'4 ( a'4 fis'4) fis'4 ( a'4 fis'4 e'4.) fis'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 gis'4 fis'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima \forceBreak

 d'4 d'4 ( e'4 fis'4) fis'4 fis'4 a'4 ( gis'4 fis'4 gis'4) e'4 fis'4 a'4 ( fis'4) a'4 ( b'4) b'4 ( a'4) b'4 ( cis''4 b'4 a'4) \divisioMinima
 cis''4 ( a'4) cis''4 ( d''4 b'4 gis'4 \forceBreak
) a'4 ( fis'4 e'4) fis'4 ( gis'\prall a'4 b'4.) a'4 ( b'4 cis''4) \divisioMinima
 b'4 ( cis''4 b'4 cis''4 a'4 fis'4 gis'\prall a'4 fis'4) \finalis
 fis'4 a'4 a'4 ( b'4) b'4 b'4 ( \once \tweak #'font-size #-4 cis''  \forceBreak
) cis''4 ( b'4 a'4 gis'4) a'4 ( fis'4 e'4) \divisioMinima
 gis'4 ( e'4) fis'4 a'4 ( a'4) b'4 ( cis''4 b'4 cis''4) \divisioMinima
 a'4 ( cis''4) d''4 ( b'4 gis'4) a'4 ( fis'4 e'4) fis'4 ( gis'4 fis'4 e'4 fis'4) \divisioMinima \forceBreak

 b'4 ( cis''\prall d''4 cis''4) d''4 ( cis''4 b'4) cis''4 ( \once \tweak #'font-size #-4 b' ) b'4 \divisioMaxima
 b'4 d''4 ( b'4 cis''\prall d''4 cis''4 b'4) b'4 b'4 ( cis''4) cis''4 ( a'4) cis''4 ( b'4 a'4) ~ a'4 ( fis'4) a'4 ( a'4 fis'4 \forceBreak
) a'4. ~ a'4 ( a'4) ~ a'4 ( fis'4) \divisioMinima
 a'4 ( b'4 cis''4 b'4 a'4) cis''4 ( b'4 a'4) b'4 ( fis'4) fis'4 \divisioMaxima
 d'4 d'4 ( e'4 fis'4) fis'4 fis'4 a'4 ( gis'4 fis'4 gis'4) \divisioMinima \forceBreak

 e'4 fis'4 a'4 ( fis'4) a'4 ( b'4) b'4 ( cis''4 a'4 gis'4) a'4 ( b'4) \divisioMinima
 e'4 ( fis'4 a'4) ~ a'4 ( cis''4 b'4 a'4 gis'4 fis'4 gis'\prall a'4 fis'4) \finalis

}

altoMusic = {
e'2*4/2 fis'4 ~ fis'2*3/2 ~ fis'2*3/2 e'2 fis'2 ~ fis'4 ~ \divisioMaior
fis'4 cis'2 ~ cis'2*4/2 b2*3/2 ~ b2*3/2 r2 d'4 ~ d'2 ~ d'2*3/2 ~ d'2 e'2*3/2 ~ e'4 d'2*3/2 cis'2*3/2 ~ cis'2*3/2 \divisioMaxima
fis'2*5/2 e'2 ~ e'2*5/2 ~ e'2*3/2 \divisioMinima
gis'2 fis'2 ~ fis'4 cis'2*11/4 ~ cis'2*3/2 e'2*5/2 ~ e'4 r2 \divisioMaxima
d'4 ~ d'2*3/2 ~ d'2 e'2*4/2 ~ e'2 ~ e'2 fis'2 ~ fis'2 ~ fis'2*4/2 ~ \divisioMinima
fis'2 ~ fis'2 ~ fis'2 e'2*3/2 ~ e'2*3/2 fis'2*3/4 ~ fis'2 ~ fis'4 ~ \divisioMinima
fis'2*3/2 e'2 d'2 cis'2 \finalis
fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'2*4/2 e'2 ~ e'4 ~ \divisioMinima
e'2*3/2 fis'2 ~ fis'2*4/2 ~ \divisioMinima
fis'2 ~ fis'2*3/2 cis'2*3/2 ~ cis'2*4/2 ~ cis'4 \divisioMinima
fis'2*4/2 ~ fis'2*3/2 gis'2 e'4 \divisioMaxima
d'2 fis'2*5/2 ~ fis'4 e'2 ~ e'2*4/2 ~ e'2*3/2 d'2*3/2 ~ d'2*3/4 ~ d'2 cis'2 \divisioMinima
fis'2 e'2*3/2 ~ e'2*3/2 d'2 cis'4 \divisioMaxima
fis4 b2*3/2 ~ b2 e'2*4/2 ~ \divisioMinima
e'2 ~ e'2 ~ e'2 fis'2 ~ fis'2 e'2 ~ \divisioMinima
e'2 ~ e'2 ~ e'2*4/2 d'2 cis'2 \finalis
}

tenorMusic = {
e'2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 cis'2 ~ cis'2 ~ cis'4 \divisioMaior
a4 ~ a2 ~ a2*4/2 gis2*3/2 ~ gis2*3/2 ~ gis4 a2*4/2 ~ a2*3/2 ~ a2 ~ a2*4/2 ~ a2*3/2 ~ a2*3/2 b2 a4 ~ \divisioMaxima
a2*5/2 ~ a2 ~ a2*5/2 b2*3/2 \divisioMinima
cis'2 ~ cis'2*3/2 a2*11/4 ~ a2*3/2 ~ a2*5/2 ~ a2*3/2 \divisioMaxima
r4 fis2*3/2 a2 ~ a2*4/2 b2 cis'2*4/2 ~ cis'2 ~ cis'2*4/2 \divisioMinima
d'2 e'2 d'2 cis'2*3/2 ~ cis'2*3/2 ~ cis'2*3/4 ~ cis'2 a4 ~ \divisioMinima
a2*3/2 ~ a2 ~ a2 ~ a2 \finalis
d'2 ~ d'2*3/2 ~ d'2 cis'2*4/2 ~ cis'2*3/2 ~ \divisioMinima
cis'2*3/2 ~ cis'2 a2*4/2 ~ \divisioMinima
a2 gis2*3/2 fis2*3/2 ~ fis2*4/2 a4 ~ \divisioMinima
a2*4/2 b2*3/2 ~ b2 gis4 \divisioMaxima
fis2 ~ fis2*5/2 gis4 ~ gis2 a2*4/2 ~ a2*6/2 b2*3/4 a2 ~ a2 ~ \divisioMinima
a2 ~ a2*3/2 gis2*3/2 ~ gis2 a4 \divisioMaxima
r4 fis2*3/2 ~ fis2 e2*4/2 \divisioMinima
gis2 fis2 gis2 a2 cis'2 ~ cis'2 \divisioMinima
b2 cis'2 a2*4/2 ~ a2 ~ a2 \finalis
}

bassMusic = {
r2*5/2 cis'2*3/2 b2*3/2 ~ b2 a2 ~ a4 ~ \divisioMaior
a4 gis2 fis2*4/2 ~ fis2*3/2 e2*3/2 gis4 fis2*4/2 e2*3/2 d2 cis2*4/2 b,2*3/2 fis2*3/2 ~ fis2 ~ fis4 \divisioMaxima
d2*5/2 cis2 fis2*5/2 e2*3/2 ~ \divisioMinima
e2 fis2*3/2 gis2*11/4 fis2*3/2 cis2*5/2 fis2*3/2 \divisioMaxima
b,4 ~ b,2*3/2 ~ b,2 cis2*4/2 ~ cis2 fis2*4/2 gis2 a2*4/2 \divisioMinima
b2 ~ b2 ~ b2 cis'2*3/2 a2*3/2 gis2*3/4 fis2 ~ fis4 \divisioMinima
d2*3/2 cis2 b2 fis2 \finalis
r2 cis'2*3/2 b2 a2*4/2 cis'2*3/2 \divisioMinima
b2*3/2 a2 gis2*4/2 \divisioMinima
fis2 ~ fis2*3/2 ~ fis2*3/2 e2*4/2 ~ e4 \divisioMinima
d2*4/2 ~ d2*3/2 e2 ~ e4 \divisioMaxima
b,2 d2*5/2 ~ d4 cis2 ~ cis2*4/2 fis2*6/2 ~ fis2*3/4 ~ fis2 ~ fis2 \divisioMinima
d2 cis2*3/2 ~ cis2*3/2 fis2 ~ fis4 \divisioMaxima
b,4 ~ b,2*3/2 d2 cis2*4/2 ~ \divisioMinima
cis2 fis2 ~ fis2 ~ fis2 ~ fis2 cis'2 \divisioMinima
gis2 fis2 ~ fis2*4/2 b,2 fis2 \finalis
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
        "II."
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
