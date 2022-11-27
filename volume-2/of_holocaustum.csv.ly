\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.142
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Holocaustum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Holocaustum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Holocaustum" }
    \line {}
  }
}

chantText = \lyricmode {
Ho -- lo -- cáu -- stum 
\set stanza = " * " et pro pec -- cá -- to non po -- stu -- lá -- _ sti; _ 
tunc di -- _ xi: Ec -- ce _ vé -- ni -- o. 
In cá -- pi -- te li -- _ bri scri -- ptum est de me ut fá -- ce -- rem vo -- lun -- tá -- tem tu -- am: 
De -- us me -- us, vó -- lu -- i _ 
et le -- _ gem tu -- am _ _ 
in mé -- _ _ di -- o. _ _ 
Cor -- dis me -- i. 
Al -- le -- _ _ lú -- ia. }

chantMusic = {
\tieDown   g'4 ( a'4) g'4 g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( a'4 g'4) b'4 b'4 ( d''4 b'4 cis''\prall d''4 \forceBreak
) a'4 ( g'4) a'4 g'4 e'4 ( fis'\prall g'4) g'4 ( a'4 g'4) ~ g'4 ( fis'4 e'4) e'4 ( g'4 e'4) ~ e'4 ( d'4) \divisioMaior
 g'4 ( g'4) g'4 ( fis'4) g'4 ( a'4) e'4 ( d'4) \divisioMinima \forceBreak

 g'4 ( g'4) a'4 ( g'4) b'4 ( a'4) g'4 g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima
 g'4  g'4 ( a'\prall b'4 c''4) b'4 b'4 b'4 ( d''4 b'4) ~ b'4 ( a'4) a'4 ( a'4 g'4 a'4) \divisioMinima \forceBreak

 e'4 ( g'4 a'4) a'4 a'4 ( b'4 a'4 a'4) g'4 ( a'4 g'4 fis'4) g'4 \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( a'4) g'4 g'4 ( a'4 g'4) g'4 ( e'4) g'4 g'4 ( a'4 g'4) a'4 \forceBreak
 a'4 ( b'4 cis''\prall d''4 cis''4 b'4) b'4 ( cis''4 b'4) \divisioMaxima
 g'4 a'4 ( b'4) b'4 b'4 ( a'4) a'4 ( b'4 a'4) g'4 g'4 ( a'4 b'4) ~ b'4 ( a'4) \divisioMaior
 g'4 g'4 ( a'4) b'4 ( a'4 b'4 \forceBreak
) a'4 g'4 ( a'4) a'4 ( b'4 a'4) g'4 ( g'4) e'4 ( fis'4 e'4) \divisioMaior
 g'4 ( g'4 fis'4) g'4 ( a'4) b'4 ( a'4) b'4 ( a'4) g'4 ( a'4) g'4. b'4 ( d''4 a'4 g'4) a'4 ( g'4 e'4 d'4) g'4. \divisioMaior \forceBreak

 g'4 ( a'4) g'4 g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( g'4 g'4) b'4 ( a'4) b'4 ( a'4) g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
d'2*3/2 e'2*6/2 d'2 \divisioMinima
g'4 \tiny e' \normalsize4 e'2*4/2 fis'2 ~ fis'2*3/2 e'2*4/2 b2*3/2 ~ b2 d'2*4/2 cis'2 a2 ~ a4 \divisioMaior
d'2 ~ d'2 ~ d'2 b2 ~ \divisioMinima
b2 ~ b2 ~ b2 cis'4 d'2 e'2 ~ e'2 d'2 \divisioMaxima
r4 d'2 ~ d'2 ~ d'2 g'2 e'2*3/2 ~ e'2*4/2 \divisioMinima
cis'4 d'2*3/2 ~ d'2 cis'2 ~ cis'2 a2 b4 ~ \divisioMinima
b2 cis'2*3/2 a2*3/2 b2*3/2 ~ b2*4/2 d'2*3/2 e'2*3/2 ~ e'2 d'4 ~ \divisioMaxima
d'4 ~ d'2 ~ d'4 e'2 d'2 ~ d'2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ d'2*4/2 ~ d'2 cis'2*3/2 b2 ~ b2 ~ b4 \divisioMaior
d'2*3/2 ~ d'2 ~ d'2 ~ d'2 ~ d'2*7/4 ~ d'2*4/2 e'2 ~ e'4 fis'4 d'2*3/4 \divisioMaior
b2*3/2 e'2*4/2 ~ e'2 d'2 ~ \divisioMaxima
d'2 e'2*3/2 ~ e'2 ~ e'2 d'2 e'2*3/2 cis'4 ~ cis'4 b4 \finalis
}

tenorMusic = {
b2*3/2 cis'2*6/2 b2 ~ \divisioMinima
b2 ~ b2*4/2 ~ b2 fis2*3/2 b2*4/2 a2*3/2 g2 ~ g2*4/2 ~ g2 ~ g2 fis4 \divisioMaior
g2 a2 b2 fis2 \divisioMinima
e2 fis2 g2 ~ g4 ~ g2 ~ g2 cis'2 ~ cis'4 b4 \divisioMaxima
r4 b2 g2 ~ g2 ~ g2 ~ g2*3/2 a2*4/2 ~ \divisioMinima
a4 e2*3/2 ~ e2 ~ e2 ~ e2*4/2 ~ e4 ~ \divisioMinima
e2 ~ e2*3/2 ~ e2*3/2 ~ e2*3/2 g2*4/2 fis2*3/2 g2*3/2 fis2 ~ fis4 \divisioMaxima
r4 d2 g4 ~ g2 ~ g2 fis2 e2 fis2*3/2 ~ \divisioMaior
fis4 g2 ~ g2*4/2 ~ g2 ~ g2*3/2 ~ g2 a2 g4 \divisioMaior
a2*3/2 e2 g2 fis2 g2*7/4 ~ g2*4/2 ~ g2*4/2 ~ g2*3/4 ~ \divisioMaior
g2*3/2 ~ g2*4/2 cis'2 ~ cis'4 b4 ~ \divisioMaxima
b2 ~ b2*3/2 g2 ~ g2 ~ g2 e2*3/2 ~ e4 d2 \finalis
}

bassMusic = {
g2*3/2 cis'2*6/2 r2 \divisioMinima
g2 e2*4/2 d2 ~ d2*3/2 e2*4/2 ~ e2*3/2 ~ e2 b,2*4/2 cis2 d2 ~ d4 \divisioMaior
b,2 ~ b,2 ~ b,2 ~ b,2 \divisioMinima
e2 ~ e2 ~ e2 ~ e4 b,2 cis2 ~ cis2 g2 \divisioMaxima
r4 r2*4/2 fis2 e2 d2*3/2 cis2*4/2 ~ \divisioMinima
cis4 b,2*3/2 a,2 ~ a,2 e2*4/2 ~ e4 \divisioMinima
e,2 a,2*3/2 cis2*3/2 e2*3/2 ~ e2*4/2 d2*3/2 b,2*3/2 ~ b,2 ~ b,4 ~ \divisioMaxima
b,4 ~ b,2 ~ b,4 cis2 d2 ~ d2 ~ d2 ~ d2*3/2 ~ \divisioMaior
d4 b,2 g,2*4/2 e2 ~ e2*3/2 ~ e2 ~ e2 ~ e4 \divisioMaior
d2*3/2 ~ d2 ~ d2 ~ d2 b,2*7/4 g,2*4/2 cis2*4/2 b,2*3/4 \divisioMaior
e2*3/2 cis2*4/2 ~ cis2 g2 \divisioMaxima
fis2 e2*3/2 d2 cis2 b,2 cis2*3/2 ~ cis4 g,2 \finalis
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
