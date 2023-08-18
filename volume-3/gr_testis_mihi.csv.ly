\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.258
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Testis mihi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Testis mihi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Testis mihi" }
    \line {}
  }
}

chantText = \lyricmode {
Te -- stis mi -- hi est De -- _ us, 
\set stanza = " * " 
quo mo -- do cú -- pi -- am o -- mnes vos 
in vi -- scé -- _ _ _ ri -- bus Je -- _ su Chri -- sti. _ _ _ _ 
Et hoc o -- ro, ut cá -- ri -- tas ve -- _ _ stra ma -- gis ac ma -- gis a -- bún -- det 
in sci -- én -- ti -- a, _ _ _ _ _ _ _ _ _ _ 
et in o -- mni sen -- su. _ _ _ _ ℣. 
Ut pro -- bé -- tis _ _ _ po -- ti -- ó -- ra, _ _ _ 
ut si -- tis _ _ _ sin -- cé -- _ _ ri, 
et si -- ne of -- fén -- sa _ _ _ 
in di -- em 
\set stanza = " * " Chri -- _ _ sti. 
_ _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 e'4 ( d'4) e'4 ( fis'4) e'4 e'4 ( fis'4 gis'\prall a'4 gis'4 fis'4 gis'4) e'4 ( fis'4) a'4 ( fis'4 gis'4) fis'4 ( e'4) \divisioMaior
 e'4 ( a'4) a'4 ( a'4 b'4) a'4 a'4 a'4 a'4 ( fis'4) gis'4 fis'4 ( gis'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaior
 a'4 ( a'4 \once \tweak #'font-size #-4 b' ) b'4 a'4 ( gis'4) a'4 ( b'4) ~ b'4 ( a'4) b'4 ( cis''4) b'4 b'4 \divisioMinima
 b'4 ( d''4) ~ d''4 ( b'4) b'4 ( cis''4) b'4 ( a'4 b'\prall cis''4) cis''4 ( b'4) cis''4 ( b'4) cis''4 ( a'4.) b'4 ( a'4 gis'4) a'4 ( gis'4) \divisioMaxima
 fis'4 ( a'4 gis'4) a'4 ( b'4) b'4 ( a'4 b'4) b'4 \divisioMinima
 b'4 b'4 ( gis'4) a'4 ( b'4) b'4 b'4 ( gis'4) a'4 ( gis'4 fis'4) gis'4 ( a'4) a'4 \divisioMinima
 a'4 gis'4 b'4 b'4 gis'4 a'4 b'4 ( \once \tweak #'font-size #-4 a' ) b'4 \divisioMaior
 b'4 b'4 b'4 ( a'4 b'\prall cis''4) b'4 ( a'4 b'4) b'4 ( gis'4) a'4 ( fis'4 e'4) fis'4 ( fis'4 e'4) fis'4 ( fis'4) \divisioMinima
 e'4 ( fis'4) a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 gis'4 fis'4) a'4 ( e'4.) fis'4 ( e'4 d'4) e'4 ( d'4) \divisioMaior
 d'4 fis'4 gis'4 ( gis'4 a'4) fis'4 ( b'4 cis''4) a'4 ( gis'4) gis'4. e'4 ( a'4 fis'4 a'4.) gis'4 ( a'4 fis'4 e'4) fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \finalis
 e'4 a'4 ( a'4) a'4 ( b'4) a'4 ( a'4) b'4 ( gis'4) a'4 ( b'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 e'4 e'4 ( a'4) a'4 ( b'4) b'4 ( cis''4 b'4 a'4) e''4 ( d''4.) cis''4 ( e''4 d''4 d''4) b'4 ( cis''4 b'4) \divisioMaxima
 a'4 ( a'4) a'4 ( b'4) a'4 ( a'4) b'4 ( gis'4) a'4 ( b'4 fis'4) ~ fis'4 ( e'4) a'4 ( a'4) a'4. gis'4 ( a'4 b'4 a'4) b'4 ( cis''4) b'4 \divisioMaior
 b'4 b'4 ( cis''4) b'4 b'4 b'4 ( a'4 b'4) b'4 ( b'4 gis'4.) a'4 ( b'4 a'4) b'4 ( fis'4) ~ fis'4 ( e'4) \divisioMaior
 e'4 ( fis'4) e'4 e'4 ( fis'4 a'4)  a'4. gis'4 ( a'4) b'4 ( a'4 b'4) b'4 ( e'4) \divisioMaior
 b'4 ( gis'4 b'4) cis''4 ( d''4 b'4.) cis''4 ( d''4 cis''4 b'4) cis''4 ( a'4) b'4 ( b'4 gis'4.) a'4 ( b'4 gis'4) a'4 ( fis'4 e'4) fis'4 ( d'4 e'4) \divisioMinima
 a'4 ( a'4 fis'4 e'4) fis'4 ( d'4 b4.) e'4 ( a'4 fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
