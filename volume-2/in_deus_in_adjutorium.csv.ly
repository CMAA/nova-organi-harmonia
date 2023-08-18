\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.186
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Deus in adjutorium" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Deus in adjutorium"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Deus in adjutorium" }
    \line {}
  }
}

chantText = \lyricmode {
De -- _ us 
\set stanza = " * " in ad -- ju -- tó -- ri -- um me -- um in -- _ tén -- de: 
Dó -- mi -- ne ad ad -- ju -- ván -- dum me fe -- stí -- na: 
con -- fun -- dán -- tur et re -- ve -- re -- án -- tur in -- i -- mí -- ci me -- _ _ i, 
qui quæ -- runt á -- ni -- mam me -- _ _ am. Ps. 
A -- ver -- tán -- tur re -- trór -- sum et e -- ru -- bés -- cant, 
\set stanza = " * " 
qui vo -- lunt mi -- hi ma -- la. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 ( c''4 a'4) ~ a'4 ( g'4) g'4 \divisioMinima
  a'4 ( f'4) g'4 a'4 c''4 ( c''4 d''4) c''4 c''4 c''4 ( d''4 c''4) c''4 ( b'4 c''4) \divisioMinima
  a'4. f'4 ( a'4 g'4 \forceBreak
) g'4 ( a'4 g'4) g'4 \divisioMaxima
 g'4 g'4 b'4 ( c''4 b'4) \divisioMinima
 a'4 a'4 ( b'4 a'4) g'4 g'4 ( g'4 g'4) e'4 a'4 ( c''4) c''4 ( b'4 c''4 a'4) g'4 g'4 ( a'4 g'4 g'4) \divisioMaxima \forceBreak

 e'4 g'4 ( g'4) a'4 ( \once \tweak #'font-size #-4 b' ) g'4 \divisioMinima
 g'4 g'4 g'4 a'4 a'4 ( b'4 a'4 \once \tweak #'font-size #-4 b' ) g'4 g'4 a'4 a'4 g'4 g'4 ( g'4) ~ g'4 ( d'4) fis'4 ( e'4) e'4 \divisioMaior \forceBreak

 e'4 g'4 ( a'4 b'4) a'4 c''4 b'4 a'4 ( b'4) g'4 ( a'4) b'4 ( g'4) ~ g'4 ( e'4) e'4 ( d'4) \finalis
 d'4 ( g'4 fis'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 a'4 a'4 a'4 a'4 \forceBreak
 a'4 ( c''4) b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis
  d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 \forceBreak
 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 ( c''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis

}

altoMusic = {
e'2 d'2*3/2 ~ d'4 f'2*4/2 g'2*5/2 f'2*3/2 e'2*3/2 f'2*3/4 ~ f'2*3/2 d'2*3/2 ~ d'4 \divisioMaxima
e'2 ~ e'2*4/2 ~ e'2*4/2 d'2*4/2 c'2 e'2*4/2 ~ e'4 ~ e'2*4/2 \divisioMaxima
r4 b2 e'2 d'4 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2 c'2 b4 ~ b2 e'2 d'2 ~ d'2 ~ d'2 b4 ~ \divisioMaior
b4 d'2*3/2 c'4 ~ c'2 d'2 ~ d'2*3/2 c'2*3/2 a2 \finalis
r2*3/2 g'2 ~ g'2*3/2 fis'2*3/2 e'2*3/2 fis'2 g'2 \divisioMaxima
d'2*4/2 c'2*3/2 ~ c'2 b2*3/2 a2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 e'2 ~ e'2 fis'2 g'2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'4 c'2*3/2 d'2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 c'2 d'2*3/2 a2 \finalis
}

tenorMusic = {
c'2 ~ c'2*3/2 b4 c'2*4/2 ~ c'2*5/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/4 ~ c'2*3/2 ~ c'2*3/2 b4 ~ \divisioMaxima
b2 g2*3/2 ~ \divisioMinima
g4 a2*4/2 e2*4/2 ~ e2 a2*4/2 c'4 b2*4/2 \divisioMaxima
e4 ~ e2 ~ e2 g4 ~ \divisioMinima
g4 e2*3/2 ~ e2 ~ e2 ~ e4 ~ e2 ~ e2 g2 b2 a2 g4 ~ \divisioMaior
g4 e2*3/2 ~ e4 g2 f2 g2*3/2 ~ g2*3/2 ~ g4 f4 \finalis
r2*11/2 c'2*3/2 d'2 ~ d'2 \divisioMaxima
fis2*4/2 e2*3/2 ~ e2 g2*3/2 ~ g4 fis4 g2*3/2 ~ g2*3/2 ~ g2*3/2 fis2*3/2 ~ \divisioMinima
fis2 a2 g2 d'2 ~ d'2 \divisioMaxima
a2 ~ a2 ~ a2*4/2 fis2*3/2 ~ \divisioMinima
fis4 e2*3/2 fis2 g2 \divisioMaxima
fis2 e2 fis2*4/2 e2*3/2 ~ e2 g2*3/2 ~ g4 fis4 \finalis
}

bassMusic = {
r2 g2*3/2 ~ g4 f2*4/2 e2*5/2 a2*3/2 ~ a2*3/2 f2*3/4 d2*3/2 g2*3/2 ~ g4 \divisioMaxima
e2 ~ e2*3/2 ~ \divisioMinima
e4 c2*4/2 b,2*4/2 a,2 ~ a,2*4/2 e4 ~ e2*4/2 \divisioMaxima
r4 d2 c2 b,4 ~ \divisioMinima
b,4 ~ b,2*3/2 a,2 ~ a,2 e4 d2 c2 b,2 ~ b,2 ~ b,2 e4 ~ \divisioMaior
e4 a,2*3/2 ~ a,4 ~ a,2 d2 b,2*3/2 a,2*3/2 d2 \finalis
r2*3/2 e'2 d'2*3/2 ~ d'2*3/2 a2*3/2 d'2 g2 \divisioMaxima
d2*4/2 a,2*3/2 c2 e2*3/2 d2 r2*3/2 e2*3/2 d2*3/2 ~ d2*3/2 ~ \divisioMinima
d2 c2 ~ c2 d2 g2 \divisioMaxima
fis2 e2 fis2*4/2 d2*3/2 ~ \divisioMinima
d4 a,2*3/2 d2 g,2 \divisioMaxima
d2 ~ d2 ~ d2*4/2 a,2*3/2 ~ a,2 b,2*3/2 d2 \finalis
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
