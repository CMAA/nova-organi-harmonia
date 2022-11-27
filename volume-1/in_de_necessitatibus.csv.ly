\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.189
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"De necessitatibus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "De necessitatibus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "De necessitatibus" }
    \line {}
  }
}

chantText = \lyricmode {
De ne -- ces -- si -- tá -- ti -- bus me -- is 
\set stanza = " * " é -- ri -- pe me Dó -- mi -- ne: 
vi -- _ de hu -- mi -- li -- tá -- tem me -- am et la -- bó -- rem me -- _ um, 
et di -- mít -- te ó -- mni -- a _ _ pec -- cá -- ta me -- _ a. Ps. 
Ad te Dó -- mi -- ne le -- vá -- vi á -- ni -- mam me -- am: 
\set stanza = " * " 
De -- us me -- us in te con -- fí -- do, non e -- ru -- bé -- scam. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 ( g'4 fis'4) g'4 ( g'4 g'4) e'4 ( g'4 fis'4) g'4 fis'4 ( g'4 a'4) a'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( a'4 b'4) b'4 ( a'4 b'4) \divisioMinima
 d''4 ( d''4) b'4 ( a'4 \forceBreak
) a'4 ( fis'4 a'4) a'4 a'4 ( b'4 a'4 fis'4) g'4 ( a'4 g'4 fis'4) fis'4 \divisioMaxima
 g'4 ( g'4) b'4 ( a'4) a'4 ( g'4) g'4 ( fis'4) g'4 g'4 ( g'4 g'4) g'4 e'4 ( fis'\prall g'4 \forceBreak
) g'4 ( a'4 g'4 fis'4) g'4 \divisioMinima
 g'4 g'4 fis'4 ( g'4 a'\prall b'4) a'4 ( b'4 a'4) g'4. fis'4 ( g'4 e'4) fis'4 ( e'4) \divisioMaxima
 e'4 g'4 g'4 ( fis'4) a'4 ( b'4 a'4 b'4 \forceBreak
) b'4 g'4 ( a'\prall b'4 a'4) a'4 ( b'4 g'4 fis'4) g'4 ( fis'4 e'4) fis'4 ( e'4) \divisioMinima
 e'4 fis'4 ( g'4 a'4) a'4 g'4 ( b'4 a'4 g'4) a'4 ( g'4 fis'4) fis'4 \finalis \forceBreak

 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4 \forceBreak
) b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 \finalis
  b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 \forceBreak
 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 \forceBreak
 b'4 b'4 b'4 \divisioMinima
 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 ( a'4 g'4 g'4) \finalis

}

altoMusic = {
b2*3/2 ~ b2*3/2 ~ b2*4/2 ~ b2*4/2 e'2 ~ e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'2*4/2 ~ d'2*4/2 ~ d'2*4/2 ~ d'4 \divisioMaxima
b2 ~ b2 e'2 d'2*3/2 ~ d'2*3/2 ~ d'4 c'2*3/2 d'2*4/2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/4 b2*3/2 ~ b2 ~ \divisioMaxima
b2 a2 e'2*4/2 d'4 ~ d'2*4/2 ~ d'2*4/2 b2*3/2 ~ b2 ~ \divisioMinima
b4 c'2*4/2 d'2*4/2 ~ d'2*3/2 ~ d'4 \finalis
fis'2 ~ fis'2 ~ fis'2*4/2 ~ fis'2 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2 ~ e'2*5/2 d'2*3/2 ~ d'2*4/2 cis'4 d'4 fis'2 ~ fis'2*3/2 ~ fis'2*3/2 ~ fis'2*3/2 ~ \divisioMinima
fis'2 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2 ~ e'2*4/2 d'2*3/2 \divisioMinima
e'2 ~ e'2*3/2 fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2 d'2*5/2 ~ d'2*4/2 ~ d'4 ~ d'2 e'2 \finalis
}

tenorMusic = {
g2*3/2 a2*3/2 g2*4/2 e2*4/2 ~ e2 fis2*3/2 ~ fis2*3/2 \divisioMinima
g2*4/2 a2*4/2 g2*4/2 e2*4/2 fis4 \divisioMaxima
e2 ~ e2 ~ e2 ~ e2*3/2 d2*3/2 g4 ~ g2*3/2 ~ g2*4/2 ~ g4 ~ \divisioMinima
g2 a2*4/2 g2*3/2 a2*3/4 ~ a2*3/2 g2 \divisioMaxima
e2 ~ e2 fis2*4/2 ~ fis4 g2*4/2 b2*4/2 a2*3/2 g2 ~ \divisioMinima
g4 ~ g2*4/2 ~ g2*4/2 fis2*3/2 b4 \finalis
d'2 e'2 ~ e'2*4/2 d'2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2 ~ fis2*5/2 ~ fis2*3/2 g2*4/2 e4 fis4 d'2 e'2*3/2 ~ e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2 ~ fis2*4/2 ~ fis2*3/2 \divisioMinima
e2 fis2*3/2 ~ fis2 b4 \divisioMaxima
fis2 ~ fis2 ~ fis2*5/2 g2*4/2 b4 ~ b2 ~ b2 \finalis
}

bassMusic = {
e2*3/2 ~ e2*3/2 ~ e2*4/2 d2*4/2 c2 ~ c2*3/2 b,2*3/2 ~ \divisioMinima
b,2*4/2 ~ b,2*4/2 ~ b,2*4/2 ~ b,2*4/2 ~ b,4 \divisioMaxima
r2 d2 c2 b,2*3/2 ~ b,2*3/2 ~ b,4 a,2*3/2 b,2*4/2 ~ b,4 ~ \divisioMinima
b,2 ~ b,2*4/2 ~ b,2*3/2 ~ b,2*3/4 e2*3/2 ~ e2 \divisioMaxima
d2 c2 ~ c2*4/2 b,4 ~ b,2*4/2 ~ b,2*4/2 e2*3/2 ~ e2 ~ \divisioMinima
e4 a,2*4/2 b,2*4/2 ~ b,2*3/2 ~ b,4 \finalis
r2 cis'2 b2*4/2 ~ b2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 cis2 b,2*5/2 ~ b,2*3/2 ~ b,2*4/2 ~ b,4 ~ b,4 r2 cis'2*3/2 b2*3/2 ~ b2*3/2 ~ \divisioMinima
b2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 cis2 b,2*4/2 ~ b,2*3/2 \divisioMinima
cis2 ~ cis2*3/2 d2 ~ d4 ~ \divisioMaxima
d2 cis2 b,2*5/2 ~ b,2*4/2 ~ b,4 e2 ~ e2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
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
