\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.65
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Responsum accepit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Responsum accepit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Responsum accepit" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- spón -- sum 
\set stanza = " * " ac -- cé -- pit Sí -- me -- on _ _ _ _ 
a Spi -- ri -- tu San -- cto, _ _ _ _ 
non vi -- sú -- rum se mor -- tem, 
ni -- si vi -- dé -- ret Chri -- stum Dó -- mi -- ni: _ _ 
et cum in -- dú -- ce -- rent pú -- e -- rum in tem -- plum, _ _ _ _ 
ac -- cé -- pit e -- um in ul -- nas su -- as, 
et be -- ne -- dí -- xit _ De -- um, et di -- xit: _ _ 
Nunc _ di -- mít -- tis, Dó -- _ _ mi -- ne, ser -- vum tu -- um in pa -- ce. _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   a'4 gis'4 ( fis'4 gis'\prall a'4) gis'4 ( fis'4 fis'4) \divisioMinima
 cis'4 e'4 ( fis'4) fis'4 ( a'4) a'4 ( gis'4) fis'4 ( gis'4) gis'4. b'4 ( b'4 gis'4) a'4 ( a'4 fis'4) gis'4 ( a'4 fis'4) e'4 ( fis'4 gis'4) \divisioMaior
 a'4 gis'4 ( fis'4) a'4 a'4 ( b'4 a'4) fis'4 ( e'4 \once \tweak #'font-size #-4 gis' ) gis'4. b'4 ( b'4 gis'4) a'4 ( a'4 fis'4) gis'4 ( a'4 fis'4) e'4 ( fis'4 gis'4) \divisioMaior
 b'4 b'4 ( cis''4) cis''4 ( b'4) gis'4 ( fis'4) a'4 a'4 ( b'4) fis'4 ( gis'4) \divisioMaior
 e'4 gis'4 fis'4 a'4 gis'4 ( fis'4) a'4 a'4 ( b'4 a'4) fis'4 ( e'4) a'4 ( gis'4 fis'4) fis'4. b'4 ( b'4 a'4 gis'4 fis'4.) e'4 ( fis'4 gis'4) \divisioMaxima
 e'4 ( e'4 \once \tweak #'font-size #-4 fis' ) fis'4 fis'4 ( gis'\prall a'4) a'4 ( gis'4) fis'4 ( gis'4) gis'4 \divisioMinima
 a'4 ( b'4) b'4 ( a'4) gis'4 ( fis'4) a'4 ( \once \tweak #'font-size #-4 gis' ) fis'4 ( e'4 \once \tweak #'font-size #-4 gis' ) gis'4. b'4 ( b'4 gis'4.) a'4 ( a'4 fis'4) gis'4 ( a'4 fis'4) e'4 ( fis'4 gis'4) \divisioMaior
 b'4 b'4 b'4 ( cis''4 b'4 a'4 gis'4) fis'4 ( gis'4) gis'4 a'4 ( b'4) b'4 ( \once \tweak #'font-size #-4 a' ) gis'4 ( a'4 gis'4) fis'4 fis'4 \divisioMaxima
 e'4 ( e'4 \once \tweak #'font-size #-4 fis' ) fis'4 fis'4 ( gis'\prall a'4) a'4 ( gis'4) fis'4 ( fis'4 gis'4) e'4 ( fis'4 gis'4) a'4 ( a'4 gis'4 fis'4 e'4) a'4 \divisioMinima
 gis'4 ( a'4 gis'4) fis'4 fis'4. b'4 ( b'4 a'4 gis'4 fis'4) e'4 ( fis'4 gis'4) \divisioMaxima
 e'4 ( e'4 fis'4) e'4 ( fis'4 gis'4) a'4 ( b'4) b'4 ( a'4) gis'4 ( a'4 gis'4) \divisioMinima
 fis'4. e'4 ( fis'4 gis'4) b'4 ( b'4 a'4 gis'4 fis'4) e'4 ( fis'\prall gis'4) gis'4 \divisioMinima
 gis'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 ( gis'\prall a'4) gis'4 ( fis'4) a'4 gis'4 ( a'4 gis'4) fis'4 fis'4. b'4 ( b'4 a'4 gis'4 fis'4.) gis'4 ( a'4 gis'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 fis'4 ( b'4 a'4 gis'4 fis'4.) e'4 a'4 ( a'4) ~ a'4 ( gis'4 fis'4) gis'4 ( gis'4 fis'4) \finalis

}

altoMusic = {
cis'4 ~ cis'2*4/2 ~ cis'2*3/2 ~ \divisioMinima
cis'4 b2 cis'2 e'2*4/2 fis'2*3/4 e'2*3/2 d'2*3/2 ~ d'2*3/2 e'2*3/2 ~ \divisioMaior
e'4 ~ e'2 ~ e'4 d'2*3/2 cis'2*3/2 ~ cis'2*3/4 ~ cis'2*3/2 ~ cis'2*3/2 ~ cis'2*3/2 e'2*3/2 ~ \divisioMaior
e'4 ~ e'2 fis'2 ~ fis'2*3/2 e'2 ~ e'2 \divisioMaior
cis'2*3/2 d'2*3/2 e'4 fis'2*3/2 ~ fis'4 e'4 ~ e'2*3/2 fis'2*3/4 e'2*4/2 ~ e'2*3/4 ~ e'2*3/2 \divisioMaxima
cis'2*3/2 ~ cis'4 ~ cis'2*3/2 d'2*4/2 e'4 \divisioMinima
fis'2 ~ fis'2 ~ fis'2 e'2 ~ e'2*3/2 ~ e'2*3/4 fis'2*7/4 e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ \divisioMaior
e'4 ~ e'4 ~ e'2*5/2 d'2*3/2 e'2 ~ e'2 d'2*3/2 cis'2 \divisioMaxima
b2*3/2 cis'4 d'2*3/2 cis'2 ~ cis'2*3/2 e'2*3/2 d'2*5/2 cis'4 ~ \divisioMinima
cis'2*3/2 ~ cis'4 ~ cis'2*3/4 d'2*5/2 e'2*3/2 \divisioMaxima
cis'2*3/2 e'2*3/2 fis'2 ~ fis'2 ~ fis'2*3/2 ~ \divisioMinima
fis'2*3/4 e'2*3/2 d'2*5/2 cis'2*3/2 ~ cis'4 ~ \divisioMinima
cis'2 d'2*3/2 ~ d'2 e'4 ~ e'2*3/2 cis'4 ~ cis'2*3/4 fis'2*4/2 ~ fis'2*3/4 e'2*3/2 fis'4 ~ fis'4 e'4 \divisioMinima
fis'2*4/2 ~ fis'2*3/4 e'4 ~ e'2 cis'2*3/2 ~ cis'2 ~ cis'4 \finalis
}

tenorMusic = {
cis'4 b2*4/2 a2*3/2 ~ \divisioMinima
a4 b2 a2 b2*4/2 ~ b2*3/4 ~ b2*3/2 ~ b2*3/2 a2*3/2 gis2*3/2 \divisioMaior
cis'4 b2 a4 ~ a2*3/2 gis2*3/2 ~ gis2*3/4 fis2*3/2 gis2*3/2 a2*3/2 b2*3/2 ~ \divisioMaior
b4 a2 ~ a2 b2*3/2 ~ b2 cis'2 \divisioMaior
b2*3/2 ~ b2*3/2 a4 ~ a2*3/2 ~ a2 b2*3/2 ~ b2*3/4 ~ b2*4/2 a2*3/4 gis2*3/2 \divisioMaxima
a2*3/2 ~ a4 ~ a2*3/2 b2*4/2 cis'4 ~ \divisioMinima
cis'2 ~ cis'2 b2 ~ b2 a2*3/2 b2*3/4 ~ b2*7/4 ~ b2*3/2 ~ b2*3/2 ~ b2*3/2 ~ \divisioMaior
b4 ~ b4 a2*5/2 b2*3/2 cis'2 b2 ~ b2*3/2 ~ b4 a4 \divisioMaxima
gis2*3/2 a4 b2*3/2 cis'2 b2*3/2 ~ b2*3/2 ~ b2*5/2 a4 \divisioMinima
b2*3/2 ~ b4 a2*3/4 b2*5/2 ~ b2*3/2 \divisioMaxima
a2*3/2 b2*3/2 cis'2 ~ cis'2 b2*3/2 \divisioMinima
a2*3/4 ~ a2*3/2 ~ a2*5/2 gis2*3/2 e4 ~ \divisioMinima
e2 fis2*3/2 b2 a4 b2*3/2 ~ b4 a2*3/4 ~ a2*4/2 b2*3/4 ~ b2*3/2 cis'2*3/2 \divisioMinima
b2*4/2 gis2*5/4 a2 ~ a2*3/2 b2 a4 \finalis
}

bassMusic = {
fis4 ~ fis2*4/2 ~ fis2*3/2 \divisioMinima
r4 gis2 fis2 e2*4/2 d2*3/4 cis2*3/2 b,2*3/2 ~ b,2*3/2 cis2*3/2 ~ \divisioMaior
cis4 ~ cis2 ~ cis4 b,2*3/2 cis2*3/2 e2*3/4 fis2*3/2 ~ fis2*3/2 ~ fis2*3/2 gis2*3/2 ~ \divisioMaior
gis4 a2 d2 ~ d2*3/2 cis2 ~ cis2 ~ \divisioMaior
cis2*3/2 b,2*3/2 cis4 d2*3/2 cis2 e2*3/2 d2*3/4 cis2*4/2 ~ cis2*3/4 ~ cis2*3/2 \divisioMaxima
r2*3/2 gis4 fis2*3/2 ~ fis2*4/2 cis4 \divisioMinima
fis2 e2 d2 cis2 ~ cis2*3/2 ~ cis2*3/4 d2*7/4 e2*3/2 fis2*3/2 gis2*3/2 ~ \divisioMaior
gis4 a4 ~ a2*5/2 ~ a2*3/2 ~ a2 gis2 fis2*3/2 ~ fis2 \divisioMaxima
r2*3/2 fis4 ~ fis2*3/2 ~ fis2 ~ fis2*3/2 gis2*3/2 fis2*5/2 ~ fis4 ~ \divisioMinima
fis2*3/2 gis4 a2*3/4 ~ a2*5/2 gis2*3/2 \divisioMaxima
r2*3/2 gis2*3/2 fis2 e2 d2*3/2 ~ \divisioMinima
d2*3/4 cis2*3/2 b,2*5/2 cis2*3/2 ~ cis4 \divisioMinima
b,2 ~ b,2*3/2 ~ b,2 cis4 ~ cis2*3/2 fis4 ~ fis2*3/4 d2*4/2 ~ d2*3/4 cis2*3/2 ~ cis2*3/2 \divisioMinima
d2*4/2 ~ d2*5/4 cis2 fis2*3/2 ~ fis2 ~ fis4 \finalis
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
        "2"
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
