\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.133
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Stabat sancta Maria" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Stabat sancta Maria"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Stabat sancta Maria" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, 
\set stanza = " * " 
al -- le -- lú -- ia. 
_ _ _ _ _ _ _ ℣. 
Sta -- bat san -- _ cta Ma -- rí -- a, 
cœ -- li Re -- _ gí -- na, _ 
et mun -- di Dó -- _ _ mi -- na, 
jux -- ta cru -- _ cem Dó -- mi -- ni no -- stri Je -- su Chri -- _ sti _ 
\set stanza = " * " do -- lo -- ró -- sa. 
_ _ _ _ _ _ _ }

chantMusic = {
\tieDown   fis'4 ( \once \tweak #'font-size #-4 a' ) gis'4 ( fis'4 e'4 a'4) gis'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 \divisioMaior
  fis'4 ( \once \tweak #'font-size #-4 a' ) gis'4 ( fis'4 e'4 a'4) gis'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 \divisioMaior
 b'4 ( a'4 gis'4 fis'4 e'4) fis'4 ( fis'4 gis'4.) a'4 ( gis'4 fis'4 e'4) fis'4 ( cis'4) ~ cis'4 ( b4.) fis'4. e'4 ( fis'4 gis'4) ~ gis'4 ( fis'4) \finalis
 fis'4 ( gis'\prall a'4 gis'4 fis'4 e'4) a'4 ( b'4 cis''4)  dis''4 ( cis''4 b'4 a'4 g'4 fis'4) g'4 ( a'4 fis'4) fis'4 fis'4 ( e'4) fis'4 ( gis'4 fis'4 fis'4) e'4 \divisioMaior
 fis'4 ( e'4) a'4 ( b'4 cis''4)  dis''4 ( cis''4 b'4 a'4) b'4 ( a'4) b'4 ( dis''4 b'4) cis''4. dis''4 ( cis''4 b'4 a'4 g'4 fis'4) \divisioMaior
 fis'4 ( gis'4 fis'4 fis'4) e'4 gis'4 ( a'4 b'4) b'4 ( a'4 gis'4) a'4 ( gis'4 fis'4) gis'4 ( fis'4) e'4 ( fis'4) fis'4 \divisioMaxima
 a'4 gis'4 ( fis'4) gis'4 ( fis'4 e'4) fis'4 ( gis'\prall a'4) gis'4 ( fis'4) a'4 ( b'4) a'4 gis'4 b'4 ( cis''4) cis''4 \divisioMinima
 cis''4 ( b'4) gis'4 ( a'4) fis'4 ( e'4 cis'4) e'4 ( fis'4) fis'4 ( gis'4 a'4 gis'4) ~ gis'4 ( fis'4) \divisioMinima
 fis'4 ( a'4) gis'4 ( fis'4 e'4 a'4) gis'4 ( fis'4) fis'4 \divisioMaior
 b'4 ( a'4 gis'4 fis'4 e'4) fis'4 ( fis'4 gis'4.) a'4 ( gis'4 fis'4 e'4) fis'4 ( cis'4) ~ cis'4 ( b4.) fis'4. e'4 ( fis'4 gis'4) ~ gis'4 ( fis'4) \finalis

}

altoMusic = {
fis'2 e'2*4/2 d'2 cis'4 ~ cis'2 ~ cis'2*4/2 d'2 cis'4 ~ \divisioMaior
cis'2*3/2 ~ cis'2 ~ cis'2 ~ cis'2*3/4 ~ cis'2 ~ cis'2*3/2 ~ cis'4 ~ cis'4 b2*3/4 ~ b2*3/4 cis'2 ~ cis'2 ~ cis'4 \finalis
r2*5/2 e'4 ~ e'2*3/2 d'2*4/2 cis'2 ~ cis'2*3/2 ~ cis'4 b2 d'2 ~ d'2 cis'4 \divisioMaior
fis'4 e'4 ~ e'2*3/2 fis'2*4/2 e'2 d'2*3/2 e'2*3/4 d'2*4/2 cis'2 \divisioMaior
r2*4/2 e'4 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 d'2 cis'2 ~ cis'4 ~ \divisioMaxima
cis'2*3/2 ~ cis'2*3/2 ~ cis'2*5/2 fis'2*4/2 ~ fis'2 e'4 ~ \divisioMinima
e'2 ~ e'2 cis'2 ~ cis'4 ~ cis'2 d'2*3/2 cis'2*3/2 \divisioMinima
d'2 e'2*4/2 d'2 cis'4 ~ \divisioMaior
cis'2*3/2 ~ cis'2 ~ cis'2 ~ cis'2*3/4 ~ cis'2*5/2 ~ cis'4 ~ cis'4 b2*3/4 ~ b2*3/4 cis'2 ~ cis'2 ~ cis'4 \finalis
}

tenorMusic = {
r2 cis'2*4/2 b2 a4 ~ a2 b2*4/2 ~ b2 a4 \divisioMaior
cis'2*3/2 b2 a2 gis2*3/4 fis2 gis2*3/2 fis2 ~ fis2*3/4 b2*3/4 ~ b2 ~ b2 a4 \finalis
cis'2*4/2 ~ cis'2 ~ cis'2*3/2 b2*4/2 a2 ~ a2*3/2 b4 ~ b2 ~ b2 ~ b2 cis'4 ~ \divisioMaior
cis'2 ~ cis'2*3/2 b2*4/2 ~ b2 ~ b2*3/2 a2*3/4 ~ a2*4/2 b4 a4 \divisioMaior
cis'2*4/2 ~ cis'4 ~ cis'2*3/2 ~ cis'2*3/2 ~ cis'2*3/2 b2 ~ b2 cis'4 \divisioMaxima
a2*3/2 b2*3/2 a2*5/2 ~ a2*4/2 fis2 gis4 \divisioMinima
b2 cis'2 b2*5/2 ~ b2*3/2 cis'2*3/2 \divisioMinima
b2 ~ b2*4/2 ~ b2 a4 \divisioMaior
cis'2*3/2 b2 a2 gis2*3/4 fis2*5/2 ~ fis2 ~ fis2*3/4 b2*3/4 ~ b2 ~ b2 a4 \finalis
}

bassMusic = {
r2*9/2 fis2 ~ fis2*4/2 ~ fis2 ~ fis4 ~ \divisioMaior
fis2*3/2 ~ fis2 ~ fis2 ~ fis2*3/4 ~ fis2 ~ fis2*3/2 e2 d2*3/4 ~ d2*3/4 cis2 fis2 ~ fis4 \finalis
a2*4/2 b2 a2*3/2 ~ a2*4/2 ~ a2 fis2*3/2 ~ fis4 gis2 a2 b2 r4 \divisioMaior
b2 a2*3/2 ~ a2*4/2 ~ a2 ~ a2*3/2 ~ a2*3/4 fis2*4/2 ~ fis2 \divisioMaior
a2*4/2 b4 ~ b2*3/2 cis'2*3/2 b2*3/2 ~ b2 ~ b2 a4 \divisioMaxima
fis2*3/2 ~ fis2*3/2 ~ fis2*5/2 d2*4/2 ~ d2 cis4 ~ \divisioMinima
cis2 ~ cis2 ~ cis2*5/2 b,2*3/2 a,2*3/2 \divisioMinima
b,2 cis2*4/2 fis2 ~ fis4 ~ \divisioMaior
fis2*3/2 ~ fis2 ~ fis2 ~ fis2*3/4 ~ fis2*5/2 e2 d2*3/4 ~ d2*3/4 cis2 fis2 ~ fis4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
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
