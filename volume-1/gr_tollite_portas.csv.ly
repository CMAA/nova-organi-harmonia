\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.18
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tollite portas" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tollite portas"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tollite portas" }
    \line {}
  }
}

chantText = \lyricmode {
Tól -- li -- te 
\set stanza = " * " por -- _ _ _ tas, prín -- _ ci -- pes, _ ve -- _ stras: _ _ _ _ _ et e -- le -- vá -- _ mi -- ni por -- _ _ _ tæ æ -- ter -- ná -- _ les: _ _ _ _ et in -- tro -- í -- _ _ _ _ bit _ _ _ _ _ Rex _ _ gló -- ri -- æ. _ _ _ _ _ _ _ ℣. Quis as -- cén -- det in mon -- tem Dó -- _ mi -- _ ni? _ _ _ _ aut quis sta -- bit in lo -- co san -- cto e -- _ _ _ _ _ _ _ _ jus? In -- no -- cens má -- _ _ _ ni -- bus _ _ _ _ _ et _ mun -- do 
\set stanza = " * " cor -- _ de. _ _ _ }

chantMusic = {
\tieDown  e'4 ( gis'4 fis'4) fis'4 fis'4  a'4 ( fis'4 gis'4) a'4 ( fis'4 e'4) gis'4 ( e'4) fis'4 ( gis'4) fis'4 \halfBar a'4 ( fis'4) a'4 ( b'4 cis''4) a'4 ( gis'4 fis'4)  fis'4 ( e'4) g'4 ( fis'4 e'4) \quarterBar \forceBreak
 e'4 ( d'4) fis'4 ( e'4 fis'4) fis'4 ( d'4) e'4 ( fis'4) a'4 ( a'4 fis'4 e'4.) fis'4 ( gis'\prall a'4) b'4 ( a'4 a'4) fis'4 ( gis'4 fis'4) \singleBar a'4 ( a'4) a'4 a'4 ( b'4) b'4 ( a'4) ~ a'4 ( fis'4) fis'4 fis'4 \quarterBar \forceBreak
 a'4 ( fis'4 ( gis'\prall a'4) b'4 ( fis'4) b'4 ( \once \tweak #'font-size #-4 cis'' ) a'4 ( fis'4) a'4 ( a'4 fis'4) fis'4 ( \once \tweak #'font-size #-4 e' ) fis'4 a'4 ( a'4 a'4) a'4 ( fis'4 ( gis'\prall a'4 b'4.) a'4 ( b'4) cis''4 ( a'4 a'4) b'4 ( b'4 a'4) \singleBar \forceBreak
 a'4 ( a'4) a'4 a'4 a'4 ( gis'4) a'4 ( b'4 cis''4 a'4 gis'4) a'4 ( a'4 gis'4) \quarterBar b'4 ( a'4) b'4 ( a'4 fis'4) fis'4 ( a'4 fis'4 e'4) fis'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 gis'4 fis'4) a'4 ( e'4) ~ e'4 ( d'4) \singleBar \forceBreak
 d'4 ( e'4 fis'4) a'4 ( gis'4 fis'4) gis'4 ( e'4 fis'4) a'4 ( fis'4) a'4 ( b'4) b'4 ( a'4) b'4 ( cis''4 b'4 a'4) \quarterBar cis''4 ( a'4) cis''4 ( d''4 b'4 gis'4) a'4 ( fis'4 e'4.) fis'4 ( gis'\prall a'4 b'4.) a'4 ( b'4 cis''4) \quarterBar \forceBreak
 b'4 ( cis''4 b'4 cis''4 a'4 fis'4 gis'\prall a'4 fis'4) \doubleBar fis'4 a'4 a'4 ( b'4) b'4 \quarterBar b'4 b'4 b'4 b'4 ( a'4) b'4 ( cis''4 d''4 cis''4 a'4 \forceBreak
) a'4 ( b'4) cis''4 ( b'4 cis''4) cis''4 ( d''4 cis''4 a'4.) cis''4 ( a'4) cis''4 ( b'4.) d''4 ( cis''4 b'4) d''4 ( cis''4 b'4) \singleBar b'4 d''4 ( b'4 cis''\prall d''4 cis''4 b'4) b'4 b'4 \halfBar \forceBreak
 b'4 b'4 b'4 b'4 b'4 ( cis''4) cis''4 ( a'4) cis''4 ( b'4 a'4) ~ a'4 ( fis'4) a'4 ( a'4 fis'4) a'4. ~ a'4 ( a'4) ~ a'4 ( fis'4) \quarterBar a'4 ( b'4 cis''4 b'4 a'4) cis''4 ( b'4 a'4) b'4 ( fis'4) fis'4 \singleBar \forceBreak
 a'4 ( a'4) a'4 ( b'4) b'4 ( a'4 gis'4 e'4) fis'4 ( a'4 gis'4 e'4) fis'4 ( a'4) \quarterBar gis'4 ( b'4 cis''4 a'4 fis'4) fis'4 fis'4 ( a'4 fis'4 e'4) fis'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 gis'4 fis'4) a'4 ( e'4) ~ e'4 ( d'4) \singleBar \forceBreak
 d'4 ( e'4 fis'4) a'4 ( gis'4 fis'4 gis'4) e'4 fis'4  a'4 ( fis'4) a'4 ( b'4) b'4 ( cis''4 a'4 gis'4) a'4 ( b'4) \quarterBar e'4 ( fis'4 a'4) ~ a'4 ( cis''4 b'4 a'4 gis'4 fis'4 gis'\prall a'4 fis'4) \doubleBar
}

altoMusic = {
b2*3/2 cis'2 ~ cis'2*6/2 ~ cis'2 ~ cis'2*3/2 e'2*8/2 b2 ~ b2*3/2 ~ b2*5/2 d'2*4/2 ~ d'2*9/4 cis'2*6/2 ~ cis'2 ~ cis'4 e'2*3/2 ~ e'2*3/2 cis'2*5/2 d'2*6/2 fis'2*4/2 e'2*3/2 cis'2*3/2 ~ cis'2*3/2 e'2*11/4 fis'2*5/2 e'2*3/2 cis'2 d'2 e'2*7/2 ~ e'2*3/2 fis'2*5/2 cis'2*5/2 ~ cis'2*3/2 e'2*5/2 ~ e'4 ~ e'4 d'4 ~ d'2*3/2 cis'2*3/2 ~ cis'2*3/2 ~ cis'2*4/2 e'2*6/2 ~ e'2 d'2*4/2 cis'2*7/4 ~ cis'2*3/2 fis'2*3/4 e'2*3/2 fis'2 ~ fis'2*3/2 cis'2 ~ cis'2 fis'2 ~ fis'2*3/2 ~ fis'4 ~ fis'2 e'2 fis'2*5/2 ~ fis'2*5/2 ~ fis'2*9/4 ~ fis'2*9/4 ~ fis'2*6/2 r4 d'2*6/2 e'2 ~ e'4 fis'2*3/2 ~ fis'2 e'2*4/2 cis'2*3/2 d'2*3/2 cis'2*3/4 ~ cis'2 ~ cis'2 fis'2*5/2 e'2*3/2 d'2 ~ d'4 e'2 ~ e'2 d'2*4/2 ~ d'2*4/2 e'2 ~ e'2*6/2 cis'2*5/2 ~ cis'2*3/2 d'2*5/2 b2*3/2 d'2*3/2 e'2*6/2 ~ e'2*4/2 ~ e'2*4/2 ~ e'2 ~ e'2 cis'2*6/2 ~ cis'2 ~ cis'2 
}

tenorMusic = {
gis2*3/2 a2 ~ a2*6/2 b2 a2*3/2 ~ a2*8/2 ~ a2 gis2*3/2 fis2*5/2 a2*4/2 ~ a2*9/4 ~ a2*6/2 b2 a4 ~ a2*3/2 gis2*3/2 a2*5/2 ~ a2*6/2 ~ a2*4/2 ~ a2*3/2 gis2*3/2 a2*3/2 ~ a2*11/4 ~ a2*5/2 ~ a2*3/2 ~ a2 ~ a2 ~ a2*7/2 b2*3/2 ~ b2*5/2 ~ b2*5/2 a2*3/2 ~ a2*5/2 ~ a2 b4 a2*3/2 ~ a2*3/2 b2*3/2 a2*4/2 ~ a2*6/2 ~ a2 ~ a2*4/2 ~ a2*7/4 ~ a2*3/2 ~ a2*3/4 ~ a2*3/2 ~ a2 b2*3/2 ~ b2 a2 fis'2 e2*3/2 ~ e4 d2 cis'2 d'2*5/2 ~ d'2*5/2 ~ d'2*9/4 cis'2*9/4 b2*6/2 r4 fis2*6/2 gis2 ~ gis4 fis2*3/2 gis2 a2*4/2 ~ a2*3/2 ~ a2*3/2 ~ a2*3/4 b2 a2 ~ a2*5/2 ~ a2*3/2 ~ a2 fis4 e2 fis2 ~ fis2*4/2 a2*4/2 ~ a2 b2*6/2 ~ b2*5/2 a2*3/2 ~ a2*5/2 fis2*3/2 b2*3/2 ~ b2*6/2 a2*4/2 fis2*4/2 gis2 ~ gis2 fis2*6/2 b2 a2 
}

bassMusic = {
r2*5/2 fis2*6/2 ~ fis2 ~ fis2*3/2 cis2*8/2 e2 ~ e2*3/2 b,2*5/2 ~ b,2*4/2 ~ b,2*9/4 fis2*6/2 ~ fis2 ~ fis4 cis2*3/2 ~ cis2*3/2 fis2*5/2 b,2*6/2 d2*4/2 cis2*3/2 ~ cis2*3/2 fis2*3/2 cis2*11/4 d2*5/2 cis2*3/2 fis2 ~ fis2 cis2*7/2 e2*3/2 d2*5/2 fis2*5/2 ~ fis2*3/2 cis2*5/2 b,2 ~ b,4 fis2*3/2 ~ fis2*3/2 ~ fis2*3/2 ~ fis2*4/2 cis2*6/2 ~ cis2 b,2*4/2 fis2*7/4 e2*3/2 d2*3/4 cis2*3/2 d2 ~ d2*3/2 fis2 ~ fis2 r2*15/2 cis'2*5/2 b2*9/4 a2*9/4 d2*6/2 b,4 ~ b,2*6/2 e2 ~ e4 d2*3/2 ~ d2 cis2*4/2 fis2*3/2 ~ fis2*3/2 ~ fis2*3/4 ~ fis2 ~ fis2 d2*5/2 fis2*3/2 b,2 ~ b,4 cis2 ~ cis2 b,2*4/2 ~ b,2*4/2 cis2 ~ cis2*6/2 fis2*5/2 ~ fis2*3/2 b,2*5/2 ~ b,2*3/2 ~ b,2*3/2 cis2*6/2 ~ cis2*4/2 e2*4/2 ~ e2 ~ e2 fis2*6/2 ~ fis2 ~ fis2 
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
