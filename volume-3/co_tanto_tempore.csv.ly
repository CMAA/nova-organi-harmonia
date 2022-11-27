\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.168
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tanto tempore" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tanto tempore"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tanto tempore" }
    \line {}
  }
}

chantText = \lyricmode {
Tan -- to tém -- po -- re _ _ _ 
\set stanza = " * " vó -- bis -- cum sum, _ 
et non co -- gno -- ví -- stis me? 
Phil -- íp -- pe, _ _ _ qui vi -- det me, _ vi -- det et Pa -- trem, al -- le -- lú -- ia: 
non cre -- dis qui -- a e -- go in Pa -- tre, _ 
et Pa -- ter in me est? 
al -- le -- lú -- ia, al -- le -- _ _ _ lú -- ia. }

chantMusic = {
\tieDown   e'4 g'4 ( e'4) g'4 g'4 fis'4. g'4 ( a'4 g'4) fis'4 ( fis'4 g'4) e'4 ( fis'4 e'4) \divisioMinima
 e'4 fis'4 ( fis'4 g'4) e'4  d'4 ( e'4 d'4) ~ d'4 ( c'4) \divisioMaior
 e'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 g'4 ( e'4) g'4 g'4 ( \once \tweak #'font-size #-4 a' ) fis'4 \divisioMaxima
 g'4 g'4 fis'4. g'4 ( a'4 g'4) fis'4 ( fis'4 g'4) e'4 ( fis'4 e'4) \divisioMinima
 g'4 a'4 ( b'4) b'4  b'4 ( a'4) b'4 ( c''4 b'4) \divisioMinima
 b'4 a'4 g'4 g'4 ( g'4 g'4) g'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( \once \tweak #'font-size #-4 a' ) fis'4 fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \divisioMaxima
 g'4 e'4 ( a'4 g'4 fis'4) g'4 ( g'4) \divisioMinima
 e'4 fis'4 a'4 ( b'4 cis''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) b'4 ( d''4) cis''4 ( d''4 cis''4 b'4) cis''4 ( b'4 a'4 b'4) \divisioMaior
 fis'4 a'4 ( b'4) a'4 fis'4 ( \once \tweak #'font-size #-4 e' ) fis'4 ( e'4 d'4 e'4) fis'4 ( fis'4 g'4) \divisioMaior
 d'4 e'4 g'4 g'4 ( e'4) \divisioMinima
 g'4 ( a'4)  a'4. g'4 ( a'4 b'4) c''4 ( a'4) b'4 ( a'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \finalis

}

altoMusic = {
b4 c'2 d'2 ~ d'2*3/4 ~ d'2*3/2 c'2*3/2 b2*3/2 ~ \divisioMinima
b4 ~ b2*4/2 r2*5/2 \divisioMaior
e'2 d'2 c'2 ~ c'4 d'2 ~ d'4 \divisioMaxima
b2 ~ b2*3/4 ~ b2*3/2 ~ b2*3/2 ~ b2*3/2 \divisioMinima
e'4 ~ e'2 fis'4 e'2 ~ e'2*3/2 ~ \divisioMinima
e'2*3/2 d'2*3/2 ~ d'2 ~ d'2 ~ d'4 ~ d'2*4/2 ~ d'2 \divisioMaxima
b4 c'2*4/2 e'2 ~ \divisioMinima
e'2 ~ e'2*3/2 fis'4 e'2 d'2 e'2*4/2 d'2*4/2 ~ \divisioMaior
d'4 ~ d'2*3/2 b2 ~ b2*4/2 ~ b2 ~ b4 ~ \divisioMaior
b2 ~ b4 ~ b2 \divisioMinima
d'2 e'2*9/4 ~ e'2*4/2 d'2*4/2 ~ d'2 \finalis
}

tenorMusic = {
g4 a2 b2 ~ b2*3/4 ~ b2*3/2 a2*3/2 g2*3/2 ~ \divisioMinima
g4 a2*4/2 ~ a2 g2*3/2 ~ \divisioMaior
g2 ~ g2 ~ g2 a4 ~ a2 b4 ~ \divisioMaxima
b2 a2*3/4 g2*3/2 a2*3/2 g2*3/2 ~ \divisioMinima
g4 fis2 ~ fis4 ~ fis2 g2*3/2 ~ \divisioMinima
g2*3/2 ~ g2*3/2 d2 e2 fis4 a2*4/2 b2 \divisioMaxima
g4 a2*4/2 b2 \divisioMinima
a2 fis2*3/2 ~ fis4 ~ fis2 ~ fis2 g2*4/2 fis2*4/2 \divisioMaior
b4 a2*3/2 ~ a2 g2*4/2 fis2 e4 \divisioMaior
g2 ~ g4 ~ g2 ~ \divisioMinima
g2 ~ g2*9/4 a2*4/2 ~ a2*4/2 b2 \finalis
}

bassMusic = {
r2*5/2 a2*3/4 g2*3/2 ~ g2*3/2 ~ g2*3/2 \divisioMinima
e4 ~ e2*4/2 fis2 e2*3/2 \divisioMaior
c2 b,2 a,2 ~ a,4 b,2 ~ b,4 \divisioMaxima
e2 ~ e2*3/4 ~ e2*3/2 ~ e2*3/2 ~ e2*3/2 \divisioMinima
c4 ~ c2 d4 e2 ~ e2*3/2 \divisioMinima
c2*3/2 b,2*3/2 ~ b,2 ~ b,2 ~ b,4 ~ b,2*4/2 ~ b,2 \divisioMaxima
e4 ~ e2*4/2 ~ e2 \divisioMinima
c2 e2*3/2 d4 c2 b,2 ~ b,2*4/2 ~ b,2*4/2 ~ \divisioMaior
b,4 ~ b,2*3/2 e2 ~ e2*4/2 ~ e2 ~ e4 \divisioMaior
r2 fis4 e2 \divisioMinima
b,2 c2*9/4 ~ c2*4/2 b,2*4/2 ~ b,2 \finalis
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
