\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.90
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Electi mei" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Electi mei"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Electi mei" }
    \line {}
  }
}

chantText = \lyricmode {
E -- lé -- cti me -- _ i _ 
\set stanza = " * " non la -- bo -- rá -- bunt fru -- _ _ _ stra, 
ne -- que ger -- mi -- ná -- bunt in con -- tur -- ba -- ti -- ó -- _ _ ne: 
qui -- a se -- men be -- ne -- di -- ctó -- rum Dó -- mi -- ni _ est, 
et ne -- pó -- _ _ tes e -- ó -- rum cum e -- is. _ _ _ _ _ _ _ ℣. 
Cór -- po -- ra i -- psó -- _ _ _ rum 
in pa -- ce se -- púl -- ta sunt _ _ _ 
et no -- men e -- ó -- rum _ _ vi -- _ vit 
in ge -- ne -- ra -- ti -- ó -- nem 
\set stanza = " * " et ge -- ne -- ra -- ti -- ó -- nem. _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( ees'4 f'4) ees'4 f'4 ( g'4 f'4) g'4 ( f'4) f'4. ees'4 ( f'4 ees'4 c'4) \divisioMinima
 c'4 ees'4 ( ees'4 f'4) ees'4 ees'4 ( f'4) ees'4 ees'4 ( ees'4) ~ ees'4 ( c'4 bes4) c'4 ( ees'4 ees'4) g'4 ( f'4 g'4 ees'4) ees'4 \divisioMaior
 g'4 ( bes'4 g'4) bes'4 ( bes'4) bes'4 bes'4 bes'4 ( c''4 g'4) g'4 ( f'4) \divisioMinima
 g'4 g'4 ( bes'4) g'4 ees'4 g'4 f'4. ees'4 ( g'4 ees'4) f'4 ( g'4) f'4 \divisioMaxima
 g'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 a'4 ( bes'4) g'4 ( g'4 f'4) g'4 ( f'4) ees'4 ( f'4) ees'4 ees'4 ( f'4) g'4 ( f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaxima
 ees'4 ( g'4) f'4 ( ees'4) ees'4. d'4 ( f'4 d'4) ees'4 ( c'4) c'4 ( bes4) ees'4 ( f'4 ees'4) ees'4 ( f'4 g'4) g'4 ( f'4) \divisioMinima
  g'4 ( bes'4 g'4 f'4 g'\prall aes'4 g'4 f'4) ees'4 ees'4 ( ees'4) ~ ees'4 ( c'4 bes4) \divisioMinima
 ees'4 ( f'4) g'4 ( f'4 ees'4) d'4 ( f'4 g'4.) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis
  bes'4 ( bes'4) bes'4 bes'4 bes'4 c''4 ( a'4) bes'4 ( g'4 f'4.) g'4 ( a'\prall bes'4) ~ bes'4 ( c''4) bes'4 \divisioMaior
 bes'4 c''4 ( d''4 c''4 bes'4) bes'4 bes'4 c''4 bes'4 ( c''4 bes'4 g'4) g'4 ( bes'4 c''4.) bes'4 ( c''4) d''4 ( bes'4 bes'4) c''4 ( c''4 bes'4) \divisioMaxima
 bes'4 ( g'4) bes'4 ( c''4 bes'4) a'4 ( bes'4) g'4 ees'4 ( f'4 ees'4)  ees'4 ( g'4.) f'4 ( g'4) bes'4 ( g'4 f'4 g'\prall aes'4 g'4 f'4) ees'4 ( f'4) g'4 ( f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaior
 g'4 ees'4 g'4 ( bes'4) bes'4 a'4 bes'4 g'4 \divisioMinima
 ees'4 f'4 ( g'4) g'4 ( f'4) f'4 ( bes'4 a'4 bes'4) g'4 ees'4 ( f'4) ees'4 ( f'\prall g'4 f'4 g'4.) bes'4 ( c''4 a'4 bes'4 g'4.) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
c'4 ~ c'2*4/2 d'2*3/2 c'2 ~ c'2*3/4 bes2*4/2 \divisioMinima
aes4 g2*4/2 ~ g2*3/2 ~ g2*3/2 c'4 bes4 ~ bes2*3/2 c'2*4/2 bes4 ~ \divisioMaior
bes2*3/2 f'2 ~ f'2 ees'2*3/2 d'2 ~ \divisioMinima
d'4 ~ d'2 ees'2*3/2 c'2*3/4 ~ c'2*3/2 d'2*3/2 ~ \divisioMaxima
d'4 c'2 d'2*3/2 ~ d'2 ~ d'2 c'2*3/2 d'2 c'2 ~ c'4 ~ c'2 ~ c'2*4/2 bes2 \divisioMaxima
c'2 ~ c'2 bes2*3/4 ~ bes2*3/2 c'2 ~ c'4 bes4 ~ bes2*3/2 c'2*3/2 ~ c'2 bes2*3/2 c'2*5/2 ~ c'4 ~ c'2*3/2 ~ c'4 bes4 \divisioMinima
c'2 ~ c'2*3/2 d'4 ~ d'2*5/4 c'2*4/2 bes2 ~ bes4 g'2*5/2 f'2 ees'2 d'2*3/4 ~ d'2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2*4/2 ~ d'2 ees'2*5/2 d'2 ~ d'2*3/4 ~ d'2*5/2 ~ d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2*3/2 c'2*3/2 ~ c'2*5/4 d'2 ees'2 f'2*5/2 c'2 d'2*4/2 c'2 \divisioMaior
ees'2 ~ ees'2 d'2 ~ d'2 \divisioMinima
ees'4 ~ ees'2 ~ ees'2 f'2*4/2 ees'4 ~ ees'2 ~ ees'2*4/2 ~ ees'2*3/4 f'2*4/2 ees'2*3/4 c'2*4/2 bes2*3/2 \finalis
}

tenorMusic = {
c'4 bes2*4/2 ~ bes2*3/2 ~ bes2 aes2*3/4 g2*4/2 \divisioMinima
f4 ees2*4/2 ~ ees2*3/2 ~ ees2*3/2 f2 g2*3/2 aes2*4/2 g4 \divisioMaior
ees2*3/2 f2 bes2 ~ bes2*3/2 a2 \divisioMinima
bes4 c'2 bes2*3/2 aes2*3/4 bes2*3/2 ~ bes2*3/2 ~ \divisioMaxima
bes4 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2 a2*3/2 bes2 ~ bes2 c'4 bes2 aes2*4/2 g2 \divisioMaxima
bes2 aes2 g2*3/4 ~ g2*3/2 ~ g2 f2 ees2*3/2 ~ ees2*3/2 ~ ees2 ~ ees2*3/2 ~ ees2*5/2 ~ ees4 ~ ees2*3/2 f2 \divisioMinima
g2 bes2*3/2 ~ bes2*7/4 ~ bes2*4/2 ~ bes2 g4 ees'2*5/2 d'2 c'2 ~ c'2*3/4 bes2 ~ bes2*3/2 ~ bes4 \divisioMaior
g4 a2*4/2 bes2 ~ bes2*5/2 ~ bes2 a2*3/4 g2*5/2 f2*3/2 \divisioMaxima
g2 a2*3/2 bes2*3/2 c'2*3/2 bes2*5/4 ~ bes2 ~ bes2 c'2*5/2 ~ c'2 bes2*4/2 c'2 ~ \divisioMaior
c'2 ~ c'2 bes2 ~ bes2 ~ \divisioMinima
bes4 ~ bes2 ~ bes2 ~ bes2*4/2 ~ bes4 aes2 g2*4/2 bes2*3/4 ~ bes2*4/2 ~ bes2*3/4 aes2*4/2 g2*3/2 \finalis
}

bassMusic = {
r2*31/4 \divisioMinima
r2*5/2 d2*3/2 c2*3/2 d2 ees2*3/2 ~ ees2*4/2 ~ ees4 ~ \divisioMaior
ees2*3/2 d2 ~ d2 c2*3/2 d2 \divisioMinima
g4 ~ g2 ~ g2*3/2 r2*15/4 \divisioMaxima
r2*6/2 a2 g2 r2*16/2 \divisioMaxima
r2*11/4 f2*3/2 ees2 d2 c2*3/2 bes,2*3/2 aes,2 g,2*3/2 aes,2*5/2 bes,4 c2*3/2 d2 \divisioMinima
c2 ~ c2*3/2 bes,2*7/4 c2*4/2 d2 ees4 r2*25/4 a2*3/2 g4 ~ \divisioMaior
g4 ~ g2*4/2 ~ g2 c2*5/2 bes,2 ~ bes,2*3/4 ~ bes,2*5/2 ~ bes,2*3/2 \divisioMaxima
g2 ~ g2*3/2 ~ g2*3/2 bes2*3/2 ~ bes2*5/4 ~ bes2 g2 aes2*5/2 bes2 ~ bes2*4/2 r2 \divisioMaior
r2 bes2 ~ bes2 a2 \divisioMinima
g4 f2 ees2 d2*4/2 c4 ~ c2 ~ c2*4/2 ~ c2*3/4 d2*4/2 ees2*3/4 ~ ees2*4/2 ~ ees2*3/2 \finalis
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
