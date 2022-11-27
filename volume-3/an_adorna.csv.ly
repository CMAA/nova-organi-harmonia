\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.64
%(volume.page)

global = {
 \key a \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Adorna" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Adorna"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Adorna" }
    \line {}
  }
}

chantText = \lyricmode {
Ad -- ór -- na 
\set stanza = " * " thá -- la -- mum tu -- um, Si -- _ on, 
et sús -- ci -- pe Re -- gem Chri -- _ stum: 
am -- plé -- cte -- re Ma -- rí -- _ am, 
quæ est cœ -- lé -- stis por -- ta: 
i -- psa e -- nim por -- _ tat Re -- gem gló -- ri -- æ 
no -- vi lú -- mi -- nis: sub -- sís -- tit Vir -- go, 
ad -- dú -- cens má -- ni -- bus Fí -- li -- um an -- te lu -- cí -- fe -- rum: 
quem ac -- cí -- pi -- ens Sí -- me -- on in ul -- nas su -- as 
præ -- di -- cá -- vit pó -- pu -- lis 
Dó -- _ _ mi -- num e -- _ um es -- se _ vi -- tæ et mor -- tis, _ _ 
et Sal -- va -- tó -- rem mun -- _ di. }

chantMusic = {
\tieDown   d'4 ( fis'4) a'4 ( a'4 b'4) a'4 \divisioMinima
 a'4 ( b'4) a'4 a'4 a'4 ( gis'4 fis'4) a'4 ( a'4) a'4 ( b'4) cis''4 ( b'4 a'4 b'4) b'4 ( a'4) \divisioMaior
 d'4 ( fis'4) a'4 ( a'4 b'4) a'4 a'4 a'4 ( b'4) a'4 a'4 ( b'4) cis''4 ( b'4 a'4 b'4) b'4 ( a'4) \divisioMaxima
 a'4 cis''4 a'4 b'4 ( cis''4 a'4 gis'4 fis'4) a'4 ( a'4) a'4 ( b'4) cis''4 ( b'4 a'4 b'4) b'4 ( a'4) \divisioMaior
 a'4 cis''4 a'4 b'4 ( cis''4 a'4 gis'4 fis'4) a'4 ( a'4) a'4 ( \once \tweak #'font-size #-4 b' ) a'4 \divisioMaxima
 a'4 ( a'4 b'4) a'4 a'4 ( b'4) a'4 a'4 ( gis'4) a'4 ( b'4 a'4 a'4) fis'4 ( e'4) \divisioMinima
 a'4 ( a'4) a'4 ( \once \tweak #'font-size #-4 b' ) b'4 b'4 ( a'4 b'\prall cis''4 b'4 cis''4) cis''4 ( b'4) \divisioMaior
 a'4 b'4 ( cis''4 b'4 cis''4) cis''4 ( e''4) b'4 ( cis''4) b'4 ( a'4 b'4) \divisioMinima
 a'4 ( fis'4) a'4 b'4 b'4 ( \once \tweak #'font-size #-4 cis'' ) a'4 \divisioMaior
 a'4 a'4 b'4 ( cis''4 b'4 cis''4) cis''4 ( e''4) b'4 ( cis''4) b'4 ( a'4 b'4) \divisioMinima
 a'4 ( fis'4) a'4 b'4 b'4 ( \once \tweak #'font-size #-4 cis'' ) a'4 a'4 b'4 ( cis''4 b'4 cis''4) b'4 ( cis''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMaxima
 a'4 a'4 a'4 ( b'4) a'4 a'4 a'4 a'4 ( b'4) b'4 ( fis'4) \divisioMinima
 fis'4 a'4 a'4 b'4 ( a'4 b'\prall cis''4 b'4 cis''4) cis''4 ( b'4) \divisioMaior
 b'4 b'4 ( cis''4) cis''4 ( b'4) b'4 ( a'4) a'4 b'4 ( a'4 b'\prall cis''4 b'4 cis''4) cis''4 ( b'4) \divisioMaior
 a'4 ( b'4) cis''4 ( b'4) cis''4 ( d''4) cis''4 cis''4 cis''4 ( e''4) ~ e''4 ( cis''4) cis''4 b'4 ( a'4) a'4 ( b'4 a'4 a'4) fis'4 ( gis'4 fis'4) \divisioMinima
 a'4 ( a'4 gis'4) a'4 ( b'4 cis''4) b'4 ( \once \tweak #'font-size #-4 cis'' ) a'4 ( \once \tweak #'font-size #-4 b' ) a'4. ~ a'4 ( a'4 fis'4) ~ fis'4 ( e'4) \divisioMaior
 a'4 a'4 ( \once \tweak #'font-size #-4 b' ) a'4 a'4 ( b'4 cis''4) b'4 ( cis''4 b'4) a'4 ( b'4) cis''4 ( b'4 a'4 b'4) b'4 ( a'4) \finalis

}

altoMusic = {
d'2 e'2*4/2 ~ \divisioMinima
e'2 ~ e'2 ~ e'2*3/2 d'2 cis'2 ~ cis'2*4/2 ~ cis'2 \divisioMaior
d'2 cis'2*3/2 ~ cis'2 ~ cis'2*3/2 fis'2 ~ fis'2 ~ fis'2 e'2 \divisioMaxima
cis'4 ~ cis'2 fis'2 e'2*3/2 d'2 e'2 ~ e'2*4/2 cis'2 \divisioMaior
fis'2*3/2 e'2 d'2*3/2 cis'2 ~ cis'2 ~ cis'4 \divisioMaxima
d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 cis'2 ~ \divisioMinima
cis'2 ~ cis'2 a'4 e'2*3/2 ~ e'2*3/2 fis'2 \divisioMaior
e'4 ~ e'2*4/2 ~ e'2*4/2 fis'2*3/2 \divisioMinima
e'2 d'2 cis'2*3/2 ~ \divisioMaior
cis'4 e'4 fis'2*4/2 e'2 ~ e'2 ~ e'2*3/2 \divisioMinima
fis'2*4/2 ~ fis'2*3/2 ~ fis'4 ~ fis'2*4/2 ~ fis'2*5/2 e'2 \divisioMaxima
d'2 cis'2 ~ cis'2 ~ cis'4 ~ cis'2 b2 \divisioMinima
fis'4 e'2 fis'2*6/2 e'2 ~ \divisioMaior
e'4 fis'2 e'2 ~ e'2 ~ e'4 d'2*6/2 e'2 ~ \divisioMaior
e'2 ~ e'2 ~ e'2*5/2 ~ e'2*4/2 fis'2 d'2*4/2 cis'2*3/2 \divisioMinima
d'2*3/2 cis'2*3/2 ~ cis'2 ~ cis'2 ~ cis'2*3/4 d'2 fis'4 ~ fis'4 e'4 ~ \divisioMaior
e'4 d'2*3/2 e'2*3/2 fis'2*3/2 e'2 ~ e'2*4/2 d'4 cis'4 \finalis
}

tenorMusic = {
b2 cis'2*4/2 ~ \divisioMinima
cis'2 d'2 cis'2*3/2 b2 a2 ~ a2*4/2 ~ a2 ~ \divisioMaior
a2 ~ a2*3/2 gis2 fis2*3/2 ~ fis2 ~ fis2 a2 ~ a2 \divisioMaxima
fis4 ~ fis2 ~ fis2 ~ fis2*3/2 ~ fis2 e2 a2*4/2 ~ a2 ~ \divisioMaior
a2*3/2 ~ a2 ~ a2*3/2 ~ a2 fis2 e4 \divisioMaxima
fis2*4/2 ~ fis2*3/2 ~ fis2 a2*4/2 gis2 \divisioMinima
a2 gis2 ~ gis4 fis2*3/2 gis2*3/2 fis2 ~ \divisioMaior
fis4 gis2*4/2 a2*4/2 ~ a2*3/2 ~ \divisioMinima
a2 ~ a2 ~ a2*3/2 ~ \divisioMaior
a4 ~ a4 ~ a2*4/2 ~ a2 b2 cis'2*3/2 ~ \divisioMinima
cis'2*4/2 ~ cis'2*3/2 ~ cis'4 b2*4/2 d'2*5/2 cis'2 \divisioMaxima
a2 ~ a2 gis2 fis4 ~ fis2 ~ fis2 \divisioMinima
a4 ~ a2 ~ a2*6/2 gis2 ~ \divisioMaior
gis4 fis2 gis2 fis2 e4 fis2*6/2 gis2 \divisioMaior
a2 b2 a2*5/2 b2*4/2 cis'2 b2*4/2 a2*3/2 \divisioMinima
b2*3/2 a2*3/2 gis2 fis2 ~ fis2*3/4 ~ fis2 gis2*3/2 \divisioMaior
a4 ~ a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ a2 ~ a2*4/2 ~ a2 \finalis
}

bassMusic = {
r2*6/2 \divisioMinima
a2 ~ a2 ~ a2*3/2 ~ a2 ~ a2 gis2*4/2 fis2 ~ \divisioMaior
fis2 ~ fis2*3/2 ~ fis2 ~ fis2*3/2 e2 d2 ~ d2 cis2 \divisioMaxima
r4 e2 d2 cis2*3/2 b,2 cis2 ~ cis2*4/2 fis2 \divisioMaior
d2*3/2 cis2 b,2*3/2 a,2 ~ a,2 ~ a,4 \divisioMaxima
d2*4/2 cis2*3/2 b,2 ~ b,2*4/2 cis2 \divisioMinima
fis2 ~ fis2 e4 ~ e2*3/2 ~ e2*3/2 d2 \divisioMaior
cis4 ~ cis2*4/2 ~ cis2*4/2 d2*3/2 \divisioMinima
cis2 b,2 a,2*3/2 ~ \divisioMaior
a,4 cis4 d2*4/2 cis2 ~ cis2 ~ cis2*3/2 \divisioMinima
fis2*4/2 gis2*3/2 a4 ~ a2*4/2 ~ a2*5/2 ~ a2 \divisioMaxima
fis2 ~ fis2 ~ fis2 ~ fis4 e2 d2 ~ \divisioMinima
d4 cis2 d2*6/2 e2 ~ \divisioMaior
e4 d2 cis2 ~ cis2 ~ cis4 b,2*6/2 e2 \divisioMaior
fis2 gis2 a2*5/2 gis2*4/2 fis2 ~ fis2*4/2 ~ fis2*3/2 ~ \divisioMinima
fis2*3/2 ~ fis2*3/2 ~ fis2 ~ fis2 e2*3/4 d2 cis2*3/2 ~ \divisioMaior
cis4 b,2*3/2 cis2*3/2 d2*3/2 cis2 a,2*4/2 ~ a,2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Antiphon"
        "6"
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
