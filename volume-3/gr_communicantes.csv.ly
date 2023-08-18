\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.196
%(volume.page)

global = {
 \key d \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Communicantes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Communicantes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Communicantes" }
    \line {}
  }
}

chantText = \lyricmode {
Com -- mu -- ni -- cán -- tes _ 
\set stanza = " * " Chri -- _ _ sti pas -- si -- ó -- ni -- bus, 
gau -- dé -- _ _ _ _ _ _ _ te, 
ut in re -- ve -- la -- ti -- ó -- ne gló -- ri -- æ e -- _ jus _ _ 
gau -- de -- á -- _ _ _ _ tis ex -- _ sul -- tán -- _ _ tes. _ _ _ _ _ ℣. 
Si ex -- pro -- brá -- mi -- ni in nó -- mi -- ni Chri -- _ _ _ _ _ _ _ _ sti, 
be -- á -- _ ti é -- _ _ _ _ ri -- tis: 
quó -- ni -- am quod est ho -- nó -- _ _ ris, gló -- ri -- æ, et vir -- tú -- tis De -- _ _ _ _ i, 
et qui est e -- jus spí -- ri -- tus, su -- per vos 
\set stanza = " * " re -- qui -- é -- scet. _ _ _ _ }

chantMusic = {
\tieDown   d'4 fis'4 ( a'4) a'4 a'4 ( gis'4 b'4) a'4 ( b'4 a'4 a'4) fis'4 ( gis'4 fis'4) \divisioMinima
 fis'4 ( a'4 gis'4) a'4 ( a'4 fis'4 e'4 d'4.) fis'4 a'4 ( a'4 fis'4 gis'\prall a'4) a'4 \divisioMinima
 b'4 a'4 ( gis'4) b'4 ( cis''\prall d''4) b'4 ( a'4) a'4 ( b'4 a'4 fis'4) \divisioMaior
 fis'4 ( \once \tweak #'font-size #-4 a' ) a'4 b'4 ( a'4) ~ a'4 ( gis'4) a'4 b'4 ( a'4) ~ a'4 ( gis'4) a'4 b'4 ( a'4) ~ a'4 ( gis'4) ~ gis'4 ( fis'4 gis'4) gis'4 ( fis'4) \divisioMaxima
 fis'4 gis'4 e'4 fis'4 a'4 gis'4 a'4 fis'4 \divisioMinima
 fis'4 ( gis'4) e'4 ( fis'4) fis'4 fis'4 ( a'4) b'4 ( a'4) a'4 ( gis'4) b'4 ( cis''4 b'4 a'4.) gis'4 ( a'4 gis'4 fis'4) \divisioMaior
 fis'4 ( \once \tweak #'font-size #-4 e' ) fis'4 ( a'4) a'4 ( a'4) fis'4 ( a'4) b'4 ( a'4 b'4) ~ b'4 ( gis'4) a'4 ( fis'4) fis'4 \divisioMinima
 fis'4 ( a'4) b'4 ( a'4) a'4 ( gis'4) a'4 ( a'4) ~ a'4 ( fis'4.) a'4 ( e'4 fis'4) d'4 ( e'4 fis'4) a'4. b'4 ( cis''4 a'4 fis'4) \divisioMinima
  a'4 ( a'4 fis'4 e'4) fis'4 ( g'4 e'4 d'4 e'\prall fis'4 e'4) fis'4 ( a'4 fis'4 fis'4) d'4 ( e'4 d'4) \finalis
 d'4 d'4 fis'4 ( e'4) e'4 ( a'4) a'4 a'4 \divisioMinima
 a'4 a'4 a'4 a'4  b'4 ( a'4) ~ a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4) b'4 ( a'4) ~ a'4 ( a'4) ~ a'4 ( e'4.) fis'4 ( g'4 e'4 d'4) a'4 ( a'4 b'4) a'4 \divisioMaior
 a'4 b'4 ( a'4) b'4 ( cis''\prall d''4 d''4) d''4 ( e''4 a'4) b'4 ( a'4) cis''4 ( d''4 b'4 gis'4) a'4 ( fis'4 e'4.) fis'4 ( gis'\prall a'4) ~ a'4 ( b'4) a'4 a'4 \divisioMaxima
 a'4 ( a'4 b'4) a'4 a'4 a'4 a'4 a'4 b'4 ( a'4) ~ a'4 ( gis'4 fis'4 e'4) fis'4 ( gis'4) fis'4 \divisioMinima
 fis'4 ( gis'4) fis'4 fis'4 fis'4 ( \once \tweak #'font-size #-4 e' ) a'4 a'4 ( b'4 cis''4) b'4 ( a'4) fis'4 ( fis'4 e'4 fis'4) ~ fis'4 ( e'4 fis'4) a'4 ( fis'4) ~ fis'4 ( e'4) ~ e'4 ( d'4 e'4) e'4 ( d'4) \divisioMaxima
 d'4 d'4 d'4 d'4 d'4 d'4 ( e'4) d'4 d'4 \divisioMinima
 fis'4 ( e'4)  e'4 ( g'4 fis'4 g'4 e'4 d'4) d'4 ( fis'4 a'4) \divisioMinima
 a'4 a'4 a'4 ( b'4 a'4 fis'4) fis'4 d'4 ( e'4) fis'4 a'4 ( a'4) b'4 ( cis''4 gis'4 a'4 fis'4.)  e'4 ( g'4 fis'4 d'4) \finalis

}

