\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.116
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Oculi omnium" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Oculi omnium"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Oculi omnium" }
    \line {}
  }
}

chantText = \lyricmode {
O -- cu -- _ li 
\set stanza = " * " ó -- _ mni -- um 
in te spe -- _ rant, _ Dó -- mi -- ne _ _ _ _ _ 
et tu _ das il -- _ lis _ 
e -- _ scam _ _ 
in tém -- _ po -- _ _ re _ _ _ _ 
op -- por -- tú -- no. _ _ _ _ _ _ _ _ _ _ _ ℣. 
A -- pe -- _ _ _ _ _ _ _ _ _ _ _ _ ris tu 
ma -- _ _ _ num tu -- am: _ _ _ 
et im -- ples _ _ _ _ _ _ _ o -- mne á -- ni -- mal 
\set stanza = " * " 
be -- ne -- di -- cti -- ó -- ne. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( fis'4 gis'\prall a'4 a'4) b'4 ( a'4) ~ a'4 ( gis'4 fis'4) fis'4 ( e'4) \divisioMinima
 e'4 ( fis'4) gis'4 ( fis'4 gis'4) e'4 ( fis'4 gis'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaior \forceBreak

 e'4 ( a'4) a'4 ( b'4) b'4 cis''4 ( b'4 a'4) b'4 ( a'4) ~ a'4 ( \once \tweak #'font-size #-4 gis' ) \divisioMinima
 a'4 ( b'4) b'4 b'4 ( d''4 b'4) d''4 ( d''4 cis''4 b'4) cis''4 ( b'4) e''4 ( d''4.) cis''4 ( e''4 d''4 d''4) b'4 ( cis''4 b'4) \divisioMaxima \forceBreak

 a'4 cis''4 d''4 ( e''4 d''4) d''4 ( cis''4) d''4 ( d''4) ~ d''4 ( \tiny cis'' b' 4) b'4 ( cis''4 b'4 b'4) gis'4 ( a'4 gis'4) \divisioMaior
 gis'4 ( a'4 b'4 cis''4 d''4 b'4 a'4 gis'4) a'4 ( b'4) b'4 ( cis''4 a'4 \forceBreak
) ~ a'4 ( a'4 gis'4 fis'4 e'4) fis'4 ( e'4) \divisioMaior
 e'4 ( fis'4) a'4 ( gis'4) a'4 ( b'4) b'4 ( gis'4) a'4 ( gis'4 fis'4) gis'4 ( a'4) gis'4. a'4 ( b'4 a'4) b'4 ( fis'4.) gis'4 ( fis'4 e'4) fis'4 ( e'4) \divisioMaior \forceBreak

 e'4 ( fis'4) a'4 ( \once \tweak #'font-size #-4 gis' ) a'4 ( b'4 a'4) a'4 ( b'4) d''4 ( d''4) b'4 d''4 ( d''4) ~ d''4 ( b'4 a'4) ~ a'4 ( fis'4 e'4) \divisioMinima
 a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( gis'4 e'4) fis'4 ( e'4) a'4 ( fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \finalis \forceBreak

 b'4 cis''4 ( b'4) ~ b'4 ( gis'4) a'4 b'4 ( a'4) ~ a'4 ( gis'4) b'4 cis''4 ( b'4) ~ b'4 ( gis'4) a'4 b'4 ( a'4 a'4) \divisioMinima
 fis'4 a'4 ( a'4) ~ a'4 ( fis'4 e'4 fis'4) a'4 ( a'4) gis'4 ( b'4 cis''4 a'4 gis'4 \forceBreak
) b'4 ( cis''4 b'4 a'4) b'4 ( cis''4) b'4 ( cis''4) b'4 \divisioMaior
 b'4 ( d''4 b'4) d''4 ( d''4 cis''4 b'4) cis''4 ( b'4) e''4 ( d''4) d''4 ( cis''4) \divisioMinima
 cis''4 ( e''4 d''4 cis''4 b'4) b'4. \forceBreak
 fis'4 ( a'4 b'4 cis''\prall d''4 cis''4 a'4) d''4. cis''4 ( d''4 b'4) cis''4 ( cis''4 b'4) \divisioMaxima
 b'4 ( cis''4 b'4 gis'4) a'4 ( b'\prall cis''4) b'4 cis''4 ( b'4) cis''4 ( a'4) ~ a'4 ( a'4) b'4 ( fis'4) ~ fis'4 ( e'4.) fis'4 ( e'4) fis'4 ( gis'4 fis'4) \divisioMinima \forceBreak

 e'4 ( fis'4) e'4 e'4 e'4 ( fis'4 gis'\prall a'4 gis'4 fis'4 gis'4) fis'4 ( e'4) \divisioMaior
 e'4 ( fis'4) a'4 ( gis'4) a'4 ( b'4 a'4) b'4 ( gis'4) a'4 ( b'4) a'4 ( b'4) d''4 ( d''4) b'4 \forceBreak
 d''4 ( d''4) ~ d''4 ( b'4 a'4) ~ a'4 ( fis'4 e'4) \divisioMinima
 a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( gis'4 e'4) fis'4 ( e'4) a'4 ( fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
e'2*6/2 fis'2*3/2 ~ fis'4 ~ fis'4 e'4 ~ \divisioMinima
e'2 ~ e'2*3/2 ~ e'2 cis'2*4/2 b2 \divisioMaior
cis'2 e'2*3/2 fis'2*4/2 e'2*3/2 ~ \divisioMinima
e'2*3/2 d'2*3/2 fis'2*4/2 ~ fis'2*9/4 ~ fis'2*4/2 e'2 ~ e'4 \divisioMaxima
a'2 ~ a'2*3/2 fis'2 ~ fis'2 ~ fis'2*3/2 e'2 ~ e'2 ~ e'2*3/2 ~ \divisioMaior
e'2*4/2 fis'2*4/2 ~ fis'2 ~ fis'2*3/2 e'2*4/2 ~ e'4 cis'2 ~ \divisioMaior
cis'2 ~ cis'2*4/2 e'2 ~ e'2*3/2 ~ e'2*7/4 ~ e'2*3/2 d'2*5/4 cis'2*3/2 b2 ~ \divisioMaior
b2 a2 cis'2*3/2 e'2 d'2*3/2 fis'2 ~ fis'2 d'2 cis'2 ~ \divisioMinima
cis'2 ~ cis'2 b2*3/2 cis'2 d'2*3/2 b2 ~ b4 \finalis
e'2 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'2*4/2 ~ e'2*4/2 ~ e'2 ~ e'2*4/2 ~ e'2 ~ e'2 ~ e'2*3/2 ~ e'2*4/2 ~ e'2 ~ e'2 ~ e'4 \divisioMaior
d'2*3/2 fis'2*4/2 ~ fis'2*6/2 ~ \divisioMinima
fis'2*5/2 ~ fis'2*3/4 ~ fis'2 e'2 d'2*3/2 fis'2*3/4 ~ fis'2*3/2 e'2*3/2 \divisioMaxima
gis'2*3/2 ~ gis'4 a'2*4/2 fis'2 ~ fis'2 ~ fis'2*3/2 cis'2*11/4 ~ cis'2*3/2 ~ \divisioMinima
cis'2*3/2 b4 ~ b2*3/2 cis'2*4/2 ~ cis'2 ~ \divisioMaior
cis'2 ~ cis'2 ~ cis'2*3/2 fis'2 e'2*4/2 d'2*3/2 fis'2 d'2 e'2 r2 \divisioMinima
cis'2 ~ cis'2 ~ cis'2*3/2 ~ cis'2 ~ cis'2*3/2 b2 ~ b4 \finalis
}

tenorMusic = {
cis'2*6/2 ~ cis'2*4/2 b2 \divisioMinima
cis'2 b2*3/2 ~ b2 a2*4/2 gis2 \divisioMaior
a2 ~ a2*3/2 ~ a2*4/2 ~ a2*3/2 \divisioMinima
fis2*3/2 ~ fis2*3/2 b2*4/2 ~ b2*9/4 a2*4/2 ~ a2 gis4 \divisioMaxima
r2 a2*3/2 ~ a2 ~ a2 ~ a2*3/2 ~ a2 gis2 b2*3/2 \divisioMaior
cis'2*4/2 b2*4/2 fis2 a2*3/2 ~ a2*5/2 gis2 \divisioMaior
b2 a2*4/2 gis2 fis2*3/2 e2*7/4 ~ e2*3/2 fis2*5/4 ~ fis2*3/2 gis2 \divisioMaior
cis2 ~ cis2 fis2*3/2 ~ fis2 ~ fis2*3/2 b2 ~ b2 cis'2 b2 \divisioMinima
a2 fis2 ~ fis2*3/2 ~ fis2 ~ fis2*3/2 a2 gis4 \finalis
r2*10/2 gis2 b2*4/2 cis'2*3/2 \divisioMinima
r4 d'2 b2*4/2 cis'2 b2 a2*3/2 ~ a2*4/2 gis2 fis2 gis4 \divisioMaior
fis2*3/2 b2*4/2 ~ b2*4/2 a2 ~ \divisioMinima
a2 fis2*3/2 b2*3/4 a2 fis2 ~ fis2*3/2 a2*3/4 ~ a2*3/2 gis2*3/2 \divisioMaxima
e'2*4/2 ~ e'2*4/2 ~ e'2 d'2 cis'2*3/2 b2*11/4 a2*3/2 ~ \divisioMinima
a2*3/2 b4 ~ b2*3/2 a2*4/2 gis2 ~ \divisioMaior
gis2 fis2 ~ fis2*3/2 ~ fis2 ~ fis2*4/2 ~ fis2*3/2 b2 fis2 e2 gis2 \divisioMinima
fis2 ~ fis2 e2*3/2 gis2 fis2*3/2 a2 gis4 \finalis
}

bassMusic = {
a2*6/2 fis2*4/2 gis2 \divisioMinima
a2 e2*3/2 cis2 d2*4/2 e2 \divisioMaior
a,2 cis2*3/2 d2*4/2 cis2*3/2 ~ \divisioMinima
cis2*3/2 b,2*3/2 ~ b,2*4/2 d2*9/4 ~ d2*4/2 e2 ~ e4 \divisioMaxima
fis2 ~ fis2*3/2 e2 d2 b,2*3/2 e2 ~ e2 ~ e2*3/2 ~ \divisioMaior
e2*4/2 d2*4/2 ~ d2 ~ d2*3/2 cis2*5/2 ~ cis2 ~ \divisioMaior
cis2 fis2*4/2 e2 ~ e2*3/2 ~ e2*7/4 cis2*3/2 b,2*5/4 a,2*3/2 gis,2 ~ \divisioMaior
gis,2 fis,2 gis,2*3/2 cis2 b,2*3/2 ~ b,2 d2 fis2 ~ fis2 ~ \divisioMinima
fis2 e2 d2*3/2 a,2 b,2*3/2 e2 ~ e4 ~ \finalis
e2 gis2*3/2 fis2 e2*3/2 ~ e2 gis2*4/2 cis'2*3/2 ~ \divisioMinima
cis'4 a2 ~ a2*4/2 ~ a2 ~ a2 ~ a2*3/2 e2*4/2 ~ e2 ~ e2 ~ e4 \divisioMaior
b,2*3/2 ~ b,2*4/2 d2*4/2 fis2 \divisioMinima
e2 ~ e2*3/2 d2*3/4 ~ d2 cis2 b,2*3/2 ~ b,2*3/4 e2*3/2 ~ e2*3/2 ~ \divisioMaxima
e2*4/2 fis2*4/2 b2 ~ b2 fis2*3/2 ~ fis2*11/4 ~ fis2*3/2 \divisioMinima
a2*3/2 ~ a4 gis2*3/2 fis2*4/2 cis2 ~ \divisioMaior
cis2 fis2 e2*3/2 d2 cis2*4/2 b,2*3/2 ~ b,2 ~ b,2 cis2 ~ cis2 \divisioMinima
fis,2 a,2 cis2*3/2 ~ cis2 d2*3/2 e2 ~ e4 \finalis
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
