\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.92
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine Deus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine Deus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine Deus" }
    \line {}
  }
}

chantText = \lyricmode {
Dó -- mi -- ne _ _ _ _ _ _ _ 
\set stanza = " * " De -- us vir -- tú -- _ tum, 
con -- vér -- te _ nos: _ _ _ _ _ _ _ _ 
et o -- stén -- de fá -- _ ci -- em tu -- am, 
et sal -- vi é -- _ ri -- mus: _ _ _ 
so -- net _ vox tu -- a _ 
in _ áu -- ri -- bus me -- _ _ _ _ _ _ _ _ is. _ ℣. 
Vox _ e -- nim tu -- a dul -- _ _ _ cis, 
et fá -- ci -- es tu -- a _ _ _ _ _ _ 
de -- có -- ra _ ni -- mis. _ _ _ ℣. 
O -- le -- um ef -- fú -- _ _ _ _ _ sum 
no -- men tu -- um, Je -- _ _ su: _ _ _ _ _ 
íd -- e -- o ad -- o -- le -- _ scén -- tu -- læ _ 
\set stanza = " * " 
di -- le -- _ _ xé -- runt te. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4 f'4. ees'4 ( ees'4) ~ ees'4 ( c'4) d'4 ( bes4.) ~ bes4 ( c'4) ees'4 ( ees'4) f'4 g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMinima
 f'4 ( g'4) ees'4 \forceBreak
  f'4 ( g'\prall aes'4) aes'4 ( aes'4) ~ aes'4 ( g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 g'4 ( ees'4 f'4) f'4 g'4 ( bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) ~ f'4 ( a'4 g'4 f'4) g'4 ( f'4) g'4 ( f'4 \forceBreak
) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 ees'4 g'4 ( bes'4) a'4 ( f'4 g'4) f'4 ( ees'4) f'4 ( g'4) f'4 f'4 f'4 ( g'4) f'4 \divisioMaior
 f'4 f'4 ( g'4) f'4 \forceBreak
 f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \divisioMaxima
 g'4 ( ees'4 f'4) f'4 g'4 ( bes'4 a'4) bes'4 g'4 ( a'\prall bes'4) a'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaior \forceBreak

 g'4 ( f'4) ~ f'4 ( ees'4) ees'4 ( g'4 bes'4) bes'4 bes'4 bes'4 ( c''4 bes'4) ~ bes'4 ( f'4) \divisioMinima
 bes'4. c''4 ( d''4 a'4) bes'4 ( c''4 a'4) bes'4 ( g'4) ~ g'4 ( f'4)  g'4 ( aes'4 f'4 ees'4) \divisioMinima
  g'4 bes'4 ( g'4 \forceBreak
) a'4 ( f'4) f'4 g'4 ( g'4 f'4) \finalis
 f'4 g'\prall ( a'4) bes'4 bes'4 bes'4 a'4 ( bes'4) bes'4 bes'4 ( c''4 bes'4 f'4) g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( bes'4 g'4 \forceBreak
) g'4 ( f'4) \divisioMaxima
 f'4 ( g'4 f'4) ees'4 ( f'4) f'4 f'4 ( bes'4) bes'4 bes'4 ( bes'4) ~ bes'4 ( c''4 g'4) ~ g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior
 f'4 ( g'4) ees'4 ( f'4 \forceBreak
) f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \finalis
 f'4 ( c'4) f'4 g'4 ( bes'4 g'4) bes'4 bes'4. ~ bes'4 ( bes'4 \forceBreak
) c''4 ( bes'4 a'4 f'4) g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( bes'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 f'4 g'4 ( bes'4) bes'4 a'4 ( c''4) d''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( g'4) ~ g'4 ( f'4) g'4 ( f'4 \forceBreak
) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4)  \divisioMaxima
 ees'4 ( f'4 g'4 a'4) g'4 g'4 g'4 g'4 ( f'4 g'4) f'4 ( ees'4 f'4) g'4 ( bes'4 a'4) bes'4 g'4 ( a'\prall bes'4) a'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaior \forceBreak

 f'4 g'4 ( f'4) bes'4 ( bes'4 f'4) g'4 ( f'4 ees'4) ees'4 ( g'4 bes'4) bes'4 bes'4 ( a'4 bes'4 g'4 f'4) ~ f'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4 f'4) \divisioMinima
 bes'4 ( bes'4 bes'4 \forceBreak
) c''4 ( bes'4 a'4 g'4) ~ g'4 ( f'4) g'4 ( bes'4 a'4 g'4 f'4) ~ f'4 ( g'4 ees'4) \divisioMinima
 g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
bes2*7/4 g2 aes2 bes2*5/4 ~ bes2 ~ bes2*5/2 ~ bes2*3/2 ~ \divisioMinima
bes2*3/2 c'2*3/2 ~ c'2 bes2*4/2 ~ bes2 ~ \divisioMaior
bes4 ~ bes2*3/2 ~ bes4 ~ bes2*3/2 f'2*4/2 d'2*5/2 ~ d'2 ~ d'2 ~ d'2 ~ d'2*4/2 r2*3/2 \divisioMaxima
e'2 d'2*5/2 r2*6/2 d'2*4/2 ~ d'2*3/2 ~ d'2*5/2 e'2*4/2 f'2 ~ f'2*3/2 c'2*4/2 ~ c'4 \divisioMaxima
e'2*3/2 f'4 ~ f'2*4/2 d'2*5/2 c'2*3/2 ~ \divisioMaior
c'4 r2*10/2 f'2*3/2 \divisioMinima
d'2*9/4 f'2*4/2 e'2*3/2 bes2*4/2 e'2*3/2 c'2*3/2 ~ c'2 ~ c'4 \finalis
d'2*9/2 ~ d'2*6/2 ~ d'2*8/2 c'2 \divisioMaxima
d'2*3/2 c'2*3/2 d'2*3/2 ~ d'2 f'2 d'2*3/2 ~ d'2 ~ d'2*7/2 \divisioMaior
r2 c'2 ~ c'2 d'2*3/2 e'2*4/2 f'2 ~ f'2*3/2 ~ f'2*3/2 c'2 ~ \finalis
c'2*3/2 d'2*4/2 f'2*3/4 ~ f'2 ~ f'2*6/2 d'2*5/2 ~ d'2*3/2 ~ d'2 \divisioMaior
f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*4/2 d'2*5/2 ~ d'2*7/2 \divisioMaxima
e'2*7/2 d'2*6/2 ~ d'2*4/2 f'2*5/2 c'2 ~ c'4 ~ \divisioMaior
c'4 e'2 f'2*3/2 e'2*3/2 ~ e'4 d'2*3/2 f'2*5/2 ~ f'2*3/2 c'2*3/2 ~ c'4 \divisioMinima
d'2*3/2 c'2*3/2 ~ c'2*3/2 bes2*4/2 c'2*4/2 \divisioMinima
e'2*6/2 c'2 ~ c'4 \finalis
}

tenorMusic = {
d2*7/4 ees2 ~ ees2 f2*5/4 ~ f2 ees2*5/2 d2*3/2 \divisioMinima
ees2*3/2 ~ ees2*3/2 ~ ees2 ~ ees2*4/2 d2 ~ \divisioMaior
d4 ees2*3/2 r4 f2*3/2 bes2*4/2 c'2*5/2 bes2 a2 g2 a2*4/2 bes2*3/2 \divisioMaxima
c'2 bes2*5/2 ~ bes2*6/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2*4/2 ~ bes2 c'2*3/2 bes2*3/2 ~ bes4 a4 \divisioMaxima
bes2*3/2 ~ bes2*5/2 ~ bes2*5/2 a2*3/2 \divisioMaior
r4 bes2*10/2 ~ bes2*3/2 ~ \divisioMinima
bes2*9/4 ~ bes2*4/2 ~ bes2*3/2 g2*4/2 bes2*3/2 ~ bes2*3/2 g2 a4 \finalis
bes2*9/2 ~ bes2*6/2 ~ bes2*8/2 a2 \divisioMaxima
bes2*3/2 ~ bes2*3/2 a2*3/2 bes2 ~ bes2 a2*3/2 g2 a2*4/2 bes2*3/2 ~ \divisioMaior
bes2 ~ bes2 a2 g2*3/2 ~ g2*4/2 f2 bes2*3/2 c'2*3/2 bes4 a4 ~ \finalis
a2*3/2 bes2*4/2 ~ bes2*3/4 ~ bes2 a2*6/2 g2*5/2 ~ g2*3/2 a2 ~ \divisioMaior
a2 g2*3/2 f2*3/2 g2*4/2 a2*5/2 g2*4/2 bes2*3/2 ~ \divisioMaxima
bes2*7/2 a2*3/2 bes2*3/2 ~ bes2*4/2 ~ bes2*5/2 ~ bes2 a4 ~ \divisioMaior
a4 bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes4 ~ bes2*3/2 ~ bes2*5/2 a2*3/2 g2*3/2 a4 \divisioMinima
g2*3/2 ~ g2*3/2 f2*3/2 ~ f2*4/2 g2*4/2 \divisioMinima
bes2*6/2 ~ bes2 a4 \finalis
}

bassMusic = {
bes,2*7/4 c2 ~ c2 bes,2*5/4 d2 g,2*5/2 bes,2*3/2 \divisioMinima
g,2*3/2 aes,2*3/2 f,2 g,2*4/2 bes,2 ~ \divisioMaior
bes,4 ees2*3/2 d4 ~ d2*3/2 ~ d2*4/2 ~ d2*5/2 ~ d2 ~ d2 g2 ~ g2*4/2 ~ g2*3/2 \divisioMaxima
r2*7/2 g2*6/2 bes2*4/2 a2*3/2 g2*5/2 c2*4/2 d2 f2*3/2 ~ f2*4/2 ~ f4 \divisioMaxima
ees2*3/2 d2*5/2 g2*5/2 a2*3/2 ~ \divisioMaior
a4 g2*10/2 d2*3/2 \divisioMinima
g2*9/4 d2*4/2 ees2*3/2 ~ ees2*4/2 c2*3/2 f2*3/2 ~ f2 ~ f4 \finalis
r2*9/2 a2*6/2 g2*8/2 a2 \divisioMaxima
g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2 d2 ~ d2*3/2 g2 ~ g2*4/2 ~ g2*3/2 ~ \divisioMaior
g2 ~ g2 ~ g2 ~ g2*3/2 c2*4/2 d2 ~ d2*3/2 f2*3/2 ~ f2 \finalis
r2*3/2 g2*4/2 ees2*3/4 d2 ~ d2*6/2 g2*5/2 bes,2*3/2 d2 ~ \divisioMaior
d2 ~ d2*3/2 ~ d2*3/2 ~ d2*4/2 ~ d2*5/2 g2*4/2 ~ g2*3/2 \divisioMaxima
c2*7/2 d2*3/2 g2*3/2 ~ g2*4/2 d2*5/2 f2 ~ f4 ~ \divisioMaior
f4 ees2 d2*3/2 ees2*3/2 g4 ~ g2*3/2 d2*5/2 ~ d2*3/2 f2*3/2 ~ f4 ~ \divisioMinima
f2*3/2 ees2*3/2 ~ ees2*3/2 d2*4/2 c2*4/2 ~ \divisioMinima
c2*6/2 f2 ~ f4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Tract"
        "VIII"
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
