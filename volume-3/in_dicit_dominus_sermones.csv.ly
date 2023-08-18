\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.439
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dicit Dominus Sermones" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dicit Dominus Sermones"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dicit Dominus Sermones" }
    \line {}
  }
}

chantText = \lyricmode {
Di -- cit Dó -- mi -- _ nus: 
\set stanza = " * " Ser -- mó -- nes me -- i, _ quos de -- di in os tu -- _ _ um, 
non de -- fí -- ci -- ent de o -- _ re tu -- o: 
ad -- est _ _ e -- _ nim no -- _ men tu -- um, 
et mú -- ne -- ra tu -- a ac -- cé -- pta e -- runt 
su -- per al -- tá -- re _ _ _ me -- um. Ps. 
Be -- á -- tus vir qui ti -- met Dó -- mi -- num: 
\set stanza = " * " 
in man -- dá -- tis e -- jus vo -- let ni -- mis. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 ( b'4) b'4  b'4 ( c''4 b'4 a'4) b'4 ( a'4) ~ a'4 ( g'4 a'4) g'4 ( a'4) \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( g'4 g'4) g'4 g'4 ( g'4) ~ g'4 ( g'4 g'4) \divisioMinima
 d'4 e'4 fis'4 g'4 a'4 ( fis'4) a'4 ( g'4) a'4 ( g'4) ~ g'4 ( fis'4 d'4) e'4 \divisioMaior
 g'4 ( g'4) g'4 ( e'4) g'4 ( g'4) g'4 ( a'\prall b'4 a'4) a'4 ( g'4 g'4) \divisioMinima
 e'4 ( d'4) e'4 ( fis'\prall g'4 fis'4) g'4 ( a'4) g'4 ( e'4) e'4 ( fis'4 g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaxima
 fis'4 ( g'4 a'\prall b'4) a'4 ( b'4 a'4) b'4 ( g'4) ~ g'4 ( e'4) fis'4 g'4 ( b'4 a'4) g'4 ( fis'4) \divisioMinima
 g'4 ( e'4) g'4 ( g'4 g'4) e'4 ( g'4) d'4 ( fis'\prall g'4 fis'4 e'4) fis'4 ( fis'4 e'4) \divisioMaxima
 e'4 ( g'4) fis'4 ( g'4 a'4 b'4) a'4 a'4 a'4 ( b'4) a'4 \divisioMinima
 a'4 ( e'4) g'4 ( fis'4) g'4 g'4 ( a'4 b'4 a'4 g'4 fis'4 g'\prall a'4 g'4 a'4) g'4 ( a'4) \divisioMaior
 d'4 e'4 g'4 g'4 ( b'4 a'4) a'4 g'4 ( g'4 e'4.) g'4 ( a'4 g'4) ~ g'4 ( fis'4) e'4 ( fis'4 g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \finalis
 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( b'4) b'4 b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 \finalis
  g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 ( d''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 \finalis

}

altoMusic = {
e'2*3/2 ~ e'2*5/2 ~ e'2*4/2 ~ e'2 ~ \divisioMinima
e'2 d'4 c'2*3/2 ~ c'4 ~ c'2 b2*3/2 ~ \divisioMinima
b4 ~ b2*3/2 ~ b2 ~ b2*3/2 ~ b2*4/2 ~ b4 \divisioMaior
c'2 ~ c'2 d'2 e'2*4/2 b2*3/2 ~ \divisioMinima
b2 c'2*4/2 b2*4/2 ~ b2*6/2 ~ b2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 b2*4/2 c'2*3/2 d'2 ~ \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'2*3/2 b2*3/2 \divisioMaxima
c'2 d'2*6/2 ~ d'2*3/2 \divisioMinima
e'2 d'2*3/2 ~ d'2*5/2 ~ d'2 ~ d'2*3/2 ~ d'2 \divisioMaior
c'2*3/2 d'2*3/2 e'4 ~ e'2*11/4 d'2*3/2 b2*6/2 ~ b2 \finalis
g'4 ~ g'2*3/2 ~ g'2 ~ g'2*4/2 fis'2 g'2 \divisioMaxima
e'2*4/2 ~ e'2*3/2 d'2*5/2 b2*3/2 ~ b4 g'4 ~ g'2*3/2 ~ g'2*3/2 fis'2*3/2 ~ \divisioMinima
fis'2 e'2*4/2 ~ e'2 fis'2 \divisioMaxima
e'2*4/2 ~ e'2*4/2 fis'2*3/2 ~ \divisioMinima
fis'4 g'2*3/2 ~ g'2 ~ g'2 ~ \divisioMaxima
g'2*4/2 ~ g'2*4/2 fis'2*3/2 e'2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
g2*3/2 a2*5/2 b2*4/2 a2 \divisioMinima
g2*3/2 ~ g2*3/2 d4 ~ d2 ~ d2*3/2 ~ \divisioMinima
d4 g2*3/2 fis2 e2*3/2 d2*4/2 g4 \divisioMaior
e2 g2 ~ g2 ~ g2*4/2 ~ g2*3/2 ~ \divisioMinima
g2 ~ g2*4/2 ~ g2*4/2 a2*6/2 g2 \divisioMaxima
a2*4/2 fis2*4/2 g2*4/2 ~ g2*3/2 a2 \divisioMinima
g2 d2*3/2 e2 fis2 a2*3/2 ~ a2 g4 ~ \divisioMaxima
g2 a2*6/2 fis2*3/2 \divisioMinima
g2 ~ g2*3/2 b2*5/2 a2 g2*3/2 fis2 \divisioMaior
g2*3/2 ~ g2*3/2 ~ g4 a2*11/4 ~ a2*3/2 ~ a2*6/2 g2 \finalis
r4 g'2*3/2 fis'2 e'2*4/2 ~ e'2 ~ e'2 \divisioMaxima
c'2*4/2 b2*3/2 a2*5/2 ~ a2*3/2 g4 r4 fis'2*3/2 e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*4/2 c'2 d'2 \divisioMaxima
fis2*4/2 g2*4/2 a2*3/2 ~ \divisioMinima
a4 b2*3/2 c'2 e'2 \divisioMaxima
c'2*4/2 b2*4/2 ~ b2*3/2 ~ b2 a2*3/2 g4 \finalis
}

bassMusic = {
e2*3/2 ~ e2*5/2 ~ e2*4/2 c2 ~ \divisioMinima
c2*3/2 a,2*3/2 ~ a,4 g,2 ~ g,2*3/2 ~ \divisioMinima
g,4 ~ g,2*3/2 ~ g,2 ~ g,2*3/2 ~ g,2*4/2 ~ g,4 \divisioMaior
a,2 ~ a,2 b,2 c2*4/2 e2*3/2 ~ \divisioMinima
e2 ~ e2*4/2 ~ e2*4/2 ~ e2*6/2 ~ e2 \divisioMaxima
d2*4/2 ~ d2*4/2 e2*4/2 ~ e2*3/2 b,2 ~ \divisioMinima
b,2 ~ b,2*3/2 ~ b,2 ~ b,2 ~ b,2*3/2 e2 ~ e4 ~ \divisioMaxima
e2 d2*6/2 ~ d2*3/2 \divisioMinima
c2 b,2*3/2 ~ b,2*5/2 ~ b,2 ~ b,2*3/2 ~ b,2 \divisioMaior
a,2*3/2 b,2*3/2 c4 ~ c2*11/4 d2*3/2 e2*6/2 ~ e2 \finalis
r2*14/2 \divisioMaxima
a2*4/2 g2*3/2 fis2*5/2 e2*3/2 ~ e4 r2*18/2 b2 \divisioMaxima
e2*4/2 ~ e2*4/2 ~ e2*3/2 ~ \divisioMinima
e4 ~ e2*3/2 ~ e2 ~ e2 ~ \divisioMaxima
e2*4/2 g'2*4/2 e2*3/2 ~ e2 ~ e2*3/2 ~ e4 \finalis
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
        "I."
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