altoMusic = {
r4 d'2*3/2 cis'2*3/2 ~ cis'2*4/2 ~ cis'2*3/2 \divisioMinima
e'2*3/2 d'2*13/4 cis'2 ~ cis'2*3/2 ~ cis'4 ~ \divisioMinima
cis'4 ~ cis'2 fis'2*5/2 e'2*4/2 ~ \divisioMaior
e'2 d'2 ~ d'2*5/2 e'2*5/2 ~ e'2 ~ e'2*4/2 cis'2*4/2 ~ cis'2*4/2 ~ cis'2 ~ \divisioMinima
cis'2*5/2 d'2*4/2 e'2 ~ e'2*9/4 cis'2*3/2 ~ cis'4 \divisioMaior
d'2*4/2 e'2*6/2 ~ e'2*3/2 cis'2 ~ cis'4 \divisioMinima
d'2*4/2 b2 cis'2 b2*5/4 a2*3/2 d'2*3/2 cis'2*11/4 d'2*4/2 ~ d'2*7/2 cis'2*4/2 a2*3/2 \finalis
d'2*4/2 e'2*4/2 ~ \divisioMinima
e'4 fis'2*3/2 e'2 ~ e'2 d'2 ~ d'2*4/2 e'2 ~ e'2*5/4 d'2*4/2 e'2*3/2 ~ e'4 ~ \divisioMaior
e'4 fis'2 ~ fis'2*4/2 ~ fis'2*3/2 ~ fis'2 ~ fis'2*4/2 cis'2*7/4 ~ cis'2 ~ cis'2*5/2 \divisioMaxima
e'2*6/2 ~ e'2*3/2 ~ e'2*5/2 cis'2 ~ cis'4 ~ \divisioMinima
cis'2*4/2 d'2*3/2 e'2*5/2 cis'2*3/2 b2*5/2 cis'2 ~ cis'2*4/2 a2 \divisioMaxima
r4 b2*4/2 ~ b2*4/2 ~ \divisioMinima
b2 ~ b2*7/2 a2 ~ \divisioMinima
a2 d'2*5/2 ~ d'2*3/2 e'2 ~ e'2*3/2 cis'2*5/4 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
r4 a2*3/2 ~ a2*3/2 b2*4/2 a2*3/2 ~ \divisioMinima
a2*3/2 ~ a2*13/4 ~ a2 b2*3/2 a4 ~ \divisioMinima
a4 ~ a2 ~ a2*5/2 ~ a2*4/2 ~ \divisioMaior
a2 ~ a2 fis2*5/2 e2*5/2 a2 b2*4/2 a2*4/2 ~ a2*4/2 ~ a2 ~ \divisioMinima
a2*5/2 ~ a2*4/2 b2 ~ b2*9/4 ~ b2*3/2 a4 ~ \divisioMaior
a2*4/2 ~ a2*4/2 fis2 g2*3/2 b2 a4 ~ \divisioMinima
a2*4/2 ~ a2 fis2 ~ fis2*5/4 e2*3/2 fis2*3/2 ~ fis2*11/4 a2*4/2 b2*3/2 ~ b2*4/2 a2*4/2 fis2*3/2 \finalis
b2*4/2 cis'2*4/2 ~ \divisioMinima
cis'4 d'2*3/2 ~ d'2 cis'2 d'2 ~ d'2*4/2 ~ d'2 cis'2*5/4 b2*4/2 d'2*3/2 cis'4 ~ \divisioMaior
cis'4 d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2 b2*4/2 cis'2*7/4 b2 a2*5/2 ~ \divisioMaxima
a2*6/2 cis'2*3/2 b2*5/2 ~ b2 a4 ~ \divisioMinima
a2*4/2 ~ a2*3/2 ~ a2*5/2 ~ a2*3/2 g2*5/2 a2 ~ a2*4/2 fis2 \divisioMaxima
r4 fis2*4/2 ~ fis2*4/2 \divisioMinima
d2 ~ d2*7/2 ~ d2 ~ \divisioMinima
d2 fis2*5/2 a2*3/2 ~ a2 ~ a2*3/2 ~ a2*5/4 g2*3/2 fis4 \finalis
}

