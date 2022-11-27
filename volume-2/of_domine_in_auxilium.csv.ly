\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.215
%(volume.page)

global = {
 \key a \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine in auxilium" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine in auxilium"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine in auxilium" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne, 
\set stanza = " * " in au -- xí -- li -- um me -- _ um _ ré -- spi -- ce: 
con -- fun -- dán -- tur et re -- ve -- re -- án -- _ _ tur, _ 
qui quæ -- runt á -- ni -- mam me -- am, 
ut áu -- fe -- rant _ _ e -- am: _ _ _ 
Dó -- mi -- ne, in au -- xí -- li -- um me -- _ um _ ré -- spi -- ce. }

chantMusic = {
\tieDown   a'4 a'4 ( a'4 a'4) e'4 fis'4 \divisioMinima
 e'4 fis'4 a'4 ( a'4) b'4 ( a'4) a'4 ( b'4) a'4 ( b'4 cis''4) ~ cis''4 ( b'4) b'4 ( cis''4 a'4) ~ a'4 ( b'4 \forceBreak
) a'4 a'4 ( b'4 a'4) a'4 \divisioMaxima
 a'4 ( b'4 a'4) b'4 ( cis''4) cis''4 ( \once \tweak #'font-size #-4 b' ) b'4 ( cis''4 b'4 a'4) \divisioMinima
 a'4 a'4 a'4 fis'4 fis'4 a'4 ( a'4 fis'4 \forceBreak
) e'4 ( gis'4 fis'4) fis'4 ( e'4) fis'4 ( gis'4 fis'4) \divisioMaior
 e'4 a'4 ( a'4 b'4) a'4 b'4 a'4 ( b'4) a'4 ( \once \tweak #'font-size #-4 gis' ) fis'4 ( gis'\prall a'4 gis'4 fis'4) fis'4 ( e'4 fis'\prall gis'4 fis'4 e'4 fis'4) \divisioMaior \forceBreak

 e'4 a'4 ( a'4 \once \tweak #'font-size #-4 b' ) a'4 a'4 ( b'4) cis''4 ( b'4) cis''4 ( \tiny b' a' 4) a'4 a'4 b'4 ( cis''4 a'4 fis'4) a'4 ( a'4 fis'4 e'4) a'4 ( a'4 e'4) \divisioMaxima
 a'4 a'4 ( a'4 a'4 \forceBreak
) e'4 ( fis'4) \divisioMinima
 e'4 fis'4 a'4 ( a'4) b'4 ( a'4) a'4 ( b'4) a'4 ( b'4 cis''4) ~ cis''4 ( b'4) b'4 ( cis''4 a'4) ~ a'4 ( b'4) a'4 a'4 ( b'4 a'4) a'4 \finalis

}

altoMusic = {
r4 cis'2*3/2 ~ cis'2 ~ \divisioMinima
cis'2 ~ cis'2 ~ cis'2 ~ cis'2 fis'2 ~ fis'2*3/2 e'2 dis'2*3/2 ~ dis'4 ~ dis'2*3/2 cis'4 \divisioMaxima
e'2*3/2 ~ e'2 fis'2 cis'2*4/2 ~ \divisioMinima
cis'4 e'2*3/2 dis'4 ~ dis'2*3/2 cis'2*3/2 ~ cis'2 ~ cis'2*3/2 \divisioMaior
e'4 ~ e'2*3/2 fis'2 ~ fis'2 e'2 cis'2 ~ cis'2*3/2 ~ cis'2*3/2 ~ cis'2*3/2 ~ cis'4 ~ \divisioMaior
cis'4 ~ cis'2*4/2 fis'2*4/2 ~ fis'2*3/2 e'2 ~ e'2*4/2 dis'2 ~ dis'2 e'2*3/2 ~ \divisioMaxima
e'4 dis'2*3/2 cis'2 \divisioMinima
b2 cis'2*4/2 fis'2 e'2 dis'2*3/2 e'2 fis'2*3/2 dis'4 ~ dis'2*3/2 cis'4 \finalis
}

tenorMusic = {
r4 a2*3/2 ~ a2 ~ \divisioMinima
a2 ~ a2 gis2 fis2 ~ fis2 ~ fis2*3/2 a2 ~ a2*3/2 dis4 e2*3/2 ~ e4 ~ \divisioMaxima
e2*3/2 a2 ~ a2 ~ a2*4/2 ~ \divisioMinima
a4 cis'2*3/2 a4 b2*3/2 ~ b2*3/2 gis2 a2*3/2 ~ \divisioMaior
a4 ~ a2*3/2 ~ a4 dis'4 cis'2 b2 ~ b2 a2*3/2 gis2*3/2 b2*3/2 a4 \divisioMaior
gis4 fis2*4/2 ~ fis2*4/2 ~ fis2*3/2 a2 fis2*4/2 ~ fis2 a2 ~ a2*3/2 \divisioMaxima
fis4 ~ fis2*3/2 ~ fis2 ~ \divisioMinima
fis2 ~ fis2*4/2 ~ fis2 ~ fis2 ~ fis2*3/2 a2 ~ a2*3/2 fis4 e2*3/2 ~ e4 \finalis
}

bassMusic = {
fis4 ~ fis2*3/2 a2 \divisioMinima
gis2 fis2 ~ fis2 ~ fis2 e2 dis2*3/2 cis2 b,2*3/2 ~ b,4 a,2*3/2 ~ a,4 \divisioMaxima
cis2*3/2 ~ cis2 dis2 fis2*5/2 ~ fis2*3/2 ~ fis4 ~ fis2*3/2 ~ fis2*3/2 ~ fis2 ~ fis2*3/2 ~ \divisioMaior
fis4 cis2*3/2 dis2 ~ dis2 e2 fis2 ~ fis2*3/2 ~ fis2*3/2 ~ fis2*3/2 ~ fis4 ~ \divisioMaior
fis4 ~ fis2*4/2 e2*4/2 dis2*3/2 cis2 ~ cis2*4/2 b,2 ~ b,2 cis2*3/2 ~ \divisioMaxima
cis4 b,2*3/2 a,2 \divisioMinima
gis,2 fis,2*4/2 dis2 cis2 b,2*3/2 cis2 dis2*3/2 ~ dis4 a,2*3/2 ~ a,4 \finalis
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
        "VI."
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