cis'4 ~ cis'2 d'2*3/2 e'2*7/2 ~ e'2*5/2 cis'2 \divisioMaior
e'2 ~ e'2*4/2 fis'2 b2*3/2 ~ b2*5/2 ~ b2 \divisioMaior
fis'2*4/2 e'2*3/2 ~ e'2*3/2 ~ e'2*4/2 ~ \divisioMinima
e'4 fis'2*3/2 ~ fis'2 ~ fis'2*4/2 e'2*13/4 ~ e'2*3/2 ~ e'2 \divisioMaxima
fis'2*5/2 ~ fis'2*3/2 ~ fis'4 ~ \divisioMinima
fis'4 e'2*5/2 ~ e'2*7/2 ~ e'4 \divisioMinima
d'2*3/2 cis'2*3/2 d'2*3/2 ~ \divisioMaior
d'2 e'2*4/2 ~ e'2*3/2 d'2*5/2 cis'2*3/2 b2 ~ \divisioMinima
b2 cis'2 d'2 e'2*4/2 ~ e'2*5/4 d'2*3/2 a2 ~ \divisioMaior
a2 d'2*3/2 cis'2*3/2 d'2 e'2*3/4 ~ e'2*9/4 ~ e'2*6/2 d'2 b4 \finalis
cis'4 ~ cis'2 ~ cis'2 ~ cis'2*6/2 b2*3/2 ~ \divisioMinima
b4 cis'2 ~ cis'2 fis'2*4/2 ~ fis'2*5/4 ~ fis'2*4/2 e'2*3/2 ~ \divisioMaxima
e'2 ~ e'2 ~ e'2*6/2 cis'2*3/2 e'2 ~ e'2*11/4 fis'2*3/2 ~ \divisioMaior
fis'4 e'2*4/2 cis'2*3/2 e'2*7/4 ~ e'2*4/2 cis'2*3/2 ~ \divisioMaior
cis'2*3/2 e'2*3/2 cis'2*13/4 e'2 ~ \divisioMaior
e'2*3/2 ~ e'2*7/4 ~ e'2*4/2 ~ e'2 fis'2*7/4 e'2*6/2 d'2*3/2 \divisioMinima
cis'2*4/2 b2*7/4 cis'2*4/2 b2 ~ b4 \finalis
}

tenorMusic = {
e4 a2 ~ a2*3/2 ~ a2*7/2 b2*5/2 gis2 ~ \divisioMaior
gis2 a2*4/2 ~ a2 ~ a2*3/2 ~ a2*5/2 gis2 \divisioMaior
b2*4/2 ~ b2*3/2 fis2*3/2 gis2*4/2 ~ \divisioMinima
gis4 a2*3/2 fis2 gis2*4/2 ~ gis2 fis2 a2*5/4 gis2*3/2 cis'2 \divisioMaxima
a2*5/2 gis2*3/2 fis4 ~ \divisioMinima
fis4 gis2*5/2 e2*7/2 fis4 ~ \divisioMinima
fis2*3/2 ~ fis2*3/2 ~ fis2*3/2 ~ \divisioMaior
fis2 e2*4/2 fis2*3/2 ~ fis2*5/2 ~ fis2*3/2 ~ fis2 ~ \divisioMinima
fis2 ~ fis2 ~ fis2 e2*4/2 a2*5/4 ~ a2*3/2 fis2 ~ \divisioMaior
fis2 ~ fis2*6/2 ~ fis2 e2*3/4 a2*9/4 b2*6/2 a2 gis4 \finalis
a4 ~ a2 gis2 a2*6/2 b2*3/2 ~ \divisioMinima
b4 a2 ~ a2 ~ a2*4/2 ~ a2*5/4 ~ a2*4/2 gis2*3/2 \divisioMaxima
a2 e2 fis2*6/2 gis2*3/2 cis'2 b2*11/4 a2*3/2 ~ \divisioMaior
a4 gis2*4/2 fis2*3/2 e2*7/4 fis2*4/2 gis2*3/2 \divisioMaior
b2*3/2 a2*3/2 ~ a2*13/4 gis2 ~ \divisioMaior
gis2*3/2 fis2*7/4 gis2*4/2 a2 ~ a2*7/4 ~ a2*6/2 ~ a2*3/2 ~ \divisioMinima
a2*4/2 ~ a2*7/4 ~ a2*4/2 ~ a2 gis4 \finalis
}

bassMusic = {
a,4 ~ a,2 b,2*3/2 cis2*7/2 ~ cis2*5/2 ~ cis2 ~ \divisioMaior
cis2 ~ cis2*4/2 d2 ~ d2*3/2 e2*5/2 ~ e2 \divisioMaior
d2*4/2 e2*3/2 ~ e2*3/2 ~ e2*4/2 ~ \divisioMinima
e4 d2*3/2 ~ d2 cis2*4/2 ~ cis2*13/4 ~ cis2*3/2 ~ cis2 \divisioMaxima
d2*5/2 ~ d2*3/2 ~ d4 ~ \divisioMinima
d4 cis2*5/2 ~ cis2*7/2 ~ cis4 \divisioMinima
b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 ~ \divisioMaior
b,2 cis2*4/2 ~ cis2*3/2 b,2*5/2 a,2*3/2 gis,2 ~ \divisioMinima
gis,2 fis,2 b,2 cis2*4/2 ~ cis2*5/4 d2*3/2 ~ d2 ~ \divisioMaior
d2 b,2*6/2 ~ b,2 cis2*3/4 ~ cis2*9/4 ~ cis2*6/2 d2 e4 \finalis
r4 fis2 ~ fis2 ~ fis2*6/2 gis2*3/2 ~ \divisioMinima
gis4 ~ gis2 fis2 d2*4/2 cis2*5/4 b,2*4/2 e2*3/2 \divisioMaxima
cis2 ~ cis2 ~ cis2*6/2 ~ cis2*3/2 ~ cis2 ~ cis2*11/4 d2*3/2 ~ \divisioMaior
d4 e2*4/2 fis2*3/2 cis2*7/4 ~ cis2*4/2 ~ cis2*3/2 ~ \divisioMaior
cis2*3/2 ~ cis2*3/2 fis2*13/4 e2 ~ \divisioMaior
e2*3/2 ~ e2*7/4 ~ e2*4/2 cis2 d2*7/4 cis2*6/2 b,2*3/2 \divisioMinima
a,2*4/2 ~ a,2*7/4 ~ a,2*4/2 e2 ~ e4 \finalis
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