bassMusic = {
r4 fis2*3/2 ~ fis2*3/2 ~ fis2*4/2 ~ fis2*3/2 ~ \divisioMinima
fis2*3/2 ~ fis2*13/4 ~ fis2 ~ fis2*3/2 ~ fis4 ~ \divisioMinima
fis4 e2 d2*5/2 cis2*4/2 \divisioMaior
b,2 ~ b,2 ~ b,2*5/2 cis2*5/2 ~ cis2 e2*4/2 fis2*4/2 r2*4/2 g2 \divisioMinima
fis2*5/2 ~ fis2*4/2 e2 cis2*9/4 fis2*3/2 ~ fis4 \divisioMaior
b,2*4/2 cis2*4/2 ~ cis2 ~ cis2*3/2 fis2 ~ fis4 ~ \divisioMinima
fis2*4/2 ~ fis2 e2 d2*5/4 cis2*3/2 b,2*3/2 fis,2*11/4 fis2*4/2 g2*3/2 b2*4/2 r2*4/2 d2*3/2 \finalis
r2*8/2 \divisioMinima
r2*8/2 b2 a2*4/2 ~ a2 ~ a2*5/4 ~ a2*4/2 ~ a2*3/2 ~ a4 ~ \divisioMaior
a4 d'2 cis'2*4/2 b2*3/2 fis2 ~ fis2*4/2 ~ fis2*7/4 ~ fis2 ~ fis2*5/2 \divisioMaxima
cis2*6/2 ~ cis2*3/2 ~ cis2*5/2 fis2 ~ fis4 \divisioMinima
e2*4/2 d2*3/2 cis2*5/2 fis2*3/2 ~ fis2*5/2 ~ fis2 a2*4/2 d2 \divisioMaxima
r4 b,2*4/2 a,2*4/2 ~ \divisioMinima
a,2 g,2*7/2 fis,2 ~ \divisioMinima
fis,2 b,2*5/2 ~ b,2*3/2 cis2 a,2*3/2 ~ a,2*5/4 d2*3/2 ~ d4 \finalis
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
        "V"
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
