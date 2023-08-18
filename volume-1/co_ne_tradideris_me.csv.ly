\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.298
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ne tradideris me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ne tradideris me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ne tradideris me" }
    \line {}
  }
}

chantText = \lyricmode {
Ne tra -- dí -- de -- ris me, 
\set stanza = " * " Dó -- mi -- ne, 
in á -- _ ni -- mas per -- se -- quén -- ti -- um me: _ 
qui -- a in -- sur -- re -- xé -- runt in me _ te -- stes in -- í -- qui, 
et men -- tí -- ta est _ in -- í -- qui -- tas si -- bi. }

chantMusic = {
\tieDown   e'4 fis'4 a'4 ( gis'4 a'4) fis'4 fis'4 ( \once \tweak #'font-size #-4 e' ) a'4 ( b'4)  b'4 ( gis'4 a'4) fis'4 ( e'4) e'4 \divisioMaior
 e'4 e'4 ( b'4 a'4 \forceBreak
) b'4 ( cis''4) b'4 b'4 b'4 b'4 cis''4 ( d''4) cis''4 b'4 ( \once \tweak #'font-size #-4 a' ) b'4 ( cis''\prall d''4 cis''4) ~ cis''4 ( b'4) \divisioMaxima
 b'4 ( cis''4 d''4 cis''4 b'4 cis''4) cis''4 ( b'4 \forceBreak
) b'4 ( \once \tweak #'font-size #-4 gis' ) b'4 ( cis''4) b'4 cis''4 ( cis''4 d''4) cis''4 b'4 ( \once \tweak #'font-size #-4 a' ) b'4 ( cis''\prall d''4 cis''4) ~ cis''4 ( b'4) \divisioMinima
 b'4 ( cis''4) a'4 fis'4 a'4 ( gis'4 a'4) fis'4 ( e'4) \divisioMaior \forceBreak

 e'4 e'4 ( \once \tweak #'font-size #-4 b' ) b'4 b'4 b'4 ( b'4) cis''4 ( gis'4 e'4 fis'4) \divisioMinima
 e'4 gis'4 ( a'4) fis'4 ( a'4 b'4) a'4 e'4 ( fis'4 e'4) e'4 \finalis

}

altoMusic = {
cis'2 ~ cis'2*4/2 ~ cis'2*4/2 e'2*3/2 b2 ~ b4 ~ \divisioMaior
b4 e'2*3/2 ~ e'2*4/2 fis'2 d'2*3/2 e'2 fis'2*3/2 e'2*3/2 \divisioMaxima
d'2*6/2 e'2 ~ e'2 ~ e'2*3/2 fis'2*4/2 e'2 d'2*3/2 e'2*3/2 \divisioMinima
fis'2 ~ fis'2 e'2*3/2 b2 ~ \divisioMaior
b4 e'2 ~ e'2 fis'2 e'2 ~ e'4 cis'4 ~ \divisioMinima
cis'4 ~ cis'2 ~ cis'4 b2*3/2 ~ b2*3/2 ~ b4 \finalis
}

tenorMusic = {
a2 ~ a2*4/2 ~ a2*4/2 ~ a2*3/2 ~ a2 gis4 ~ \divisioMaior
gis4 ~ gis2*3/2 ~ gis2*4/2 a2 ~ a2*3/2 ~ a2 ~ a2*3/2 gis2*3/2 \divisioMaxima
fis2*6/2 gis2 ~ gis2 a2*3/2 ~ a2*4/2 gis2 a2*3/2 gis2*3/2 ~ \divisioMinima
gis2 a2 ~ a2*3/2 ~ a4 gis4 ~ \divisioMaior
gis4 ~ gis2 a2 ~ a2 b2*3/2 ~ b4 \divisioMinima
a4 fis2 ~ fis4 ~ fis2*3/2 a2*3/2 gis4 \finalis
}

bassMusic = {
r2 gis2*4/2 fis2*4/2 cis2*3/2 e2 ~ e4 ~ \divisioMaior
e4 cis2*3/2 e2*4/2 d2 b,2*3/2 cis2 d2*3/2 e2*3/2 \divisioMaxima
b,2*6/2 e2 cis2 ~ cis2*3/2 d2*4/2 b,2 ~ b,2*3/2 e2*3/2 \divisioMinima
d2 ~ d2 cis2*3/2 e2 ~ \divisioMaior
e4 cis2 ~ cis2 d2 cis2*3/2 fis4 ~ \divisioMinima
fis4 e2 d4 ~ d2*3/2 e2*3/2 ~ e4 \finalis
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
