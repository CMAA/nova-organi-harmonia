\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.312
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Oratio mea" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Oratio mea"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Oratio mea" }
    \line {}
  }
}

chantText = \lyricmode {
O -- rá -- ti -- o 
\set stanza = " * " me -- _ _ a mun -- _ _ da est: 
et íd -- e -- o pe -- _ to, ut de -- _ _ tur lo -- _ _ cus _ vo -- ci me -- æ in cœ -- _ lo: 
qui -- a i -- bi est ju -- dex me -- us, _ 
et cón -- sci -- us me -- us _ in ex -- cél -- _ _ _ sis: 
a -- scén -- _ _ _ _ _ dat ad _ Dó -- _ _ mi -- num de -- pre -- cá -- ti -- o me -- _ _ a. _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   b4 ( cis'\prall d'4) d'4 ( e'4) e'4 e'4  e'4 ( fis'4) a'4 ( fis'4 e'4) a'4 ( gis'4) a'4 ( b'4 a'4) \divisioMinima
 a'4 ( a'4) ~ a'4 ( fis'4) gis'4 ( \tiny fis' e' 4) fis'4 ( e'4) e'4 \divisioMaxima
 d'4 ( e'4) e'4 ( a'4 a'4) a'4 ( gis'4) gis'4 a'4 ( b'4 a'4) b'4 ( a'4 a'4) e'4 ( fis'4) \divisioMinima
 d'4 ( e'4 \once \tweak #'font-size #-4 fis' ) e'4 a'4 ( a'4) ~ a'4 ( a'4 a'4) fis'4 ( \once \tweak #'font-size #-4 gis' ) e'4 a'4 ( a'4) ~ a'4 ( a'4 a'4) fis'4 ( gis'\prall a'4 gis'4 fis'4 e'4) fis'4 ( e'4) \divisioMinima
 fis'4 a'4 a'4 a'4 ( gis'4) b'4 ( cis''4) b'4 ( cis''4 b'4 a'4) b'4 ( a'4 gis'4) gis'4 \divisioMaxima
 a'4 ( b'4) b'4 d''4 ( d''4) d''4 ( cis''4) d''4 ( d''4 b'4 cis''4) \divisioMinima
 b'4 b'4 a'4 ( cis''4 b'4 a'4) b'4 ( a'4) ~ a'4 ( gis'4) \divisioMaior
 b'4 ( \once \tweak #'font-size #-4 gis' ) a'4 ( b'4) b'4 b'4 b'4 ( cis''4 b'4 a'4) b'4 ( a'4) ~ a'4 ( b'4) \divisioMinima
 fis'4 fis'4 ( e'4) gis'4 b'4 ( a'4) b'4 ( gis'4) a'4 ( \tiny gis' fis' 4) gis'4 ( fis'4) \divisioMaxima
 a'4 ( a'4) a'4 ( b'4) cis''4 ( b'4) cis''4 ( a'4.) cis''4 ( b'4) cis''4 ( a'4) ~ a'4 ( \tiny gis' e' 4) fis'4 \divisioMinima
 fis'4 ( a'4 fis'4) a'4 ( a'4) fis'4 ( a'4 fis'4) a'4 ( a'4) ~ a'4 ( a'4 a'4) e'4 ( fis'4) e'4 ( \once \tweak #'font-size #-4 cis' ) \divisioMinima
 e'4 fis'4 a'4 b'4 ( a'4) a'4 a'4 ( fis'4) a'4 ( a'4) b'4 ( fis'4 e'4) e'4 ( fis'4 e'4 d'4.) fis'4 a'4 ( b'4 a'4) ~ a'4 ( a'4) ~ a'4 ( fis'4) \divisioMinima
 a'4 ( a'4 fis'4) a'4 ( a'4 fis'4 e'4) fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
r2*7/2 e'2*5/2 ~ e'2 ~ e'2*3/2 \divisioMinima
cis'2 d'2 e'2*3/2 b2 ~ b4 \divisioMaxima
r2 e'2*3/2 ~ e'2*3/2 cis'2*3/2 ~ cis'2*4/2 ~ cis'4 \divisioMinima
a2*4/2 ~ a2 ~ a2*6/2 ~ a2 e'2*3/2 d'2*6/2 cis'2 \divisioMinima
e'2*3/2 ~ e'2*4/2 ~ e'2*4/2 ~ e'2*3/2 ~ e'4 \divisioMaxima
cis'2*3/2 fis'2 e'2 fis'2*4/2 ~ \divisioMinima
fis'2 e'2*5/2 ~ e'2*3/2 ~ \divisioMaior
e'2 ~ e'2*4/2 ~ e'2*5/2 cis'2*3/2 ~ \divisioMinima
cis'4 b2 e'4 ~ e'2*4/2 cis'2*3/2 ~ cis'2 \divisioMaxima
e'2 fis'2*13/4 e'2*3/2 ~ e'2*4/2 cis'4 ~ \divisioMinima
cis'2*3/2 d'2 e'2*3/2 d'2 cis'2*3/2 ~ cis'2*4/2 ~ \divisioMinima
cis'2 ~ cis'4 ~ cis'2*3/2 ~ cis'2 ~ cis'2*5/2 a2*11/4 fis'2*3/2 e'2 ~ e'2 \divisioMinima
d'2*3/2 e'2*4/2 d'2 b2 ~ b4 \finalis
}

tenorMusic = {
fis2*3/2 a2*4/2 ~ a2*5/2 b2 a2*3/2 ~ \divisioMinima
a2 ~ a2 b2*3/2 a2 gis4 \divisioMaxima
a2 ~ a2*3/2 b2*3/2 ~ b2*3/2 gis2*4/2 a4 \divisioMinima
fis2*4/2 ~ fis2 e2*6/2 ~ e2 a2*3/2 ~ a2*6/2 gis2 \divisioMinima
a2*3/2 b2*4/2 a2*4/2 gis2*3/2 b4 \divisioMaxima
a2*3/2 ~ a2 ~ a2 ~ a2*4/2 ~ \divisioMinima
a2 ~ a2*5/2 b2*3/2 ~ \divisioMaior
b2 a2*4/2 gis2*5/2 a2*3/2 ~ \divisioMinima
a4 b2 ~ b4 ~ b2*4/2 ~ b2*3/2 a2 ~ \divisioMaxima
a2 ~ a2*13/4 ~ a2*3/2 b2*4/2 ~ b4 \divisioMinima
a2*3/2 ~ a2 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ a2*4/2 ~ \divisioMinima
a2 ~ a4 gis2*3/2 b2 a2*5/2 ~ a2*11/4 ~ a2*3/2 ~ a2 ~ a2 ~ \divisioMinima
a2*3/2 ~ a2*4/2 ~ a2 ~ a2 gis4 \finalis
}

bassMusic = {
b,2*3/2 ~ b,2*4/2 cis2*5/2 ~ cis2 ~ cis2*3/2 \divisioMinima
fis2 ~ fis2 e2*3/2 ~ e2 ~ e4 \divisioMaxima
b,2 cis2*3/2 ~ cis2*3/2 fis2*3/2 ~ fis2*4/2 ~ fis4 \divisioMinima
e2*4/2 d2 ~ d2*6/2 cis2 ~ cis2*3/2 b,2*6/2 cis2 ~ \divisioMinima
cis2*3/2 e2*4/2 ~ e2*4/2 ~ e2*3/2 ~ e4 \divisioMaxima
fis2*3/2 d2 ~ d2 b,2*4/2 ~ \divisioMinima
b,2 cis2*5/2 e2*3/2 ~ \divisioMaior
e2 ~ e2*4/2 ~ e2*5/2 fis2*3/2 ~ \divisioMinima
fis4 gis2 ~ gis4 e2*4/2 fis2*3/2 ~ fis2 \divisioMaxima
cis2 d2*13/4 cis2*3/2 ~ cis2*4/2 fis4 ~ \divisioMinima
fis2*3/2 ~ fis2 ~ fis2*3/2 ~ fis2 ~ fis2*3/2 a2*4/2 \divisioMinima
gis2 fis4 ~ fis2*3/2 ~ fis2 ~ fis2*5/2 ~ fis2*11/4 d2*3/2 ~ d2 cis2 \divisioMinima
b,2*3/2 cis2*4/2 d2 e2 ~ e4 \finalis
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
        "VIII"
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
